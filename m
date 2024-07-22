Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC2F938B18
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jul 2024 10:21:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C919410E400;
	Mon, 22 Jul 2024 08:21:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D0F+42Sn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CBC10E3F6;
 Mon, 22 Jul 2024 08:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721636464; x=1753172464;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EBq+rRLHpnzX2e2xW9/dzXpZ3h7mXY3NSnXkZ3oFCAA=;
 b=D0F+42SnB8QY4YzJg+LYFmukC5IzkF7L7kUCzl3WAhFWrwSRUR+WwQRb
 ITaX+EEm9xWdKyiW5bid0vZvWImCnImLBShEPiQPfJ0VxMsk7fk8TpA33
 QpTjWn9qlOn/KUhTWR8T/54H/JSe5jqZe766EPybfgVsJJLCkEclblxsd
 Zsc5o+MtN5AaUbCdXfdYpWKlBrLeddwRHUPGjVCZVZkghmvSpvErzVaJa
 Z7CH/WlY5dcZXzhughZQjVWzKyM/9bFh5yPxX/aCohwIiBKApM1LBAc0r
 hezSTy8T9cPaABMzp+ZM8WSRHEZeYMl3x3Fnia1yIkpEdfMspSgtoWcwr g==;
X-CSE-ConnectionGUID: LXDzehu/RXiFgUECPxxuYw==
X-CSE-MsgGUID: V8FqabGSTxGuV4p3Z4/VTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11140"; a="36633628"
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="36633628"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:21:03 -0700
X-CSE-ConnectionGUID: eXmdE69wS7KiL1fIxCO5Sg==
X-CSE-MsgGUID: JI5u4i5LR1eUjnEhlhs5Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,227,1716274800"; d="scan'208";a="56369320"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2024 01:21:01 -0700
Date: Mon, 22 Jul 2024 11:21:15 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>,
 I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_wit?= =?utf-8?Q?h?= [1/3] drm/i915/dp:
 Retrain SST links via a modeset commit
Message-ID: <Zp4We8J-km3UMNmN@ideak-desk.fi.intel.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
 <172112526707.234184.12619041555968580198@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172112526707.234184.12619041555968580198@2413ebb6fbb6>
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

On Tue, Jul 16, 2024 at 10:21:07AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/3] drm/i915/dp: Retrain SST links via a modeset commit
> URL   : https://patchwork.freedesktop.org/series/136044/
> State : failure

Thanks for the reviewes, patchset is pushed to drm-intel-next. The
failure is unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15071_full -> Patchwork_136044v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_136044v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_136044v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/index.html
> 
> Participating hosts (10 -> 9)
> ------------------------------
> 
>   Missing    (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_136044v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_softpin@noreloc-interruptible:
>     - shard-dg2:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-1/igt@gem_softpin@noreloc-interruptible.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-6/igt@gem_softpin@noreloc-interruptible.html

There is no DP sink connected on the above machine, so the changes can't
have an effect on it.

Tests were actually continuing after the above test and only stopped in
gem_ppgtt/blt-vs-render-ctxn, see:
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-6/igt_runner2.txt

The logging could've stopped due to a network error, but wrt. gem_ppggt
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11634
looks also related.

> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all}:
>     - shard-dg1:          NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_15071_full and Patchwork_136044v1_full:
> 
> ### New IGT tests (1) ###
> 
>   * igt@kms_mmap_write_crc@main@pipe-a-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [3.14] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_136044v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#8411]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@drm_fdinfo@busy-idle@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][6] ([i915#8414]) +10 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@drm_fdinfo@busy-idle@vcs1.html
> 
>   * igt@drm_fdinfo@busy@bcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][7] ([i915#8414]) +5 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@drm_fdinfo@busy@bcs0.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle:
>     - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8414])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@drm_fdinfo@virtual-busy-idle.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          [PASS][9] -> [FAIL][10] ([i915#7742])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#7697])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_caching@reads:
>     - shard-mtlp:         NOTRUN -> [SKIP][12] ([i915#4873])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_caching@reads.html
> 
>   * igt@gem_ccs@ctrl-surf-copy-new-ctx:
>     - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#9323])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8562])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@engines-queued:
>     - shard-snb:          NOTRUN -> [SKIP][16] ([i915#1099])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-snb5/igt@gem_ctx_persistence@engines-queued.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#8555]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#4525]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][20] ([i915#6334]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#2846])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-glk7/igt@gem_exec_fair@basic-deadline.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4473] / [i915#4771])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_exec_fair@basic-none.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglu:         NOTRUN -> [FAIL][24] ([i915#2842])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#2842])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][27] -> [FAIL][28] ([i915#2842])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][29] ([i915#2842]) +3 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-dg1:          NOTRUN -> [SKIP][30] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_reloc@basic-range-active:
>     - shard-mtlp:         NOTRUN -> [SKIP][31] ([i915#3281]) +3 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_exec_reloc@basic-range-active.html
> 
>   * igt@gem_exec_reloc@basic-softpin:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281]) +4 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gem_exec_reloc@basic-softpin.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3281]) +11 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_schedule@deep@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4537])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_exec_schedule@deep@rcs0.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#7276])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#4860])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][39] ([i915#10378])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-mtlp:         NOTRUN -> [SKIP][40] ([i915#4613]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#4613]) +1 other test skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_mmap_gtt@big-copy-odd:
>     - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_mmap_gtt@big-copy-odd.html
> 
>   * igt@gem_mmap_gtt@hang-user:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4077])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_mmap_gtt@hang-user.html
> 
>   * igt@gem_mmap_wc@pf-nonblock:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_mmap_wc@pf-nonblock.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#4083]) +1 other test skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_pread@bench:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#3282])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_pread@bench.html
> 
>   * igt@gem_pread@display:
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#3282]) +1 other test skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_pread@display.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-snb:          NOTRUN -> [WARN][48] ([i915#2658])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-snb5/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3282]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-regular-context-2:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4270]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@gem_pxp@create-regular-context-2.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4270]) +4 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4270]) +2 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8428]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-ccs-to-yf-tiled.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4079])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4079])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3282]) +3 other tests skip
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4885])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4885])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][60] ([i915#3297]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#3297]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#3297]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen7_exec_parse@bitmasks:
>     - shard-dg2:          NOTRUN -> [SKIP][63] +5 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gen7_exec_parse@bitmasks.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#2856]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-snb:          NOTRUN -> [SKIP][65] +68 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-snb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#2527]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#2527]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#2856])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_fb_tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#4881])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@i915_fb_tiling.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [PASS][70] -> [ABORT][71] ([i915#9820])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-glk7/igt@i915_module_load@reload-with-fault-injection.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#6621])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#8925])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#4387])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@intel_hwmon@hwmon-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#7707])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@intel_hwmon@hwmon-read.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#4212])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#1769] / [i915#3555])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_atomic_transition@plane-all-modeset-transition.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#1769] / [i915#3555])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#1769] / [i915#3555])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-glk:          NOTRUN -> [SKIP][80] ([i915#1769])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#5286])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_big_fb@4-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#4538] / [i915#5286]) +3 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#5286]) +2 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3638]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3638]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5190]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#6187]) +1 other test skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4538]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10656])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-5/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#6095]) +59 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#6095]) +3 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#10307] / [i915#6095]) +113 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#6095]) +55 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][94] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#6095]) +19 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-glk:          NOTRUN -> [SKIP][96] +52 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@kms_cdclk@mode-transition.html
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3742]) +1 other test skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#7828]) +6 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_edid@vga-edid-read:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] ([i915#7828]) +1 other test skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_chamelium_edid@vga-edid-read.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#7828])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#7828]) +6 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_chamelium_hpd@hdmi-hpd-fast.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#7828]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7118] / [i915#9424])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-3/igt@kms_content_protection@atomic-dpms.html
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#7116] / [i915#9424])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#9424])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#9424])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-mtlp:         NOTRUN -> [SKIP][107] ([i915#6944])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#7118] / [i915#9424])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-64x21:
>     - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#8814]) +1 other test skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-offscreen-64x21.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#11453]) +1 other test skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][111] ([i915#3359])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#11453])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3555] / [i915#8814])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#4103] / [i915#4213])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#4103]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][116] ([i915#9809]) +3 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-mtlp:         NOTRUN -> [SKIP][117] +8 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-snb:          [PASS][118] -> [DMESG-WARN][119] ([i915#10166])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-snb5/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-snb2/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3555])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][121] -> [SKIP][122] ([i915#1257])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-11/igt@kms_dp_aux_dev.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-3/igt@kms_dp_aux_dev.html
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#1257])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840] / [i915#9159])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-dg1:          NOTRUN -> [SKIP][125] ([i915#3840])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3555] / [i915#3840])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3840] / [i915#9053])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3955])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-mtlp:         NOTRUN -> [SKIP][129] ([i915#1839])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#658])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][131] +20 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank:
>     - shard-mtlp:         NOTRUN -> [SKIP][132] ([i915#3637]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_flip@2x-flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#9934]) +3 other tests skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#2587] / [i915#2672]) +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][135] ([i915#2672])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2672]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#2672]) +2 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#8810])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#8708]) +6 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#8708]) +9 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][141] +27 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#3458]) +12 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][143] +1 other test skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#5354]) +5 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][145] ([i915#1825]) +13 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-slowdraw:
>     - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#3458]) +1 other test skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-slowdraw.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3023]) +15 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#8708]) +3 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#1825]) +27 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8228])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#3555] / [i915#8228])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8228])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#1839])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][154] ([i915#7862]) +1 other test fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3555]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#9423]) +7 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][157] ([i915#5176]) +3 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-pixel-format@pipe-c-edp-1.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#9423]) +5 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9423]) +7 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#5235]) +3 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-b-dp-4.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#5235]) +5 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-a-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#5235]) +3 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][164] ([i915#3555] / [i915#5235]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#5354])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5354]) +2 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc5-psr:
>     - shard-dg1:          NOTRUN -> [SKIP][167] ([i915#9685])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_pm_dc@dc5-psr.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][168] -> [SKIP][169] ([i915#4281])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9340])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#8430])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#9519])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-rkl:          [PASS][174] -> [SKIP][175] ([i915#9519])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@pm-caching:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#4077]) +6 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_pm_rpm@pm-caching.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#6524])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#11520])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf@psr2-pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#9808]) +3 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-sf@psr2-pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#11520]) +3 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#11520]) +2 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-cursor-blt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][183] ([i915#9688]) +5 other tests skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_psr@fbc-psr-cursor-blt@edp-1.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#1072] / [i915#9732]) +4 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_psr@psr2-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9685])
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>     - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#5289])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#5289])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-dg1:          NOTRUN -> [SKIP][189] ([i915#3555]) +2 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_setmode@clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#3555] / [i915#8809]) +1 other test skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@kms_setmode@clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-exclusive-crtc:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3555] / [i915#8809] / [i915#8823])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_setmode@invalid-clone-exclusive-crtc.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#3555]) +1 other test skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg1:          NOTRUN -> [FAIL][193] ([IGT#2] / [i915#6493])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#8623])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [PASS][195] -> [FAIL][196] ([i915#9196])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][197] -> [FAIL][198] ([i915#9196]) +1 other test fail
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-snb7/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [PASS][199] -> [FAIL][200] ([i915#9196]) +1 other test fail
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#9906])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#9906])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#8808] / [i915#9906])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@kms_vrr@seamless-rr-switch-virtual.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg1:          NOTRUN -> [SKIP][204] ([i915#2437])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-13/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#2437] / [i915#9412])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf@mi-rpc:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#2434])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@perf@mi-rpc.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2433])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#8516])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#3291] / [i915#3708])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-4/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#3708] / [i915#4077])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][211] ([i915#3708])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-15/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#9917])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-3/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][213] ([i915#9781])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-2/igt@syncobj_timeline@invalid-wait-zero-handles.html
>     - shard-glk:          NOTRUN -> [FAIL][214] ([i915#9781])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-glk3/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [FAIL][215] ([i915#7742]) -> [PASS][216]
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-5/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
> 
>   * igt@gem_eio@hibernate:
>     - shard-tglu:         [ABORT][217] ([i915#10030] / [i915#7975] / [i915#8213]) -> [PASS][218]
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-tglu-10/igt@gem_eio@hibernate.html
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-9/igt@gem_eio@hibernate.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][219] ([i915#2842]) -> [PASS][220]
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg2:          [FAIL][221] ([i915#10378]) -> [PASS][222]
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][223] ([i915#10131] / [i915#10887] / [i915#9820]) -> [PASS][224]
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][225] ([i915#7984]) -> [PASS][226]
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-mtlp-3/igt@i915_power@sanity.html
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-mtlp-7/igt@i915_power@sanity.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-a:
>     - shard-tglu:         [DMESG-WARN][227] ([i915#10166]) -> [PASS][228]
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-tglu-9/igt@kms_cursor_legacy@torture-bo@pipe-a.html
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-tglu-5/igt@kms_cursor_legacy@torture-bo@pipe-a.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg2:          [FAIL][229] ([i915#6880]) -> [PASS][230]
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          [SKIP][231] ([i915#9519]) -> [PASS][232]
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-10/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][233] ([i915#9519]) -> [PASS][234] +1 other test pass
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [FAIL][235] ([i915#4349]) -> [PASS][236] +3 other tests pass
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-1/igt@perf_pmu@busy-double-start@vecs1.html
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          [FAIL][237] ([i915#10378] / [i915#4423]) -> [FAIL][238] ([i915#10378])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg2:          [FAIL][239] ([i915#10446]) -> [FAIL][240] ([i915#10378])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][241] ([i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][242] ([i915#7118] / [i915#9424])
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-11/igt@kms_content_protection@type1.html
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-5/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x170:
>     - shard-dg2:          [SKIP][243] ([i915#11453] / [i915#3359]) -> [SKIP][244] ([i915#11453]) +1 other test skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-512x170.html
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-3/igt@kms_cursor_crc@cursor-onscreen-512x170.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][245] ([i915#10433] / [i915#3458]) -> [SKIP][246] ([i915#3458]) +1 other test skip
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][247] ([i915#4816]) -> [SKIP][248] ([i915#4070] / [i915#4816])
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-rkl-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
>     - shard-dg2:          [SKIP][249] ([i915#1072] / [i915#9732]) -> [SKIP][250] ([i915#1072] / [i915#9673] / [i915#9732]) +5 other tests skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-10/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr-cursor-blt:
>     - shard-dg2:          [SKIP][251] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][252] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-11/igt@kms_psr@psr-cursor-blt.html
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-3/igt@kms_psr@psr-cursor-blt.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90:
>     - shard-dg2:          [SKIP][253] ([i915#11131]) -> [SKIP][254] ([i915#11131] / [i915#4235])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-10/igt@kms_rotation_crc@sprite-rotation-90.html
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][255] ([i915#3089]) -> [FAIL][256] ([i915#9100])
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10030
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131
>   [i915#11453]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3089]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3089
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4473]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4473
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4873]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4873
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6493
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8823]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8823
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15071 -> Patchwork_136044v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_15071: 12d7fd45f021d2077e3381a79dc8bbdff419e4ea @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7925: def41c762723c9ba046a3ffe722d046cd12e993d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_136044v1: 12d7fd45f021d2077e3381a79dc8bbdff419e4ea @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/index.html
