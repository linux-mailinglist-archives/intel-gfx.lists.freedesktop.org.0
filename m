Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C52CD142719
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 10:22:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67CCA6E872;
	Mon, 20 Jan 2020 09:22:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8E4046E872;
 Mon, 20 Jan 2020 09:22:11 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 65ABEA00E9;
 Mon, 20 Jan 2020 09:22:11 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Mika Kuoppala" <mika.kuoppala@linux.intel.com>
Date: Mon, 20 Jan 2020 09:22:11 -0000
Message-ID: <157951213138.679.6845818250594971005@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200116174655.85926-1-akeem.g.abodunrin@intel.com>
In-Reply-To: <20200116174655.85926-1-akeem.g.abodunrin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgU2Vj?=
 =?utf-8?q?urity_mitigation_for_Intel_Gen7_HWs_=28rev3=29?=
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

Series: Security mitigation for Intel Gen7 HWs (rev3)
URL   : https://patchwork.freedesktop.org/series/72028/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7758_full -> Patchwork_16141_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16141_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +9 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb6/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-hostile-preempt:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_ctx_persistence@vcs1-hostile-preempt.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb5/igt@gem_ctx_persistence@vcs1-hostile-preempt.html

  * igt@gem_ctx_persistence@vecs0-mixed-process:
    - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@gem_ctx_persistence@vecs0-mixed-process.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl7/igt@gem_ctx_persistence@vecs0-mixed-process.html

  * igt@gem_exec_schedule@preempt-other-chain-bsd:
    - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#112146]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb1/igt@gem_exec_schedule@preempt-other-chain-bsd.html

  * igt@gem_exec_schedule@smoketest-bsd1:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#463] / [i915#472])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb3/igt@gem_exec_schedule@smoketest-bsd1.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-skl:          [PASS][11] -> [TIMEOUT][12] ([fdo#112271] / [i915#530])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
    - shard-tglb:         [PASS][13] -> [TIMEOUT][14] ([fdo#112126] / [fdo#112271] / [i915#530])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-tglb:         [PASS][15] -> [INCOMPLETE][16] ([i915#472] / [i915#530])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_sync@basic-store-each:
    - shard-tglb:         [PASS][17] -> [INCOMPLETE][18] ([i915#472])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb1/igt@gem_sync@basic-store-each.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb3/igt@gem_sync@basic-store-each.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl10/igt@i915_suspend@forcewake.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl3/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([IGT#5] / [i915#697])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
    - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#52] / [i915#54]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([i915#34])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl1/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-kbl4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +6 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#49])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl8/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][35] -> [SKIP][36] ([fdo#109441])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@oa-exponents:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#84])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk5/igt@perf@oa-exponents.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-glk5/igt@perf@oa-exponents.html

  * igt@prime_busy@hang-bsd2:
    - shard-iclb:         [PASS][41] -> [SKIP][42] ([fdo#109276]) +17 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@prime_busy@hang-bsd2.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb5/igt@prime_busy@hang-bsd2.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@vcs1-dirty-create:
    - shard-iclb:         [SKIP][43] ([fdo#109276] / [fdo#112080]) -> [PASS][44] +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_ctx_isolation@vcs1-dirty-create.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb1/igt@gem_ctx_isolation@vcs1-dirty-create.html

  * igt@gem_ctx_persistence@processes:
    - shard-iclb:         [FAIL][45] ([i915#570]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_persistence@processes.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb6/igt@gem_ctx_persistence@processes.html

  * igt@gem_ctx_shared@q-smoketest-bsd2:
    - shard-tglb:         [INCOMPLETE][47] ([i915#461] / [i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd2.html

  * igt@gem_ctx_shared@q-smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][49] ([fdo#111735] / [i915#472]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_ctx_shared@q-smoketest-vebox.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html

  * igt@gem_eio@kms:
    - shard-tglb:         [INCOMPLETE][51] ([i915#472] / [i915#476]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb6/igt@gem_eio@kms.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb3/igt@gem_eio@kms.html

  * igt@gem_exec_await@wide-all:
    - shard-tglb:         [INCOMPLETE][53] ([fdo#111736] / [i915#472]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb3/igt@gem_exec_await@wide-all.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb1/igt@gem_exec_await@wide-all.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][55] ([i915#140]) -> [PASS][56]
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb2/igt@gem_exec_balancer@hang.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_create@madvise:
    - shard-tglb:         [INCOMPLETE][57] ([i915#472]) -> [PASS][58] +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@gem_exec_create@madvise.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb5/igt@gem_exec_create@madvise.html

  * igt@gem_exec_schedule@pi-common-bsd:
    - shard-iclb:         [SKIP][59] ([i915#677]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@pi-common-bsd.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb6/igt@gem_exec_schedule@pi-common-bsd.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [SKIP][61] ([fdo#109276]) -> [PASS][62] +18 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][63] ([fdo#112146]) -> [PASS][64] +7 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb6/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@smoketest-all:
    - shard-tglb:         [INCOMPLETE][65] ([i915#463] / [i915#472]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb7/igt@gem_exec_schedule@smoketest-all.html

  * igt@gem_exec_schedule@smoketest-vebox:
    - shard-tglb:         [INCOMPLETE][67] ([i915#472] / [i915#707]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb4/igt@gem_exec_schedule@smoketest-vebox.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb8/igt@gem_exec_schedule@smoketest-vebox.html

  * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
    - shard-kbl:          [INCOMPLETE][69] ([fdo#103665] / [i915#530]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-kbl1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][71] ([i915#644]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][73] ([i915#716]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl8/igt@gen9_exec_parse@allowed-all.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl6/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][75] ([i915#454]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * {igt@i915_pm_rc6_residency@rc6-idle}:
    - shard-apl:          [FAIL][77] ([i915#973]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-apl3/igt@i915_pm_rc6_residency@rc6-idle.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-apl7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live_execlists:
    - shard-kbl:          [INCOMPLETE][79] ([fdo#103665] / [fdo#112175] / [fdo#112259]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl6/igt@i915_selftest@live_execlists.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-kbl3/igt@i915_selftest@live_execlists.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - shard-skl:          [DMESG-WARN][81] ([i915#109]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl3/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl2/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][83] ([i915#180]) -> [PASS][84] +3 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible:
    - shard-skl:          [FAIL][85] ([i915#34]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-tglb:         [FAIL][87] ([i915#49]) -> [PASS][88] +3 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-tglb4/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-iclb:         [INCOMPLETE][89] ([i915#140] / [i915#250]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][91] ([fdo#108145]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][93] ([fdo#109441]) -> [PASS][94] +3 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@busy-no-semaphores-vcs1:
    - shard-iclb:         [SKIP][95] ([fdo#112080]) -> [PASS][96] +5 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@perf_pmu@busy-no-semaphores-vcs1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [FAIL][97] ([IGT#28]) -> [SKIP][98] ([fdo#109276] / [fdo#112080])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb5/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
    - shard-iclb:         [SKIP][99] ([fdo#109276] / [fdo#112080]) -> [FAIL][100] ([IGT#28])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][101] ([fdo#109349]) -> [DMESG-WARN][102] ([fdo#107724])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7758/shard-iclb1/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
  [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
  [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
  [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112126]: https://bugs.freedesktop.org/show_bug.cgi?id=112126
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [fdo#112175]: https://bugs.freedesktop.org/show_bug.cgi?id=112175
  [fdo#112259]: https://bugs.freedesktop.org/show_bug.cgi?id=112259
  [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
  [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
  [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#250]: https://gitlab.freedesktop.org/drm/intel/issues/250
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#463]: https://gitlab.freedesktop.org/drm/intel/issues/463
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#697]: https://gitlab.freedesktop.org/drm/intel/issues/697
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#84]: https://gitlab.freedesktop.org/drm/intel/issues/84
  [i915#973]: https://gitlab.freedesktop.org/drm/intel/issues/973


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7758 -> Patchwork_16141

  CI-20190529: 20190529
  CI_DRM_7758: d19270ce1f367fbfc1ff3b539bcb50e11ded181f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5371: 1b2816124ec3dbd53b81725d39292f45d41d895b @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16141: cf6f7615d09af23b18c7b03fd4c7cb04fa96ecea @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16141/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
