Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2239013FB5F
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 22:24:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19AE66E466;
	Thu, 16 Jan 2020 21:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 340BE6E456;
 Thu, 16 Jan 2020 21:24:02 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BD70A011A;
 Thu, 16 Jan 2020 21:24:02 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 16 Jan 2020 21:24:02 -0000
Message-ID: <157920984214.12911.2986341225909785611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114145639.2406801-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200114145639.2406801-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Undo_partial_gt-pm_enabling_on_error_paths?=
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

Series: drm/i915/gt: Undo partial gt-pm enabling on error paths
URL   : https://patchwork.freedesktop.org/series/72010/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7740_full -> Patchwork_16095_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16095_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-hsw:          NOTRUN -> [FAIL][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html

  
Known issues
------------

  Here are the changes found in Patchwork_16095_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [PASS][2] -> [INCOMPLETE][3] ([fdo#111735])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb7/igt@gem_ctx_create@basic-files.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb6/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [PASS][6] -> [SKIP][7] ([fdo#109276] / [fdo#112080]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][8] -> [SKIP][9] ([fdo#110841])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#472])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@gem_exec_nop@basic-sequential.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb5/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_schedule@independent-bsd2:
    - shard-iclb:         [PASS][12] -> [SKIP][13] ([fdo#109276]) +15 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_exec_schedule@independent-bsd2.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#677])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb5/igt@gem_exec_schedule@pi-common-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb1/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#112146]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][18] -> [INCOMPLETE][19] ([fdo#103665] / [i915#530])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [PASS][20] -> [TIMEOUT][21] ([fdo#112271] / [i915#530])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-hsw:          [PASS][22] -> [TIMEOUT][23] ([fdo#112271] / [i915#530])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-hsw8/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-thrash-inactive:
    - shard-hsw:          [PASS][24] -> [INCOMPLETE][25] ([i915#530] / [i915#61])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-hsw2/igt@gem_persistent_relocs@forked-thrash-inactive.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-hsw7/igt@gem_persistent_relocs@forked-thrash-inactive.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [PASS][26] -> [INCOMPLETE][27] ([i915#472] / [i915#707])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb2/igt@gem_sync@basic-each.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb2/igt@gem_sync@basic-each.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#454])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#109])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl7/igt@kms_color@pipe-c-ctm-0-5.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl4/igt@kms_flip@flip-vs-suspend.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-apl1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt:
    - shard-tglb:         [PASS][34] -> [FAIL][35] ([i915#49]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-skl:          [PASS][36] -> [INCOMPLETE][37] ([i915#69])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([fdo#108145])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][40] -> [SKIP][41] ([fdo#109441]) +2 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@perf_pmu@busy-vcs1:
    - shard-iclb:         [PASS][42] -> [SKIP][43] ([fdo#112080]) +10 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb1/igt@perf_pmu@busy-vcs1.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb5/igt@perf_pmu@busy-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-none:
    - shard-iclb:         [SKIP][44] ([fdo#109276] / [fdo#112080]) -> [PASS][45] +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb4/igt@gem_ctx_isolation@vcs1-none.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-glk:          [FAIL][46] ([i915#679]) -> [PASS][47]
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-glk9/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [INCOMPLETE][48] ([i915#470]) -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb6/igt@gem_eio@reset-stress.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb3/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][50] ([fdo#110854]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb6/igt@gem_exec_balancer@smoke.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_create@forked:
    - shard-tglb:         [INCOMPLETE][52] ([fdo#108838] / [i915#472]) -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb8/igt@gem_exec_create@forked.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb5/igt@gem_exec_create@forked.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][54] ([i915#472]) -> [PASS][55] +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb2/igt@gem_exec_create@madvise.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb1/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][56] ([i915#677]) -> [PASS][57] +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][58] ([fdo#112146]) -> [PASS][59] +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-iclb:         [INCOMPLETE][60] ([i915#140]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_partial_pwrite_pread@writes-after-reads-display.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-iclb:         [TIMEOUT][62] ([fdo#112271] / [i915#530]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-snb:          [FAIL][64] ([i915#520]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-snb2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-snb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-apl:          [TIMEOUT][66] ([fdo#112271] / [i915#530]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-apl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-kbl:          [TIMEOUT][68] ([fdo#112271] / [i915#530]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][70] ([i915#644]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][72] ([i915#180]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-apl4/igt@gem_softpin@noreloc-s3.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [INCOMPLETE][74] ([i915#470] / [i915#472]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb4/igt@gem_sync@basic-all.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb7/igt@gem_sync@basic-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][76] ([i915#716]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@gen9_exec_parse@allowed-all.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl1/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_hangman@error-state-capture-vcs0:
    - shard-tglb:         [INCOMPLETE][78] -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb1/igt@i915_hangman@error-state-capture-vcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb2/igt@i915_hangman@error-state-capture-vcs0.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [DMESG-WARN][80] ([i915#109]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl3/igt@kms_color@pipe-a-ctm-0-5.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          [FAIL][82] ([i915#54]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][84] ([i915#69]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][86] ([i915#79]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl6/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-glk:          [FAIL][88] ([i915#79]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-kbl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91] +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl6/igt@kms_flip@flip-vs-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@plain-flip-ts-check:
    - shard-glk:          [FAIL][92] ([i915#34]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-glk2/igt@kms_flip@plain-flip-ts-check.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-glk7/igt@kms_flip@plain-flip-ts-check.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [FAIL][94] ([i915#49]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][96] ([i915#123] / [i915#69]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl1/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][98] ([fdo#108145] / [i915#265]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][100] ([fdo#109441]) -> [PASS][101] +3 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@perf_pmu@busy-check-all-vcs1:
    - shard-iclb:         [SKIP][102] ([fdo#112080]) -> [PASS][103] +9 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@perf_pmu@busy-check-all-vcs1.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@perf_pmu@busy-check-all-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][104] ([fdo#109276]) -> [PASS][105] +20 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@prime_busy@hang-bsd2.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb2/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][106] ([fdo#109276] / [fdo#112080]) -> [FAIL][107] ([IGT#28])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][108] ([IGT#28]) -> [SKIP][109] ([fdo#109276] / [fdo#112080])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_plane@pixel-format-pipe-c-planes-source-clamping:
    - shard-tglb:         [FAIL][110] ([i915#598]) -> [FAIL][111] ([i915#576] / [i915#598])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-tglb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-tglb8/igt@kms_plane@pixel-format-pipe-c-planes-source-clamping.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][112], [FAIL][113]) ([i915#716] / [i915#974]) -> [FAIL][114] ([i915#974])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl4/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7740/shard-kbl2/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#576]: https://gitlab.freedesktop.org/drm/intel/issues/576
  [i915#598]: https://gitlab.freedesktop.org/drm/intel/issues/598
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7740 -> Patchwork_16095

  CI-20190529: 20190529
  CI_DRM_7740: a31eba35b99535ec8c9b5b22b53800b8ba82aae7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5365: e9ec0ed63b25c86861ffac3c8601cc4d1b910b65 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16095: f8907a4476b30e58e164ec02a4305a90b9fffebe @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16095/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
