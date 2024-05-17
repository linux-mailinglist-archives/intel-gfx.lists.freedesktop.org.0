Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1128D8C8678
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 14:47:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4899010EE8D;
	Fri, 17 May 2024 12:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTVxIQqw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 349B310EE9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 12:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715950027; x=1747486027;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to; bh=DjZC+73dKirBrGKX46ZZeD86OzK9aV7RsbHWwtk0XPU=;
 b=gTVxIQqwGDTcDt6B300276Sz6nfAW9bw2nFrmqcDboKYOypiq0UAQ4Jw
 a/W140vHy2LhwpEFsLMnEr0FPVz128ak1FMFWaK6KyqSFWOCypWpSkwuo
 Vg2Jgp584JhOpaBpLtB7ZQx4s7Cn5qwA/VKkOBU0NN8shOs57HQLIiefr
 hECeR343oBBTfmkdtLD3tSZvaJNnt8GWyT/d8rWVXEmsh0kNt8T+5yMeB
 iOThCTF18XIC/D+r1uCgRBegymnTd0bZ50QdQ02G1avbYqoZgPgniT69p
 IUGTkdTUy5Mg85qGiKY+wQzYUdHI+/EH8NBdGRVJmIivuPjPRJEjWoHo2 w==;
X-CSE-ConnectionGUID: m4YdzIrTT22bLjnC/PVrTQ==
X-CSE-MsgGUID: aiQTV0I5TvehY0iEnUXkEA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="22730719"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208,217";a="22730719"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:47:06 -0700
X-CSE-ConnectionGUID: KV2OxppxSxaLR4gSzawY8Q==
X-CSE-MsgGUID: cHAIWS/SQtSdqExG5ildLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208,217";a="31925933"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.246.50.245])
 ([10.246.50.245])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:47:04 -0700
Content-Type: multipart/alternative;
 boundary="------------mFCCqA0CBOR4gZP36muQ7h2P"
Message-ID: <6073a9b3-892e-4aef-abf2-31b44b7bc925@linux.intel.com>
Date: Fri, 17 May 2024 14:47:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/sel?=
 =?UTF-8?Q?ftests=3A_Set_always=5Fcoherent_to_false_when_reading_from_CPU?=
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20240516151403.2875-1-nirmoy.das@intel.com>
 <171593558693.2123004.9081435957820935923@8e613ede5ea5>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <171593558693.2123004.9081435957820935923@8e613ede5ea5>
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

This is a multi-part message in MIME format.
--------------mFCCqA0CBOR4gZP36muQ7h2P
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 5/17/2024 10:46 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/selftests: Set always_coherent to false when 
> reading from CPU
> *URL:* 	https://patchwork.freedesktop.org/series/133704/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/index.html
>
>
>   CI Bug Log - changes from CI_DRM_14775_full -> Patchwork_133704v1_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_133704v1_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_133704v1_full, please notify your bug team 
> ('I915-ci-infra@lists.freedesktop.org') to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (9 -> 9)
>
> No changes in participating hosts
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_133704v1_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-1/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html>
>  *
>
>     igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-1/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html>
>
  Unrelated failures.


>  *
>  *
>
>     igt@gem_exec_schedule@wide@rcs0:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_exec_schedule@wide@rcs0.html>
>
>
>     New tests
>
> New tests have been introduced between CI_DRM_14775_full and 
> Patchwork_133704v1_full:
>
>
>       New IGT tests (4)
>
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-hdmi-a-1:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.11, 0.29] s
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-hdmi-a-1:
>
>       o Statuses : 2 pass(s)
>       o Exec time: [0.10, 0.32] s
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-c-hdmi-a-1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.10] s
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-hdmi-a-1:
>
>       o Statuses : 1 pass(s)
>       o Exec time: [0.10] s
>
>
>     Known issues
>
> Here are the changes found in Patchwork_133704v1_full that come from 
> known issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@drm_fdinfo@idle@rcs0:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742>)
>  *
>
>     igt@drm_fdinfo@most-busy-idle-check-all@bcs0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@drm_fdinfo@most-busy-idle-check-all@bcs0.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>         +4 other tests skip
>  *
>
>     igt@drm_fdinfo@virtual-busy-hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>  *
>
>     igt@gem_bad_reloc@negative-reloc-lut:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +3 other tests skip
>  *
>
>     igt@gem_ccs@ctrl-surf-copy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#9323
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>  *
>
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
>
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html>
>         (i915#7297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297>)
>  *
>
>     igt@gem_create@create-ext-set-pat:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_create@create-ext-set-pat.html>
>         (i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-hostile:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-hostile.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-stop:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>         +1 other test skip
>  *
>
>     igt@gem_ctx_sseu@invalid-sseu:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html>
>         (i915#280
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-dg1: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_eio@kms.html>
>         (i915#10513
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513>)
>  *
>
>     igt@gem_exec_capture@many-4k-incremental:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html>
>         (i915#9606
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606>)
>  *
>
>     igt@gem_exec_fair@basic-none-rrul:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>         +2 other tests skip
>  *
>
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
>
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none-share:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_exec_fair@basic-none-share.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>         +4 other tests skip
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         +3 other tests fail
>  *
>
>     igt@gem_exec_reloc@basic-cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +5 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-cpu-wc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_exec_reloc@basic-cpu-wc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +11 other tests skip
>  *
>
>     igt@gem_exec_schedule@preempt-queue:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_exec_schedule@preempt-queue.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>         +3 other tests skip
>  *
>
>     igt@gem_exec_schedule@semaphore-power:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_exec_schedule@semaphore-power.html>
>         (i915#4537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537>
>         / i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-none:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>  *
>
>     igt@gem_huc_copy@huc-copy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_huc_copy@huc-copy.html>
>         (i915#2190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190>)
>  *
>
>     igt@gem_lmem_swapping@basic@lmem0:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html>
>         (i915#10378
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378>)
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html>
>         (i915#4565
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565>)
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html>
>         (i915#10378
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378>)
>         +1 other test fail
>  *
>
>     igt@gem_lmem_swapping@massive-random:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_lmem_swapping@massive-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +3 other tests skip
>  *
>
>     igt@gem_lmem_swapping@parallel-random:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +1 other test skip
>  *
>
>     igt@gem_lmem_swapping@random:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_lmem_swapping@random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>  *
>
>     igt@gem_madvise@dontneed-before-pwrite:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_madvise@dontneed-before-pwrite.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>  *
>
>     igt@gem_media_vme:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_media_vme.html>
>         (i915#284
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284>)
>  *
>
>     igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +5 other tests skip
>  *
>
>     igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +4 other tests skip
>  *
>
>     igt@gem_mmap_wc@read:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_mmap_wc@read.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +6 other tests skip
>  *
>
>     igt@gem_mmap_wc@write-wc-read-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_mmap_wc@write-wc-read-gtt.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +4 other tests skip
>  *
>
>     igt@gem_partial_pwrite_pread@write-snoop:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_partial_pwrite_pread@write-snoop.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>  *
>
>     igt@gem_pwrite@basic-exhaustion:
>
>       o shard-tglu: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_pwrite@basic-exhaustion.html>
>         (i915#2658
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658>)
>  *
>
>     igt@gem_pwrite_snooped:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_pwrite_snooped.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>  *
>
>     igt@gem_pxp@regular-baseline-src-copy-readible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_pxp@regular-baseline-src-copy-readible.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +2 other tests skip
>  *
>
>     igt@gem_pxp@reject-modify-context-protection-on:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +2 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@gem_pxp@reject-modify-context-protection-on.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +4 other tests skip
>  *
>
>     igt@gem_pxp@verify-pxp-stale-ctx-execution:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +1 other test skip
>  *
>
>     igt@gem_set_tiling_vs_pwrite:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_set_tiling_vs_pwrite.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>  *
>
>     igt@gem_unfence_active_buffers:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_unfence_active_buffers.html>
>         (i915#4879
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879>)
>  *
>
>     igt@gem_userptr_blits@access-control:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_userptr_blits@access-control.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_userptr_blits@access-control.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>         +1 other test skip
>  *
>
>     igt@gem_userptr_blits@sd-probe:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958>)
>  *
>
>     igt@gem_userptr_blits@unsync-unmap:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@unsync-unmap-cycles:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +2 other tests skip
>  *
>
>     igt@gen9_exec_parse@bb-start-out:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +1 other test skip
>  *
>
>     igt@gen9_exec_parse@bb-start-param:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +2 other tests skip
>  *
>
>     igt@gen9_exec_parse@cmd-crossing-page:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gen9_exec_parse@cmd-crossing-page.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>
>         / i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>  *
>
>     igt@i915_fb_tiling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@i915_fb_tiling.html>
>         (i915#4881
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881>)
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-rkl: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#9820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>  *
>
>     igt@i915_pm_freq_api@freq-reset:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html>
>         (i915#8399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>  *
>
>     igt@i915_pm_freq_api@freq-suspend:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html>
>         (i915#8399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>  *
>
>     igt@i915_pm_rps@min-max-config-idle:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@i915_pm_rps@min-max-config-idle.html>
>         (i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_rps@min-max-config-loaded:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html>
>         (i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_rps@thresholds-idle-park@gt0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html>
>         (i915#8925
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925>)
>  *
>
>     igt@i915_pm_rps@thresholds-park@gt0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@i915_pm_rps@thresholds-park@gt0.html>
>         (i915#8925
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925>)
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387>)
>  *
>
>     igt@i915_query@test-query-geometry-subslices:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@i915_query@test-query-geometry-subslices.html>
>         (i915#5723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723>)
>  *
>
>     igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>         +1 other test skip
>  *
>
>     igt@kms_addfb_basic@tile-pitch-mismatch:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_addfb_basic@tile-pitch-mismatch.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +3 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>         (i915#3763
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3763>
>         / i915#5138
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138>)
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +3 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +5 other tests skip
>  *
>
>     igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>  *
>
>     igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +6 other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
>         +5 other tests skip
>  *
>
>     igt@kms_big_joiner@invalid-modeset:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_big_joiner@invalid-modeset.html>
>         (i915#10656
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>  *
>
>     igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +67 other tests skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +59 other tests skip
>  *
>
>     igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +128 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +7 other tests skip
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>  *
>
>     igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#10434
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +2 other tests skip
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_frames@hdmi-aspect-ratio:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +1 other test skip
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +4 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@hdmi-hpd-fast:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +4 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@vga-hpd-fast:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_chamelium_hpd@vga-hpd-fast.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +8 other tests skip
>  *
>
>     igt@kms_content_protection@atomic:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_content_protection@atomic.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@lic-type-0:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_content_protection@lic-type-0.html>
>         (i915#6944
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html>
>         (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>  *
>
>     igt@kms_content_protection@lic-type-1:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_content_protection@lic-type-1.html>
>         (i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_content_protection@uevent:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_content_protection@uevent.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x512:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
>         / i915#4213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>         +2 other tests skip
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
>         / i915#4213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>  *
>
>     igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html>
>         (i915#9227
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227>)
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html>
>         (i915#3804
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_dp_aux_dev.html>
>         (i915#1257
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp.html>
>         (i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>
>         / i915#9688
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3469
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469>)
>  *
>
>     igt@kms_flip@2x-flip-vs-panning-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-panning-interruptible.html>
>         +13 other tests skip
>  *
>
>     igt@kms_flip@2x-nonexisting-fb:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +2 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +4 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +1 other test skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +17 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +19 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html>
>         +43 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html>
>         +173 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +8 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html>
>         (i915#5439
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439>)
>  *
>
>     igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html>
>         (i915#9766
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html>
>         (i915#3023
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
>         +12 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +16 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-rte:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-rte.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +7 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html>
>         +19 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +17 other tests skip
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         +1 other test skip
>  *
>
>     igt@kms_hdr@static-toggle:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-8/igt@kms_hdr@static-toggle.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_panel_fitting@legacy:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html>
>         (i915#6301
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_panel_fitting@legacy.html>
>         (i915#6301
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +7 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +3 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +1 other test skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>         +7 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +15 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>         +3 other tests skip
>  *
>
>     igt@kms_pm_backlight@fade:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_pm_backlight@fade.html>
>         (i915#9812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812>)
>  *
>
>     igt@kms_pm_dc@dc9-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>  *
>
>     igt@kms_pm_lpsp@kms-lpsp:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#9340
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340>)
>  *
>
>     igt@kms_pm_rpm@dpms-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +1 other test skip
>  *
>
>     igt@kms_prime@basic-modeset-hybrid:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>
>         / i915#6805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr@fbc-pr-cursor-plane-onoff:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_psr@fbc-pr-cursor-plane-onoff.html>
>         (i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr-primary-render:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_psr@fbc-psr-primary-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +19 other tests skip
>  *
>
>     igt@kms_psr@fbc-psr-sprite-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_psr@fbc-psr-sprite-blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +7 other tests skip
>  *
>
>     igt@kms_psr@pr-sprite-render:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_psr@pr-sprite-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +11 other tests skip
>  *
>
>     igt@kms_psr@psr-cursor-mmap-cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>  *
>
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>         +1 other test skip
>  *
>
>     igt@kms_scaling_modes@scaling-mode-center:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_scaling_modes@scaling-mode-center.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +9 other tests skip
>  *
>
>     igt@kms_scaling_modes@scaling-mode-none:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-none.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-snb7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-snb7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html>
>         (i915#5465
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465>)
>  *
>
>     igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html>
>         (i915#8623
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>  *
>
>     igt@kms_writeback@writeback-fb-id-xrgb2101010:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@prime_vgem@fence-read-hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@prime_vgem@fence-read-hang.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@runner@aborted:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk1/igt@runner@aborted.html>
>         (i915#10291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291>)
>  *
>
>     igt@syncobj_timeline@invalid-wait-zero-handles:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@syncobj_timeline@invalid-wait-zero-handles.html>
>         (i915#9781
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781>)
>  *
>
>     igt@v3d/v3d_perfmon@get-values-invalid-pad:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@v3d/v3d_perfmon@get-values-invalid-pad.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +9 other tests skip
>  *
>
>     igt@v3d/v3d_submit_cl@bad-perfmon:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@v3d/v3d_submit_cl@bad-perfmon.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +5 other tests skip
>  *
>
>     igt@v3d/v3d_submit_cl@multisync-out-syncs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@v3d/v3d_submit_cl@multisync-out-syncs.html>
>         +24 other tests skip
>  *
>
>     igt@vc4/vc4_perfmon@get-values-invalid-pointer:
>
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +4 other tests skip
>  *
>
>     igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +8 other tests skip
>  *
>
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +5 other tests skip
>  *
>
>     igt@vc4/vc4_tiling@set-bad-modifier:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@vc4/vc4_tiling@set-bad-modifier.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +4 other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@drm_fdinfo@virtual-idle:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html>
>  *
>
>     igt@gem_eio@reset-stress:
>
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg1-16/igt@gem_eio@reset-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-17/igt@gem_eio@reset-stress.html>
>  *
>
>     igt@gem_exec_fair@basic-pace-share@rcs0:
>
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-throttle@rcs0:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         +1 other test pass
>  *
>
>     igt@i915_pm_rpm@system-suspend-execbuf:
>
>       o shard-mtlp: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-execbuf.html>
>         (i915#8797
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8797>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@i915_pm_rpm@system-suspend-execbuf.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html>
>         +1 other test pass
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html>
>         +3 other tests pass
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>
>
>         Warnings
>
>  *
>
>     igt@device_reset@unbind-reset-rebind:
>
>       o shard-dg1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html>
>         (i915#9413
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413>)
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html>
>         (i915#9413
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413>)
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-glk6/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +4 other tests skip
>  *
>
>     igt@kms_psr@psr-cursor-render:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-11/igt@kms_psr@psr-cursor-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +9 other tests skip
>  *
>
>     igt@kms_psr@psr2-cursor-plane-move:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-4/igt@kms_psr@psr2-cursor-plane-move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#5493
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493>)
>         -> CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html>
>         (i915#9351
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351>)
>
>
>     Build changes
>
>   * Linux: CI_DRM_14775 -> Patchwork_133704v1
>
> CI-20190529: 20190529
> CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_133704v1: 3b6a503228b84c010794599203ac3e1e3d349bab @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------mFCCqA0CBOR4gZP36muQ7h2P
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 8bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 5/17/2024 10:46 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:171593558693.2123004.9081435957820935923@8e613ede5ea5">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/selftests: Set always_coherent to false when
              reading from CPU</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/133704/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/133704/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_14775_full -&gt;
        Patchwork_133704v1_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_133704v1_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_133704v1_full, please notify your bug
        team ('<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>') to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (9 -&gt; 9)</h2>
      <p>No changes in participating hosts</p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_133704v1_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html"
                moz-do-not-send="true">ABORT</a></li>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-1/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_clear.html"
                moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
        <li>
          <p>igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-3/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html"
                moz-do-not-send="true">DMESG-FAIL</a></li>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-1/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-4/igt@drm_buddy@drm_buddy@drm_test_buddy_alloc_range_bias.html"
                moz-do-not-send="true">DMESG-FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p> Unrelated failures.</p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:171593558693.2123004.9081435957820935923@8e613ede5ea5">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@wide@rcs0:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_exec_schedule@wide@rcs0.html"
                moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
      <h2>New tests</h2>
      <p>New tests have been introduced between CI_DRM_14775_full and
        Patchwork_133704v1_full:</p>
      <h3>New IGT tests (4)</h3>
      <ul>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.11, 0.29] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>Statuses : 2 pass(s)</li>
            <li>Exec time: [0.10, 0.32] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-c-hdmi-a-1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.10] s</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>Statuses : 1 pass(s)</li>
            <li>Exec time: [0.10] s</li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_133704v1_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@idle@rcs0:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@drm_fdinfo@idle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742"
                moz-do-not-send="true">i915#7742</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@most-busy-idle-check-all@bcs0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@drm_fdinfo@most-busy-idle-check-all@bcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414"
                moz-do-not-send="true">i915#8414</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@virtual-busy-hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@drm_fdinfo@virtual-busy-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414"
                moz-do-not-send="true">i915#8414</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_bad_reloc@negative-reloc-lut:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@ctrl-surf-copy:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_ccs@ctrl-surf-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323"
                moz-do-not-send="true">i915#9323</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297"
                moz-do-not-send="true">i915#7297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-set-pat:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_create@create-ext-set-pat.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562"
                moz-do-not-send="true">i915#8562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-hostile:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_ctx_persistence@heartbeat-hostile.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555"
                moz-do-not-send="true">i915#8555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-stop:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_ctx_persistence@heartbeat-stop.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555"
                moz-do-not-send="true">i915#8555</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_sseu@invalid-sseu:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280"
                moz-do-not-send="true">i915#280</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_eio@kms.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513"
                moz-do-not-send="true">i915#10513</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@many-4k-incremental:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606"
                moz-do-not-send="true">i915#9606</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852"
                moz-do-not-send="true">i915#4852</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_exec_fair@basic-none-rrul@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-share:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_exec_fair@basic-none-share.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852"
                moz-do-not-send="true">i915#4852</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +3 other tests
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_exec_reloc@basic-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-cpu-wc:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_exec_reloc@basic-cpu-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@preempt-queue:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_exec_schedule@preempt-queue.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812"
                moz-do-not-send="true">i915#4812</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_schedule@semaphore-power:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_exec_schedule@semaphore-power.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537"
                moz-do-not-send="true">i915#4537</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812"
                moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fence_thrash@bo-write-verify-none:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@gem_fence_thrash@bo-write-verify-none.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860"
                moz-do-not-send="true">i915#4860</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_huc_copy@huc-copy:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_huc_copy@huc-copy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190"
                moz-do-not-send="true">i915#2190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic@lmem0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378"
                moz-do-not-send="true">i915#10378</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565"
                moz-do-not-send="true">i915#4565</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378"
                moz-do-not-send="true">i915#10378</a>) +1 other test
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@massive-random:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@gem_lmem_swapping@massive-random.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_lmem_swapping@parallel-random.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@random:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_lmem_swapping@random.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_madvise@dontneed-before-pwrite:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gem_madvise@dontneed-before-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_media_vme:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@gem_media_vme.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284"
                moz-do-not-send="true">i915#284</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@read:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_mmap_wc@read.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083"
                moz-do-not-send="true">i915#4083</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gem_mmap_wc@write-wc-read-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083"
                moz-do-not-send="true">i915#4083</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@write-snoop:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_partial_pwrite_pread@write-snoop.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite@basic-exhaustion:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_pwrite@basic-exhaustion.html"
                moz-do-not-send="true">WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658"
                moz-do-not-send="true">i915#2658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pwrite_snooped:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_pwrite_snooped.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_pxp@regular-baseline-src-copy-readible.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@reject-modify-context-protection-on:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_pxp@reject-modify-context-protection-on.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +2 other tests
              skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@gem_pxp@reject-modify-context-protection-on.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_pxp@verify-pxp-stale-ctx-execution.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428"
                moz-do-not-send="true">i915#8428</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_set_tiling_vs_pwrite:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_set_tiling_vs_pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079"
                moz-do-not-send="true">i915#4079</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_unfence_active_buffers:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@gem_unfence_active_buffers.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879"
                moz-do-not-send="true">i915#4879</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@access-control:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_userptr_blits@access-control.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +1 other test skip</li>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gem_userptr_blits@access-control.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880"
                moz-do-not-send="true">i915#4880</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@sd-probe:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@gem_userptr_blits@sd-probe.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958"
                moz-do-not-send="true">i915#4958</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gem_userptr_blits@unsync-unmap-cycles.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-invalid-length:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@gen9_exec_parse@batch-invalid-length.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"
                moz-do-not-send="true">i915#2527</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-out:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@gen9_exec_parse@bb-start-out.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"
                moz-do-not-send="true">i915#2527</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-param:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@gen9_exec_parse@bb-start-param.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856"
                moz-do-not-send="true">i915#2856</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@cmd-crossing-page:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@gen9_exec_parse@cmd-crossing-page.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"
                moz-do-not-send="true">i915#2527</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856"
                moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_fb_tiling:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@i915_fb_tiling.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881"
                moz-do-not-send="true">i915#4881</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820"
                moz-do-not-send="true">i915#9820</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_freq_api@freq-reset:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399"
                moz-do-not-send="true">i915#8399</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_freq_api@freq-suspend:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399"
                moz-do-not-send="true">i915#8399</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-idle:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@i915_pm_rps@min-max-config-idle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621"
                moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-loaded:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@i915_pm_rps@min-max-config-loaded.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621"
                moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds-idle-park@gt0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@i915_pm_rps@thresholds-idle-park@gt0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925"
                moz-do-not-send="true">i915#8925</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds-park@gt0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@i915_pm_rps@thresholds-park@gt0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925"
                moz-do-not-send="true">i915#8925</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@test-query-geometry-subslices:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@i915_query@test-query-geometry-subslices.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723"
                moz-do-not-send="true">i915#5723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212"
                moz-do-not-send="true">i915#4212</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_addfb_basic@tile-pitch-mismatch.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212"
                moz-do-not-send="true">i915#4212</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709"
                moz-do-not-send="true">i915#8709</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-3/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3763"
                moz-do-not-send="true">i915#3763</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138"
                moz-do-not-send="true">i915#5138</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@x-tiled-16bpp-rotate-90:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638"
                moz-do-not-send="true">i915#3638</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_joiner@invalid-modeset:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_big_joiner@invalid-modeset.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656"
                moz-do-not-send="true">i915#10656</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +67 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +59 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307"
                moz-do-not-send="true">i915#10307</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +128 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307"
                moz-do-not-send="true">i915#10307</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434"
                moz-do-not-send="true">i915#10434</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087"
                moz-do-not-send="true">i915#4087</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@dp-hpd-for-each-pipe:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_chamelium_hpd@dp-hpd-for-each-pipe.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_chamelium_hpd@hdmi-hpd-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_chamelium_hpd@vga-hpd-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_content_protection@atomic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_content_protection@atomic-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116"
                moz-do-not-send="true">i915#7116</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic-type-0:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_content_protection@lic-type-0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944"
                moz-do-not-send="true">i915#6944</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic-type-0@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173"
                moz-do-not-send="true">i915#7173</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic-type-1:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_content_protection@lic-type-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@uevent:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_content_protection@uevent.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x512:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213"
                moz-do-not-send="true">i915#4213</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a>)</li>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213"
                moz-do-not-send="true">i915#4213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227"
                moz-do-not-send="true">i915#9227</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804"
                moz-do-not-send="true">i915#3804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_aux_dev:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_dp_aux_dev.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257"
                moz-do-not-send="true">i915#1257</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-basic:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_dsc@dsc-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840"
                moz-do-not-send="true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-fractional-bpp:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_dsc@dsc-fractional-bpp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840"
                moz-do-not-send="true">i915#3840</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688"
                moz-do-not-send="true">i915#9688</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469"
                moz-do-not-send="true">i915#3469</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_flip@2x-flip-vs-panning-interruptible.html"
                moz-do-not-send="true">SKIP</a> +13 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-nonexisting-fb:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_flip@2x-nonexisting-fb.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934"
                moz-do-not-send="true">i915#9934</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587"
                moz-do-not-send="true">i915#2587</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825"
                moz-do-not-send="true">i915#1825</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html"
                moz-do-not-send="true">SKIP</a> +43 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-blt.html"
                moz-do-not-send="true">SKIP</a> +173 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439"
                moz-do-not-send="true">i915#5439</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766"
                moz-do-not-send="true">i915#9766</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023"
                moz-do-not-send="true">i915#3023</a>) +12 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +16 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-rte.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> +19 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_hdr@bpc-switch-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-toggle:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-8/igt@kms_hdr@static-toggle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_panel_fitting@legacy:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_panel_fitting@legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301"
                moz-do-not-send="true">i915#6301</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_panel_fitting@legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301"
                moz-do-not-send="true">i915#6301</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-c-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176"
                moz-do-not-send="true">i915#5176</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +15 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_backlight@fade:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_pm_backlight@fade.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812"
                moz-do-not-send="true">i915#9812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_dc@dc9-dpms:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281"
                moz-do-not-send="true">i915#4281</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_lpsp@kms-lpsp:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_pm_lpsp@kms-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340"
                moz-do-not-send="true">i915#9340</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@dpms-lpsp:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-modeset-hybrid:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_prime@basic-modeset-hybrid.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524"
                moz-do-not-send="true">i915#6524</a>)</li>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524"
                moz-do-not-send="true">i915#6524</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805"
                moz-do-not-send="true">i915#6805</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_psr2_su@frontbuffer-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"
                moz-do-not-send="true">i915#9683</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_psr2_su@frontbuffer-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"
                moz-do-not-send="true">i915#9683</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-pr-cursor-plane-onoff:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_psr@fbc-pr-cursor-plane-onoff.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr-primary-render:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-16/igt@kms_psr@fbc-psr-primary-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr-sprite-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_psr@fbc-psr-sprite-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@pr-sprite-render:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_psr@pr-sprite-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289"
                moz-do-not-send="true">i915#5289</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-18/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289"
                moz-do-not-send="true">i915#5289</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-center:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@kms_scaling_modes@scaling-mode-center.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_scaling_modes@scaling-mode-none:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-5/igt@kms_scaling_modes@scaling-mode-none.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-snb7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-snb7/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5465"
                moz-do-not-send="true">i915#5465</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623"
                moz-do-not-send="true">i915#8623</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-tglu-2/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196"
                moz-do-not-send="true">i915#9196</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk6/igt@kms_writeback@writeback-fb-id-xrgb2101010.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@kms_writeback@writeback-invalid-parameters.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-read-hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@prime_vgem@fence-read-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@runner@aborted:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk1/igt@runner@aborted.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291"
                moz-do-not-send="true">i915#10291</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_timeline@invalid-wait-zero-handles:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-4/igt@syncobj_timeline@invalid-wait-zero-handles.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781"
                moz-do-not-send="true">i915#9781</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_perfmon@get-values-invalid-pad:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@v3d/v3d_perfmon@get-values-invalid-pad.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@v3d/v3d_submit_cl@bad-perfmon.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_cl@multisync-out-syncs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@v3d/v3d_submit_cl@multisync-out-syncs.html"
                moz-do-not-send="true">SKIP</a> +24 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_perfmon@get-values-invalid-pointer:</p>
          <ul>
            <li>shard-tglu: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-8/igt@vc4/vc4_perfmon@get-values-invalid-pointer.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-15/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_tiling@set-bad-modifier:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@vc4/vc4_tiling@set-bad-modifier.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +4 other tests
              skip</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@drm_fdinfo@virtual-idle:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-6/igt@drm_fdinfo@virtual-idle.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742"
                moz-do-not-send="true">i915#7742</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-5/igt@drm_fdinfo@virtual-idle.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@reset-stress:</p>
          <ul>
            <li>shard-dg1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg1-16/igt@gem_eio@reset-stress.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784"
                moz-do-not-send="true">i915#5784</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-17/igt@gem_eio@reset-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-tglu-9/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-tglu-3/igt@gem_exec_fair@basic-throttle@rcs0.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-mtlp-7/igt@i915_pm_rpm@system-suspend-execbuf.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8797"
                moz-do-not-send="true">i915#8797</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-mtlp-8/igt@i915_pm_rpm@system-suspend-execbuf.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">PASS</a> +3 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@device_reset@unbind-reset-rebind:</p>
          <ul>
            <li>shard-dg1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg1-15/igt@device_reset@unbind-reset-rebind.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413"
                moz-do-not-send="true">i915#9413</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413"
                moz-do-not-send="true">i915#9413</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-glk6/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566"
                moz-do-not-send="true">i915#5566</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-glk3/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566"
                moz-do-not-send="true">i915#5566</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433"
                moz-do-not-send="true">i915#10433</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr-cursor-render:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-11/igt@kms_psr@psr-cursor-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-10/igt@kms_psr@psr-cursor-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2-cursor-plane-move:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-4/igt@kms_psr@psr2-cursor-plane-move.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14775/shard-dg2-6/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493"
                moz-do-not-send="true">i915#5493</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133704v1/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html"
                moz-do-not-send="true">CRASH</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9351"
                moz-do-not-send="true">i915#9351</a>)</li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_14775 -&gt; Patchwork_133704v1</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_14775: 3b6a503228b84c010794599203ac3e1e3d349bab @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7858: 133c90d6aabcd90871e36946317c90ee83c2f847 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_133704v1: 3b6a503228b84c010794599203ac3e1e3d349bab @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------mFCCqA0CBOR4gZP36muQ7h2P--
