Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 908DC141E6A
	for <lists+intel-gfx@lfdr.de>; Sun, 19 Jan 2020 15:07:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 697AC6E3B5;
	Sun, 19 Jan 2020 14:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 821466E3B5;
 Sun, 19 Jan 2020 14:07:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 410F5A0088;
 Sun, 19 Jan 2020 14:07:33 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Sun, 19 Jan 2020 14:07:33 -0000
Message-ID: <157944285323.23915.12536621122518270347@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200114145136.65373-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_and_Gen7=2E5_=28rev2=29?=
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

Series: Security mitigation for Intel Gen7 and Gen7.5 (rev2)
URL   : https://patchwork.freedesktop.org/series/72022/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_7755_full -> Patchwork_16132_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_16132_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_16132_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_16132_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-ringfull-render:
    - shard-iclb:         [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@gem_exec_schedule@pi-ringfull-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb5/igt@gem_exec_schedule@pi-ringfull-render.html

  
Known issues
------------

  Here are the changes found in Patchwork_16132_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb2/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735] / [i915#472]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#180]) +1 similar issue
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_nop@basic-sequential:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#472]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb7/igt@gem_exec_nop@basic-sequential.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb6/igt@gem_exec_nop@basic-sequential.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#112080]) +8 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@gem_exec_parallel@vcs1-fds.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +16 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-chain-bsd1:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([fdo#111606] / [fdo#111677] / [i915#472])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb4/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb6/igt@gem_exec_schedule@preempt-queue-chain-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-render:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([fdo#111677] / [i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-render.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb5/igt@gem_exec_schedule@reorder-wide-bsd.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#463] / [i915#472])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb5/igt@gem_exec_schedule@smoketest-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb4/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#472] / [i915#707])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb1/igt@gem_exec_schedule@smoketest-vebox.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [PASS][25] -> [INCOMPLETE][26] ([fdo#103665] / [i915#530])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive:
    - shard-kbl:          [PASS][27] -> [TIMEOUT][28] ([fdo#112271] / [i915#530]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-snb:          [PASS][29] -> [FAIL][30] ([i915#520])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-snb6/igt@gem_persistent_relocs@forked-thrashing.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-snb4/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [PASS][31] -> [INCOMPLETE][32] ([i915#472] / [i915#707] / [i915#796])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb1/igt@gem_pipe_control_store_loop@reused-buffer.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb3/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - shard-tglb:         [PASS][33] -> [INCOMPLETE][34] ([i915#470] / [i915#472] / [i915#475])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb5/igt@gem_ppgtt@blt-vs-render-ctxn.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb6/igt@gem_ppgtt@blt-vs-render-ctxn.html

  * igt@gem_sync@basic-all:
    - shard-tglb:         [PASS][35] -> [INCOMPLETE][36] ([i915#470] / [i915#472])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb4/igt@gem_sync@basic-all.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb4/igt@gem_sync@basic-all.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +7 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl6/igt@gem_workarounds@suspend-resume-fd.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl7/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#716])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl5/igt@gen9_exec_parse@allowed-single.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl1/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#454])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl4/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_color@pipe-a-ctm-0-25:
    - shard-skl:          [PASS][45] -> [DMESG-WARN][46] ([i915#109])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl3/igt@kms_color@pipe-a-ctm-0-25.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl7/igt@kms_color@pipe-a-ctm-0-25.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#49]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([fdo#108145])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#109441]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb1/igt@kms_psr@psr2_sprite_render.html

  * igt@perf_pmu@cpu-hotplug:
    - shard-iclb:         [PASS][53] -> [TIMEOUT][54] ([fdo#111561] / [fdo#112271])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@perf_pmu@cpu-hotplug.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb5/igt@perf_pmu@cpu-hotplug.html

  
#### Possible fixes ####

  * igt@gem_ctx_create@basic-files:
    - shard-tglb:         [INCOMPLETE][55] ([fdo#111735] / [i915#472]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb6/igt@gem_ctx_create@basic-files.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb4/igt@gem_ctx_create@basic-files.html

  * igt@gem_ctx_persistence@bcs0-mixed-process:
    - shard-apl:          [FAIL][57] ([i915#679]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-apl4/igt@gem_ctx_persistence@bcs0-mixed-process.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][59] ([fdo#109276] / [fdo#112080]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][61] ([i915#490]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_async@concurrent-writes-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@gem_exec_async@concurrent-writes-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb5/igt@gem_exec_async@concurrent-writes-bsd.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][65] ([fdo#111736] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb6/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_create@forked:
    - shard-kbl:          [TIMEOUT][67] ([fdo#112271] / [i915#940]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl2/igt@gem_exec_create@forked.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl7/igt@gem_exec_create@forked.html
    - shard-iclb:         [TIMEOUT][69] ([fdo#112271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb1/igt@gem_exec_create@forked.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb4/igt@gem_exec_create@forked.html

  * igt@gem_exec_reloc@basic-gtt-active:
    - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl8/igt@gem_exec_reloc@basic-gtt-active.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl5/igt@gem_exec_reloc@basic-gtt-active.html

  * igt@gem_exec_schedule@out-order-bsd2:
    - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +11 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb6/igt@gem_exec_schedule@out-order-bsd2.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb1/igt@gem_exec_schedule@out-order-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-render:
    - shard-tglb:         [INCOMPLETE][75] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb3/igt@gem_exec_schedule@preempt-queue-render.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb3/igt@gem_exec_schedule@preempt-queue-render.html

  * igt@gem_exec_store@pages-vcs1:
    - shard-iclb:         [SKIP][77] ([fdo#112080]) -> [PASS][78] +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb6/igt@gem_exec_store@pages-vcs1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb4/igt@gem_exec_store@pages-vcs1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][79] ([fdo#112271] / [i915#530]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-kbl:          [TIMEOUT][81] ([fdo#112271] / [i915#530]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
    - shard-hsw:          [TIMEOUT][83] ([fdo#112271] / [i915#530]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_persistent_relocs@forked-thrashing:
    - shard-kbl:          [INCOMPLETE][85] ([fdo#103665] / [i915#530]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][87] ([i915#472] / [i915#707]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb3/igt@gem_sync@basic-each.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb1/igt@gem_sync@basic-each.html

  * igt@i915_selftest@live_execlists:
    - shard-tglb:         [INCOMPLETE][89] ([i915#472] / [i915#647]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb8/igt@i915_selftest@live_execlists.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb5/igt@i915_selftest@live_execlists.html

  * igt@i915_suspend@debugfs-reader:
    - shard-iclb:         [DMESG-WARN][91] ([fdo#111764]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@i915_suspend@debugfs-reader.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@forcewake:
    - shard-iclb:         [INCOMPLETE][93] ([i915#140]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@i915_suspend@forcewake.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][95] ([IGT#5]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled:
    - shard-tglb:         [FAIL][97] ([i915#559]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb1/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-glk:          [FAIL][99] ([i915#79]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-glk8/igt@kms_flip@flip-vs-expired-vblank.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-glk5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_tiling@flip-changes-tiling-yf:
    - shard-skl:          [FAIL][103] ([i915#699]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl7/igt@kms_flip_tiling@flip-changes-tiling-yf.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl3/igt@kms_flip_tiling@flip-changes-tiling-yf.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-skl:          [FAIL][105] ([i915#49]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][107] ([fdo#108145]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][111] ([i915#31]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-glk1/igt@kms_setmode@basic.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-glk3/igt@kms_setmode@basic.html

  * igt@perf_pmu@most-busy-idle-check-all-bcs0:
    - shard-tglb:         [INCOMPLETE][113] ([i915#472]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-tglb3/igt@perf_pmu@most-busy-idle-check-all-bcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-tglb8/igt@perf_pmu@most-busy-idle-check-all-bcs0.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][115] ([IGT#28]) -> [SKIP][116] ([fdo#109276] / [fdo#112080])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_eio@kms:
    - shard-snb:          [INCOMPLETE][117] ([i915#82]) -> [DMESG-WARN][118] ([i915#444])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7755/shard-snb6/igt@gem_eio@kms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/shard-snb4/igt@gem_eio@kms.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111561]: https://bugs.freedesktop.org/show_bug.cgi?id=111561
  [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
  [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#475]: https://gitlab.freedesktop.org/drm/intel/issues/475
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#559]: https://gitlab.freedesktop.org/drm/intel/issues/559
  [i915#647]: https://gitlab.freedesktop.org/drm/intel/issues/647
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#940]: https://gitlab.freedesktop.org/drm/intel/issues/940


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7755 -> Patchwork_16132

  CI-20190529: 20190529
  CI_DRM_7755: 9bb4096398e728d98fb5721175edd1281c4732e3 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5370: a98fb02cc2816a48eec374392d9b6941abb6af2c @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16132: 046cc6053cc24c5f3d5bba3bc1fdd521ea587bff @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16132/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
