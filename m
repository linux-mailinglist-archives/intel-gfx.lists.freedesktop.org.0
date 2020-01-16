Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6AD13E8ED
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 18:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3CD6E22F;
	Thu, 16 Jan 2020 17:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE89D6E22F
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 17:35:12 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 09:35:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="425621077"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jan 2020 09:35:12 -0800
Date: Thu, 16 Jan 2020 09:35:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200116173512.GQ2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200114041128.11211-1-matthew.s.atwood@intel.com>
 <157913422511.12911.2479874917313111660@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157913422511.12911.2479874917313111660@emeril.freedesktop.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIGRy?=
 =?utf-8?q?m/i915=3A_add_Wa=5F14010594013=3A_icl=2Cehl_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 16, 2020 at 12:23:45AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: add Wa_14010594013: icl,ehl (rev2)
> URL   : https://patchwork.freedesktop.org/series/71858/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7735_full -> Patchwork_16082_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to dinq.  Thanks for the patch and reviews.


Matt


> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16082_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [PASS][1] -> [SKIP][2] ([fdo#112080]) +13 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_busy@busy-vcs1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb6/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-kbl7/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@bcs0-mixed-process:
>     - shard-iclb:         [PASS][5] -> [FAIL][6] ([i915#679])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb1/igt@gem_ctx_persistence@bcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@vcs1-queued:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] / [fdo#112080]) +3 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#469])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb4/igt@gem_eio@unwedge-stress.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_reloc@basic-active-bsd2:
>     - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([i915#472]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_reloc@basic-active-bsd2.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb2/igt@gem_exec_reloc@basic-active-bsd2.html
> 
>   * igt@gem_exec_schedule@independent-bsd2:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#109276]) +21 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_exec_schedule@independent-bsd2.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb8/igt@gem_exec_schedule@independent-bsd2.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([i915#677]) +2 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>     - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#836])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl2/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@reorder-wide-bsd:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +3 similar issues
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb3/igt@gem_exec_schedule@reorder-wide-bsd.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb4/igt@gem_exec_schedule@reorder-wide-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([fdo#111736] / [i915#460] / [i915#472])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb4/igt@gem_exec_suspend@basic-s3.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb3/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
>     - shard-iclb:         [PASS][23] -> [TIMEOUT][24] ([fdo#112271] / [i915#530])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb5/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb3/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#520])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb4/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#644])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_sync@basic-all:
>     - shard-tglb:         [PASS][29] -> [INCOMPLETE][30] ([i915#470] / [i915#472])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@gem_sync@basic-all.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb4/igt@gem_sync@basic-all.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#300])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge:
>     - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#70])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl2/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-kbl7/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#146] / [i915#221])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_flip@flip-vs-suspend.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl2/igt@kms_flip@flip-vs-suspend.html
>     - shard-iclb:         [PASS][37] -> [DMESG-WARN][38] ([fdo#111764])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@kms_flip@flip-vs-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb2/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite:
>     - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#49])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-pwrite.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-apl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][43] -> [FAIL][44] ([fdo#108145])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][45] -> [FAIL][46] ([fdo#108145] / [i915#265])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [PASS][47] -> [SKIP][48] ([fdo#109441]) +1 similar issue
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_psr@psr2_suspend.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb8/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf_pmu@enable-race-vcs0:
>     - shard-tglb:         [PASS][49] -> [INCOMPLETE][50] ([i915#472] / [i915#480])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@perf_pmu@enable-race-vcs0.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb2/igt@perf_pmu@enable-race-vcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_create@basic-files:
>     - shard-tglb:         [INCOMPLETE][51] ([fdo#111735]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_ctx_create@basic-files.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb7/igt@gem_ctx_create@basic-files.html
> 
>   * igt@gem_ctx_persistence@vcs1-mixed:
>     - shard-iclb:         [SKIP][53] ([fdo#109276] / [fdo#112080]) -> [PASS][54] +2 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-tglb:         [INCOMPLETE][55] ([fdo#111736] / [i915#472]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb1/igt@gem_exec_balancer@nop.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb6/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_parallel@contexts:
>     - shard-tglb:         [INCOMPLETE][57] ([i915#470] / [i915#472]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@gem_exec_parallel@contexts.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb4/igt@gem_exec_parallel@contexts.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [SKIP][59] ([fdo#109276]) -> [PASS][60] +19 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-bsd1:
>     - shard-tglb:         [INCOMPLETE][61] ([fdo#111606] / [fdo#111677] / [i915#472]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb8/igt@gem_exec_schedule@preempt-queue-contexts-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>     - shard-tglb:         [INCOMPLETE][63] ([fdo#111677] / [i915#472]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb1/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][65] ([fdo#112146]) -> [PASS][66] +6 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb3/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-apl:          [TIMEOUT][67] ([fdo#112271]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-apl3/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_sync@basic-each:
>     - shard-tglb:         [INCOMPLETE][69] ([i915#472] / [i915#707]) -> [PASS][70] +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb6/igt@gem_sync@basic-each.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb2/igt@gem_sync@basic-each.html
> 
>   * igt@gem_sync@basic-store-all:
>     - shard-tglb:         [INCOMPLETE][71] ([i915#472]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb5/igt@gem_sync@basic-store-all.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb3/igt@gem_sync@basic-store-all.html
> 
>   * igt@kms_color@pipe-b-ctm-0-25:
>     - shard-skl:          [DMESG-WARN][73] ([i915#109]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl2/igt@kms_color@pipe-b-ctm-0-25.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +2 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff:
>     - shard-tglb:         [FAIL][77] ([i915#49]) -> [PASS][78] +3 similar issues
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-kbl:          [DMESG-WARN][79] ([i915#180]) -> [PASS][80] +5 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-skl:          [INCOMPLETE][81] ([i915#69]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-skl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-skl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_psr@no_drrs:
>     - shard-iclb:         [FAIL][83] ([i915#173]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb1/igt@kms_psr@no_drrs.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb3/igt@kms_psr@no_drrs.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][85] ([fdo#109441]) -> [PASS][86] +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-c-wait-idle-hang:
>     - shard-hsw:          [DMESG-WARN][87] ([i915#44]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw5/igt@kms_vblank@pipe-c-wait-idle-hang.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-hsw7/igt@kms_vblank@pipe-c-wait-idle-hang.html
> 
>   * igt@perf_pmu@idle-vcs1:
>     - shard-iclb:         [SKIP][89] ([fdo#112080]) -> [PASS][90] +8 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@perf_pmu@idle-vcs1.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb1/igt@perf_pmu@idle-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][91] ([fdo#109276] / [fdo#112080]) -> [FAIL][92] ([IGT#28])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv-switch:
>     - shard-iclb:         [FAIL][93] ([IGT#28]) -> [SKIP][94] ([fdo#109276] / [fdo#112080])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb4/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv-switch.html
> 
>   * igt@gem_ctx_isolation@vcs2-nonpriv-switch:
>     - shard-tglb:         [SKIP][95] ([fdo#112080]) -> [SKIP][96] ([fdo#111912] / [fdo#112080]) +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb8/igt@gem_ctx_isolation@vcs2-nonpriv-switch.html
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [INCOMPLETE][97] ([i915#82]) -> [DMESG-WARN][98] ([i915#444])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb2/igt@gem_eio@kms.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-snb2/igt@gem_eio@kms.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [FAIL][99] ([i915#694]) -> [FAIL][100] ([i915#818])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-hsw7/igt@gem_tiled_blits@normal.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-hsw2/igt@gem_tiled_blits@normal.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-tglb:         [FAIL][101] ([i915#454]) -> [SKIP][102] ([i915#468])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb7/igt@i915_pm_dc@dc6-dpms.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb1/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing:
>     - shard-tglb:         [SKIP][103] ([fdo#112021]) -> [SKIP][104] ([fdo#112016] / [fdo#112021])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions-nonblocking-fencing.html
> 
>   * igt@kms_dp_dsc@basic-dsc-enable-edp:
>     - shard-iclb:         [DMESG-WARN][105] ([fdo#107724]) -> [SKIP][106] ([fdo#109349])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html
> 
>   * igt@runner@aborted:
>     - shard-snb:          [FAIL][107] ([i915#974]) -> ([FAIL][108], [FAIL][109]) ([i915#436] / [i915#974])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7735/shard-snb2/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-snb5/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/shard-snb2/igt@runner@aborted.html
> 
>   
>   [IGT#28]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [fdo#107724]: https://bugs.freedesktop.org/show_bug.cgi?id=107724
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
>   [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>   [fdo#112016]: https://bugs.freedesktop.org/show_bug.cgi?id=112016
>   [fdo#112021]: https://bugs.freedesktop.org/show_bug.cgi?id=112021
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#146]: https://gitlab.freedesktop.org/drm/intel/issues/146
>   [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
>   [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
>   [i915#44]: https://gitlab.freedesktop.org/drm/intel/issues/44
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
>   [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#480]: https://gitlab.freedesktop.org/drm/intel/issues/480
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#70]: https://gitlab.freedesktop.org/drm/intel/issues/70
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#836]: https://gitlab.freedesktop.org/drm/intel/issues/836
>   [i915#974]: https://gitlab.freedesktop.org/drm/intel/issues/974
> 
> 
> Participating hosts (12 -> 10)
> ------------------------------
> 
>   Missing    (2): pig-snb-2600 pig-hsw-4770r 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7735 -> Patchwork_16082
> 
>   CI-20190529: 20190529
>   CI_DRM_7735: 3093622134384342d2ce121a0ed2ada29423e762 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5364: b7cb6ffdb65cbd233f5ddee2f2dabf97b34fa640 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16082: ac8c04496478c18e3aa712de8a6a203289f6b714 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16082/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
