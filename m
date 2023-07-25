Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3D4760FAF
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jul 2023 11:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2DBE10E070;
	Tue, 25 Jul 2023 09:49:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8147410E070;
 Tue, 25 Jul 2023 09:49:23 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 781AEAA01E;
 Tue, 25 Jul 2023 09:49:23 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7023035309266722986=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 25 Jul 2023 09:49:23 -0000
Message-ID: <169027856345.27667.11820211954423708684@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230725001312.1907319-11-matthew.d.roper@intel.com>
In-Reply-To: <20230725001312.1907319-11-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmVk?=
 =?utf-8?q?uce_MTL-specific_platform_checks_=28rev2=29?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============7023035309266722986==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Reduce MTL-specific platform checks (rev2)
URL   : https://patchwork.freedesktop.org/series/120943/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13418_full -> Patchwork_120943v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_120943v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_120943v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_120943v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-mtlp:         [PASS][1] -> [TIMEOUT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1:
    - shard-mtlp:         [PASS][3] -> [ABORT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html

  * igt@kms_flip@bo-too-big@b-vga1:
    - shard-snb:          [PASS][5] -> [ABORT][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-snb6/igt@kms_flip@bo-too-big@b-vga1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb7/igt@kms_flip@bo-too-big@b-vga1.html

  * igt@perf@gen12-invalid-class-instance:
    - shard-apl:          [PASS][7] -> [ABORT][8] +12 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl3/igt@perf@gen12-invalid-class-instance.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl4/igt@perf@gen12-invalid-class-instance.html

  * igt@perf@gen12-mi-rpc@rcs0:
    - shard-rkl:          [PASS][9] -> [ABORT][10] +16 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-6/igt@perf@gen12-mi-rpc@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@gen12-mi-rpc@rcs0.html

  * igt@perf@global-sseu-config:
    - shard-tglu:         NOTRUN -> [ABORT][11]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-7/igt@perf@global-sseu-config.html
    - shard-apl:          NOTRUN -> [ABORT][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl6/igt@perf@global-sseu-config.html
    - shard-glk:          NOTRUN -> [ABORT][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk2/igt@perf@global-sseu-config.html
    - shard-rkl:          NOTRUN -> [ABORT][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@global-sseu-config.html

  * igt@perf@missing-sample-flags:
    - shard-tglu:         [PASS][15] -> [ABORT][16] +16 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-3/igt@perf@missing-sample-flags.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-9/igt@perf@missing-sample-flags.html

  * igt@perf@non-system-wide-paranoid:
    - shard-dg2:          [PASS][17] -> [ABORT][18] +14 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-7/igt@perf@non-system-wide-paranoid.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@perf@non-system-wide-paranoid.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-glk:          [PASS][19] -> [ABORT][20] +12 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk5/igt@perf@non-zero-reason@0-rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk1/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@oa-exponents@0-rcs0:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl3/igt@perf@oa-exponents@0-rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl3/igt@perf@oa-exponents@0-rcs0.html
    - shard-glk:          [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@perf@oa-exponents@0-rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@perf@oa-exponents@0-rcs0.html
    - shard-dg2:          [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-5/igt@perf@oa-exponents@0-rcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-7/igt@perf@oa-exponents@0-rcs0.html
    - shard-rkl:          [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-7/igt@perf@oa-exponents@0-rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@perf@oa-exponents@0-rcs0.html
    - shard-tglu:         [PASS][29] -> [INCOMPLETE][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-5/igt@perf@oa-exponents@0-rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-9/igt@perf@oa-exponents@0-rcs0.html

  
#### Warnings ####

  * igt@perf@gen12-mi-rpc:
    - shard-glk:          [SKIP][31] ([fdo#109271]) -> [ABORT][32] +5 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk6/igt@perf@gen12-mi-rpc.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk9/igt@perf@gen12-mi-rpc.html

  * igt@perf@gen12-oa-tlb-invalidate:
    - shard-apl:          [SKIP][33] ([fdo#109271]) -> [ABORT][34] +5 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl6/igt@perf@gen12-oa-tlb-invalidate.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl1/igt@perf@gen12-oa-tlb-invalidate.html

  * igt@perf@global-sseu-config:
    - shard-dg2:          [SKIP][35] ([i915#7387]) -> [ABORT][36]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-3/igt@perf@global-sseu-config.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-7/igt@perf@global-sseu-config.html

  * igt@perf@mi-rpc:
    - shard-dg2:          [SKIP][37] ([i915#2434]) -> [ABORT][38]
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-11/igt@perf@mi-rpc.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@mi-rpc.html
    - shard-rkl:          [SKIP][39] ([i915#2434]) -> [ABORT][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@perf@mi-rpc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@mi-rpc.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][41] ([i915#2433]) -> [ABORT][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
    - shard-tglu:         [SKIP][43] ([fdo#109289]) -> [ABORT][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-4/igt@perf@unprivileged-single-ctx-counters.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-3/igt@perf@unprivileged-single-ctx-counters.html
    - shard-dg2:          [SKIP][45] ([fdo#109289]) -> [ABORT][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-2/igt@perf@unprivileged-single-ctx-counters.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@unprivileged-single-ctx-counters.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@perf@gen12-unprivileged-single-ctx-counters@rcs0:
    - {shard-dg1}:        [PASS][47] -> [ABORT][48] +15 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-17/igt@perf@gen12-unprivileged-single-ctx-counters@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-15/igt@perf@gen12-unprivileged-single-ctx-counters@rcs0.html

  * igt@perf@global-sseu-config:
    - {shard-dg1}:        NOTRUN -> [ABORT][49]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-19/igt@perf@global-sseu-config.html

  * igt@perf@mi-rpc:
    - {shard-dg1}:        [SKIP][50] ([i915#2434]) -> [ABORT][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-13/igt@perf@mi-rpc.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-13/igt@perf@mi-rpc.html

  * igt@perf@oa-exponents@0-rcs0:
    - {shard-dg1}:        [PASS][52] -> [INCOMPLETE][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-19/igt@perf@oa-exponents@0-rcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-12/igt@perf@oa-exponents@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - {shard-dg1}:        [SKIP][54] ([fdo#109289] / [i915#2433]) -> [ABORT][55]
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-16/igt@perf@unprivileged-single-ctx-counters.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-17/igt@perf@unprivileged-single-ctx-counters.html

  
Known issues
------------

  Here are the changes found in Patchwork_120943v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#8411])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#7697])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_persistence@engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#1099]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb1/igt@gem_ctx_persistence@engines-queued.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#8555])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4812]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-none-solo:
    - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4473])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_exec_fair@basic-none-solo.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-rkl:          [PASS][64] -> [FAIL][65] ([i915#2842]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-range-active:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3281]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_exec_reloc@basic-range-active.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][67] ([i915#3281]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-mtlp:         NOTRUN -> [SKIP][68] ([i915#4812])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#4537] / [i915#4812]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_whisper@basic-contexts-priority-all:
    - shard-mtlp:         [PASS][70] -> [ABORT][71] ([i915#8131])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html

  * igt@gem_fence_thrash@bo-write-verify-none:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4860])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][73] ([i915#4860])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4613])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_madvise@dontneed-before-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3282])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_madvise@dontneed-before-pwrite.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4077]) +4 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4083]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_mmap_wc@bad-object.html

  * igt@gem_mmap_wc@read-write:
    - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#4083]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_mmap_wc@read-write.html

  * igt@gem_pread@snoop:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3282])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_pread@snoop.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#4270])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-mtlp:         NOTRUN -> [SKIP][81] ([i915#4270])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#8428])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4079]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-mtlp:         NOTRUN -> [SKIP][84] ([i915#3297]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-dg2:          NOTRUN -> [FAIL][85] ([i915#3318])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-dg2:          [PASS][86] -> [FAIL][87] ([fdo#103375])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-2/igt@gem_workarounds@suspend-resume-fd.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen3_render_tiledx_blits:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([fdo#109289])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gen3_render_tiledx_blits.html

  * igt@gen3_render_tiledy_blits:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([fdo#109289]) +3 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#2856]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gen9_exec_parse@batch-zero-length.html

  * igt@i915_pm_backlight@fade-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#5354] / [i915#7561])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_backlight@fade-with-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#1937])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-tglu:         [PASS][93] -> [FAIL][94] ([i915#7940])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-9/igt@i915_pm_rpm@cursor-dpms.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-4/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][95] -> [SKIP][96] ([i915#1397])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@i915_pm_rpm@dpms-non-lpsp.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#1397])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-snb:          NOTRUN -> [SKIP][98] ([fdo#109271]) +121 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb1/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-dg2:          NOTRUN -> [FAIL][99] ([fdo#103375]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#6621])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_selftest@live@gt_mocs:
    - shard-mtlp:         NOTRUN -> [DMESG-FAIL][101] ([i915#7059])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html

  * igt@i915_selftest@live@slpc:
    - shard-mtlp:         NOTRUN -> [DMESG-WARN][102] ([i915#6367])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@slpc.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         NOTRUN -> [DMESG-FAIL][103] ([i915#6763])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@workarounds.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][104] ([i915#8247]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-mtlp:         NOTRUN -> [SKIP][105] ([fdo#111614])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][106] -> [FAIL][107] ([i915#5138]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][108] ([fdo#111614])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#6187])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#5190]) +5 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][111] ([fdo#111615]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4538] / [i915#5190]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#6095]) +12 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3886] / [i915#6095])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc:
    - shard-mtlp:         [PASS][115] -> [SKIP][116] ([i915#6095]) +64 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#3689] / [i915#3886] / [i915#5354]) +4 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3689] / [i915#5354]) +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#5354]) +13 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html

  * igt@kms_chamelium_color@ctm-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([fdo#111827])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_chamelium_color@ctm-0-75.html

  * igt@kms_chamelium_color@ctm-limited-range:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([fdo#111827])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_chamelium_color@ctm-limited-range.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#7828]) +3 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#7828]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_content_protection@atomic@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [TIMEOUT][124] ([i915#7173])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html

  * igt@kms_content_protection@srm:
    - shard-mtlp:         NOTRUN -> [SKIP][125] ([i915#6944])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#7118]) +2 similar issues
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#3359])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#3359])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([fdo#109274] / [i915#5354]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#3546]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][131] -> [FAIL][132] ([i915#2346])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([fdo#109274])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([fdo#111767] / [i915#3637])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@flip-vs-suspend@b-vga1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][135] ([i915#8841]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2672])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#2672]) +1 similar issue
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#8708]) +4 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#1825]) +8 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#3458]) +7 similar issues
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][141] ([i915#8708]) +3 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_getfb@getfb-reject-ccs:
    - shard-mtlp:         [PASS][142] -> [SKIP][143] ([i915#8438])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-3/igt@kms_getfb@getfb-reject-ccs.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_getfb@getfb-reject-ccs.html

  * igt@kms_getfb@getfb2-accept-ccs:
    - shard-mtlp:         [PASS][144] -> [SKIP][145] ([i915#8439])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@kms_getfb@getfb2-accept-ccs.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@kms_getfb@getfb2-accept-ccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3555] / [i915#8228])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#6301])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8806])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
    - shard-dg2:          NOTRUN -> [FAIL][149] ([i915#8292])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][150] -> [FAIL][151] ([i915#8292])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#5176]) +5 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#5235]) +1 similar issue
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#5235]) +11 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-dp-4.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#6524])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr@cursor_mmap_gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#4077]) +3 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_psr@cursor_mmap_gtt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#1072]) +2 similar issues
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_rotation_crc@primary-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#4235])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-mtlp:         NOTRUN -> [SKIP][159] ([i915#4235])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#3555])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-2/igt@kms_vrr@negative-basic.html

  * igt@perf@disabled-read-error:
    - shard-dg2:          NOTRUN -> [ABORT][161] ([i915#8862])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@disabled-read-error.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#8516])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][163] ([i915#5493])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html

  * igt@prime_vgem@basic-read:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#3291] / [i915#3708])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@prime_vgem@basic-read.html

  * igt@v3d/v3d_submit_csd@bad-perfmon:
    - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#2575]) +2 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@v3d/v3d_submit_csd@bad-perfmon.html

  * igt@v3d/v3d_wait_bo@used-bo-1ns:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#2575]) +3 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@v3d/v3d_wait_bo@used-bo-1ns.html

  * igt@vc4/vc4_perfmon@get-values-invalid-perfmon:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#7711]) +1 similar issue
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@vc4/vc4_perfmon@get-values-invalid-perfmon.html

  * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
    - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#7711]) +1 similar issue
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-mtlp:         [ABORT][169] ([i915#8503]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-2/igt@gem_eio@in-flight-contexts-1us.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@reset-stress:
    - {shard-dg1}:        [FAIL][171] ([i915#5784]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-18/igt@gem_eio@reset-stress.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-19/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [FAIL][173] ([i915#2842]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@i915_pm_rpm@cursor-dpms:
    - {shard-dg1}:        [FAIL][175] ([i915#7940]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-16/igt@i915_pm_rpm@cursor-dpms.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-18/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - {shard-dg1}:        [SKIP][177] ([i915#1397]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-17/igt@i915_pm_rpm@dpms-non-lpsp.html
    - shard-dg2:          [SKIP][179] ([i915#1397]) -> [PASS][180]
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-12/igt@i915_pm_rpm@dpms-non-lpsp.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-2/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][181] ([i915#1397]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         [FAIL][183] ([i915#3743]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_busy@extended-pageflip-hang-newfb@pipe-a:
    - shard-snb:          [ABORT][185] -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-snb7/igt@kms_busy@extended-pageflip-hang-newfb@pipe-a.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb7/igt@kms_busy@extended-pageflip-hang-newfb@pipe-a.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [FAIL][187] ([i915#72]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-mtlp:         [FAIL][189] ([i915#8248]) -> [PASS][190]
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [FAIL][191] ([i915#2346]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
#### Warnings ####

  * igt@kms_async_flips@crc@pipe-a-edp-1:
    - shard-mtlp:         [DMESG-FAIL][193] ([i915#1982] / [i915#8561]) -> [DMESG-FAIL][194] ([i915#8561])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-4/igt@kms_async_flips@crc@pipe-a-edp-1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-a-edp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [DMESG-FAIL][195] ([i915#2017] / [i915#5954]) -> [DMESG-FAIL][196] ([i915#1982] / [i915#2017] / [i915#5954])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111767]: https://bugs.freedesktop.org/show_bug.cgi?id=111767
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4473]: https://gitlab.freedesktop.org/drm/intel/issues/4473
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6763]: https://gitlab.freedesktop.org/drm/intel/issues/6763
  [i915#6944]: https://gitlab.freedesktop.org/drm/intel/issues/6944
  [i915#7059]: https://gitlab.freedesktop.org/drm/intel/issues/7059
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7940]: https://gitlab.freedesktop.org/drm/intel/issues/7940
  [i915#8131]: https://gitlab.freedesktop.org/drm/intel/issues/8131
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8248]: https://gitlab.freedesktop.org/drm/intel/issues/8248
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8411]: https://gitlab.freedesktop.org/drm/intel/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8438]: https://gitlab.freedesktop.org/drm/intel/issues/8438
  [i915#8439]: https://gitlab.freedesktop.org/drm/intel/issues/8439
  [i915#8503]: https://gitlab.freedesktop.org/drm/intel/issues/8503
  [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
  [i915#8561]: https://gitlab.freedesktop.org/drm/intel/issues/8561
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8862]: https://gitlab.freedesktop.org/drm/intel/issues/8862


Build changes
-------------

  * Linux: CI_DRM_13418 -> Patchwork_120943v2

  CI-20190529: 20190529
  CI_DRM_13418: e31a5b300385ef52e6db1cda820518cb2da089ca @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7401: 0c66a6560eda687effa9088659577a520d913908 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_120943v2: e31a5b300385ef52e6db1cda820518cb2da089ca @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/index.html

--===============7023035309266722986==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Reduce MTL-specific platform checks (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/120943/">https://patchwork.freedesktop.org/series/120943/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13418_full -&gt; Patchwork_120943v2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_120943v2_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_120943v2_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_120943v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-2/igt@gem_exec_whisper@basic-contexts-forked-all.html">TIMEOUT</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-edp-1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@bo-too-big@b-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-snb6/igt@kms_flip@bo-too-big@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb7/igt@kms_flip@bo-too-big@b-vga1.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@gen12-invalid-class-instance:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl3/igt@perf@gen12-invalid-class-instance.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl4/igt@perf@gen12-invalid-class-instance.html">ABORT</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-6/igt@perf@gen12-mi-rpc@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@gen12-mi-rpc@rcs0.html">ABORT</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>
<p>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-7/igt@perf@global-sseu-config.html">ABORT</a></p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl6/igt@perf@global-sseu-config.html">ABORT</a></p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk2/igt@perf@global-sseu-config.html">ABORT</a></p>
</li>
<li>
<p>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@global-sseu-config.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@missing-sample-flags:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-3/igt@perf@missing-sample-flags.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-9/igt@perf@missing-sample-flags.html">ABORT</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@non-system-wide-paranoid:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-7/igt@perf@non-system-wide-paranoid.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@perf@non-system-wide-paranoid.html">ABORT</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk5/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk1/igt@perf@non-zero-reason@0-rcs0.html">ABORT</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents@0-rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl3/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl3/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-5/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-7/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-7/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-5/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-9/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk6/igt@perf@gen12-mi-rpc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk9/igt@perf@gen12-mi-rpc.html">ABORT</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-oa-tlb-invalidate:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl6/igt@perf@gen12-oa-tlb-invalidate.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl1/igt@perf@gen12-oa-tlb-invalidate.html">ABORT</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-3/igt@perf@global-sseu-config.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7387">i915#7387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-7/igt@perf@global-sseu-config.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@mi-rpc.html">ABORT</a></p>
</li>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@perf@mi-rpc.html">ABORT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>
<p>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2433">i915#2433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html">ABORT</a></p>
</li>
<li>
<p>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-4/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-3/igt@perf@unprivileged-single-ctx-counters.html">ABORT</a> +1 similar issue</p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-2/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@unprivileged-single-ctx-counters.html">ABORT</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@perf@gen12-unprivileged-single-ctx-counters@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-17/igt@perf@gen12-unprivileged-single-ctx-counters@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-15/igt@perf@gen12-unprivileged-single-ctx-counters@rcs0.html">ABORT</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-19/igt@perf@global-sseu-config.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-13/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2434">i915#2434</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-13/igt@perf@mi-rpc.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents@0-rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-19/igt@perf@oa-exponents@0-rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-12/igt@perf@oa-exponents@0-rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-16/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2433">i915#2433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-17/igt@perf@unprivileged-single-ctx-counters.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_120943v2_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb1/igt@gem_ctx_persistence@engines-queued.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1099">i915#1099</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_ctx_persistence@hang.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_exec_balancer@sliced.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_exec_fair@basic-none-solo.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4473">i915#4473</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_exec_reloc@basic-range-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3281">i915#3281</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4812">i915#4812</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-priority-all:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@gem_exec_whisper@basic-contexts-priority-all.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8131">i915#8131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_fence_thrash@bo-write-verify-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_madvise@dontneed-before-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_mmap_wc@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gem_mmap_wc@read-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4083">i915#4083</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_pxp@display-protected-crc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4079">i915#4079</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_userptr_blits@create-destroy-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gem_userptr_blits@vma-merge.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3318">i915#3318</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-2/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gem_workarounds@suspend-resume-fd.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@gen3_render_tiledx_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@gen3_render_tiledy_blits.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109289">fdo#109289</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@gen9_exec_parse@batch-zero-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-tglu-9/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-tglu-4/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb1/igt@i915_pm_rpm@system-suspend-devices.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@i915_pm_rpm@system-suspend-modeset.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=103375">fdo#103375</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@i915_pm_rps@min-max-config-loaded.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_mocs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@gt_mocs.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7059">i915#7059</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@slpc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@slpc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6367">i915#6367</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6763">i915#6763</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5138">i915#5138</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6187">i915#6187</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111615">fdo#111615</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_ccs@pipe-d-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-75:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_chamelium_color@ctm-0-75.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-limited-range:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_chamelium_color@ctm-limited-range.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7828">i915#7828</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_content_protection@srm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7118">i915#7118</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3546">i915#3546</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111767">fdo#111767</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb4/igt@kms_flip@flip-vs-suspend@b-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8841">i915#8841</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3458">i915#3458</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-reject-ccs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-3/igt@kms_getfb@getfb-reject-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-3/igt@kms_getfb@getfb-reject-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8438">i915#8438</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb2-accept-ccs:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-7/igt@kms_getfb@getfb2-accept-ccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-7/igt@kms_getfb@getfb2-accept-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8439">i915#8439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_plane_multiple@tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8806">i915#8806</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-4/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-dp-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_psr@cursor_mmap_gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4077">i915#4077</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@kms_rotation_crc@primary-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-2/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@disabled-read-error:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-5/igt@perf@disabled-read-error.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8862">i915#8862</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_csd@bad-perfmon:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@v3d/v3d_submit_csd@bad-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_wait_bo@used-bo-1ns:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@v3d/v3d_wait_bo@used-bo-1ns.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@get-values-invalid-perfmon:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-8/igt@vc4/vc4_perfmon@get-values-invalid-perfmon.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-2/igt@gem_eio@in-flight-contexts-1us.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8503">i915#8503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-4/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-18/igt@gem_eio@reset-stress.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-19/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-16/igt@i915_pm_rpm@cursor-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7940">i915#7940</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-18/igt@i915_pm_rpm@cursor-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>
<p>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg1-17/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></p>
</li>
<li>
<p>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-dg2-12/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-dg2-2/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-rkl-7/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-rkl-6/igt@i915_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-newfb@pipe-a:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-snb7/igt@kms_busy@extended-pageflip-hang-newfb@pipe-a.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-snb7/igt@kms_busy@extended-pageflip-hang-newfb@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/72">i915#72</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8248">i915#8248</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_async_flips@crc@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-4/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8561">i915#8561</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-5/igt@kms_async_flips@crc@pipe-a-edp-1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8561">i915#8561</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13418/shard-mtlp-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_120943v2/shard-mtlp-8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13418 -&gt; Patchwork_120943v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13418: e31a5b300385ef52e6db1cda820518cb2da089ca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7401: 0c66a6560eda687effa9088659577a520d913908 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_120943v2: e31a5b300385ef52e6db1cda820518cb2da089ca @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============7023035309266722986==--
