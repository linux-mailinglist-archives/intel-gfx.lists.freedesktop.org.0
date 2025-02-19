Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD710A3BFB7
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 14:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 684C410E17A;
	Wed, 19 Feb 2025 13:20:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NNELJcmk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D440010E17A;
 Wed, 19 Feb 2025 13:20:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739971236; x=1771507236;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=X2AlPQP4Zp86L/nMW1SB/Q3nwr3tAWNVTW3x39mF1is=;
 b=NNELJcmkq92MY+bMsBTdMajDKMhKkNeap4J4rgdDVEJ4H5+PC8UN7d5m
 OGN4OC2sP+d47TvQayww777bWCbktI0K5BRGM94+P2AkoTq/29gv9W2PY
 W81rkE82nY4lcs5mlHg1nKK8G6jd/AId5hHyLTJW8qdKWuMkLrPod7bd6
 kanczlmhR2szdeyLl8OypyVfAaAFq5uK7icDo0qT5Yo/2p0fnvaVYFAbO
 R3fk/R1i6tW1jJhX6k7/mVGR0Lv5NOU1Szrg6wSgWP6VnnC1ezX3eEEUB
 oGem4cuuWTtYjHJO2r8XmDsgXH73OoG/zuvfZUGSM/kNC5GVM04PfdVnF g==;
X-CSE-ConnectionGUID: nNrmjcH8RDuUNFgwPoai/Q==
X-CSE-MsgGUID: REoidcO+S8ylZ8fqHpoh1A==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44622814"
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="44622814"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:20:36 -0800
X-CSE-ConnectionGUID: Tgui48f0S26Ok1LGw2btqQ==
X-CSE-MsgGUID: rDtWyyAbSzSrkjiqxJa24Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,299,1732608000"; d="scan'208";a="119822207"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 05:20:34 -0800
Date: Wed, 19 Feb 2025 15:21:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/dp: Fix 128b/132b modeset issues
Message-ID: <Z7Xa3z7wdI_b7Fa0@ideak-desk.fi.intel.com>
References: <20250217223828.1166093-1-imre.deak@intel.com>
 <173985337661.3442418.13852246095833779014@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173985337661.3442418.13852246095833779014@b555e5b46a47>
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

On Tue, Feb 18, 2025 at 04:36:16AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix 128b/132b modeset issues
> URL   : https://patchwork.freedesktop.org/series/144984/
> State : failure

Thanks for the ack/review, patchset pushed to drm-intel-fixes, adding
the bspec references to patch 1.

The failures are unrelated, since none of the hosts has an UHBR sink.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16146_full -> Patchwork_144984v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_144984v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144984v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 10)
> ------------------------------
> 
>   Missing    (1): pig-kbl-iris 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_144984v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_busy@extended-modeset-hang-newfb@pipe-b:
>     - shard-snb:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-snb7/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-snb6/igt@kms_busy@extended-modeset-hang-newfb@pipe-b.html
> 
>   * igt@kms_dp_linktrain_fallback@dp-fallback:
>     - shard-dg2-9:        NOTRUN -> [SKIP][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_dp_linktrain_fallback@dp-fallback.html
>     - shard-rkl:          NOTRUN -> [SKIP][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_dp_linktrain_fallback@dp-fallback.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_144984v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#8411])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@crc32:
>     - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#6230])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@api_intel_bb@crc32.html
> 
>   * igt@device_reset@unbind-cold-reset-rebind:
>     - shard-dg2:          NOTRUN -> [SKIP][7] ([i915#11078])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@device_reset@unbind-cold-reset-rebind.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-tglu:         [PASS][8] -> [ABORT][9] ([i915#12817] / [i915#5507])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-tglu-3/igt@device_reset@unbind-reset-rebind.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs0:
>     - shard-dg2-9:        NOTRUN -> [SKIP][10] ([i915#11527] / [i915#8414]) +6 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vcs0.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vecs1:
>     - shard-dg2-9:        NOTRUN -> [SKIP][11] ([i915#8414])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@drm_fdinfo@busy-idle-check-all@vecs1.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8414]) +16 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#9323])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@large-ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#13008])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@gem_ccs@large-ctrl-surf-copy.html
>     - shard-tglu:         NOTRUN -> [SKIP][15] ([i915#13008])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@gem_ccs@large-ctrl-surf-copy.html
> 
>   * igt@gem_close@basic:
>     - shard-rkl:          [PASS][16] -> [DMESG-WARN][17] ([i915#12964]) +5 other tests dmesg-warn
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@gem_close@basic.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-2/igt@gem_close@basic.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#7697])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_compute@compute-square:
>     - shard-dg2-9:        NOTRUN -> [FAIL][19] ([i915#13665])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_compute@compute-square.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#8562])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg2:          NOTRUN -> [SKIP][21] ([i915#8555])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#8555])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#5882]) +6 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_ctx_persistence@saturated-hostile-nopreempt@vcs0.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#280])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-dg2-9:        NOTRUN -> [SKIP][25] ([i915#280])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_ctx_sseu@invalid-args.html
>     - shard-rkl:          NOTRUN -> [SKIP][26] ([i915#280])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_eio@execbuf:
>     - shard-mtlp:         [PASS][27] -> [ABORT][28] ([i915#13193])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-6/igt@gem_eio@execbuf.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-7/igt@gem_eio@execbuf.html
> 
>   * igt@gem_eio@kms:
>     - shard-dg2:          NOTRUN -> [FAIL][29] ([i915#5784])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@bonded-dual:
>     - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#4771])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_exec_balancer@bonded-dual.html
> 
>   * igt@gem_exec_balancer@bonded-false-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][31] ([i915#4812])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_exec_balancer@bonded-false-hang.html
> 
>   * igt@gem_exec_balancer@hog:
>     - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4812])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@gem_exec_balancer@hog.html
> 
>   * igt@gem_exec_balancer@invalid-bonds:
>     - shard-dg2-9:        NOTRUN -> [SKIP][33] ([i915#4036])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_exec_balancer@invalid-bonds.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-tglu:         NOTRUN -> [SKIP][34] ([i915#4525])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-bb-first:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4525]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_exec_balancer@parallel-bb-first.html
> 
>   * igt@gem_exec_balancer@parallel-keep-submit-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4525]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_exec_balancer@parallel-keep-submit-fence.html
> 
>   * igt@gem_exec_capture@capture-invisible:
>     - shard-dg2-9:        NOTRUN -> [SKIP][37] ([i915#6334]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_exec_capture@capture-invisible.html
>     - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#6334]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@gem_exec_capture@capture-invisible.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][39] ([i915#3539] / [i915#4852]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_params@rsvd2-dirt:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#5107])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_exec_params@rsvd2-dirt.html
> 
>   * igt@gem_exec_reloc@basic-cpu-noreloc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][42] ([i915#3281]) +4 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_exec_reloc@basic-cpu-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#3281]) +7 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@gem_exec_reloc@basic-wc-gtt.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#3281]) +15 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#3281]) +8 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_exec_reloc@basic-write-gtt.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#4537] / [i915#4812]) +1 other test skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#7276])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_schedule@wide:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][48] ([i915#13391]) +1 other test incomplete
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_exec_schedule@wide.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices:
>     - shard-tglu:         NOTRUN -> [ABORT][49] ([i915#7975]) +1 other test abort
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-9/igt@gem_exec_suspend@basic-s4-devices.html
>     - shard-rkl:          NOTRUN -> [ABORT][50] ([i915#7975]) +2 other tests abort
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-3/igt@gem_exec_suspend@basic-s4-devices.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4860])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#4613] / [i915#7582])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][53] ([i915#4613]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#4613]) +5 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#4613])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-mtlp:         NOTRUN -> [SKIP][56] ([i915#4613])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2-9:        NOTRUN -> [TIMEOUT][57] ([i915#5493]) +1 other test timeout
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_madvise@dontneed-before-exec:
>     - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#3282]) +3 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_madvise@dontneed-before-exec.html
> 
>   * igt@gem_media_vme:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#284])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_media_vme.html
> 
>   * igt@gem_mmap@short-mmap:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4083]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_mmap@short-mmap.html
> 
>   * igt@gem_mmap_gtt@basic-write-read-distinct:
>     - shard-mtlp:         NOTRUN -> [SKIP][61] ([i915#4077]) +7 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_mmap_gtt@basic-write-read-distinct.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4077]) +9 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@gem_mmap_gtt@cpuset-big-copy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2-9:        NOTRUN -> [SKIP][63] ([i915#4077]) +4 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_wc@fault-concurrent:
>     - shard-dg2:          NOTRUN -> [SKIP][64] ([i915#4083]) +4 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@gem_mmap_wc@fault-concurrent.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2-9:        NOTRUN -> [SKIP][65] ([i915#4083]) +3 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#3282]) +7 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#3282]) +11 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#4270]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2-9:        NOTRUN -> [SKIP][69] ([i915#4270])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][70] ([i915#12964])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@hw-rejects-pxp-buffer:
>     - shard-mtlp:         NOTRUN -> [SKIP][71] ([i915#13398])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_pxp@hw-rejects-pxp-buffer.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-rkl:          [PASS][72] -> [SKIP][73] ([i915#4270])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-8/igt@gem_pxp@reject-modify-context-protection-off-2.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-6/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-on:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][74] ([i915#12917] / [i915#12964]) +2 other tests timeout
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html
> 
>   * igt@gem_pxp@verify-pxp-stale-ctx-execution:
>     - shard-rkl:          [PASS][75] -> [TIMEOUT][76] ([i915#12917] / [i915#12964])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-6/igt@gem_pxp@verify-pxp-stale-ctx-execution.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
>     - shard-snb:          NOTRUN -> [SKIP][77] +9 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-snb2/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-linear:
>     - shard-dg2-9:        NOTRUN -> [SKIP][78] ([i915#5190] / [i915#8428]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_render_copy@y-tiled-to-vebox-linear.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#5190] / [i915#8428]) +4 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][80] ([i915#8428]) +4 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#4079]) +1 other test skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#8411])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#4885])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_userptr_blits@dmabuf-unsync:
>     - shard-dg2-9:        NOTRUN -> [SKIP][84] ([i915#3297])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_userptr_blits@dmabuf-unsync.html
>     - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#3297]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@gem_userptr_blits@dmabuf-unsync.html
> 
>   * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#3297])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>     - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#3297] / [i915#4880])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
> 
>   * igt@gem_userptr_blits@readonly-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3297]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gem_userptr_blits@readonly-unsync.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg2-9:        NOTRUN -> [SKIP][89] ([i915#3297] / [i915#4958])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#3297]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gem_userptr_blits@set-cache-level.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-rkl:          [PASS][91] -> [DMESG-FAIL][92] ([i915#12964])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-8/igt@gem_workarounds@suspend-resume.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-6/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-dg2-9:        NOTRUN -> [SKIP][93] ([i915#2856])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-mtlp:         NOTRUN -> [SKIP][94] ([i915#2856]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#2527]) +3 other tests skip
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#2527] / [i915#2856]) +1 other test skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#2527] / [i915#2856]) +2 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@secure-batches:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#2856]) +2 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@gen9_exec_parse@secure-batches.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][99] -> [ABORT][100] ([i915#9820])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-4/igt@i915_module_load@reload-with-fault-injection.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [PASS][101] -> [ABORT][102] ([i915#9820])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-15/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [PASS][103] -> [DMESG-WARN][104] ([i915#13447])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#6412])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#8399])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#8399])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-dg1:          [PASS][108] -> [FAIL][109] ([i915#3591])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
>     - shard-dg1:          [PASS][110] -> [FAIL][111] ([i915#12739] / [i915#3591])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#11681] / [i915#6621])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_pm_rps@thresholds:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#11681])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@i915_pm_rps@thresholds.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg2-9:        NOTRUN -> [SKIP][114] ([i915#11681])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#4387])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#4387])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_power@sanity:
>     - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#7984])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@i915_power@sanity.html
> 
>   * igt@i915_selftest@mock:
>     - shard-mtlp:         NOTRUN -> [DMESG-WARN][118] ([i915#9311]) +1 other test dmesg-warn
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@i915_selftest@mock.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][119] ([i915#9311]) +1 other test dmesg-warn
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#7707])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4215] / [i915#5190])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#4212]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#4212])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#8709]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-b-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#8709]) +15 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc-ccs-cc:
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#8709]) +3 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-15/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-4-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@invalid-async-flip:
>     - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#12967] / [i915#6228])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_async_flips@invalid-async-flip.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#9531])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-dg2:          [PASS][129] -> [FAIL][130] ([i915#5956])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-dg2-9:        NOTRUN -> [SKIP][131] ([i915#1769] / [i915#3555])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#1769] / [i915#3555])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [FAIL][133] ([i915#5956])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][134] +5 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#5286]) +7 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#5286]) +1 other test skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#5286]) +2 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][138] -> [DMESG-FAIL][139] ([i915#13314]) +1 other test dmesg-fail
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#3638]) +7 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-270:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4538] / [i915#5190]) +7 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_big_fb@y-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#5190]) +2 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg2-9:        NOTRUN -> [SKIP][143] ([i915#4538] / [i915#5190]) +5 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
>     - shard-mtlp:         NOTRUN -> [SKIP][144] ([i915#6187])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][145] +57 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] +12 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#12313]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#10307] / [i915#6095]) +187 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-10/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#6095]) +54 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#12313]) +2 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#6095]) +24 other tests skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#6095]) +108 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][153] ([i915#10307] / [i915#6095]) +24 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#12805])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3:
>     - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#6095]) +11 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-dp-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#6095]) +95 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#6095]) +44 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2:
>     - shard-dg2-9:        NOTRUN -> [SKIP][159] ([i915#6095]) +4 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg2-9:        NOTRUN -> [SKIP][160] ([i915#12313])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#3742])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#11616] / [i915#7213]) +4 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][164] +14 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2-9:        NOTRUN -> [SKIP][165] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#11151] / [i915#7828]) +9 other tests skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_frames@vga-frame-dump:
>     - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#11151] / [i915#7828]) +12 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][168] ([i915#11151] / [i915#7828]) +4 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#11151] / [i915#7828]) +5 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#3299])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#3116] / [i915#3299])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3116])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#3116] / [i915#3299])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#9424])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_content_protection@lic-type-0.html
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#9424]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#6944] / [i915#7116] / [i915#7118])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-mtlp:         NOTRUN -> [SKIP][177] ([i915#3555] / [i915#6944] / [i915#9424])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#7118] / [i915#9424]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#13049])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-offscreen-512x170.html
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#13049]) +3 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#3555]) +3 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
>     - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#3555]) +2 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#13049]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-dg2-9:        NOTRUN -> [SKIP][184] ([i915#3555]) +2 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#13049])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#13046] / [i915#5354]) +5 other tests skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
>     - shard-dg2-9:        NOTRUN -> [SKIP][187] ([i915#13046] / [i915#5354]) +1 other test skip
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#4103])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#4103]) +1 other test skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#9809]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][191] +28 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][192] ([i915#12964]) +11 other tests dmesg-warn
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#9067])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#4103] / [i915#4213]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#9723])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
>     - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#9723])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#13691])
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#8588])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_display_modes@mst-extended-mode-negative.html
>     - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#8588])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][200]
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#3804])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          [PASS][202] -> [SKIP][203] ([i915#1257])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-10/igt@kms_dp_aux_dev.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-8/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#8812])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#3840])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#3555] / [i915#3840])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#3555] / [i915#3840])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3955])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][209] ([i915#2065] / [i915#4854])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@display-2x:
>     - shard-dg2:          NOTRUN -> [SKIP][210] ([i915#1839])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_feature_discovery@display-2x.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#1839])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#9337])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank:
>     - shard-dg2-9:        NOTRUN -> [SKIP][213] ([i915#9934]) +4 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_flip@2x-blocking-wf_vblank.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#3637]) +5 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][215] -> [FAIL][216] ([i915#11989]) +1 other test fail
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
>     - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#9934]) +7 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#9934]) +11 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate:
>     - shard-mtlp:         NOTRUN -> [SKIP][219] ([i915#3637]) +3 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_flip@2x-plain-flip-fb-recreate.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#3637]) +5 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - shard-tglu:         [PASS][221] -> [FAIL][222] ([i915#11989]) +4 other tests fail
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-tglu-7/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
>     - shard-rkl:          [PASS][223] -> [FAIL][224] ([i915#11989]) +1 other test fail
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#8381]) +1 other test skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#2672] / [i915#3555] / [i915#8813]) +2 other tests skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][227] ([i915#2672] / [i915#8813])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#3555] / [i915#8810] / [i915#8813])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][229] ([i915#3555] / [i915#8810])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-dg2-9:        NOTRUN -> [SKIP][230] ([i915#2672] / [i915#3555])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#2672] / [i915#3555])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg2-9:        NOTRUN -> [SKIP][232] ([i915#2672])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#2587] / [i915#2672])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#2672] / [i915#3555])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#2672]) +8 other tests skip
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#2672] / [i915#3555]) +1 other test skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][237] ([i915#2587] / [i915#2672] / [i915#3555])
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#2672] / [i915#3555] / [i915#5190]) +1 other test skip
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#2672]) +2 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#2672] / [i915#3555]) +8 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-tglu-1:       NOTRUN -> [SKIP][242] +43 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#5354]) +23 other tests skip
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
>     - shard-dg2-9:        NOTRUN -> [SKIP][244] ([i915#8708]) +7 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#5439])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][246] ([i915#3458]) +15 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][247] ([i915#8708]) +21 other tests skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render:
>     - shard-dg2-9:        NOTRUN -> [SKIP][248] ([i915#5354]) +17 other tests skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][249] ([i915#10433] / [i915#3458]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-dg2-9:        NOTRUN -> [SKIP][250] ([i915#3458]) +6 other tests skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#8708]) +6 other tests skip
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][252] ([i915#3023]) +33 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][253] ([i915#1825]) +15 other tests skip
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#1825]) +53 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#3555] / [i915#8228]) +1 other test skip
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][256] ([i915#12713])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
>     - shard-tglu:         NOTRUN -> [SKIP][257] ([i915#1187] / [i915#12713])
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-tglu-1:       NOTRUN -> [SKIP][258] ([i915#3555] / [i915#8228])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][259] ([i915#3555] / [i915#8228]) +1 other test skip
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_hdr@static-toggle.html
>     - shard-rkl:          NOTRUN -> [SKIP][260] ([i915#3555] / [i915#8228])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#10656]) +1 other test skip
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#12394])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-dg2-9:        NOTRUN -> [SKIP][263] ([i915#10656])
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#10656])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-dg2-9:        NOTRUN -> [SKIP][265] ([i915#6301])
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_panel_fitting@legacy.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#6301])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][267] ([i915#3555]) +10 other tests skip
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>     - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#13046] / [i915#5354] / [i915#9423])
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][269] ([i915#6953])
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_plane_scaling@intel-max-src-size.html
>     - shard-dg2:          [PASS][270] -> [SKIP][271] ([i915#6953] / [i915#9423])
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-5/igt@kms_plane_scaling@intel-max-src-size.html
>     - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#6953])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c:
>     - shard-tglu:         NOTRUN -> [SKIP][273] ([i915#12247]) +18 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-c.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][274] ([i915#12247]) +12 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d:
>     - shard-dg2:          NOTRUN -> [SKIP][275] ([i915#12247]) +7 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-d.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>     - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#12247] / [i915#9423]) +1 other test skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
>     - shard-dg2-9:        NOTRUN -> [SKIP][277] ([i915#12247] / [i915#6953] / [i915#9423]) +1 other test skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][278] ([i915#12247] / [i915#6953])
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c:
>     - shard-tglu-1:       NOTRUN -> [SKIP][279] ([i915#12247]) +3 other tests skip
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75:
>     - shard-mtlp:         NOTRUN -> [SKIP][280] ([i915#12247] / [i915#3555] / [i915#6953])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-b:
>     - shard-mtlp:         NOTRUN -> [SKIP][281] ([i915#12247]) +7 other tests skip
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_plane_scaling@planes-downscale-factor-0-75@pipe-b.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
>     - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#12247] / [i915#6953])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c:
>     - shard-dg2-9:        NOTRUN -> [SKIP][283] ([i915#12247]) +7 other tests skip
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][284] ([i915#12247] / [i915#3555])
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
>     - shard-mtlp:         NOTRUN -> [SKIP][285] ([i915#12247] / [i915#6953])
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-tglu-1:       NOTRUN -> [SKIP][286] ([i915#9812])
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#5354]) +1 other test skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_pm_backlight@brightness-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][288] ([i915#12343])
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_pm_backlight@brightness-with-dpms.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][289] ([i915#9812])
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-dg2-9:        NOTRUN -> [SKIP][290] ([i915#9685])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][291] ([i915#9685])
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         [PASS][292] -> [FAIL][293] ([i915#9295])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#8430])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg2-9:        NOTRUN -> [SKIP][295] ([i915#8430])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][296] ([i915#9519])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2-9:        NOTRUN -> [SKIP][297] ([i915#9519])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-non-lpsp:
>     - shard-rkl:          [PASS][298] -> [SKIP][299] ([i915#9519])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-1/igt@kms_pm_rpm@dpms-non-lpsp.html
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-dg2:          [PASS][300] -> [SKIP][301] ([i915#9519])
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#9519]) +1 other test skip
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][303] ([i915#9519])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_prime@basic-crc-vgem:
>     - shard-dg2-9:        NOTRUN -> [SKIP][304] ([i915#6524] / [i915#6805])
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_prime@basic-crc-vgem.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#6524]) +2 other tests skip
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_prime@basic-modeset-hybrid.html
>     - shard-dg2:          NOTRUN -> [SKIP][306] ([i915#6524] / [i915#6805])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][307] ([i915#6524])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#11520]) +4 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-mtlp:         NOTRUN -> [SKIP][309] ([i915#12316]) +4 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][310] ([i915#11520]) +2 other tests skip
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][311] ([i915#9808])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#11520]) +10 other tests skip
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
>     - shard-dg2:          NOTRUN -> [SKIP][313] ([i915#11520]) +8 other tests skip
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>     - shard-dg2-9:        NOTRUN -> [SKIP][314] ([i915#11520]) +4 other tests skip
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][315] ([i915#9683]) +1 other test skip
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-rkl:          NOTRUN -> [SKIP][316] ([i915#9683]) +1 other test skip
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html
>     - shard-tglu:         NOTRUN -> [SKIP][317] ([i915#9683])
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-cursor-blt:
>     - shard-tglu-1:       NOTRUN -> [SKIP][318] ([i915#9732]) +10 other tests skip
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html
> 
>   * igt@kms_psr@fbc-psr2-primary-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][319] ([i915#9688]) +6 other tests skip
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@kms_psr@fbc-psr2-primary-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][320] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_psr@fbc-psr2-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#1072] / [i915#9732]) +30 other tests skip
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr2-cursor-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][322] ([i915#9732]) +15 other tests skip
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_psr@psr2-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2-9:        NOTRUN -> [SKIP][323] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_rotation_crc@primary-rotation-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#12755])
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_rotation_crc@primary-rotation-270.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][325] ([i915#5289])
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
>     - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#5289])
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
> 
>   * igt@kms_scaling_modes@scaling-mode-full:
>     - shard-mtlp:         [PASS][327] -> [DMESG-WARN][328] ([i915#1982]) +1 other test dmesg-warn
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-8/igt@kms_scaling_modes@scaling-mode-full.html
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-4/igt@kms_scaling_modes@scaling-mode-full.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc:
>     - shard-dg2:          NOTRUN -> [SKIP][329] ([i915#3555]) +6 other tests skip
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_setmode@invalid-clone-single-crtc.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [PASS][330] -> [FAIL][331] ([IGT#160])
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-10/igt@kms_sysfs_edid_timing.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-5/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][332] ([i915#8623])
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-modeset-hang:
>     - shard-dg1:          [PASS][333] -> [DMESG-WARN][334] ([i915#4423]) +2 other tests dmesg-warn
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-12/igt@kms_vblank@ts-continuation-modeset-hang.html
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-13/igt@kms_vblank@ts-continuation-modeset-hang.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2-9:        NOTRUN -> [SKIP][335] ([i915#9906])
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@kms_vrr@flip-basic-fastset.html
>     - shard-tglu-1:       NOTRUN -> [SKIP][336] ([i915#9906])
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#11920])
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@kms_vrr@lobf.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-rkl:          NOTRUN -> [SKIP][338] ([i915#9906])
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@kms_vrr@max-min.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-tglu-1:       NOTRUN -> [SKIP][339] ([i915#2437] / [i915#9412])
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-1/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#2437])
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf@global-sseu-config-invalid:
>     - shard-dg2-9:        NOTRUN -> [SKIP][341] ([i915#7387])
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@perf@global-sseu-config-invalid.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-rkl:          NOTRUN -> [SKIP][342] ([i915#2433])
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@busy-idle-check-all@vecs0:
>     - shard-mtlp:         [PASS][343] -> [FAIL][344] ([i915#4349])
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-7/igt@perf_pmu@busy-idle-check-all@vecs0.html
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-4/igt@perf_pmu@busy-idle-check-all@vecs0.html
> 
>   * igt@perf_pmu@invalid-init:
>     - shard-dg2:          NOTRUN -> [FAIL][345] ([i915#13663])
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@perf_pmu@invalid-init.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][346] ([i915#8516])
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@perf_pmu@rc6@other-idle-gt0.html
>     - shard-tglu:         NOTRUN -> [SKIP][347] ([i915#8516])
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-2/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_mmap@test_aperture_limit:
>     - shard-dg2:          NOTRUN -> [WARN][348] ([i915#9351])
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@prime_mmap@test_aperture_limit.html
> 
>   * igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>     - shard-dg2:          NOTRUN -> [CRASH][349] ([i915#9351])
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2-9:        NOTRUN -> [SKIP][350] ([i915#3708])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][351] ([i915#3708])
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-4/igt@prime_vgem@fence-read-hang.html
>     - shard-rkl:          NOTRUN -> [SKIP][352] ([i915#3708]) +1 other test skip
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][353] ([i915#9917])
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-1/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2-9:        NOTRUN -> [SKIP][354] ([i915#9917])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-9/igt@sriov_basic@enable-vfs-autoprobe-off.html
>     - shard-rkl:          NOTRUN -> [SKIP][355] ([i915#9917])
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
>     - shard-tglu:         NOTRUN -> [FAIL][356] ([i915#12910])
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-mtlp:         NOTRUN -> [SKIP][357] ([i915#4818])
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-2/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg2:          [INCOMPLETE][358] ([i915#13356]) -> [PASS][359]
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-6/igt@gem_ccs@suspend-resume.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
>     - shard-dg2:          [INCOMPLETE][360] ([i915#12392] / [i915#13356]) -> [PASS][361]
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-6/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-rkl:          [TIMEOUT][362] ([i915#12964]) -> [PASS][363]
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-3/igt@gem_pxp@create-valid-protected-context.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-rkl:          [TIMEOUT][364] ([i915#12917] / [i915#12964]) -> [PASS][365] +1 other test pass
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@i915_pm_rc6_residency@rc6-accuracy:
>     - shard-rkl:          [FAIL][366] ([i915#12942]) -> [PASS][367] +1 other test pass
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-accuracy.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@i915_pm_rc6_residency@rc6-accuracy.html
> 
>   * igt@i915_pm_rpm@system-suspend-devices:
>     - shard-mtlp:         [ABORT][368] ([i915#13193]) -> [PASS][369] +2 other tests pass
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-devices.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@i915_pm_rpm@system-suspend-devices.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][370] ([i915#7984]) -> [PASS][371]
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-8/igt@i915_power@sanity.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-4/igt@i915_power@sanity.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing:
>     - shard-glk:          [FAIL][372] ([i915#12238]) -> [PASS][373]
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing.html
> 
>   * igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs:
>     - shard-glk:          [FAIL][374] ([i915#11859]) -> [PASS][375]
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking-fencing@2x-outputs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-mtlp:         [FAIL][376] ([i915#11808] / [i915#5956]) -> [PASS][377] +1 other test pass
>    [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
>    [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-128x42:
>     - shard-rkl:          [FAIL][378] ([i915#13566]) -> [PASS][379] +8 other tests pass
>    [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-128x42.html
>    [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-64x21:
>     - shard-tglu:         [FAIL][380] ([i915#13566]) -> [PASS][381] +7 other tests pass
>    [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-64x21.html
>    [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-64x21.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][382] ([i915#13027]) -> [PASS][383] +1 other test pass
>    [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-vga1:
>     - shard-snb:          [FAIL][384] ([i915#11989]) -> [PASS][385] +1 other test pass
>    [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-snb7/igt@kms_flip@blocking-wf_vblank@a-vga1.html
>    [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-snb6/igt@kms_flip@blocking-wf_vblank@a-vga1.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-rkl:          [FAIL][386] ([i915#11989]) -> [PASS][387] +1 other test pass
>    [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@kms_flip@plain-flip-ts-check.html
>    [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-snb:          [SKIP][388] -> [PASS][389]
>    [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
>    [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-dg2:          [SKIP][390] ([i915#3555] / [i915#8228]) -> [PASS][391]
>    [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-6/igt@kms_hdr@bpc-switch-dpms.html
>    [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-11/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [SKIP][392] ([i915#9519]) -> [PASS][393]
>    [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
>    [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          [SKIP][394] ([i915#9519]) -> [PASS][395]
>    [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-2/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_vblank@wait-forked:
>     - shard-rkl:          [DMESG-WARN][396] ([i915#12964]) -> [PASS][397] +11 other tests pass
>    [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-3/igt@kms_vblank@wait-forked.html
>    [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-8/igt@kms_vblank@wait-forked.html
> 
>   * igt@perf@polling@0-rcs0:
>     - shard-rkl:          [FAIL][398] ([i915#10538]) -> [PASS][399] +1 other test pass
>    [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@perf@polling@0-rcs0.html
>    [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@perf@polling@0-rcs0.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [FAIL][400] ([i915#4349]) -> [PASS][401]
>    [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html
>    [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-1/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@multi-client@vcs0:
>     - shard-dg2:          [FAIL][402] ([i915#4349]) -> [PASS][403] +2 other tests pass
>    [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-7/igt@perf_pmu@multi-client@vcs0.html
>    [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-10/igt@perf_pmu@multi-client@vcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-glk:          [INCOMPLETE][404] ([i915#13390]) -> [INCOMPLETE][405] ([i915#13197] / [i915#13390])
>    [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk9/igt@gem_eio@in-flight-suspend.html
>    [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk6/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-mtlp:         [ABORT][406] ([i915#10131] / [i915#10887] / [i915#9820]) -> [ABORT][407] ([i915#10131] / [i915#13592])
>    [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
>    [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         [INCOMPLETE][408] ([i915#7443]) -> [INCOMPLETE][409] ([i915#4817] / [i915#7443])
>    [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-tglu-10/igt@i915_suspend@basic-s3-without-i915.html
>    [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-tglu-8/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
>     - shard-dg1:          [SKIP][410] ([i915#6095]) -> [SKIP][411] ([i915#4423] / [i915#6095]) +1 other test skip
>    [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html
>    [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
>     - shard-dg1:          [SKIP][412] ([i915#12313]) -> [SKIP][413] ([i915#12313] / [i915#4423])
>    [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-18/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
>    [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-15/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][414] ([i915#7118] / [i915#9424]) -> [SKIP][415] ([i915#7118] / [i915#7162] / [i915#9424])
>    [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg2-7/igt@kms_content_protection@type1.html
>    [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg2-10/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-dg1:          [SKIP][416] -> [SKIP][417] ([i915#4423])
>    [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
>    [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-16/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg1:          [SKIP][418] ([i915#3555] / [i915#4423]) -> [SKIP][419] ([i915#3555])
>    [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-15/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-14/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg1:          [SKIP][420] ([i915#3458]) -> [SKIP][421] ([i915#3458] / [i915#4423])
>    [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-mtlp:         [SKIP][422] ([i915#1187] / [i915#12713]) -> [SKIP][423] ([i915#12713])
>    [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
>    [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-mtlp-5/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-glk:          [INCOMPLETE][424] ([i915#12756] / [i915#13409] / [i915#13476]) -> [INCOMPLETE][425] ([i915#12756] / [i915#13409] / [i915#13476] / [i915#1982])
>    [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc.html
>    [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk4/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][426] ([i915#12756]) -> [INCOMPLETE][427] ([i915#12756] / [i915#1982])
>    [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
>    [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-glk4/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [FAIL][428] ([i915#9295]) -> [SKIP][429] ([i915#3361])
>    [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
>    [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-1/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][430] ([i915#3361]) -> [SKIP][431] ([i915#4281])
>    [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-rkl-7/igt@kms_pm_dc@dc9-dpms.html
>    [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr@fbc-pr-cursor-plane-move:
>     - shard-dg1:          [SKIP][432] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][433] ([i915#1072] / [i915#9732])
>    [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16146/shard-dg1-12/igt@kms_psr@fbc-pr-cursor-plane-move.html
>    [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/shard-dg1-15/igt@kms_psr@fbc-pr-cursor-plane-move.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#160]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/160
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
>   [i915#11616]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11616
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12238]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12238
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
>   [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12739
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
>   [i915#12817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12817
>   [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12942]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12942
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#12967]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12967
>   [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
>   [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13193
>   [i915#13197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13197
>   [i915#13314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13314
>   [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
>   [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
>   [i915#13391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13391
>   [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
>   [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
>   [i915#13447]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13447
>   [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
>   [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
>   [i915#13592]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13592
>   [i915#13663]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13663
>   [i915#13665]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13665
>   [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
>   [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
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
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6187
>   [i915#6228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6228
>   [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
>   [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
>   [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
>   [i915#9295]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9351]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
>   [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16146 -> Patchwork_144984v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16146: c282b8face163244076dac30e4c9ffd74dc89044 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8235: e7e14eff66bc42329903ee579f019094cf1fdfce @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144984v1: c282b8face163244076dac30e4c9ffd74dc89044 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144984v1/index.html
