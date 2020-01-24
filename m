Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B443148FE7
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 22:07:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C822B6E451;
	Fri, 24 Jan 2020 21:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 364D16E44E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 21:07:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jan 2020 13:07:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,358,1574150400"; d="scan'208";a="251405027"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jan 2020 13:07:22 -0800
Received: from fmsmsx115.amr.corp.intel.com (10.18.116.19) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 24 Jan 2020 13:06:30 -0800
Received: from fmsmsx117.amr.corp.intel.com ([169.254.3.3]) by
 fmsmsx115.amr.corp.intel.com ([169.254.4.191]) with mapi id 14.03.0439.000;
 Fri, 24 Jan 2020 13:06:30 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kasireddy, Vivek" <vivek.kasireddy@intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJtL2k5?=
 =?utf-8?B?MTUvZWhsOiBFbnN1cmUgdGhhdCB0aGUgRERJIHNlbGVjdGlvbiBNVVggaXMg?=
 =?utf-8?Q?programmed_correctly?=
Thread-Index: AQHV0cWFm1tOxNh+SEOkTK6sa5rqPaf61tyA
Date: Fri, 24 Jan 2020 21:06:30 +0000
Message-ID: <42c771fd85868597a89988e69cd727a8719c4e7b.camel@intel.com>
References: <20200121235848.8457-1-vivek.kasireddy@intel.com>
 <157976742285.1146.7338488867787880617@emeril.freedesktop.org>
In-Reply-To: <157976742285.1146.7338488867787880617@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.12.218]
Content-ID: <0B1149D8073DEB4E951C868067C5AFF7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/ehl=3A_Ensure_that_the_DDI_selection_MUX_is_programmed_co?=
 =?utf-8?q?rrectly?=
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

On Thu, 2020-01-23 at 08:17 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/ehl: Ensure that the DDI selection MUX is programmed
> correctly
> URL   : https://patchwork.freedesktop.org/series/72357/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7787_full -> Patchwork_16202_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed to dinq, thanks for the patch.

> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16202_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180])
> +3 similar issues
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-kbl6/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_isolation@vcs1-dirty-create:
>     - shard-iclb:         [PASS][3] -> [SKIP][4] ([fdo#109276] /
> [fdo#112080]) +3 similar issues
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb4/igt@gem_ctx_isolation@vcs1-dirty-create.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb5/igt@gem_ctx_isolation@vcs1-dirty-create.html
> 
>   * igt@gem_exec_schedule@pi-common-bsd:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] ([i915#677]) +1
> similar issue
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb7/igt@gem_exec_schedule@pi-common-bsd.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb2/igt@gem_exec_schedule@pi-common-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-contexts-bsd2:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276]) +13
> similar issues
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb4/igt@gem_exec_schedule@preempt-contexts-bsd2.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb5/igt@gem_exec_schedule@preempt-contexts-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][9] -> [SKIP][10] ([fdo#112146]) +8
> similar issues
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-apl:          [PASS][11] -> [INCOMPLETE][12]
> ([fdo#103927])
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-thrashing:
>     - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#61])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw5/igt@gem_persistent_relocs@forked-thrashing.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw2/igt@gem_persistent_relocs@forked-thrashing.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-apl:          [PASS][15] -> [FAIL][16] ([i915#644])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#454])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb7/igt@i915_pm_dc@dc6-dpms.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-iclb:         [PASS][19] -> [FAIL][20] ([i915#413])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb8/igt@i915_pm_rps@reset.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-iclb:         [PASS][21] -> [INCOMPLETE][22] ([i915#140])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb3/igt@i915_selftest@mock_requests.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb6/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [PASS][23] -> [DMESG-WARN][24] ([i915#109])
> +1 similar issue
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl4/igt@kms_color@pipe-a-ctm-0-75.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl6/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180])
> +1 similar issue
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#46])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#221])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl6/igt@kms_flip@flip-vs-suspend.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl9/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render:
>     - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#49]) +1
> similar issue
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_psr@psr2_primary_blt:
>     - shard-iclb:         [PASS][33] -> [SKIP][34] ([fdo#109441])
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb1/igt@kms_psr@psr2_primary_blt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#31])
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl3/igt@kms_setmode@basic.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl6/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#112080]) +8
> similar issues
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb4/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_busy@busy-vcs1:
>     - shard-iclb:         [SKIP][39] ([fdo#112080]) -> [PASS][40] +12
> similar issues
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb5/igt@gem_busy@busy-vcs1.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb4/igt@gem_busy@busy-vcs1.html
> 
>   * igt@gem_ctx_persistence@vcs1-queued:
>     - shard-iclb:         [SKIP][41] ([fdo#109276] / [fdo#112080]) ->
> [PASS][42] +1 similar issue
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb6/igt@gem_ctx_persistence@vcs1-queued.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb2/igt@gem_ctx_persistence@vcs1-queued.html
> 
>   * igt@gem_exec_schedule@pi-distinct-iova-bsd:
>     - shard-iclb:         [SKIP][43] ([i915#677]) -> [PASS][44] +1
> similar issue
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd1:
>     - shard-iclb:         [SKIP][45] ([fdo#109276]) -> [PASS][46] +22
> similar issues
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb7/igt@gem_exec_schedule@preempt-queue-bsd1.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb2/igt@gem_exec_schedule@preempt-queue-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd:
>     - shard-iclb:         [SKIP][47] ([fdo#112146]) -> [PASS][48] +4
> similar issues
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb4/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb8/igt@gem_exec_schedule@preempt-queue-contexts-chain-bsd.html
> 
>   * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
>     - shard-tglb:         [INCOMPLETE][49] ([i915#472] / [i915#530])
> -> [PASS][50]
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-tglb4/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive
> :
>     - shard-hsw:          [INCOMPLETE][51] ([i915#61]) -> [PASS][52]
> +1 similar issue
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw7/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrashing:
>     - shard-iclb:         [INCOMPLETE][53] ([i915#140]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb2/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb1/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-thrash-inactive:
>     - shard-skl:          [INCOMPLETE][55] ([i915#530]) -> [PASS][56]
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl10/igt@gem_persistent_relocs@forked-thrash-inactive.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl10/igt@gem_persistent_relocs@forked-thrash-inactive.html
> 
>   * igt@gem_persistent_relocs@forked-thrashing:
>     - shard-kbl:          [INCOMPLETE][57] ([fdo#103665]) ->
> [PASS][58] +2 similar issues
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl2/igt@gem_persistent_relocs@forked-thrashing.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-kbl7/igt@gem_persistent_relocs@forked-thrashing.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctx0:
>     - shard-apl:          [TIMEOUT][59] ([fdo#112271]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl6/igt@gem_ppgtt@blt-vs-render-ctx0.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl2/igt@gem_ppgtt@blt-vs-render-ctx0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-hsw:          [FAIL][61] -> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw4/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw1/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gen7_exec_parse@basic-offset:
>     - shard-hsw:          [FAIL][63] ([i915#694]) -> [PASS][64]
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw2/igt@gen7_exec_parse@basic-offset.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw8/igt@gen7_exec_parse@basic-offset.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-skl:          [INCOMPLETE][65] ([i915#198]) -> [PASS][66]
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-skl7/igt@i915_selftest@mock_requests.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-skl9/igt@i915_selftest@mock_requests.html
>     - shard-glk:          [INCOMPLETE][67] ([i915#58] /
> [k.org#198133]) -> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-glk3/igt@i915_selftest@mock_requests.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-glk2/igt@i915_selftest@mock_requests.html
>     - shard-apl:          [INCOMPLETE][69] ([fdo#103927]) ->
> [PASS][70] +1 similar issue
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl2/igt@i915_selftest@mock_requests.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl8/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][71] ([i915#180]) -> [PASS][72]
> +4 similar issues
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-tglb:         [FAIL][73] ([IGT#5]) -> [PASS][74]
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible:
>     - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76]
> +2 similar issues
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-tglb:         [FAIL][77] ([i915#49]) -> [PASS][78] +6
> similar issues
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
>     - shard-tglb:         [SKIP][79] ([i915#668]) -> [PASS][80] +2
> similar issues
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-tglb2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-tglb1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][81] ([fdo#109441]) -> [PASS][82] +2
> similar issues
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb7/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [FAIL][83] ([i915#31]) -> [PASS][84]
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-apl8/igt@kms_setmode@basic.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-apl2/igt@kms_setmode@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [SKIP][85] ([fdo#109276] / [fdo#112080]) ->
> [FAIL][86] ([IGT#28])
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-iclb7/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-iclb2/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_persistent_relocs@forked-faulting-reloc-thrashing:
>     - shard-hsw:          [INCOMPLETE][87] ([i915#530] / [i915#61])
> -> [INCOMPLETE][88] ([i915#61])
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw7/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw1/igt@gem_persistent_relocs@forked-faulting-reloc-thrashing.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [FAIL][89] ([i915#694]) -> [FAIL][90]
> ([i915#818])
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7787/shard-hsw5/igt@gem_tiled_blits@normal.html
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/shard-hsw5/igt@gem_tiled_blits@normal.html
> 
>   
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#140]: https://gitlab.freedesktop.org/drm/intel/issues/140
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#46]: https://gitlab.freedesktop.org/drm/intel/issues/46
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#668]: https://gitlab.freedesktop.org/drm/intel/issues/668
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#818]: https://gitlab.freedesktop.org/drm/intel/issues/818
>   [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133
> 
> 
> Participating hosts (8 -> 10)
> ------------------------------
> 
>   Additional (2): pig-skl-6260u pig-glk-j5005 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7787 -> Patchwork_16202
>   * Piglit: None -> piglit_4509
> 
>   CI-20190529: 20190529
>   CI_DRM_7787: b1ab43f77fe73cb93a1676454ae8374f9a439f4d @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5377: 1e6cb3e75925cf623df04f78430ae9299632ec3f @
> git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16202: 1308b3ae62e765d495f0928c74609de78cd84ea4 @
> git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
> git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16202/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
