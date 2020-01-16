Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E21513D606
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 09:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6A566EC34;
	Thu, 16 Jan 2020 08:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3D9506EC34;
 Thu, 16 Jan 2020 08:38:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 346DFA011A;
 Thu, 16 Jan 2020 08:38:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Radhakrishna Sripada" <radhakrishna.sripada@intel.com>
Date: Thu, 16 Jan 2020 08:38:44 -0000
Message-ID: <157916392420.12913.5405251172119742365@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114004728.21958-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20200114004728.21958-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=2E_Add_Wa=5F1409085225?=
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

Series: drm/i915/tgl. Add Wa_1409085225
URL   : https://patchwork.freedesktop.org/series/71986/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7737_full -> Patchwork_16088_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16088_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16088_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16088_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][1] -> [FAIL][2] +5 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@gem_workarounds@suspend-resume.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb5/igt@gem_workarounds@suspend-resume.html

  * igt@kms_plane@pixel-format-pipe-c-planes:
    - shard-tglb:         [PASS][3] -> [INCOMPLETE][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@kms_plane@pixel-format-pipe-c-planes.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb1/igt@kms_plane@pixel-format-pipe-c-planes.html

  
#### Warnings ####

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-tglb:         [DMESG-WARN][5] ([i915#402]) -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@gem_workarounds@suspend-resume-fd.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb1/igt@gem_workarounds@suspend-resume-fd.html

  
Known issues
------------

  Here are the changes found in Patchwork_16088_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-kbl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +7 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-kbl1/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-cleanup:
    - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_ctx_persistence@vcs1-cleanup.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb5/igt@gem_ctx_persistence@vcs1-cleanup.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111735])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb7/igt@gem_ctx_shared@q-smoketest-vebox.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#677]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb1/igt@gem_exec_schedule@pi-shared-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb5/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-blt:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111606] / [fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-blt.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-blt.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb2/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][21] -> [SKIP][22] ([fdo#112146]) +5 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb2/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#644])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-glk1/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#180]) +3 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbcpsr-stridechange:
    - shard-tglb:         [PASS][29] -> [FAIL][30] ([i915#49]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-stridechange.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][31] -> [SKIP][32] ([fdo#109441])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb5/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-hsw:          [PASS][33] -> [FAIL][34] ([i915#31])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw2/igt@kms_setmode@basic.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-hsw2/igt@kms_setmode@basic.html

  * igt@perf_pmu@init-sema-vcs1:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#112080]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@perf_pmu@init-sema-vcs1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb8/igt@perf_pmu@init-sema-vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@bcs0-s3:
    - shard-apl:          [DMESG-WARN][37] ([i915#180]) -> [PASS][38] +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-apl1/igt@gem_ctx_isolation@bcs0-s3.html

  * igt@gem_ctx_isolation@vecs0-s3:
    - shard-iclb:         [DMESG-WARN][39] ([fdo#111764]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb8/igt@gem_ctx_isolation@vecs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb8/igt@gem_ctx_isolation@vecs0-s3.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [SKIP][41] ([fdo#110854]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_balancer@smoke.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb4/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_parallel@basic:
    - shard-tglb:         [INCOMPLETE][43] ([i915#472] / [i915#476]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@gem_exec_parallel@basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb1/igt@gem_exec_parallel@basic.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [INCOMPLETE][45] ([i915#470] / [i915#472]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@gem_exec_parallel@contexts.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb5/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][47] ([i915#677]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@pi-shared-iova-bsd2:
    - shard-iclb:         [SKIP][49] ([fdo#109276]) -> [PASS][50] +5 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@gem_exec_schedule@pi-shared-iova-bsd2.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb2/igt@gem_exec_schedule@pi-shared-iova-bsd2.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][51] ([i915#463] / [i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb8/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736] / [i915#460] / [i915#472]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-glk:          [TIMEOUT][55] ([fdo#112271] / [i915#530]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-glk9/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-glk2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][57] ([i915#707] / [i915#796]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [INCOMPLETE][59] ([i915#472]) -> [PASS][60] +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb5/igt@gem_sync@basic-store-each.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb2/igt@gem_sync@basic-store-each.html

  * igt@i915_pm_rps@reset:
    - shard-iclb:         [FAIL][61] ([i915#413]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb6/igt@i915_pm_rps@reset.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb6/igt@i915_pm_rps@reset.html

  * igt@kms_color@pipe-a-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][63] ([i915#109]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-skl8/igt@kms_color@pipe-a-ctm-green-to-red.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-skl:          [FAIL][65] ([i915#79]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
    - shard-tglb:         [FAIL][67] ([i915#49]) -> [PASS][68] +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-snb:          [SKIP][69] ([fdo#109271]) -> [PASS][70] +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-snb4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][71] ([fdo#108145]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][77] ([i915#180]) -> [PASS][78] +6 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf_pmu@busy-accuracy-50-vcs1:
    - shard-iclb:         [SKIP][79] ([fdo#112080]) -> [PASS][80] +5 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb5/igt@perf_pmu@busy-accuracy-50-vcs1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb2/igt@perf_pmu@busy-accuracy-50-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [FAIL][81] ([IGT#28]) -> [SKIP][82] ([fdo#109276] / [fdo#112080])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@gem_eio@kms:
    - shard-snb:          [DMESG-WARN][83] ([i915#444]) -> [INCOMPLETE][84] ([i915#82])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@gem_eio@kms.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-snb4/igt@gem_eio@kms.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][85] ([i915#818]) -> [FAIL][86] ([i915#694]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-hsw2/igt@gem_tiled_blits@normal.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-hsw5/igt@gem_tiled_blits@normal.html

  * igt@kms_atomic_transition@3x-modeset-transitions-nonblocking:
    - shard-snb:          [SKIP][87] ([fdo#109271]) -> [SKIP][88] ([fdo#109271] / [i915#439])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb2/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-snb4/igt@kms_atomic_transition@3x-modeset-transitions-nonblocking.html

  * igt@runner@aborted:
    - shard-snb:          ([FAIL][89], [FAIL][90]) ([i915#436] / [i915#974]) -> [FAIL][91] ([i915#974])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb1/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7737/shard-snb5/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/shard-snb2/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
  [i915#439]: https://gitlab.freedesktop.org/drm/intel/issues/439
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7737 -> Patchwork_16088

  CI-20190529: 20190529
  CI_DRM_7737: 2a331333791d2e499ac843e1dc25cd8ea5bdc81f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16088: cc46fce453470412173b39660c3caa1b4204eab7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16088/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
