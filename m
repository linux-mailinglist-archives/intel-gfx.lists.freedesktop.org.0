Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D11213B440
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 22:25:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8409E6E55C;
	Tue, 14 Jan 2020 21:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 85DA76E55C;
 Tue, 14 Jan 2020 21:25:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 7C58FA0096;
 Tue, 14 Jan 2020 21:25:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Tue, 14 Jan 2020 21:25:44 -0000
Message-ID: <157903714448.24908.13788969879942993405@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200111014511.2988923-1-matthew.d.roper@intel.com>
In-Reply-To: <20200111014511.2988923-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gen11=3A_Add_additional_pcode_status_values?=
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

Series: drm/i915/gen11: Add additional pcode status values
URL   : https://patchwork.freedesktop.org/series/71915/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_7721_full -> Patchwork_16064_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_16064_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +16 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_busy@busy-vcs1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@vcs1-mixed-process:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] / [fdo#112080]) +4 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html

  * igt@gem_ctx_shared@q-smoketest-all:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([fdo#111735])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb8/igt@gem_ctx_shared@q-smoketest-all.html

  * igt@gem_ctx_shared@q-smoketest-bsd:
    - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([i915#461])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@gem_ctx_shared@q-smoketest-bsd.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb3/igt@gem_ctx_shared@q-smoketest-bsd.html

  * igt@gem_eio@in-flight-suspend:
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#460] / [i915#534])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@gem_eio@in-flight-suspend.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb3/igt@gem_eio@in-flight-suspend.html
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12] ([i915#180]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-apl6/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_parallel@contexts:
    - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#470] / [i915#472])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb9/igt@gem_exec_parallel@contexts.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb3/igt@gem_exec_parallel@contexts.html

  * igt@gem_exec_schedule@preempt-queue-bsd1:
    - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276]) +18 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
    - shard-iclb:         [PASS][17] -> [SKIP][18] ([fdo#112146]) +4 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1:
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([fdo#111677] / [i915#472])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd1.html

  * igt@gem_sync@basic-store-all:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb4/igt@gem_sync@basic-store-all.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb8/igt@gem_sync@basic-store-all.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#151] / [i915#69])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl6/igt@i915_pm_rpm@system-suspend-execbuf.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-skl10/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [PASS][25] -> [FAIL][26] ([fdo#103375])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#49]) +4 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +8 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([fdo#108145]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [PASS][33] -> [INCOMPLETE][34] ([i915#140] / [i915#249])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb2/igt@kms_plane_scaling@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [DMESG-WARN][39] ([i915#180]) -> [PASS][40] +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl1/igt@gem_ctx_isolation@rcs0-s3.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-apl6/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@vcs1-mixed:
    - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) -> [PASS][42] +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb2/igt@gem_ctx_persistence@vcs1-mixed.html

  * igt@gem_ctx_shared@q-smoketest-bsd1:
    - shard-tglb:         [INCOMPLETE][43] ([fdo#111735]) -> [PASS][44]
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb5/igt@gem_ctx_shared@q-smoketest-bsd1.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-snb:          [FAIL][45] ([i915#490]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-snb1/igt@gem_eio@in-flight-contexts-1us.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_await@wide-contexts:
    - shard-tglb:         [INCOMPLETE][47] ([fdo#111736] / [i915#472]) -> [PASS][48]
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_exec_await@wide-contexts.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb8/igt@gem_exec_await@wide-contexts.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [SKIP][49] ([fdo#112080]) -> [PASS][50] +9 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@gem_exec_parallel@vcs1-fds.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_reuse@single:
    - shard-tglb:         [INCOMPLETE][51] ([i915#472]) -> [PASS][52]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb5/igt@gem_exec_reuse@single.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb1/igt@gem_exec_reuse@single.html

  * igt@gem_exec_schedule@in-order-bsd:
    - shard-iclb:         [SKIP][53] ([fdo#112146]) -> [PASS][54] +4 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb1/igt@gem_exec_schedule@in-order-bsd.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@gem_exec_schedule@in-order-bsd.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [SKIP][55] ([i915#677]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
    - shard-tglb:         [INCOMPLETE][57] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html

  * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2:
    - shard-tglb:         [INCOMPLETE][59] ([fdo#111677] / [i915#472]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd2.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-tglb:         [INCOMPLETE][61] ([fdo#111736] / [i915#460] / [i915#472]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb6/igt@gem_exec_suspend@basic-s3.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb6/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
    - shard-apl:          [TIMEOUT][63] ([fdo#112271] / [i915#530]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-apl7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html

  * igt@gem_persistent_relocs@forked-interruptible-thrashing:
    - shard-iclb:         [FAIL][65] ([i915#520]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-tglb:         [INCOMPLETE][67] ([i915#707] / [i915#796]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb8/igt@gem_pipe_control_store_loop@reused-buffer.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb2/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][69] ([i915#644]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_sync@basic-each:
    - shard-tglb:         [INCOMPLETE][71] ([i915#472] / [i915#707]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb3/igt@gem_sync@basic-each.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb7/igt@gem_sync@basic-each.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [DMESG-WARN][73] ([i915#716]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@gen9_exec_parse@allowed-single.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-kbl3/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rps@waitboost:
    - shard-iclb:         [FAIL][75] ([i915#413]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb6/igt@i915_pm_rps@waitboost.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb6/igt@i915_pm_rps@waitboost.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [DMESG-WARN][77] ([i915#109]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-skl2/igt@kms_color@pipe-b-ctm-green-to-red.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-skl5/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-hsw:          [INCOMPLETE][79] ([i915#61]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-hsw2/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][81] ([i915#180]) -> [PASS][82] +4 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-iclb:         [DMESG-WARN][83] ([fdo#111764]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb8/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460] / [i915#474]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][87] ([fdo#109642] / [fdo#111068]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@kms_psr2_su@frontbuffer.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [SKIP][89] ([fdo#109441]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb4/igt@kms_psr@psr2_primary_render.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb2/igt@kms_psr@psr2_primary_render.html

  * igt@prime_vgem@fence-wait-bsd2:
    - shard-iclb:         [SKIP][91] ([fdo#109276]) -> [PASS][92] +22 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb7/igt@prime_vgem@fence-wait-bsd2.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb1/igt@prime_vgem@fence-wait-bsd2.html

  
#### Warnings ####

  * igt@gem_ctx_isolation@vcs1-nonpriv:
    - shard-iclb:         [SKIP][93] ([fdo#109276] / [fdo#112080]) -> [FAIL][94] ([IGT#28])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-iclb8/igt@gem_ctx_isolation@vcs1-nonpriv.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html

  * igt@gem_tiled_blits@normal:
    - shard-hsw:          [FAIL][95] ([i915#694]) -> [FAIL][96] ([i915#818])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-hsw2/igt@gem_tiled_blits@normal.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-hsw7/igt@gem_tiled_blits@normal.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [SKIP][97] ([i915#468]) -> [FAIL][98] ([i915#454])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-tglb2/igt@i915_pm_dc@dc6-psr.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-tglb9/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][99], [FAIL][100]) ([i915#716] / [i915#974]) -> [FAIL][101] ([i915#974])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl4/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7721/shard-kbl2/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/shard-kbl2/igt@runner@aborted.html

  
  [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
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
  [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#249]: https://gitlab.freedesktop.org/drm/intel/issues/249
  [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
  [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
  [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
  [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
  [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
  [i915#534]: https://gitlab.freedesktop.org/drm/intel/issues/534
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
  [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#796]: https://gitlab.freedesktop.org/drm/intel/issues/796
  [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
  [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974


Participating hosts (11 -> 10)
------------------------------

  Missing    (1): pig-hsw-4770r 


Build changes
-------------

  * CI: CI-20190529 -> None
  * Linux: CI_DRM_7721 -> Patchwork_16064

  CI-20190529: 20190529
  CI_DRM_7721: 3a2436c56fcf2d133d701a112eb1e0dfce0b846d @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_16064: 0be96c28820e8b0ddd44b1d2862463288afce773 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16064/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
