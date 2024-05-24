Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDCD88CE5BE
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 15:07:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1825D10E22A;
	Fri, 24 May 2024 13:07:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kb4ytvTX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C39E810E22A
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 13:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716556071; x=1748092071;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ADFIJwvLH+hTUzdLCZM3cHn5S0XX36H6RAXBsMwvvc4=;
 b=kb4ytvTX1tr4diiZJIIcrNPfYkXR1L0/MjxWA1Z1Gy8xKRxNeW6dJEAJ
 LZciXvvzsBv8tGmVOeVpUlBQtf+LMrVeHIEUqPuymq230uGSvkdH/bkvJ
 WWCxWiGA44BjOyXFNeSvORjgu9Z4/cF4luY2KTZoOR3GRArLZXWFWKKqK
 qjmsmjYEVPC0JXlBolnugPUhQariYssPvRr7mHP/HNtM2qCBGdhBn+moD
 eJDvIPOnElXVsRa4dpx7s/GWp9QuuHZTxXPoV0YNAH9df+yCs6o0JPDhG
 blNomocnAbUwU10VOpDWrNbPTAe4ZbjqPnY/4eSYu9nrB345hZTcr8LP3 A==;
X-CSE-ConnectionGUID: QO6fwyj3Ta+AqcceJZnAwg==
X-CSE-MsgGUID: MyC4xbwBSxC0mV+k6Fba3g==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="13162312"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13162312"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:07:51 -0700
X-CSE-ConnectionGUID: qvwmKsVXSpGl6KYA7I744g==
X-CSE-MsgGUID: kWAXI69gRGqdGsFdO2v1kQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="71428625"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 06:07:50 -0700
Date: Fri, 24 May 2024 16:07:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLklHVA==?= =?utf-8?Q?=3A?= success for
 drm/i915: Fix audio component initialization
Message-ID: <ZlCRKV6LqqtC1Dhz@ideak-desk.fi.intel.com>
References: <20240521143022.3784539-1-imre.deak@intel.com>
 <171636028067.2165803.12708054314165828705@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171636028067.2165803.12708054314165828705@8e613ede5ea5>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 22, 2024 at 06:44:40AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix audio component initialization
> URL   : https://patchwork.freedesktop.org/series/133882/
> State : success

Thanks for the review, patch is pushed to drm-intel-next with the
correct Fixes: line and Cc:stable added.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14791_full -> Patchwork_133882v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_133882v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][1] ([i915#8411])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@api_intel_bb@object-reloc-keep-cache.html
>     - shard-dg2:          NOTRUN -> [SKIP][2] ([i915#8411])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#11078])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@device_reset@cold-reset-bound.html
>     - shard-mtlp:         NOTRUN -> [SKIP][4] ([i915#11078])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][5] ([i915#8414]) +5 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@drm_fdinfo@busy-idle-check-all@vcs1.html
> 
>   * igt@drm_fdinfo@busy-idle@vecs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414]) +5 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@drm_fdinfo@busy-idle@vecs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#8414]) +7 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_caching@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][8] ([i915#4873])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_caching@reads.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#9323])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-mtlp:         NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#9310])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_compute@compute-square.html
> 
>   * igt@gem_ctx_persistence@engines-hostile-preempt:
>     - shard-snb:          NOTRUN -> [SKIP][13] ([i915#1099]) +2 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@gem_ctx_persistence@engines-hostile-preempt.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-mtlp:         NOTRUN -> [SKIP][14] ([i915#8555])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#280])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg1:          NOTRUN -> [SKIP][16] ([i915#280])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#4036])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_exec_balancer@invalid-bonds.html
>     - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4036])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4525]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture@vecs0-smem:
>     - shard-mtlp:         NOTRUN -> [FAIL][20] ([i915#10386])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_exec_capture@capture@vecs0-smem.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-glk:          NOTRUN -> [FAIL][21] ([i915#9606])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-glk3/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-snb:          NOTRUN -> [SKIP][22] +160 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#2846])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-3/igt@gem_exec_fair@basic-deadline.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4473] / [i915#4771])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [PASS][26] -> [FAIL][27] ([i915#2842])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo:
>     - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_exec_fair@basic-pace-solo.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-rkl:          [PASS][29] -> [FAIL][30] ([i915#2842]) +1 other test fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-5/igt@gem_exec_fair@basic-pace@vecs0.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3711])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_reloc@basic-gtt-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281]) +4 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - shard-dg1:          NOTRUN -> [SKIP][34] ([i915#3281]) +4 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_exec_reloc@basic-write-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#3281]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#4812])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][38] ([i915#4860])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4613]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg2:          [PASS][40] -> [FAIL][41] ([i915#10378])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][42] ([i915#4613]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-glk6/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4613]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [PASS][44] -> [TIMEOUT][45] ([i915#5493])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4565])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#284])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_media_vme.html
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#284])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4077]) +5 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4077]) +12 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_mmap_gtt@cpuset-medium-copy.html
> 
>   * igt@gem_mmap_gtt@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4077])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_mmap_gtt@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@coherency:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4083]) +5 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_mmap_wc@coherency.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4083]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_partial_pwrite_pread@reads:
>     - shard-dg2:          NOTRUN -> [SKIP][54] ([i915#3282]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_partial_pwrite_pread@reads.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#3282]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][56] ([i915#2658])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-glk1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#3282]) +8 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4270]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4270]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#4270])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4270]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#8428]) +4 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][63] ([i915#4079]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4885])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_softpin@evict-snoop.html
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4885])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3282]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4079]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@gem_tiled_pread_pwrite.html
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4079])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3297])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3297] / [i915#4880])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_userptr_blits@map-fixed-invalidate.html
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#3297] / [i915#4880])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@readonly-pwrite-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#3297]) +3 other tests skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@gem_userptr_blits@readonly-pwrite-unsync.html
> 
>   * igt@gem_userptr_blits@relocations:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#3281])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_userptr_blits@relocations.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#3297])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#3297]) +1 other test skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#2527])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#2856]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#2527])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_fb_tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#4881])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@i915_fb_tiling.html
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#4881])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#7178])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [PASS][82] -> [FAIL][83] ([i915#3591])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#6245])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#6188])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#4212])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#3826])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#8709]) +11 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-snb:          NOTRUN -> [SKIP][89] ([i915#1769])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#5286])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-rkl:          NOTRUN -> [SKIP][91] ([i915#5286]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-dg2:          NOTRUN -> [SKIP][93] +5 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#3638]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3638])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4538]) +5 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#6187])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#10656]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#6095]) +91 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#6095]) +31 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-d-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#6095]) +75 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#10307] / [i915#6095]) +161 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-8/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#10278])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs.html
>     - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#10278])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3742])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][108] ([i915#7213]) +3 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-a-dp-4.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio:
>     - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#7828]) +4 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_chamelium_audio@hdmi-audio.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#7828]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-aspect-ratio:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#7828]) +5 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#7828]) +7 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][113] ([i915#7173])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#6944] / [i915#9424])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#3299]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_content_protection@dp-mst-type-1.html
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#3299])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] ([i915#3555] / [i915#6944] / [i915#9424])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][118] ([i915#1339] / [i915#7173])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@kms_content_protection@uevent@pipe-a-dp-4.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x10:
>     - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3555]) +2 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3555]) +4 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#8814]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_cursor_crc@cursor-offscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3555] / [i915#8814]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#3359])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3359]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#4103])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][126] +24 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#9809])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] +21 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#4213])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-snb:          [PASS][130] -> [DMESG-WARN][131] ([i915#10166])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb2/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb2/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#9723])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#8588])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_display_modes@mst-extended-mode-negative.html
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#8588])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#3804])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#8812])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#3555] / [i915#3840])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_dsc@dsc-basic.html
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#3555] / [i915#3840] / [i915#9159])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#3840] / [i915#9688])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#3469])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4854])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_feature_discovery@chamelium.html
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#4854])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg1:          NOTRUN -> [SKIP][143] ([i915#1839])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-dpms-vs-vblank-race:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#3637]) +2 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_flip@2x-dpms-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#9934]) +4 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2:
>     - shard-dg2:          [PASS][146] -> [FAIL][147] ([i915#2122]) +1 other test fail
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-3/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-2/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-hdmi-a2.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a4:
>     - shard-dg1:          [PASS][148] -> [FAIL][149] ([i915#2122])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg1-18/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a4.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_flip@plain-flip-fb-recreate@b-hdmi-a4.html
> 
>   * igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][150] ([i915#2122])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#2672])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#2672])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#8810]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][155] ([i915#2672] / [i915#3555])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#5354]) +9 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-snb:          [PASS][157] -> [SKIP][158] +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#8708]) +4 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][160] ([i915#8708]) +16 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
>     - shard-dg2:          [PASS][161] -> [FAIL][162] ([i915#6880])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][163] +47 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#1825]) +19 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#1825]) +16 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#5439])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][167] ([i915#10055])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#3458]) +3 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#3023]) +10 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#8708]) +5 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#3458]) +18 other tests skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3555] / [i915#8228])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-mtlp:         NOTRUN -> [SKIP][173] ([i915#3555] / [i915#8228])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#8228])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4816])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#6301])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_lowres@tiling-4@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#3582]) +3 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_plane_lowres@tiling-4@pipe-b-edp-1.html
> 
>   * igt@kms_plane_lowres@tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#3555] / [i915#8821])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_plane_lowres@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][179] ([i915#8292])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#9423]) +7 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9423]) +9 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#9423]) +15 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#5235]) +9 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#5235]) +11 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][186] ([i915#5235]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#5235]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][188] +192 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-glk3/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#3361])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html
>     - shard-tglu:         [PASS][190] -> [FAIL][191] ([i915#9295])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#10139])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#9340])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [PASS][194] -> [SKIP][195] ([i915#9519])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [PASS][196] -> [SKIP][197] ([i915#9519]) +3 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#6524])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#6524])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9683])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#9683])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][202] ([i915#9688]) +9 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@kms_psr@fbc-pr-cursor-render.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#4077] / [i915#9688])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr-sprite-plane-move:
>     - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_psr@psr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#9685])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#8623]) +1 other test skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#8623])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][210] -> [FAIL][211] ([i915#9196])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-snb:          [PASS][212] -> [FAIL][213] ([i915#9196])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][214] ([i915#9196])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#3555] / [i915#8808])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_vrr@flip-basic.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-mtlp:         NOTRUN -> [SKIP][216] ([i915#8808] / [i915#9906])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@kms_vrr@flip-basic-fastset.html
>     - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#9906])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#2437] / [i915#9412])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#2437] / [i915#9412])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@gen8-unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#2436])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-idle-no-semaphores@rcs0:
>     - shard-mtlp:         [PASS][221] -> [FAIL][222] ([i915#10678])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-mtlp-1/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html
> 
>   * igt@perf_pmu@faulting-read@gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#8440])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@perf_pmu@faulting-read@gtt.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#8516])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#3708])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][226] ([i915#3291] / [i915#3708])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-4/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#3708] / [i915#4077])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@prime_vgem@coherency-gtt.html
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3708] / [i915#4077])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-8/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#3708])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#9917])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][231] ([i915#9779])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#2575]) +1 other test skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html
> 
>   * igt@v3d/v3d_submit_cl@bad-multisync-pad:
>     - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#2575]) +8 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-1/igt@v3d/v3d_submit_cl@bad-multisync-pad.html
> 
>   * igt@v3d/v3d_wait_bo@bad-bo:
>     - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#2575]) +10 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-17/igt@v3d/v3d_wait_bo@bad-bo.html
> 
>   * igt@vc4/vc4_label_bo@set-label:
>     - shard-mtlp:         NOTRUN -> [SKIP][235] ([i915#7711]) +4 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-mtlp-3/igt@vc4/vc4_label_bo@set-label.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
>     - shard-dg1:          NOTRUN -> [SKIP][236] ([i915#7711]) +7 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html
> 
>   * igt@vc4/vc4_wait_bo@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][237] ([i915#7711]) +2 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-3/igt@vc4/vc4_wait_bo@bad-bo.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-1ns:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#7711]) +2 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-5/igt@vc4/vc4_wait_seqno@bad-seqno-1ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          [FAIL][239] ([i915#7742]) -> [PASS][240]
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-4/igt@drm_fdinfo@most-busy-check-all@rcs0.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-2/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglu:         [FAIL][241] ([i915#2842]) -> [PASS][242]
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-rkl:          [FAIL][243] ([i915#2842]) -> [PASS][244]
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg1:          [FAIL][245] ([i915#10378]) -> [PASS][246]
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg1-18/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg2:          [FAIL][247] ([i915#10378]) -> [PASS][248]
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][249] ([i915#9849]) -> [PASS][250]
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][251] ([i915#7790]) -> [PASS][252]
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb7/igt@i915_pm_rps@reset.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          [FAIL][253] ([i915#10031]) -> [PASS][254]
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-2/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][255] ([i915#2122]) -> [PASS][256]
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [FAIL][257] ([i915#6880]) -> [PASS][258]
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [SKIP][259] ([i915#9519]) -> [PASS][260] +1 other test pass
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][261] ([i915#9519]) -> [PASS][262]
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-tglu:         [FAIL][263] ([i915#9196]) -> [PASS][264] +1 other test pass
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3:
>     - shard-dg2:          [FAIL][265] ([i915#9196]) -> [PASS][266]
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-3.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][267] ([i915#4349]) -> [PASS][268] +3 other tests pass
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-snb:          [INCOMPLETE][269] ([i915#8816]) -> [SKIP][270]
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-snb7/igt@kms_content_protection@lic-type-1.html
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-snb6/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt:
>     - shard-dg2:          [SKIP][271] ([i915#3458]) -> [SKIP][272] ([i915#10433] / [i915#3458]) +6 other tests skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][273] ([i915#10433] / [i915#3458]) -> [SKIP][274] ([i915#3458]) +2 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][275] ([i915#4816]) -> [SKIP][276] ([i915#4070] / [i915#4816])
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          [SKIP][277] ([i915#1072] / [i915#9732]) -> [SKIP][278] ([i915#1072] / [i915#9673] / [i915#9732]) +15 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr-no-drrs:
>     - shard-dg2:          [SKIP][279] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][280] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14791/shard-dg2-11/igt@kms_psr@fbc-psr-no-drrs.html
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/shard-dg2-8/igt@kms_psr@fbc-psr-no-drrs.html
> 
>   
>   [i915#10031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10031
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10139]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10139
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#10678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10678
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3582
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8440]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8440
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816
>   [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9310]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9310
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14791 -> Patchwork_133882v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14791: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7865: 3578243d16f1ea5055f7baa0b1fe7f520538c4ab @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_133882v1: 413686054e38d01eb91dfb49d665d1ab7d004848 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133882v1/index.html
