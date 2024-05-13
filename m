Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8348C3DF0
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 11:17:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B28D10E521;
	Mon, 13 May 2024 09:17:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nDvrDkvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F0F10E521;
 Mon, 13 May 2024 09:17:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715591873; x=1747127873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1ZF/ZulehC43kX8UZS9Bv+GoqTwFLJ9T8MGPvREah4g=;
 b=nDvrDkvLOPOGKFt4nONd4CA8XsSRAvSEO5Y3T0gvvN5cLban3BWBPA9l
 lmaaXyx7/fNA3QVpVr7lW6SY/i5aw3aMYgBiyxsUkR8u0V6+J4J71J5vq
 ZNPMoVr58B6O3SUxSgmd7n0/8/La92Kk+UrpJzrzEhMDcZZVbyfAdmjdj
 TtSwG+WD2dsqZhzE5l1OkZTYhn8g8Uuw8FYL3Oys1jWC6WoGVc6ub1+El
 IZ/P8K69+5i0GL5SThUM05QE6XUVzgZcpuQ2VFe80pIPLCpjT5FZzTMo9
 jXXYon/OqR531KXl6CKaZ2aPt3fzLlPRWcPTsDG9qqauKe5eRyymU6rj5 g==;
X-CSE-ConnectionGUID: SjVeaxDlS3mkEZNh2KfYgA==
X-CSE-MsgGUID: BrNM3eDZR3GahXDZ/ifYmA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="11495910"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="11495910"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 02:17:52 -0700
X-CSE-ConnectionGUID: F5o52KHyT/KOMhzaBIWyuw==
X-CSE-MsgGUID: nwpZh21MT5W+u+9lJuc60w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="30316026"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.249.34.202])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 02:17:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.IGT: failure for drm/i915/gt: Disarm
 breadcrumbs if engines are already idle (rev4)
Date: Mon, 13 May 2024 11:17:48 +0200
Message-ID: <3288328.aeNJFYEL58@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <171532152223.2055985.5770695254139448755@8e613ede5ea5>
References: <20240423165505.465734-2-janusz.krzysztofik@linux.intel.com>
 <171532152223.2055985.5770695254139448755@8e613ede5ea5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Friday, 10 May 2024 08:12:02 GMT+2 Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Disarm breadcrumbs if engines are already idle (rev4)
> URL   : https://patchwork.freedesktop.org/series/132786/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14738_full -> Patchwork_132786v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_132786v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_132786v4_full, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_132786v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_getversion@basic:
>     - shard-glk:          NOTRUN -> [CRASH][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk6/igt@core_getversion@basic.html

Reported for all post-merge runs by all machines since IGT_7841 / 
CI_DRM_14731, fixed in CI_DRM_14749 -- not a regression caused by my patch.

> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg2:          NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@device_reset@cold-reset-bound.html

Always skips, on all machines, at least recently, since IGT_7828 till 
IGT_7847:
https://intel-gfx-ci.01.org/tree/drm-tip/igt@device_reset@cold-reset-bound.html
I have no idea why this has been reported as a regression.

> 
>   * igt@kms_atomic@plane-immutable-zpos@pipe-a-edp-1:
>     - shard-mtlp:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-mtlp-1/igt@kms_atomic@plane-immutable-zpos@pipe-a-edp-1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_atomic@plane-immutable-zpos@pipe-a-edp-1.html

The same happened already twice for recent post-merge runs, runconfigs 
CI_DRM_14743 and CI_DRM_14749:
https://gfx-ci.igk.intel.com/cibuglog-ng/testresult/1778568997
https://gfx-ci.igk.intel.com/cibuglog-ng/testresult/1779321094
Not a regression caused by my patch.

I915-ci-infra@lists.freedesktop.org, please update filters and re-report.

Thanks,
Janusz


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_132786v4_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#8414]) +9 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@drm_fdinfo@busy-idle-check-all@vcs1.html
> 
>   * igt@drm_fdinfo@isolation@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414]) +5 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@drm_fdinfo@isolation@rcs0.html
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][8] ([i915#7742])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg2:          NOTRUN -> [SKIP][9] ([i915#8414])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [PASS][10] -> [FAIL][11] ([i915#7742])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#3555] / [i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#9323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_ccs@suspend-resume.html
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#9323])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#7697]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [ABORT][17] ([i915#9846])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][18] -> [FAIL][19] ([i915#6268])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [PASS][20] -> [FAIL][21] ([i915#9561])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_ctx_persistence@engines-hang:
>     - shard-snb:          NOTRUN -> [SKIP][22] ([i915#1099])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-snb5/igt@gem_ctx_persistence@engines-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-close:
>     - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#8555])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-close.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#8555])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#280]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-dg1:          NOTRUN -> [SKIP][26] ([i915#280])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-dg2:          NOTRUN -> [ABORT][27] ([i915#10030] / [i915#7975] / [i915#8213])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-mtlp:         NOTRUN -> [SKIP][28] ([i915#4812])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4771])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#4036])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#4525]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#6334]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#6344])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-glk:          NOTRUN -> [FAIL][34] ([i915#9606])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk6/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_capture@many-4k-zero:
>     - shard-rkl:          NOTRUN -> [FAIL][35] ([i915#9606])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_exec_capture@many-4k-zero.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][37] ([i915#2842])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [PASS][38] -> [FAIL][39] ([i915#2842]) +1 other test fail
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg1:          NOTRUN -> [SKIP][40] ([i915#3539])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [PASS][41] -> [FAIL][42] ([i915#2842])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-6/igt@gem_exec_fair@basic-pace@rcs0.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fence@submit3:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4812])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_exec_fence@submit3.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#3281]) +8 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3281]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#3281]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-16/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#3281]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4812])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_gtt_cpu_tlb:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4077]) +4 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_gtt_cpu_tlb.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4613])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg1:          [PASS][51] -> [FAIL][52] ([i915#10378])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-15/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random@lmem0:
>     - shard-dg2:          [PASS][53] -> [INCOMPLETE][54] ([i915#10317])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#4613]) +2 other tests skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-glk:          NOTRUN -> [SKIP][56] ([i915#4613]) +2 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk1/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#4565])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_lmem_swapping@verify-ccs@lmem0.html
> 
>   * igt@gem_media_vme:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#284])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_media_vme.html
> 
>   * igt@gem_mmap_gtt@basic-read-write:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4077]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_mmap_gtt@basic-read-write.html
> 
>   * igt@gem_mmap_gtt@zero-extend:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#4077])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_mmap_gtt@zero-extend.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4083]) +5 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#3282])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3282]) +6 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3282]) +2 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-mtlp:         NOTRUN -> [SKIP][65] ([i915#4270]) +1 other test skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#4270]) +2 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#4270]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][68] +233 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk1/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#5190] / [i915#8428])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][70] ([i915#8428])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4079]) +2 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_unfence_active_buffers:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#4879])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_unfence_active_buffers.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#3323])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#3297])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3297] / [i915#4880])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#3297]) +3 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][78] ([i915#2856])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@batch-invalid-length:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#2527]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#2856])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-5/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#2527]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@i915_module_load@load:
>     - shard-glk:          NOTRUN -> [SKIP][82] ([i915#6227])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk6/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          NOTRUN -> [ABORT][83] ([i915#9849])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#6412])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#8436])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#8431])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-mtlp:         NOTRUN -> [FAIL][87] ([i915#8346])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#8925])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#4387])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [PASS][90] -> [SKIP][91] ([i915#7984])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-mtlp-1/igt@i915_power@sanity.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@i915_power@sanity.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#5723])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
>     - shard-dg1:          NOTRUN -> [SKIP][93] ([i915#5723])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          NOTRUN -> [FAIL][94] ([i915#10031])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#4212])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#4212])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][97] ([i915#4212])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#8709]) +11 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#1769] / [i915#3555])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#5286]) +6 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#3638]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4538] / [i915#5190]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#3638]) +2 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-mtlp:         NOTRUN -> [SKIP][105] +8 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#4538]) +4 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_joiner@basic-force-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#10656])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_big_joiner@basic-force-joiner.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#10656]) +1 other test skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#6095]) +91 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#6095]) +19 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#6095]) +67 other tests skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#10307] / [i915#6095]) +173 other tests skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#10278])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#10278])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html
> 
>   * igt@kms_cdclk@mode-transition-all-outputs:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3742])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_cdclk@mode-transition-all-outputs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#7213]) +3 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][118] +2 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#7828]) +5 other tests skip
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#7828])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#7828]) +1 other test skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-single:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#7828]) +9 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html
> 
>   * igt@kms_color@deep-color:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3555]) +6 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_color@deep-color.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#9424])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@kms_content_protection@content-type-change.html
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#9424])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3116])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#3299]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#3299])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#7118] / [i915#9424])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@legacy@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][130] ([i915#7173])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-11/igt@kms_content_protection@legacy@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#7118])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8814]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3359])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3359]) +2 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#4103] / [i915#4213])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#4103]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#9833])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#9227])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-11/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-dp-4.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#9723])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#9723]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3804])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#1257])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-5/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3840])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3840] / [i915#9053])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#3955]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#1839])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#1839])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#9337])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#658])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-rkl:          NOTRUN -> [SKIP][150] +55 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#3637]) +2 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#8381])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#9934]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a3:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][154] ([i915#6113])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-5/igt@kms_flip@flip-vs-panning-vs-hang@d-hdmi-a3.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-vga1:
>     - shard-snb:          [PASS][155] -> [FAIL][156] ([i915#2122])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-snb2/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-snb7/igt@kms_flip@plain-flip-fb-recreate@a-vga1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [FAIL][157] ([i915#2122])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_flip@plain-flip-ts-check@a-hdmi-a4.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#2672]) +3 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#2672] / [i915#3555])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2672])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#8810])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][163] ([i915#8708]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#1825]) +45 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-rkl:          NOTRUN -> [FAIL][165] ([i915#10541])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][166] +38 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#5354]) +10 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
>     - shard-snb:          NOTRUN -> [SKIP][168] +15 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
>     - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#3458]) +13 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#5439])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
>     - shard-dg1:          NOTRUN -> [SKIP][171] ([i915#5439])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
>     - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#10055])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9766])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#8708]) +1 other test skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#1825]) +9 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#3023]) +27 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#8708]) +13 other tests skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8228]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-dpms:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8228])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_hdr@static-toggle-dpms.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][181] ([i915#3555] / [i915#8228])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#6301])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_panel_fitting@legacy.html
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#6301])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_multiple@tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][184] ([i915#3555]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_plane_multiple@tiling-4.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][185] ([i915#8292])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#9423]) +3 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#9423]) +5 other tests skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#9423]) +15 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5176] / [i915#9423]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#5235]) +5 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][191] ([i915#5235]) +7 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#5235]) +3 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][194] -> [FAIL][195] ([i915#9295])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#9685])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][197] ([i915#9340])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#8430])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#8430])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#9519])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#9519])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][202] -> [SKIP][203] ([i915#9519]) +1 other test skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][204] -> [SKIP][205] ([i915#9519]) +3 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#6524])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#6524] / [i915#6805])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#6524])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#4348])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#1072] / [i915#9732]) +24 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-sprite-plane-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#9688]) +2 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_psr@pr-sprite-plane-move.html
> 
>   * igt@kms_psr@psr-cursor-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][212] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_psr@psr-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][213] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_psr@psr2-primary-mmap-cpu.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-dg1:          NOTRUN -> [SKIP][214] ([i915#9685])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][215] ([i915#4884])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#4235] / [i915#5190])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#4235])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#5289]) +2 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#8623])
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-mtlp:         NOTRUN -> [SKIP][220] ([i915#8623])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [PASS][221] -> [FAIL][222] ([i915#9196])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
>     - shard-mtlp:         [PASS][223] -> [FAIL][224] ([i915#9196])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
> 
>   * igt@kms_vrr@seamless-rr-switch-vrr:
>     - shard-rkl:          NOTRUN -> [SKIP][225] ([i915#9906])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg1:          NOTRUN -> [SKIP][226] ([i915#2437])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#2437] / [i915#9412])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#2434])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@perf@mi-rpc.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#2435])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][230] -> [FAIL][231] ([i915#4349]) +3 other tests fail
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#8850])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][233] ([i915#10537] / [i915#5793])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-6/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_vgem@basic-read:
>     - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#3291] / [i915#3708])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@prime_vgem@basic-read.html
>     - shard-dg1:          NOTRUN -> [SKIP][235] ([i915#3708])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-15/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][236] ([i915#3708] / [i915#4077])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3708])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#9917])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#9917]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_timeline@etime-single-wait-available-unsubmitted:
>     - shard-dg1:          [PASS][240] -> [DMESG-WARN][241] ([i915#4423])
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-18/igt@syncobj_timeline@etime-single-wait-available-unsubmitted.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-16/igt@syncobj_timeline@etime-single-wait-available-unsubmitted.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][242] ([i915#9781])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-4/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#4818])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@tools_test@sysfs_l3_parity.html
> 
>   * igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync:
>     - shard-mtlp:         NOTRUN -> [SKIP][244] ([i915#2575]) +3 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@v3d/v3d_job_submission@multiple-singlesync-to-multisync.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][245] ([i915#2575]) +8 other tests skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@v3d/v3d_perfmon@get-values-invalid-perfmon.html
> 
>   * igt@v3d/v3d_submit_cl@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#2575]) +2 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-3/igt@v3d/v3d_submit_cl@bad-bo.html
> 
>   * igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done:
>     - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#7711]) +6 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-18/igt@vc4/vc4_dmabuf_poll@poll-write-waits-until-write-done.html
> 
>   * igt@vc4/vc4_tiling@set-bad-modifier:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#7711]) +10 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-6/igt@vc4/vc4_tiling@set-bad-modifier.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][249] ([i915#7711]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-4/igt@vc4/vc4_wait_bo@used-bo.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][250] ([i915#6268]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-2/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][252] ([i915#5784]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-15/igt@gem_eio@reset-stress.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-14/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][254] ([i915#2842]) -> [PASS][255] +1 other test pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-tglu:         [FAIL][256] ([i915#2842]) -> [PASS][257]
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-7/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-5/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg2:          [FAIL][258] ([i915#10378]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-6/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-3/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          [FAIL][260] ([i915#10378]) -> [PASS][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-14/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_mmap_offset@close-race:
>     - shard-dg1:          [INCOMPLETE][262] -> [PASS][263]
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-18/igt@gem_mmap_offset@close-race.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-16/igt@gem_mmap_offset@close-race.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [INCOMPLETE][264] ([i915#9820] / [i915#9849]) -> [PASS][265]
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-snb:          [INCOMPLETE][266] ([i915#9849]) -> [PASS][267]
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [INCOMPLETE][268] ([i915#1982] / [i915#9820] / [i915#9849]) -> [PASS][269]
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-16/igt@i915_module_load@reload-with-fault-injection.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg2:          [FAIL][270] ([i915#3591]) -> [PASS][271]
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-11/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@kms_flip@flip-vs-panning-vs-hang@a-edp1:
>     - shard-mtlp:         [INCOMPLETE][272] ([i915#6113]) -> [PASS][273]
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-mtlp-4/igt@kms_flip@flip-vs-panning-vs-hang@a-edp1.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-6/igt@kms_flip@flip-vs-panning-vs-hang@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-vga1:
>     - shard-snb:          [FAIL][274] ([i915#2122]) -> [PASS][275]
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-snb7/igt@kms_flip@plain-flip-ts-check@a-vga1.html
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-snb5/igt@kms_flip@plain-flip-ts-check@a-vga1.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4:
>     - shard-dg1:          [FAIL][276] ([i915#2122]) -> [PASS][277] +1 other test pass
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check@a-hdmi-a4.html
> 
>   * igt@kms_flip@wf_vblank-ts-check@c-hdmi-a4:
>     - shard-dg1:          [FAIL][278] -> [PASS][279] +1 other test pass
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-15/igt@kms_flip@wf_vblank-ts-check@c-hdmi-a4.html
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-14/igt@kms_flip@wf_vblank-ts-check@c-hdmi-a4.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [SKIP][280] ([i915#9519]) -> [PASS][281]
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [FAIL][282] ([i915#9196]) -> [PASS][283]
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [FAIL][284] ([i915#9196]) -> [PASS][285]
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          [INCOMPLETE][286] ([i915#10513]) -> [INCOMPLETE][287] ([i915#10513] / [i915#1982])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-10/igt@gem_eio@kms.html
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-8/igt@gem_eio@kms.html
>     - shard-dg1:          [INCOMPLETE][288] ([i915#10513]) -> [INCOMPLETE][289] ([i915#10513] / [i915#1982])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-14/igt@gem_eio@kms.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-17/igt@gem_eio@kms.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][290] ([i915#10047]) -> [INCOMPLETE][291] ([i915#10047] / [i915#9820])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-tglu-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [INCOMPLETE][292] ([i915#1982] / [i915#9849]) -> [INCOMPLETE][293] ([i915#9849])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-2/igt@i915_module_load@reload-with-fault-injection.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][294] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][295] ([i915#7118] / [i915#9424])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-11/igt@kms_content_protection@type1.html
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_content_protection@type1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-dg1:          [SKIP][296] ([i915#8708]) -> [SKIP][297] ([i915#4423] / [i915#8708])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg1:          [SKIP][298] -> [SKIP][299] ([i915#4423])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][300] ([i915#3458]) -> [SKIP][301] ([i915#10433] / [i915#3458])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][302] ([i915#4070] / [i915#4816]) -> [SKIP][303] ([i915#4816])
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@psr2-cursor-blt:
>     - shard-dg2:          [SKIP][304] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][305] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-10/igt@kms_psr@psr2-cursor-blt.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][306] ([i915#1072] / [i915#9732]) -> [SKIP][307] ([i915#1072] / [i915#9673] / [i915#9732]) +16 other tests skip
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-8/igt@kms_psr@psr2-primary-mmap-gtt.html
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-11/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][308] ([i915#9100]) -> [FAIL][309] ([i915#7484])
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14738/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/shard-dg2-5/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10031
>   [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
>   [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10317]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10317
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
>   [i915#10537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10537
>   [i915#10541]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10541
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4879]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5793]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8346
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8431]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8431
>   [i915#8436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8436
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
>   [i915#9846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9846
>   [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14738 -> Patchwork_132786v4
> 
>   CI-20190529: 20190529
>   CI_DRM_14738: 31ab65c31f1818741354092fba7308fba098b1cd @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7846: 4a5fd4e7cb2798636f6464e2bd61399f3242b322 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_132786v4: 31ab65c31f1818741354092fba7308fba098b1cd @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v4/index.html
> 




