Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F309143FFD
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 15:53:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A35B46ED3A;
	Tue, 21 Jan 2020 14:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id A67B96ED39;
 Tue, 21 Jan 2020 14:53:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E954A011C;
 Tue, 21 Jan 2020 14:53:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 21 Jan 2020 14:53:33 -0000
Message-ID: <157961841362.11480.10527802958779792490@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200120175704.36340-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200120175704.36340-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Mark_the_removal_of_the_i915=5Frequest_from_the_sched?=
 =?utf-8?q?=2Elink?=
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

Series: drm/i915: Mark the removal of the i915_request from the sched.link
URL   : https://patchwork.freedesktop.org/series/72302/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7781_full -> Patchwork_16176_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_16176_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16176_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16176_full:

### IGT changes ###

#### Warnings ####

  * igt@gem_exec_fence@basic-busy-all:
    - shard-skl:          [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl8/igt@gem_exec_fence@basic-busy-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl8/igt@gem_exec_fence@basic-busy-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_16176_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-clean:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_ctx_isolation@vcs1-clean.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb8/igt@gem_ctx_isolation@vcs1-clean.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735] / [i915#472])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb4/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#472] / [i915#476])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@gem_eio@kms.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_create@forked:
    - shard-apl:          [PASS][9] -> [TIMEOUT][10] ([fdo#112271] / [i915#940])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_exec_create@forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-apl3/igt@gem_exec_create@forked.html
    - shard-kbl:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271] / [i915#940])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl2/igt@gem_exec_create@forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl1/igt@gem_exec_create@forked.html

  * igt@gem_exec_schedule@preempt-other-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#112146]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_schedule@preempt-other-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb2/igt@gem_exec_schedule@preempt-other-bsd.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#180]) +7 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_whisper@normal:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472]) +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb7/igt@gem_exec_whisper@normal.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb7/igt@gem_exec_whisper@normal.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([fdo#103665] / [i915#530])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-glk:          [PASS][21] -> [TIMEOUT][22] ([fdo#112271] / [i915#530])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-glk3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-interruptible-thrash-inactive:
    - shard-hsw:          [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrash-inactive.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#644])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#470] / [i915#472])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@gem_sync@basic-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb3/igt@gem_sync@basic-all.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#818])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw4/igt@gem_tiled_blits@normal.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@i915_selftest@mock_requests:
    - shard-snb:          [PASS][31] -> [INCOMPLETE][32] ([i915#82])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb6/igt@i915_selftest@mock_requests.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-snb6/igt@i915_selftest@mock_requests.html
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl4/igt@i915_selftest@mock_requests.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl4/igt@i915_selftest@mock_requests.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#79])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [PASS][37] -> [FAIL][38] ([i915#49]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([fdo#108145])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145] / [i915#265])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441]) +2 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-iclb:         [PASS][45] -> [DMESG-WARN][46] ([fdo#111764]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@init-sema-vcs1:
    - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#112080]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@perf_pmu@init-sema-vcs1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb8/igt@perf_pmu@init-sema-vcs1.html

  * igt@prime_busy@after-bsd2:
    - shard-iclb:         [PASS][49] -> [SKIP][50] ([fdo#109276]) +6 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@prime_busy@after-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb8/igt@prime_busy@after-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [DMESG-WARN][51] ([i915#180]) -> [PASS][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
    - shard-apl:          [DMESG-WARN][53] ([i915#180]) -> [PASS][54] +3 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@rcs0-mixed-process:
    - shard-skl:          [FAIL][55] ([i915#679]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl10/igt@gem_ctx_persistence@rcs0-mixed-process.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl3/igt@gem_ctx_persistence@rcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-queued:
    - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) -> [PASS][58] +5 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_ctx_persistence@vcs1-queued.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][59] ([i915#140]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_exec_balancer@hang.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][61] ([fdo#110854]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb3/igt@gem_exec_balancer@smoke.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_gttfill@basic:
    - shard-tglb:         [INCOMPLETE][63] ([fdo#111593] / [i915#472]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@gem_exec_gttfill@basic.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb4/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_nop@basic-series:
    - shard-tglb:         [INCOMPLETE][65] ([i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_exec_nop@basic-series.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb8/igt@gem_exec_nop@basic-series.html

  * igt@gem_exec_schedule@wide-bsd:
    - shard-iclb:         [SKIP][67] ([fdo#112146]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@gem_exec_schedule@wide-bsd.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb7/igt@gem_exec_schedule@wide-bsd.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-hsw:          [INCOMPLETE][69] ([i915#530] / [i915#61]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [TIMEOUT][71] ([fdo#112271] / [i915#530]) -> [PASS][72] +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-hsw:          [FAIL][73] ([i915#874]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw1/igt@gem_pipe_control_store_loop@reused-buffer.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw4/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][75] ([i915#644]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][77] ([i915#472] / [i915#707]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb6/igt@gem_sync@basic-each.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_gem_contexts:
    - shard-tglb:         [INCOMPLETE][79] ([i915#455] / [i915#472]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb3/igt@i915_selftest@live_gem_contexts.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb8/igt@i915_selftest@live_gem_contexts.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding:
    - shard-skl:          [FAIL][81] ([i915#54]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-sliding.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-hsw:          [INCOMPLETE][83] ([i915#61]) -> [PASS][84] +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw2/igt@kms_flip@flip-vs-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [FAIL][85] ([i915#49]) -> [PASS][86] +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][87] ([i915#69]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl5/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][89] ([fdo#109642] / [fdo#111068]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb1/igt@kms_psr2_su@frontbuffer.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][91] ([fdo#109441]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][93] ([i915#31]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl2/igt@kms_setmode@basic.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-apl8/igt@kms_setmode@basic.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +7 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +17 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb6/igt@prime_busy@hang-bsd2.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb1/igt@prime_busy@hang-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][99] ([fdo#109276] / [fdo#112080]) -> [FAIL][100] ([IGT#28])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_exec_fence@basic-busy-all:
    - shard-glk:          [SKIP][101] ([fdo#109271]) -> [INCOMPLETE][102] ([i915#58] / [k.org#198133])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-glk1/igt@gem_exec_fence@basic-busy-all.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-glk7/igt@gem_exec_fence@basic-busy-all.html
    - shard-apl:          [SKIP][103] ([fdo#109271]) -> [INCOMPLETE][104] ([fdo#103927])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-apl7/igt@gem_exec_fence@basic-busy-all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-apl1/igt@gem_exec_fence@basic-busy-all.html

  * igt@gem_tiled_blits@interruptible:
    - shard-hsw:          [FAIL][105] ([i915#818]) -> [FAIL][106] ([i915#694])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-hsw7/igt@gem_tiled_blits@interruptible.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-hsw1/igt@gem_tiled_blits@interruptible.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [DMESG-WARN][107] ([i915#180]) -> [DMESG-WARN][108] ([i915#56])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][109] ([i915#468]) -> [FAIL][110] ([i915#454])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-tglb1/igt@i915_pm_dc@dc6-psr.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-tglb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [SKIP][111] ([fdo#109271]) -> [INCOMPLETE][112] ([i915#82])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-snb1/igt@i915_pm_rpm@gem-idle.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][113], [FAIL][114]) ([i915#997]) -> [FAIL][115] ([i915#940])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-kbl4/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-kbl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][116], [FAIL][117]) ([i915#69] / [i915#997]) -> [FAIL][118] ([i915#69] / [i915#873])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl3/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7781/shard-skl8/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/shard-skl4/igt@runner@aborted.html

  
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
  [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#455]: https://gitlab.freedesktop.org/drm/intel/issues/455
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#56]: https://gitlab.freedesktop.org/drm/intel/issues/56
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
  [i915#874]: https://gitlab.freedesktop.org/drm/intel/issues/874
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940
  [i915#997]: https://gitlab.freedesktop.org/drm/intel/issues/997
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7781 -> Patchwork_16176

  CI-20190529: 20190529
  CI_DRM_7781: 3f2b341ae1fde67f823aeb715c6f489affdef8b1 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5374: 83c32e859202e43ff6a8cca162c76fcd90ad6e3b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16176: 985c9db0ca25cdafd8b69e29a6514066253be73d @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16176/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
