Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 795808B0524
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 10:56:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8202D113963;
	Wed, 24 Apr 2024 08:56:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J9x4mhXs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51EC113969
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 08:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713949003; x=1745485003;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to;
 bh=qBCMOEwcEQ8eeK/s5gb1RT+7Yis77pKERQR1b24OVaA=;
 b=J9x4mhXsC04NQLrj9NEmPOY7cgMOIAyeBtlXwA/T2h8+QQECdlEcMbu0
 if8SzVDsDu2ftYEVNZ9O1zaxF7a7Xe4OJbLxBHtk4IG+Ao1+jE2vlSqgW
 x8rXDhPQy99nqyJpTavT0zXap+5a2knP1QQw8SP3hO03cuKHFY1YED2wc
 oCy89v7uJzp6LQUdShumyMJ/pgEkjyNXBTVvpbvabbP7L5pE2kDtkNta0
 4AUmW0gl6x5E3wxdrA7TVhTtafDubHksgN4oYbOwY4dTQqb1izHu2+S6Z
 oqINAPAselkptPjvjfzXffVCLSZHaPWNfsYIVAGQOGdMecywkOPENAZ6r A==;
X-CSE-ConnectionGUID: /3F/i1fMTl6DIZjrHdq1eg==
X-CSE-MsgGUID: NdUwsVI3TrSJD+4MjhXKow==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="9438022"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208,217";a="9438022"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 01:56:42 -0700
X-CSE-ConnectionGUID: F4NNiJSAQLqHsqQ9345d3A==
X-CSE-MsgGUID: Njmuij8ZQvihsdgvoFcm+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208,217";a="29287659"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.94.248.38])
 ([10.94.248.38])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 01:56:39 -0700
Content-Type: multipart/alternative;
 boundary="------------SXRj9b8s9CXpyU13qtfBXuP7"
Message-ID: <c0350600-db5d-46eb-a9e8-9ca6188a5a66@linux.intel.com>
Date: Wed, 24 Apr 2024 10:56:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_series_start?=
 =?UTF-8?Q?ing_with_=5Bv2=2C1/2=5D_drm/i915=3A_Refactor_confusing_=5F=5Finte?=
 =?UTF-8?B?bF9ndF9yZXNldCgpIChyZXYyKQ==?=
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
References: <20240422201951.633-1-nirmoy.das@intel.com>
 <171394657048.1628979.1495409636175588912@8e613ede5ea5>
Content-Language: en-US
Cc: Andi Shyti <andi.shyti@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <171394657048.1628979.1495409636175588912@8e613ede5ea5>
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
--------------SXRj9b8s9CXpyU13qtfBXuP7
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 4/24/2024 10:16 AM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [v2,1/2] drm/i915: Refactor confusing 
> __intel_gt_reset() (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/132731/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_14633_full -> Patchwork_132731v2_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_132731v2_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_132731v2_full, please notify your bug team 
> ('I915-ci-infra@lists.freedesktop.org') to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html
>
>
>     Participating hosts (9 -> 8)
>
> Missing (1): shard-dg2-set2
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_132731v2_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>  *
>
>     igt@gem_exec_await@wide-all:
>
>       o shard-dg1: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_await@wide-all.html>
>  *
>
>     igt@gem_exec_gttfill@engines@ccs0:
>
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@gem_exec_gttfill@engines@ccs0.html>
>
These are unrelated as the change only effects where GuC submission 
disabled.

Andi, could you please help me merge this one. My dev machine is still 
broken.


Regards,

Nirmoy

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_132731v2_full that come from 
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
>     igt@api_intel_bb@object-reloc-purge-cache:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@api_intel_bb@object-reloc-purge-cache.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>  *
>
>     igt@core_hotunplug@unbind-rebind:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-6/igt@core_hotunplug@unbind-rebind.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-8/igt@core_hotunplug@unbind-rebind.html>
>         (i915#10770
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10770>)
>  *
>
>     igt@drm_fdinfo@busy@rcs0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@drm_fdinfo@busy@rcs0.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>         +15 other tests skip
>  *
>
>     igt@drm_fdinfo@most-busy-check-all@rcs0:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html>
>         (i915#7742
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742>)
>  *
>
>     igt@drm_fdinfo@virtual-busy-all:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@drm_fdinfo@virtual-busy-all.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>         +2 other tests skip
>  *
>
>     igt@drm_fdinfo@virtual-busy-hang:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@drm_fdinfo@virtual-busy-hang.html>
>         (i915#8414
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>  *
>
>     igt@gem_busy@semaphore:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_busy@semaphore.html>
>         (i915#3936
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936>)
>  *
>
>     igt@gem_ccs@suspend-resume:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_ccs@suspend-resume.html>
>         (i915#9323
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>  *
>
>     igt@gem_close_race@multigpu-basic-threads:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html>
>         (i915#7697
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>  *
>
>     igt@gem_create@create-ext-cpu-access-big:
>
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html>
>         (i915#9364
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9364>)
>  *
>
>     igt@gem_create@create-ext-set-pat:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_create@create-ext-set-pat.html>
>         (i915#8562
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>  *
>
>     igt@gem_ctx_exec@basic-nohangcheck:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html>
>         (i915#6268
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268>)
>  *
>
>     igt@gem_ctx_freq@sysfs@gt0:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html>
>         (i915#9561
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561>)
>  *
>
>     igt@gem_ctx_persistence@heartbeat-many:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html>
>         (i915#8555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>  *
>
>     igt@gem_ctx_persistence@legacy-engines-queued:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html>
>         (i915#1099
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099>)
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-dg1: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_eio@kms.html>
>         (i915#10513
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513>)
>  *
>
>     igt@gem_eio@unwedge-stress:
>
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_eio@unwedge-stress.html>
>         (i915#5784
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784>)
>  *
>
>     igt@gem_exec_balancer@bonded-pair:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_exec_balancer@bonded-pair.html>
>         (i915#4771
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771>)
>  *
>
>     igt@gem_exec_balancer@invalid-bonds:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html>
>         (i915#4036
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036>)
>  *
>
>     igt@gem_exec_balancer@parallel-bb-first:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_exec_balancer@parallel-bb-first.html>
>         (i915#4525
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_capture@capture-invisible@lmem0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_exec_capture@capture-invisible@lmem0.html>
>         (i915#6334
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_capture@many-4k-incremental:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html>
>         (i915#9606
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606>)
>  *
>
>     igt@gem_exec_fair@basic-none-solo@rcs0:
>
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>  *
>
>     igt@gem_exec_fair@basic-none-vip@rcs0:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         +1 other test fail
>  *
>
>     igt@gem_exec_fair@basic-pace-share:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fair@basic-pace-share.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>         +4 other tests skip
>  *
>
>     igt@gem_exec_fair@basic-pace-solo:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fair@basic-pace-solo.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_exec_fair@basic-pace-solo.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_fence@submit3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fence@submit3.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_exec_fence@submit3.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_flush@basic-wb-ro-before-default:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_flush@basic-wb-ro-before-default.html>
>         (i915#3539
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>
>         / i915#4852
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>         +1 other test skip
>  *
>
>     igt@gem_exec_reloc@basic-gtt-noreloc:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_exec_reloc@basic-gtt-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>  *
>
>     igt@gem_exec_reloc@basic-gtt-read:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-read.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +5 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-write-cpu-active:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_exec_reloc@basic-write-cpu-active.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +6 other tests skip
>  *
>
>     igt@gem_exec_reloc@basic-write-read-noreloc:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>         +8 other tests skip
>  *
>
>     igt@gem_fence_thrash@bo-write-verify-x:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-x.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>         +1 other test skip
>  *
>
>     igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>         +1 other test skip
>  *
>
>     igt@gem_lmem_evict@dontneed-evict-race:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>
>         / i915#7582
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582>)
>  *
>
>     igt@gem_lmem_swapping@basic@lmem0:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html>
>         (i915#10378
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378>)
>         +1 other test fail
>  *
>
>     igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html>
>         (i915#10378
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378>)
>  *
>
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +3 other tests skip
>  *
>
>     igt@gem_lmem_swapping@verify-ccs:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +2 other tests skip
>  *
>
>     igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html>
>         (i915#4565
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565>)
>  *
>
>     igt@gem_mmap_gtt@basic-small-bo:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_mmap_gtt@basic-small-bo.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +12 other tests skip
>  *
>
>     igt@gem_mmap_gtt@basic-small-copy-odd:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_mmap_gtt@basic-small-copy-odd.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>  *
>
>     igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>         +4 other tests skip
>  *
>
>     igt@gem_mmap_wc@fault-concurrent:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_mmap_wc@fault-concurrent.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +1 other test skip
>  *
>
>     igt@gem_mmap_wc@write-cpu-read-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>         +4 other tests skip
>  *
>
>     igt@gem_partial_pwrite_pread@write-uncached:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_partial_pwrite_pread@write-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +5 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_partial_pwrite_pread@write-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>  *
>
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>  *
>
>     igt@gem_pxp@display-protected-crc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_pxp@display-protected-crc.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +3 other tests skip
>  *
>
>     igt@gem_pxp@fail-invalid-protected-context:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_pxp@fail-invalid-protected-context.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +2 other tests skip
>  *
>
>     igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>         +4 other tests skip
>  *
>
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +6 other tests skip
>  *
>
>     igt@gem_render_copy@yf-tiled-to-vebox-linear:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-linear.html>
>         (i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>  *
>
>     igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html>
>         (i915#8411
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>         +2 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html>
>         (i915#4079
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>  *
>
>     igt@gem_softpin@evict-snoop:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_softpin@evict-snoop.html>
>         (i915#4885
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885>)
>  *
>
>     igt@gem_userptr_blits@create-destroy-unsync:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +3 other tests skip
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_userptr_blits@create-destroy-unsync.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>         +1 other test skip
>  *
>
>     igt@gem_userptr_blits@forbidden-operations:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@forbidden-operations.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>
>         / i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>  *
>
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>
>         / i915#4880
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>  *
>
>     igt@gen9_exec_parse@batch-invalid-length:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gen9_exec_parse@batch-invalid-length.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +4 other tests skip
>  *
>
>     igt@gen9_exec_parse@bb-chained:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html>
>         (i915#2527
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>         +3 other tests skip
>  *
>
>     igt@gen9_exec_parse@bb-start-far:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>         +3 other tests skip
>  *
>
>     igt@i915_fb_tiling:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@i915_fb_tiling.html>
>         (i915#4881
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881>)
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-rkl: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#9820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#9820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>
>         / i915#9849
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849>)
>  *
>
>     igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html>
>         (i915#8431
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8431>)
>  *
>
>     igt@i915_pm_rps@min-max-config-idle:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@i915_pm_rps@min-max-config-idle.html>
>         (i915#6621
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>  *
>
>     igt@i915_pm_rps@thresholds-idle@gt0:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@i915_pm_rps@thresholds-idle@gt0.html>
>         (i915#8925
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925>)
>         +1 other test skip
>  *
>
>     igt@i915_pm_rps@thresholds@gt0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@i915_pm_rps@thresholds@gt0.html>
>         (i915#8925
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925>)
>         +1 other test skip
>  *
>
>     igt@i915_pm_sseu@full-enable:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@i915_pm_sseu@full-enable.html>
>         (i915#4387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387>)
>  *
>
>     igt@i915_power@sanity:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@i915_power@sanity.html>
>         (i915#7984
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984>)
>  *
>
>     igt@i915_query@query-topology-coherent-slice-mask:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html>
>         (i915#6188
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188>)
>  *
>
>     igt@kms_addfb_basic@clobberred-modifier:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_addfb_basic@clobberred-modifier.html>
>         (i915#4212
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>         +3 other tests skip
>  *
>
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html>
>         (i915#8709
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>)
>         +11 other tests skip
>  *
>
>     igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html>
>         (i915#1769
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_big_fb@4-tiled-16bpp-rotate-180:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html>
>         (i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +3 other tests skip
>  *
>
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5286
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>)
>         +3 other tests skip
>  *
>
>     igt@kms_big_fb@linear-16bpp-rotate-90:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_big_fb@linear-16bpp-rotate-90.html>
>         +2 other tests skip
>  *
>
>     igt@kms_big_fb@linear-32bpp-rotate-90:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@linear-32bpp-rotate-90.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@linear-8bpp-rotate-90:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-90.html>
>         (i915#3638
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>         +1 other test skip
>  *
>
>     igt@kms_big_fb@y-tiled-addfb-size-overflow:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +11 other tests skip
>  *
>
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>)
>         +4 other tests skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +87 other tests skip
>  *
>
>     igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html>
>         (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +59 other tests skip
>  *
>
>     igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#10434
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +7 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>  *
>
>     igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307>
>         / i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +191 other tests skip
>  *
>
>     igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html>
>         (i915#4087
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087>)
>         +3 other tests skip
>  *
>
>     igt@kms_chamelium_audio@hdmi-audio:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_chamelium_audio@hdmi-audio.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +11 other tests skip
>  *
>
>     igt@kms_chamelium_frames@vga-frame-dump:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +7 other tests skip
>  *
>
>     igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +6 other tests skip
>  *
>
>     igt@kms_content_protection@atomic-dpms:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_content_protection@atomic-dpms.html>
>         (i915#7116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         +1 other test skip
>  *
>
>     igt@kms_content_protection@dp-mst-type-0:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html>
>         (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>  *
>
>     igt@kms_content_protection@dp-mst-type-1:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html>
>         (i915#3299
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>  *
>
>     igt@kms_content_protection@lic-type-0@pipe-a-dp-4:
>
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html>
>         (i915#7173
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>         +1 other test timeout
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-512x170:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>         +2 other tests skip
>  *
>
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>         +1 other test skip
>  *
>
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
>         / i915#4213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html>
>         (i915#9809
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809>)
>  *
>
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html>
>         (i915#4103
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>
>         / i915#4213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>  *
>
>     igt@kms_cursor_legacy@torture-bo@pipe-a:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>         (i915#10166
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166>)
>  *
>
>     igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html>
>         (i915#9227
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html>
>         (i915#9723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>  *
>
>     igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-13/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html>
>         (i915#9723
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>  *
>
>     igt@kms_display_modes@extended-mode-basic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_display_modes@extended-mode-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +5 other tests skip
>  *
>
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html>
>         (i915#3804
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>  *
>
>     igt@kms_dp_aux_dev:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_dp_aux_dev.html>
>         (i915#1257
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_dp_aux_dev.html>
>         (i915#1257
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>  *
>
>     igt@kms_dsc@dsc-basic:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_dsc@dsc-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>         +1 other test skip
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_dsc@dsc-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_dsc@dsc-basic.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_dsc@dsc-fractional-bpp:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html>
>         (i915#3840
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>  *
>
>     igt@kms_fbcon_fbt@psr-suspend:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.html>
>         (i915#3469
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469>)
>  *
>
>     igt@kms_feature_discovery@display-2x:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_feature_discovery@display-2x.html>
>         (i915#1839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>  *
>
>     igt@kms_feature_discovery@psr2:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_feature_discovery@psr2.html>
>         (i915#658
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658>)
>  *
>
>     igt@kms_flip@2x-flip-vs-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_flip@2x-flip-vs-dpms.html>
>         +38 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_flip@2x-flip-vs-dpms.html>
>         (i915#9934
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>         +5 other tests skip
>  *
>
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         (i915#3637
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@2x-modeset-vs-vblank-race:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vblank-race.html>
>         +19 other tests skip
>  *
>
>     igt@kms_flip@flip-vs-fences-interruptible:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html>
>         (i915#8381
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381>)
>         +1 other test skip
>  *
>
>     igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html>
>         (i915#4839
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839>)
>  *
>
>     igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>)
>         +1 other test fail
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html>
>         (i915#2587
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587>
>         / i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +3 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +4 other tests skip
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>
>         / i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html>
>         (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +6 other tests skip
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +38 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html>
>         +4 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html>
>         +30 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
>
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html>
>         +45 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +11 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         (i915#3023
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>)
>         +19 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +17 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html>
>         +229 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html>
>         (i915#1825
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>)
>         +31 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@plane-fbc-rte:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@plane-fbc-rte.html>
>         (i915#10070
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10070>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +11 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +19 other tests skip
>  *
>
>     igt@kms_hdr@bpc-switch-suspend:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_hdr@bpc-switch-suspend.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_hdr@invalid-metadata-sizes:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_hdr@invalid-metadata-sizes.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>  *
>
>     igt@kms_hdr@static-toggle:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_hdr@static-toggle.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8228
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>         +1 other test skip
>  *
>
>     igt@kms_plane_multiple@tiling-yf:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +5 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_plane_multiple@tiling-yf.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +3 other tests skip
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#8806
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806>)
>  *
>
>     igt@kms_plane_scaling@intel-max-src-size:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html>
>         (i915#6953
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +5 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +7 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html>
>         (i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +7 other tests skip
>  *
>
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html>
>         (i915#5176
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +1 other test skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>
>         / i915#9423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>)
>         +19 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>         +7 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>         +2 other tests skip
>  *
>
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>
>         / i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>  *
>
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html>
>         (i915#5235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235>)
>         +3 other tests skip
>  *
>
>     igt@kms_pm_dc@dc6-dpms:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#3361
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#3361
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361>)
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp:
>
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         +1 other test skip
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp-stress:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_prime@basic-modeset-hybrid:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>
>         / i915#6805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>  *
>
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr2_su@page_flip-xrgb8888:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>         +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_psr2_su@page_flip-xrgb8888.html>
>         (i915#9683
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>  *
>
>     igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +6 other tests skip
>  *
>
>     igt@kms_psr@psr-cursor-render:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_psr@psr-cursor-render.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +16 other tests skip
>  *
>
>     igt@kms_psr@psr-sprite-mmap-cpu:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_psr@psr-sprite-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +13 other tests skip
>  *
>
>     igt@kms_psr@psr2-sprite-mmap-cpu:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +17 other tests skip
>  *
>
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html>
>         (i915#4235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_rotation_crc@sprite-rotation-90:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html>
>         (i915#4235
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:
>
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>  *
>
>     igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
>
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html>
>         (i915#9196
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>  *
>
>     igt@kms_vrr@seamless-rr-switch-vrr:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>         +1 other test skip
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-vrr.html>
>         (i915#9906
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>  *
>
>     igt@kms_writeback@writeback-fb-id-xrgb2101010:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_writeback@writeback-fb-id-xrgb2101010.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>
>         / i915#9412
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk2/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@perf@global-sseu-config:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@perf@global-sseu-config.html>
>         (i915#7387
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387>)
>  *
>
>     igt@perf_pmu@busy-double-start@vecs1:
>
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html>
>         (i915#4349
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>)
>         +3 other tests fail
>  *
>
>     igt@perf_pmu@cpu-hotplug:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@perf_pmu@cpu-hotplug.html>
>         (i915#8850
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850>)
>  *
>
>     igt@perf_pmu@module-unload:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@perf_pmu@module-unload.html>
>         (i915#10537
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10537>
>         / i915#5793
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5793>)
>  *
>
>     igt@perf_pmu@rc6@other-idle-gt0:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html>
>         (i915#8516
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
>  *
>
>     igt@prime_vgem@basic-read:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@prime_vgem@basic-read.html>
>         (i915#3291
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291>
>         / i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@prime_vgem@coherency-gtt:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@prime_vgem@coherency-gtt.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>
>         / i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>  *
>
>     igt@prime_vgem@fence-read-hang:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@prime_vgem@fence-read-hang.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>  *
>
>     igt@prime_vgem@fence-write-hang:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@prime_vgem@fence-write-hang.html>
>         (i915#3708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>         +1 other test skip
>  *
>
>     igt@sriov_basic@enable-vfs-autoprobe-on:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-on.html>
>         (i915#9917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html>
>         (i915#9917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-on.html>
>         (i915#9917
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
>  *
>
>     igt@syncobj_wait@invalid-wait-zero-handles:
>
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@syncobj_wait@invalid-wait-zero-handles.html>
>         (i915#9779
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779>)
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@syncobj_wait@invalid-wait-zero-handles.html>
>         (i915#9779
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779>)
>  *
>
>     igt@tools_test@sysfs_l3_parity:
>
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@tools_test@sysfs_l3_parity.html>
>         (i915#4818
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818>)
>  *
>
>     igt@v3d/v3d_submit_cl@bad-extension:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@v3d/v3d_submit_cl@bad-extension.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +7 other tests skip
>  *
>
>     igt@v3d/v3d_submit_cl@bad-perfmon:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-perfmon.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         +9 other tests skip
>  *
>
>     igt@vc4/vc4_create_bo@create-bo-zeroed:
>
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@vc4/vc4_create_bo@create-bo-zeroed.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +6 other tests skip
>  *
>
>     igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:
>
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +5 other tests skip
>  *
>
>     igt@vc4/vc4_wait_bo@bad-bo:
>
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@vc4/vc4_wait_bo@bad-bo.html>
>         (i915#7711
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711>)
>         +8 other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@fbdev@write:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@fbdev@write.html>
>         (i915#2582
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@fbdev@write.html>
>  *
>
>     igt@gem_cs_tlb@engines@vecs1:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-3/igt@gem_cs_tlb@engines@vecs1.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_cs_tlb@engines@vecs1.html>
>  *
>
>     igt@gem_exec_balancer@smoke:
>
>       o shard-dg1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg1-13/igt@gem_exec_balancer@smoke.html>
>         (i915#9856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9856>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_balancer@smoke.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@bcs0:
>
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html>
>  *
>
>     igt@gem_exec_fair@basic-pace@rcs0:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html>
>         (i915#2842
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html>
>         +1 other test pass
>  *
>
>     igt@gem_exec_suspend@basic-s4-devices@lmem0:
>
>       o shard-dg2: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html>
>         (i915#7975
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975>
>         / i915#8213
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html>
>  *
>
>     igt@gem_userptr_blits@sync-unmap:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_userptr_blits@sync-unmap.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_userptr_blits@sync-unmap.html>
>         +29 other tests pass
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-glk: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-glk2/igt@gen9_exec_parse@allowed-all.html>
>         (i915#5566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk2/igt@gen9_exec_parse@allowed-all.html>
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#9849
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#10131
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131>
>         / i915#9820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html>
>  *
>
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         (i915#3743
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3743>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html>
>         +2 other tests pass
>  *
>
>     igt@kms_cursor_legacy@torture-bo@pipe-a:
>
>       o shard-tglu: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>         (i915#10166
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html>
>  *
>
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:
>
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html>
>         (i915#2122
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html>
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
>
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html>
>         +1 other test pass
>  *
>
>     igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html>
>         +5 other tests pass
>  *
>
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         +3 other tests pass
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>  *
>
>     igt@perf@non-system-wide-paranoid:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@perf@non-system-wide-paranoid.html>
>         (i915#5608
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf@non-system-wide-paranoid.html>
>         +1 other test pass
>
>
>         Warnings
>
>  *
>
>     igt@gem_eio@kms:
>
>       o shard-dg2: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-6/igt@gem_eio@kms.html>
>         (i915#10513
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513>)
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@gem_eio@kms.html>
>         (i915#10513
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513>
>         / i915#1982
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982>)
>  *
>
>     igt@gem_exec_balancer@bonded-true-hang:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html>
>         (i915#4812
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>  *
>
>     igt@gem_exec_reloc@basic-concurrent0:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_exec_reloc@basic-concurrent0.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_exec_reloc@basic-concurrent0.html>
>         (i915#3281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>)
>  *
>
>     igt@gem_fenced_exec_thrash@too-many-fences:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_fenced_exec_thrash@too-many-fences.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_fenced_exec_thrash@too-many-fences.html>
>         (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>  *
>
>     igt@gem_mmap_gtt@bad-object:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_mmap_gtt@bad-object.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_mmap_gtt@bad-object.html>
>         (i915#4077
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>  *
>
>     igt@gem_mmap_wc@write-prefaulted:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_mmap_wc@write-prefaulted.html>
>         (i915#4083
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>  *
>
>     igt@gem_partial_pwrite_pread@reads-snoop:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-snoop.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_partial_pwrite_pread@reads-snoop.html>
>         (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>  *
>
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html>
>         (i915#4270
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>  *
>
>     igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>
>         / i915#8428
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>)
>         +1 other test skip
>  *
>
>     igt@gem_userptr_blits@unsync-unmap-cycles:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_userptr_blits@unsync-unmap-cycles.html>
>         (i915#3297
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>  *
>
>     igt@gen3_render_tiledx_blits:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gen3_render_tiledx_blits.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gen3_render_tiledx_blits.html>
>         +4 other tests skip
>  *
>
>     igt@gen9_exec_parse@allowed-all:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gen9_exec_parse@allowed-all.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html>
>         (i915#2856
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>  *
>
>     igt@i915_module_load@reload-with-fault-injection:
>
>       o shard-tglu: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#10047
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047>)
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html>
>         (i915#10047
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047>
>         / i915#9820
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>  *
>
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html>
>         (i915#4215
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>  *
>
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         (i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html>
>         (i915#4538
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>
>         / i915#5190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>         +2 other tests skip
>  *
>
>     igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html>
>         (i915#10278
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278>)
>  *
>
>     igt@kms_chamelium_frames@dp-crc-fast:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html>
>         (i915#7828
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>)
>         +1 other test skip
>  *
>
>     igt@kms_content_protection@content-type-change:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_content_protection@content-type-change.html>
>         (i915#8816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_content_protection@content-type-change.html>
>  *
>
>     igt@kms_content_protection@mei-interface:
>
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_content_protection@mei-interface.html>
>         (i915#9878
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_content_protection@mei-interface.html>
>  *
>
>     igt@kms_content_protection@type1:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#7162
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_content_protection@type1.html>
>         (i915#7118
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>
>         / i915#9424
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>  *
>
>     igt@kms_cursor_crc@cursor-offscreen-max-size:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-max-size.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-max-size.html>
>         (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>  *
>
>     igt@kms_cursor_crc@cursor-random-512x170:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html>
>         (i915#3359
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>  *
>
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>  *
>
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         +2 other tests skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         (i915#10433
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433>
>         / i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html>
>         (i915#3458
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html>
>         (i915#8708
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>)
>         +1 other test skip
>  *
>
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html>
>         (i915#5354
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>         +8 other tests skip
>  *
>
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4070
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070>
>         / i915#4816
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>)
>  *
>
>     igt@kms_panel_fitting@atomic-fastset:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html>
>         (i915#6301
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>  *
>
>     igt@kms_pm_dc@dc9-dpms:
>
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#4281
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#3361
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361>)
>  *
>
>     igt@kms_pm_rpm@modeset-lpsp:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html>
>         (i915#9980
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html>
>         (i915#9519
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>  *
>
>     igt@kms_prime@d3hot:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_prime@d3hot.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_prime@d3hot.html>
>         (i915#6524
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>
>         / i915#6805
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>  *
>
>     igt@kms_psr@fbc-pr-sprite-mmap-gtt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +4 other tests skip
>  *
>
>     igt@kms_psr@pr-primary-mmap-cpu:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@kms_psr@pr-primary-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_psr@pr-primary-mmap-cpu.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +5 other tests skip
>  *
>
>     igt@kms_psr@psr2-primary-blt:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_psr@psr2-primary-blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9673
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_psr@psr2-primary-blt.html>
>         (i915#1072
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072>
>         / i915#9732
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>         +8 other tests skip
>  *
>
>     igt@kms_writeback@writeback-invalid-parameters:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2575
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_writeback@writeback-invalid-parameters.html>
>         (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>)
>  *
>
>     igt@perf@non-zero-reason@0-rcs0:
>
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html>
>         (i915#9100
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html>
>         (i915#7484
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484>)
>  *
>
>     igt@perf@per-context-mode-unprivileged:
>
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@perf@per-context-mode-unprivileged.html>
>         (i915#5608
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608>)
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf@per-context-mode-unprivileged.html>
>
>
>     Build changes
>
>   * Linux: CI_DRM_14633 -> Patchwork_132731v2
>   * Piglit: piglit_4509 -> None
>
> CI-20190529: 20190529
> CI_DRM_14633: 861eed75446fe9dbac9d28d11f44caa47cebeebf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7815: d5d516bfdf77898e934b4c7ed947a43711cfb226 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_132731v2: 861eed75446fe9dbac9d28d11f44caa47cebeebf @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
>
--------------SXRj9b8s9CXpyU13qtfBXuP7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/24/2024 10:16 AM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:171394657048.1628979.1495409636175588912@8e613ede5ea5">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [v2,1/2] drm/i915: Refactor
              confusing __intel_gt_reset() (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a
                href="https://patchwork.freedesktop.org/series/132731/"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/132731/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html"
                moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_14633_full -&gt;
        Patchwork_132731v2_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_132731v2_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_132731v2_full, please notify your bug
        team ('<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>') to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/index.html</a></p>
      <h2>Participating hosts (9 -&gt; 8)</h2>
      <p>Missing (1): shard-dg2-set2 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_132731v2_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>
          <p>igt@gem_exec_await@wide-all:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_await@wide-all.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_gttfill@engines@ccs0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@gem_exec_gttfill@engines@ccs0.html"
                moz-do-not-send="true">INCOMPLETE</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>These are unrelated as the change only effects where GuC
      submission disabled.</p>
    <p>Andi, could you please help me merge this one. My dev machine is
      still broken.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Nirmoy<br>
    </p>
    <blockquote type="cite"
      cite="mid:171394657048.1628979.1495409636175588912@8e613ede5ea5">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_132731v2_full that come
        from known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@api_intel_bb@object-reloc-purge-cache:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@api_intel_bb@object-reloc-purge-cache.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411"
                moz-do-not-send="true">i915#8411</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@core_hotunplug@unbind-rebind:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-6/igt@core_hotunplug@unbind-rebind.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-8/igt@core_hotunplug@unbind-rebind.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10770"
                moz-do-not-send="true">i915#10770</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@busy@rcs0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@drm_fdinfo@busy@rcs0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414"
                moz-do-not-send="true">i915#8414</a>) +15 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@most-busy-check-all@rcs0:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@drm_fdinfo@most-busy-check-all@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742"
                moz-do-not-send="true">i915#7742</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@virtual-busy-all:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@drm_fdinfo@virtual-busy-all.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414"
                moz-do-not-send="true">i915#8414</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@drm_fdinfo@virtual-busy-hang:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@drm_fdinfo@virtual-busy-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414"
                moz-do-not-send="true">i915#8414</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_busy@semaphore:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_busy@semaphore.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936"
                moz-do-not-send="true">i915#3936</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ccs@suspend-resume:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_ccs@suspend-resume.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323"
                moz-do-not-send="true">i915#9323</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_close_race@multigpu-basic-threads:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697"
                moz-do-not-send="true">i915#7697</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-cpu-access-big:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9364"
                moz-do-not-send="true">i915#9364</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_create@create-ext-set-pat:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_create@create-ext-set-pat.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562"
                moz-do-not-send="true">i915#8562</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_exec@basic-nohangcheck:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-7/igt@gem_ctx_exec@basic-nohangcheck.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268"
                moz-do-not-send="true">i915#6268</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_freq@sysfs@gt0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@gem_ctx_freq@sysfs@gt0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561"
                moz-do-not-send="true">i915#9561</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@heartbeat-many:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_ctx_persistence@heartbeat-many.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555"
                moz-do-not-send="true">i915#8555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099"
                moz-do-not-send="true">i915#1099</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_eio@kms.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513"
                moz-do-not-send="true">i915#10513</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_eio@unwedge-stress:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_eio@unwedge-stress.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784"
                moz-do-not-send="true">i915#5784</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@bonded-pair:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_exec_balancer@bonded-pair.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771"
                moz-do-not-send="true">i915#4771</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@invalid-bonds:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_balancer@invalid-bonds.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036"
                moz-do-not-send="true">i915#4036</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@parallel-bb-first:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_exec_balancer@parallel-bb-first.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525"
                moz-do-not-send="true">i915#4525</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@capture-invisible@lmem0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_exec_capture@capture-invisible@lmem0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334"
                moz-do-not-send="true">i915#6334</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_capture@many-4k-incremental:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk1/igt@gem_exec_capture@many-4k-incremental.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606"
                moz-do-not-send="true">i915#9606</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk7/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_exec_fair@basic-none-solo@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-2/igt@gem_exec_fair@basic-none-vip@rcs0.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-4/igt@gem_exec_fair@basic-none-vip@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-share:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fair@basic-pace-share.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852"
                moz-do-not-send="true">i915#4852</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace-solo:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fair@basic-pace-solo.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_exec_fair@basic-pace-solo.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fence@submit3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_fence@submit3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812"
                moz-do-not-send="true">i915#4812</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_exec_fence@submit3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812"
                moz-do-not-send="true">i915#4812</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_flush@basic-wb-ro-before-default.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539"
                moz-do-not-send="true">i915#3539</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852"
                moz-do-not-send="true">i915#4852</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_exec_reloc@basic-gtt-noreloc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-gtt-read:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_exec_reloc@basic-gtt-read.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_exec_reloc@basic-write-cpu-active.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fence_thrash@bo-write-verify-x:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-x.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860"
                moz-do-not-send="true">i915#4860</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860"
                moz-do-not-send="true">i915#4860</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_evict@dontneed-evict-race:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_lmem_evict@dontneed-evict-race.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582"
                moz-do-not-send="true">i915#7582</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@basic@lmem0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378"
                moz-do-not-send="true">i915#10378</a>) +1 other test
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@heavy-verify-multi@lmem0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378"
                moz-do-not-send="true">i915#10378</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-ccs:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"
                moz-do-not-send="true">i915#4613</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random-ccs@lmem0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565"
                moz-do-not-send="true">i915#4565</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic-small-bo:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@gem_mmap_gtt@basic-small-bo.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +12 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_mmap_gtt@basic-small-copy-odd.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@fault-concurrent:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_mmap_wc@fault-concurrent.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083"
                moz-do-not-send="true">i915#4083</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_mmap_wc@write-cpu-read-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083"
                moz-do-not-send="true">i915#4083</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@write-uncached:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_partial_pwrite_pread@write-uncached.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +5 other tests
              skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_partial_pwrite_pread@write-uncached.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@display-protected-crc:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_pxp@display-protected-crc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@fail-invalid-protected-context:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_pxp@fail-invalid-protected-context.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428"
                moz-do-not-send="true">i915#8428</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@gem_render_copy@yf-tiled-to-vebox-linear.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428"
                moz-do-not-send="true">i915#8428</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079"
                moz-do-not-send="true">i915#4079</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411"
                moz-do-not-send="true">i915#8411</a>) +2 other tests
              skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079"
                moz-do-not-send="true">i915#4079</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_softpin@evict-snoop:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_softpin@evict-snoop.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885"
                moz-do-not-send="true">i915#4885</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@create-destroy-unsync:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@create-destroy-unsync.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +3 other tests
              skip</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@gem_userptr_blits@create-destroy-unsync.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@forbidden-operations:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@forbidden-operations.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880"
                moz-do-not-send="true">i915#4880</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880"
                moz-do-not-send="true">i915#4880</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@batch-invalid-length:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gen9_exec_parse@batch-invalid-length.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"
                moz-do-not-send="true">i915#2527</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-chained:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@gen9_exec_parse@bb-chained.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527"
                moz-do-not-send="true">i915#2527</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@bb-start-far:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gen9_exec_parse@bb-start-far.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856"
                moz-do-not-send="true">i915#2856</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_fb_tiling:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@i915_fb_tiling.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881"
                moz-do-not-send="true">i915#4881</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820"
                moz-do-not-send="true">i915#9820</a>)</li>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820"
                moz-do-not-send="true">i915#9820</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849"
                moz-do-not-send="true">i915#9849</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@gem-mmap-type@gtt-smem0:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@i915_pm_rpm@gem-mmap-type@gtt-smem0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8431"
                moz-do-not-send="true">i915#8431</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@min-max-config-idle:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@i915_pm_rps@min-max-config-idle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621"
                moz-do-not-send="true">i915#6621</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds-idle@gt0:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@i915_pm_rps@thresholds-idle@gt0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925"
                moz-do-not-send="true">i915#8925</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rps@thresholds@gt0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@i915_pm_rps@thresholds@gt0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925"
                moz-do-not-send="true">i915#8925</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_sseu@full-enable:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@i915_pm_sseu@full-enable.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387"
                moz-do-not-send="true">i915#4387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_power@sanity:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@i915_power@sanity.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984"
                moz-do-not-send="true">i915#7984</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_query@query-topology-coherent-slice-mask:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188"
                moz-do-not-send="true">i915#6188</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@clobberred-modifier:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_addfb_basic@clobberred-modifier.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212"
                moz-do-not-send="true">i915#4212</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-3-4-mc-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709"
                moz-do-not-send="true">i915#8709</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769"
                moz-do-not-send="true">i915#1769</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286"
                moz-do-not-send="true">i915#5286</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_big_fb@linear-16bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> +2 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@linear-32bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638"
                moz-do-not-send="true">i915#3638</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-90.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638"
                moz-do-not-send="true">i915#3638</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-addfb-size-overflow:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-overflow.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +87 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +59 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307"
                moz-do-not-send="true">i915#10307</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434"
                moz-do-not-send="true">i915#10434</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307"
                moz-do-not-send="true">i915#10307</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095"
                moz-do-not-send="true">i915#6095</a>) +191 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087"
                moz-do-not-send="true">i915#4087</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_audio@hdmi-audio:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_chamelium_audio@hdmi-audio.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@vga-frame-dump:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_chamelium_frames@vga-frame-dump.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@atomic-dpms:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_content_protection@atomic-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_content_protection@atomic-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_content_protection@atomic-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116"
                moz-do-not-send="true">i915#7116</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-0:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116"
                moz-do-not-send="true">i915#3116</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@dp-mst-type-1:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299"
                moz-do-not-send="true">i915#3299</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@lic-type-0@pipe-a-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_content_protection@lic-type-0@pipe-a-dp-4.html"
                moz-do-not-send="true">TIMEOUT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173"
                moz-do-not-send="true">i915#7173</a>) +1 other test
              timeout</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_cursor_crc@cursor-onscreen-512x512.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359"
                moz-do-not-send="true">i915#3359</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213"
                moz-do-not-send="true">i915#4213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809"
                moz-do-not-send="true">i915#9809</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103"
                moz-do-not-send="true">i915#4103</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213"
                moz-do-not-send="true">i915#4213</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb4/igt@kms_cursor_legacy@torture-bo@pipe-a.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166"
                moz-do-not-send="true">i915#10166</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227"
                moz-do-not-send="true">i915#9227</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723"
                moz-do-not-send="true">i915#9723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-13/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723"
                moz-do-not-send="true">i915#9723</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_display_modes@extended-mode-basic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_display_modes@extended-mode-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804"
                moz-do-not-send="true">i915#3804</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dp_aux_dev:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_dp_aux_dev.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257"
                moz-do-not-send="true">i915#1257</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_dp_aux_dev.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257"
                moz-do-not-send="true">i915#1257</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_dsc@dsc-basic:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_dsc@dsc-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840"
                moz-do-not-send="true">i915#3840</a>) +1 other test skip</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_dsc@dsc-basic.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840"
                moz-do-not-send="true">i915#3840</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_dsc@dsc-basic.html"
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
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840"
                moz-do-not-send="true">i915#3840</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_fbcon_fbt@psr-suspend:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_fbcon_fbt@psr-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469"
                moz-do-not-send="true">i915#3469</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_feature_discovery@display-2x:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_feature_discovery@display-2x.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839"
                moz-do-not-send="true">i915#1839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_feature_discovery@psr2:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_feature_discovery@psr2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658"
                moz-do-not-send="true">i915#658</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-dpms:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_flip@2x-flip-vs-dpms.html"
                moz-do-not-send="true">SKIP</a> +38 other tests skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_flip@2x-flip-vs-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934"
                moz-do-not-send="true">i915#9934</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637"
                moz-do-not-send="true">i915#3637</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_flip@2x-modeset-vs-vblank-race.html"
                moz-do-not-send="true">SKIP</a> +19 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-fences-interruptible:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381"
                moz-do-not-send="true">i915#8381</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839"
                moz-do-not-send="true">i915#4839</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@plain-flip-ts-check@b-hdmi-a1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb5/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb7/igt@kms_flip@plain-flip-ts-check@b-hdmi-a1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122"
                moz-do-not-send="true">i915#2122</a>) +1 other test fail</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587"
                moz-do-not-send="true">i915#2587</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling@pipe-a-valid-mode.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672"
                moz-do-not-send="true">i915#2672</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274"
                moz-do-not-send="true">i915#5274</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +38 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> +4 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html"
                moz-do-not-send="true">SKIP</a> +30 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> +45 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-shrfb-msflip-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023"
                moz-do-not-send="true">i915#3023</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825"
                moz-do-not-send="true">i915#1825</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> +229 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825"
                moz-do-not-send="true">i915#1825</a>) +31 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@plane-fbc-rte:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@plane-fbc-rte.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10070"
                moz-do-not-send="true">i915#10070</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +11 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@bpc-switch-suspend:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@kms_hdr@bpc-switch-suspend.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@invalid-metadata-sizes:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_hdr@invalid-metadata-sizes.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_hdr@static-toggle:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_hdr@static-toggle.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228"
                moz-do-not-send="true">i915#8228</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_multiple@tiling-yf:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_plane_multiple@tiling-yf.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +5 other tests
              skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_plane_multiple@tiling-yf.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>) +3 other tests
              skip</li>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_plane_multiple@tiling-yf.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806"
                moz-do-not-send="true">i915#8806</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@intel-max-src-size:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953"
                moz-do-not-send="true">i915#6953</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176"
                moz-do-not-send="true">i915#5176</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-dp-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423"
                moz-do-not-send="true">i915#9423</a>) +19 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-4.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-edp-1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235"
                moz-do-not-send="true">i915#5235</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_dc@dc6-dpms:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_pm_dc@dc6-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361"
                moz-do-not-send="true">i915#3361</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_pm_dc@dc6-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361"
                moz-do-not-send="true">i915#3361</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-10/igt@kms_pm_rpm@modeset-non-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@basic-modeset-hybrid:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html"
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
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"
                moz-do-not-send="true">i915#9683</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@kms_psr2_su@page_flip-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"
                moz-do-not-send="true">i915#9683</a>) +1 other test skip</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@kms_psr2_su@page_flip-xrgb8888.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"
                moz-do-not-send="true">i915#9683</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-psr2-sprite-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr-cursor-render:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_psr@psr-cursor-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +16 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_psr@psr-sprite-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +13 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_psr@psr2-sprite-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +17 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235"
                moz-do-not-send="true">i915#4235</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_rotation_crc@sprite-rotation-90:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-90.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235"
                moz-do-not-send="true">i915#4235</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-4/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196"
                moz-do-not-send="true">i915#9196</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-2.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196"
                moz-do-not-send="true">i915#9196</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:</p>
          <ul>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-1/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196"
                moz-do-not-send="true">i915#9196</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@kms_vrr@seamless-rr-switch-vrr.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906"
                moz-do-not-send="true">i915#9906</a>) +1 other test skip</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-vrr.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906"
                moz-do-not-send="true">i915#9906</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-vrr.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906"
                moz-do-not-send="true">i915#9906</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-fb-id-xrgb2101010:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@kms_writeback@writeback-fb-id-xrgb2101010.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412"
                moz-do-not-send="true">i915#9412</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-glk: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk2/igt@kms_writeback@writeback-invalid-parameters.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@global-sseu-config:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@perf@global-sseu-config.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387"
                moz-do-not-send="true">i915#7387</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@busy-double-start@vecs1:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html"
                moz-do-not-send="true">PASS</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349"
                moz-do-not-send="true">i915#4349</a>) +3 other tests
              fail</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@cpu-hotplug:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@perf_pmu@cpu-hotplug.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850"
                moz-do-not-send="true">i915#8850</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@module-unload:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@perf_pmu@module-unload.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10537"
                moz-do-not-send="true">i915#10537</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5793"
                moz-do-not-send="true">i915#5793</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf_pmu@rc6@other-idle-gt0:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf_pmu@rc6@other-idle-gt0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516"
                moz-do-not-send="true">i915#8516</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@basic-read:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@prime_vgem@basic-read.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291"
                moz-do-not-send="true">i915#3291</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@coherency-gtt:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@prime_vgem@coherency-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"
                moz-do-not-send="true">i915#3708</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-read-hang:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@prime_vgem@fence-read-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"
                moz-do-not-send="true">i915#3708</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@prime_vgem@fence-write-hang:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-8/igt@prime_vgem@fence-write-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708"
                moz-do-not-send="true">i915#3708</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-on.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917"
                moz-do-not-send="true">i915#9917</a>)</li>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917"
                moz-do-not-send="true">i915#9917</a>)</li>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-on.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917"
                moz-do-not-send="true">i915#9917</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@syncobj_wait@invalid-wait-zero-handles.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779"
                moz-do-not-send="true">i915#9779</a>)</li>
            <li>shard-snb: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb5/igt@syncobj_wait@invalid-wait-zero-handles.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779"
                moz-do-not-send="true">i915#9779</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@tools_test@sysfs_l3_parity:</p>
          <ul>
            <li>shard-mtlp: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@tools_test@sysfs_l3_parity.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818"
                moz-do-not-send="true">i915#4818</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_cl@bad-extension:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-14/igt@v3d/v3d_submit_cl@bad-extension.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +7 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@v3d/v3d_submit_cl@bad-perfmon:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-perfmon.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) +9 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_create_bo@create-bo-zeroed:</p>
          <ul>
            <li>shard-rkl: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-1/igt@vc4/vc4_create_bo@create-bo-zeroed.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +6 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice:</p>
          <ul>
            <li>shard-dg1: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-17/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-twice.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@vc4/vc4_wait_bo@bad-bo:</p>
          <ul>
            <li>shard-dg2: NOTRUN -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@vc4/vc4_wait_bo@bad-bo.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711"
                moz-do-not-send="true">i915#7711</a>) +8 other tests
              skip</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@fbdev@write:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@fbdev@write.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582"
                moz-do-not-send="true">i915#2582</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@fbdev@write.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_cs_tlb@engines@vecs1:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-3/igt@gem_cs_tlb@engines@vecs1.html"
                moz-do-not-send="true">INCOMPLETE</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_cs_tlb@engines@vecs1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@smoke:</p>
          <ul>
            <li>shard-dg1: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg1-13/igt@gem_exec_balancer@smoke.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9856"
                moz-do-not-send="true">i915#9856</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg1-18/igt@gem_exec_balancer@smoke.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@bcs0:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_fair@basic-pace@rcs0:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842"
                moz-do-not-send="true">i915#2842</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-2/igt@gem_exec_fair@basic-pace@rcs0.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975"
                moz-do-not-send="true">i915#7975</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213"
                moz-do-not-send="true">i915#8213</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@sync-unmap:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_userptr_blits@sync-unmap.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_userptr_blits@sync-unmap.html"
                moz-do-not-send="true">PASS</a> +29 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-glk: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-glk2/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566"
                moz-do-not-send="true">i915#5566</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-glk2/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849"
                moz-do-not-send="true">i915#9849</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">PASS</a></li>
            <li>shard-mtlp: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">ABORT</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131"
                moz-do-not-send="true">i915#10131</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820"
                moz-do-not-send="true">i915#9820</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3743"
                moz-do-not-send="true">i915#3743</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-3/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html"
                moz-do-not-send="true">PASS</a> +2 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@torture-bo@pipe-a:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html"
                moz-do-not-send="true">DMESG-WARN</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166"
                moz-do-not-send="true">i915#10166</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-2/igt@kms_cursor_legacy@torture-bo@pipe-a.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122"
                moz-do-not-send="true">i915#2122</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank@ab-vga1-hdmi-a1.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-pwrite.html"
                moz-do-not-send="true">PASS</a> +5 other tests pass</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">PASS</a> +3 other tests pass</li>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html"
                moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@perf@non-system-wide-paranoid:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@perf@non-system-wide-paranoid.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608"
                moz-do-not-send="true">i915#5608</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf@non-system-wide-paranoid.html"
                moz-do-not-send="true">PASS</a> +1 other test pass</li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>
          <p>igt@gem_eio@kms:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-6/igt@gem_eio@kms.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513"
                moz-do-not-send="true">i915#10513</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@gem_eio@kms.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513"
                moz-do-not-send="true">i915#10513</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982"
                moz-do-not-send="true">i915#1982</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_balancer@bonded-true-hang:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_exec_balancer@bonded-true-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812"
                moz-do-not-send="true">i915#4812</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_exec_reloc@basic-concurrent0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_exec_reloc@basic-concurrent0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_exec_reloc@basic-concurrent0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281"
                moz-do-not-send="true">i915#3281</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_fenced_exec_thrash@too-many-fences.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_fenced_exec_thrash@too-many-fences.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860"
                moz-do-not-send="true">i915#4860</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_gtt@bad-object:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_mmap_gtt@bad-object.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_mmap_gtt@bad-object.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077"
                moz-do-not-send="true">i915#4077</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_mmap_wc@write-prefaulted:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_mmap_wc@write-prefaulted.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_mmap_wc@write-prefaulted.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083"
                moz-do-not-send="true">i915#4083</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_partial_pwrite_pread@reads-snoop.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_partial_pwrite_pread@reads-snoop.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282"
                moz-do-not-send="true">i915#3282</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270"
                moz-do-not-send="true">i915#4270</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_render_copy@y-tiled-mc-ccs-to-yf-tiled-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428"
                moz-do-not-send="true">i915#8428</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gem_userptr_blits@unsync-unmap-cycles.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gem_userptr_blits@unsync-unmap-cycles.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297"
                moz-do-not-send="true">i915#3297</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@gen3_render_tiledx_blits:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gen3_render_tiledx_blits.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gen3_render_tiledx_blits.html"
                moz-do-not-send="true">SKIP</a> +4 other tests skip</li>
          </ul>
        </li>
        <li>
          <p>igt@gen9_exec_parse@allowed-all:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856"
                moz-do-not-send="true">i915#2856</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@reload-with-fault-injection:</p>
          <ul>
            <li>shard-tglu: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047"
                moz-do-not-send="true">i915#10047</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047"
                moz-do-not-send="true">i915#10047</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820"
                moz-do-not-send="true">i915#9820</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_addfb_basic@basic-y-tiled-legacy.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215"
                moz-do-not-send="true">i915#4215</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538"
                moz-do-not-send="true">i915#4538</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190"
                moz-do-not-send="true">i915#5190</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_ccs@crc-primary-basic-4-tiled-xe2-ccs.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278"
                moz-do-not-send="true">i915#10278</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_chamelium_frames@dp-crc-fast:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_chamelium_frames@dp-crc-fast.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828"
                moz-do-not-send="true">i915#7828</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@content-type-change:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_content_protection@content-type-change.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8816"
                moz-do-not-send="true">i915#8816</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_content_protection@content-type-change.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@mei-interface:</p>
          <ul>
            <li>shard-snb: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-snb7/igt@kms_content_protection@mei-interface.html"
                moz-do-not-send="true">INCOMPLETE</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878"
                moz-do-not-send="true">i915#9878</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-snb6/igt@kms_content_protection@mei-interface.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_content_protection@type1:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_content_protection@type1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162"
                moz-do-not-send="true">i915#7162</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_content_protection@type1.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118"
                moz-do-not-send="true">i915#7118</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424"
                moz-do-not-send="true">i915#9424</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-max-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-max-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"
                moz-do-not-send="true">i915#3555</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_crc@cursor-random-512x170:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359"
                moz-do-not-send="true">i915#3359</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"
                moz-do-not-send="true">i915#5354</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433"
                moz-do-not-send="true">i915#10433</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-pri-indfb-multidraw.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) +2 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433"
                moz-do-not-send="true">i915#10433</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458"
                moz-do-not-send="true">i915#3458</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708"
                moz-do-not-send="true">i915#8708</a>) +1 other test skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"
                moz-do-not-send="true">i915#5354</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816"
                moz-do-not-send="true">i915#4816</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070"
                moz-do-not-send="true">i915#4070</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816"
                moz-do-not-send="true">i915#4816</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_panel_fitting@atomic-fastset:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_panel_fitting@atomic-fastset.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301"
                moz-do-not-send="true">i915#6301</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_dc@dc9-dpms:</p>
          <ul>
            <li>shard-rkl: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281"
                moz-do-not-send="true">i915#4281</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-rkl-2/igt@kms_pm_dc@dc9-dpms.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361"
                moz-do-not-send="true">i915#3361</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pm_rpm@modeset-lpsp:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9980"
                moz-do-not-send="true">i915#9980</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519"
                moz-do-not-send="true">i915#9519</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_prime@d3hot:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_prime@d3hot.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_prime@d3hot.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524"
                moz-do-not-send="true">i915#6524</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805"
                moz-do-not-send="true">i915#6805</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@fbc-pr-sprite-mmap-gtt:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +4 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@pr-primary-mmap-cpu:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-5/igt@kms_psr@pr-primary-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-11/igt@kms_psr@pr-primary-mmap-cpu.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +5 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_psr@psr2-primary-blt:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_psr@psr2-primary-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673"
                moz-do-not-send="true">i915#9673</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-1/igt@kms_psr@psr2-primary-blt.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"
                moz-do-not-send="true">i915#1072</a> / <a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732"
                moz-do-not-send="true">i915#9732</a>) +8 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_writeback@writeback-invalid-parameters:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@kms_writeback@writeback-invalid-parameters.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"
                moz-do-not-send="true">i915#2575</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@kms_writeback@writeback-invalid-parameters.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437"
                moz-do-not-send="true">i915#2437</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@non-zero-reason@0-rcs0:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100"
                moz-do-not-send="true">i915#9100</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-7/igt@perf@non-zero-reason@0-rcs0.html"
                moz-do-not-send="true">FAIL</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484"
                moz-do-not-send="true">i915#7484</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@perf@per-context-mode-unprivileged:</p>
          <ul>
            <li>shard-dg2: <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14633/shard-dg2-11/igt@perf@per-context-mode-unprivileged.html"
                moz-do-not-send="true">SKIP</a> (<a
href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5608"
                moz-do-not-send="true">i915#5608</a>) -&gt; <a
href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132731v2/shard-dg2-2/igt@perf@per-context-mode-unprivileged.html"
                moz-do-not-send="true">SKIP</a></li>
          </ul>
        </li>
      </ul>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_14633 -&gt; Patchwork_132731v2</li>
        <li>Piglit: piglit_4509 -&gt; None</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_14633: 861eed75446fe9dbac9d28d11f44caa47cebeebf @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7815: d5d516bfdf77898e934b4c7ed947a43711cfb226 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_132731v2: 861eed75446fe9dbac9d28d11f44caa47cebeebf @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @
        git://anongit.freedesktop.org/piglit</p>
    </blockquote>
  </body>
</html>

--------------SXRj9b8s9CXpyU13qtfBXuP7--
