Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0651197198D
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 14:37:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C126510E530;
	Mon,  9 Sep 2024 12:36:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from szxga04-in.huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5742C10E297
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 03:02:13 +0000 (UTC)
Received: from mail.maildlp.com (unknown [172.19.88.214])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4WzkY35CBLz20mdw
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 10:57:11 +0800 (CST)
Received: from dggpeml500022.china.huawei.com (unknown [7.185.36.66])
 by mail.maildlp.com (Postfix) with ESMTPS id 86B131A0170
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 11:02:09 +0800 (CST)
Received: from [10.67.111.104] (10.67.111.104) by
 dggpeml500022.china.huawei.com (7.185.36.66) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 11:02:09 +0800
Message-ID: <d6cfc1c4-32b2-47d9-bc8a-477c78e19bcd@huawei.com>
Date: Thu, 5 Sep 2024 11:02:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBS?=
 =?UTF-8?Q?emove_extra_unlikely_helper?=
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20240831094655.4153520-1-lihongbo22@huawei.com>
 <172546503809.933961.6698625773541917200@2413ebb6fbb6>
From: Hongbo Li <lihongbo22@huawei.com>
In-Reply-To: <172546503809.933961.6698625773541917200@2413ebb6fbb6>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.67.111.104]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 dggpeml500022.china.huawei.com (7.185.36.66)
X-Mailman-Approved-At: Mon, 09 Sep 2024 12:36:55 +0000
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



On 2024/9/4 23:50, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: Remove extra unlikely helper
> *URL:*	https://patchwork.freedesktop.org/series/138142/ 
> <https://patchwork.freedesktop.org/series/138142/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_15351_full -> Patchwork_138142v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
It seems like that the igt-gpu-tools failed?

Thanks,
Hongbo
> Serious unknown changes coming with Patchwork_138142v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_138142v1_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
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
> Patchwork_138142v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-11/igt@gem_eio@kms.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-7/igt@gem_eio@kms.html>
>   *
> 
>     igt@gem_mmap_offset@clear@lmem0:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-3/igt@gem_mmap_offset@clear@lmem0.html>
>   *
> 
>     igt@perf@rc6-disable:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-6/igt@perf@rc6-disable.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-5/igt@perf@rc6-disable.html>
> 
> 
>         Warnings
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-mtlp-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html> (i915#8810 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810>) -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_138142v1_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@api_intel_bb@blit-reloc-keep-cache:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html> (i915#8411 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>   *
> 
>     igt@api_intel_bb@object-reloc-purge-cache:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html> (i915#8411 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>   *
> 
>     igt@device_reset@unbind-cold-reset-rebind:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@device_reset@unbind-cold-reset-rebind.html> (i915#11078 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>   *
> 
>     igt@drm_fdinfo@busy-idle-check-all@vcs1:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@drm_fdinfo@busy-idle-check-all@vcs1.html> (i915#8414 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>) +10 other tests skip
>   *
> 
>     igt@drm_fdinfo@virtual-busy-hang:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@drm_fdinfo@virtual-busy-hang.html> (i915#8414 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414>)
>   *
> 
>     igt@gem_ccs@block-multicopy-inplace:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-2/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html> (i915#7297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7297>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_close_race@multigpu-basic-process.html> (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>) +1 other test skip
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@gem_close_race@multigpu-basic-threads.html> (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@gem_close_race@multigpu-basic-threads.html> (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@gem_create@create-ext-cpu-access-big.html> (i915#9846 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9846>)
>   *
> 
>     igt@gem_create@create-ext-set-pat:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_create@create-ext-set-pat.html> (i915#8562 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562>)
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-many:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-many.html> (i915#8555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>) +1 other test skip
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-stop:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-stop.html> (i915#8555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555>)
>   *
> 
>     igt@gem_ctx_sseu@invalid-sseu:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_ctx_sseu@invalid-sseu.html> (i915#280 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280>)
>   *
> 
>     igt@gem_exec_balancer@hog:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@gem_exec_balancer@hog.html> (i915#4812 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>   *
> 
>     igt@gem_exec_balancer@parallel:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_exec_balancer@parallel.html> (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@lmem0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_exec_capture@capture-invisible@lmem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334>) +1 other test skip
>   *
> 
>     igt@gem_exec_fair@basic-none:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@gem_exec_fair@basic-none.html> (i915#3539 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>) +1 other test skip
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@gem_exec_fair@basic-none-rrul.html> (i915#3539 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852>)
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk2/igt@gem_exec_fair@basic-none-rrul@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>) +6 other tests fail
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@gem_exec_fair@basic-none-rrul@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-none@bcs0:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>) +3 other tests fail
>   *
> 
>     igt@gem_exec_fair@basic-pace:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@gem_exec_fair@basic-pace.html> (i915#3539 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-rkl-4/igt@gem_exec_fair@basic-pace@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>)
>   *
> 
>     igt@gem_exec_reloc@basic-concurrent0:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@gem_exec_reloc@basic-concurrent0.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@gem_exec_reloc@basic-wc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +7 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc-read-active:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_exec_reloc@basic-wc-read-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-read-active:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_exec_reloc@basic-write-read-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +9 other tests skip
>   *
> 
>     igt@gem_exec_schedule@reorder-wide:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@gem_exec_schedule@reorder-wide.html> (i915#4537 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>) +1 other test skip
>   *
> 
>     igt@gem_fenced_exec_thrash@too-many-fences:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@gem_fenced_exec_thrash@too-many-fences.html> (i915#4860 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-multi-ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_lmem_swapping@parallel-random.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk7/igt@gem_lmem_swapping@parallel-random-verify-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +3 other tests skip
>   *
> 
>     igt@gem_mmap@bad-object:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_mmap@bad-object.html> (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>) +3 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@big-copy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@gem_mmap_gtt@big-copy.html> (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +8 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@cpuset-medium-copy:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@gem_mmap_gtt@cpuset-medium-copy.html> (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +2 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@hang:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@gem_mmap_gtt@hang.html> (i915#4077 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +3 other tests skip
>   *
> 
>     igt@gem_mmap_wc@bad-size:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@gem_mmap_wc@bad-size.html> (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>)
>   *
> 
>     igt@gem_mmap_wc@write-read:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-15/igt@gem_mmap_wc@write-read.html> (i915#4083 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083>) +4 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-display:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_partial_pwrite_pread@reads-display.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +2 other tests skip
>   *
> 
>     igt@gem_pread@uncached:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@gem_pread@uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_pwrite_snooped:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_pwrite_snooped.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +1 other test skip
>   *
> 
>     igt@gem_pxp@protected-encrypted-src-copy-not-readible:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html> (i915#4270 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html> (i915#4270 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html> (i915#4270 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +3 other tests skip
>   *
> 
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html> (i915#4270 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>)
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@gem_render_copy@y-tiled-ccs-to-y-tiled.html> (i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> / i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>) +5 other tests skip
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk7/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html> +375 other tests skip
>   *
> 
>     igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-4/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-yf-tiled.html> (i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>) +2 other tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-untiled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html> (i915#4079 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>)
>   *
> 
>     igt@gem_set_tiling_vs_blt@untiled-to-tiled:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-15/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> (i915#4079 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079>) +2 other tests skip
>   *
> 
>     igt@gem_tiled_partial_pwrite_pread@writes:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_tiled_partial_pwrite_pread@writes.html> (i915#3282 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +4 other tests skip
>   *
> 
>     igt@gem_unfence_active_buffers:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4879>)
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> / i915#4880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880>)
>   *
> 
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@sd-probe:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@gem_userptr_blits@sd-probe.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> / i915#4958 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gem_userptr_blits@unsync-unmap.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-after-close:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gem_userptr_blits@unsync-unmap-after-close.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap-cycles:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@gem_userptr_blits@unsync-unmap-cycles.html> (i915#3297 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-glk: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk1/igt@gen9_exec_parse@allowed-single.html> (i915#5566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566>)
>   *
> 
>     igt@gen9_exec_parse@batch-invalid-length:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@gen9_exec_parse@batch-invalid-length.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> / i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@batch-zero-length:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@gen9_exec_parse@batch-zero-length.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@bb-chained:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@gen9_exec_parse@bb-chained.html> (i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>) +2 other tests skip
>   *
> 
>     igt@gen9_exec_parse@bb-oversize:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) +3 other tests skip
>   *
> 
>     igt@gen9_exec_parse@bb-start-far:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@gen9_exec_parse@bb-start-far.html> (i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>) +2 other tests skip
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk3/igt@i915_module_load@reload-with-fault-injection.html> (i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>   *
> 
>     igt@i915_module_load@resize-bar:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@i915_module_load@resize-bar.html> (i915#6412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412>)
>   *
> 
>     igt@i915_pm_freq_api@freq-reset:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@i915_pm_freq_api@freq-reset.html> (i915#8399 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-14/igt@i915_pm_rc6_residency@rc6-idle@gt0-rcs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591>)
>   *
> 
>     igt@i915_pm_rps@min-max-config-loaded:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@i915_pm_rps@min-max-config-loaded.html> (i915#11681 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681> / i915#6621 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621>)
>   *
> 
>     igt@i915_pm_rps@thresholds:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@i915_pm_rps@thresholds.html> (i915#11681 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>)
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387>)
>   *
> 
>     igt@i915_query@query-topology-coherent-slice-mask:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html> (i915#6188 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188>)
>   *
> 
>     igt@i915_query@test-query-geometry-subslices:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@i915_query@test-query-geometry-subslices.html> (i915#5723 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723>)
>   *
> 
>     igt@intel_hwmon@hwmon-write:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@intel_hwmon@hwmon-write.html> (i915#7707 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215>)
>   *
> 
>     igt@kms_addfb_basic@tile-pitch-mismatch:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212>)
>   *
> 
>     igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html> (i915#8709 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709>) +7 other tests skip
>   *
> 
>     igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-glk3/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html> (i915#11859 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11859>)
>   *
> 
>     igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-tglu-7/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-3/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html> (i915#11808 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808>)
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-90:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> / i915#5286 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) +2 other tests skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#3638 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>)
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-270:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) +7 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html> (i915#4538 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> +3 other tests skip
>   *
> 
>     igt@kms_big_joiner@basic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_big_joiner@basic.html> (i915#10656 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_big_joiner@invalid-modeset:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_big_joiner@invalid-modeset.html> (i915#10656 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>)
>   *
> 
>     igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs@pipe-a-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs@pipe-a-edp-1.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +7 other tests skip
>   *
> 
>     igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +47 other tests skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html> (i915#12042 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042>)
>   *
> 
>     igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html> (i915#12042 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042>)
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html> (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +123 other tests skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +79 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html> (i915#12042 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12042>) +1 other test skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-c-hdmi-a-1.html> (i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +15 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html> (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> / i915#10434 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434> / i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +3 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#3742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742>)
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html> (i915#4087 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@dp-mode-timings:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_chamelium_edid@dp-mode-timings.html> (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@hdmi-aspect-ratio:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_chamelium_frames@hdmi-aspect-ratio.html> (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd.html> (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +6 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +6 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-storm:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb7/igt@kms_chamelium_hpd@hdmi-hpd-storm.html> +26 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html> (i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_content_protection@atomic.html> (i915#7116 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116> / i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_content_protection@atomic.html> (i915#7118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> / i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@atomic@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_content_protection@atomic@pipe-a-dp-4.html> (i915#7173 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173>)
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_content_protection@dp-mst-type-1.html> (i915#3299 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>   *
> 
>     igt@kms_content_protection@lic-type-0:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_content_protection@lic-type-0.html> (i915#6944 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> / i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_content_protection@lic-type-0.html> (i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-128x42:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html> (i915#8814 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814>)
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-32x10:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8814 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#11453 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>)
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> +16 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html> (i915#9809 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>) +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213>)
>   *
> 
>     igt@kms_dirtyfb@psr-dirtyfb-ioctl:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html> (i915#9723 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_display_modes@extended-mode-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +3 other tests skip
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html> (i915#3804 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_dp_aux_dev:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_dp_aux_dev.html> (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_dp_aux_dev.html> (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>)
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html> (i915#8812 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812>)
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_dsc@dsc-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp.html> (i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840> / i915#9688 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>)
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html> (i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp-with-bpc:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html> (i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_dsc@dsc-with-formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_dsc@dsc-with-output-formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats-with-bpc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-3/igt@kms_dsc@dsc-with-output-formats-with-bpc.html> (i915#3840 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840> / i915#9053 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb7/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ab-vga1-hdmi-a1.html> (i915#2122 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) +1 other test fail
>   *
> 
>     igt@kms_flip@2x-modeset-vs-vblank-race:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_flip@2x-modeset-vs-vblank-race.html> +14 other tests skip
>   *
> 
>     igt@kms_flip@2x-plain-flip:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_flip@2x-plain-flip.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>)
>   *
> 
>     igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html> (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>)
>   *
> 
>     igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@d-edp1:
> 
>       o shard-mtlp: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-4/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@d-edp1.html> (i915#6113 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113>)
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html> (i915#11961 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11961>)
>   *
> 
>     igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@kms_flip@plain-flip-ts-check-interruptible@b-hdmi-a2.html> (i915#11832 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11832>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-plflip-blt.html> (i915#6880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) +11 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-tiling-y:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-y.html> (i915#10055 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-pwrite.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-render.html> +21 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-move.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>) +28 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html> +22 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) +28 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html> (i915#3023 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) +13 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) +8 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) +12 other tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other test skip
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_hdr@bpc-switch-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other test skip
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_hdr@static-swap.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_hdr@static-toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +2 other tests skip
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_hdr@static-toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk2/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html> (i915#10647 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647>) +1 other test fail
>   *
> 
>     igt@kms_plane_multiple@tiling-y:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html> (i915#8806 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html> (i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>) +15 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-a-hdmi-a-4.html> (i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-a-hdmi-a-2.html> (i915#9423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423>) +5 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html> (i915#9728 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728>) +3 other tests skip
>   *
> 
>     igt@kms_pm_backlight@fade-with-suspend:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_pm_backlight@fade-with-suspend.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354>)
>   *
> 
>     igt@kms_pm_dc@dc6-psr:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_pm_dc@dc6-psr.html> (i915#9685 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html> (i915#4281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html> (i915#9340 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340>)
>   *
> 
>     igt@kms_pm_rpm@dpms-lpsp:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-5/igt@kms_pm_rpm@dpms-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>)
>   *
> 
>     igt@kms_prime@basic-crc-vgem:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_prime@basic-crc-vgem.html> (i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524>)
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524> / i915#6805 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805>)
>   *
> 
>     igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_psr2_sf@fbc-overlay-plane-move-continuous-exceed-fully-sf@psr2-pipe-a-edp-1.html> (i915#9808 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808>) +1 other test skip
>   *
> 
>     igt@kms_psr2_sf@fbc-overlay-primary-update-sf-dmg-area:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@kms_psr2_sf@fbc-overlay-primary-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html> (i915#11520 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +2 other tests skip
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_psr2_su@frontbuffer-xrgb8888.html> (i915#9683 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr@fbc-psr-cursor-plane-move:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@kms_psr@fbc-psr-cursor-plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +11 other tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-sprite-render:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_psr@fbc-psr2-sprite-render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +9 other tests skip
>   *
> 
>     igt@kms_psr@pr-dpms:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_psr@pr-dpms.html> (i915#9688 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688>) +3 other tests skip
>   *
> 
>     igt@kms_psr@psr-suspend:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_psr@psr-suspend.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9673 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other tests skip
>   *
> 
>     igt@kms_psr@psr2-cursor-mmap-cpu:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_psr@psr2-cursor-mmap-cpu.html> (i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other tests skip
>   *
> 
>     igt@kms_psr@psr2-suspend:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_psr@psr2-suspend.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +14 other tests skip
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-15/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html> (i915#9685 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html> (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>) +1 other test skip
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html> (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-none:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-10/igt@kms_scaling_modes@scaling-mode-none.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other test skip
>   *
> 
>     igt@kms_setmode@basic-clone-single-crtc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-10/igt@kms_setmode@basic-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +5 other tests skip
>   *
> 
>     igt@kms_setmode@invalid-clone-single-crtc:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_setmode@invalid-clone-single-crtc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other test skip
>   *
> 
>     igt@kms_sysfs_edid_timing:
> 
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_sysfs_edid_timing.html> (IGT#2 <https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2> / i915#6493 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6493>)
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern-with-chamelium:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html> (i915#8623 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623>)
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>)
>   *
> 
>     igt@kms_vrr@flipline:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_vrr@flipline.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8808 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-vrr:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-vrr.html> (i915#9906 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_writeback@writeback-check-output-xrgb2101010:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@kms_writeback@writeback-check-output-xrgb2101010.html> (i915#2437 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437> / i915#9412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk1/igt@kms_writeback@writeback-check-output-xrgb2101010.html> (i915#2437 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437>) +1 other test skip
>   *
> 
>     igt@kms_writeback@writeback-pixel-formats:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@kms_writeback@writeback-pixel-formats.html> (i915#2437 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437> / i915#9412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412>)
>   *
> 
>     igt@perf@global-sseu-config:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@perf@global-sseu-config.html> (i915#7387 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387>)
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434>)
>   *
> 
>     igt@perf@non-zero-reason@0-rcs0:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html> (i915#7484 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484>)
>   *
> 
>     igt@perf@unprivileged-single-ctx-counters:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-4/igt@perf@unprivileged-single-ctx-counters.html> (i915#2433 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433>)
>   *
> 
>     igt@perf_pmu@busy-double-start@vecs0:
> 
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-16/igt@perf_pmu@busy-double-start@vecs0.html> (i915#4349 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>) +2 other tests fail
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>) +1 other test skip
>   *
> 
>     igt@prime_vgem@fence-write-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-8/igt@prime_vgem@fence-write-hang.html> (i915#3708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>) +1 other test skip
>   *
> 
>     igt@syncobj_timeline@invalid-wait-zero-handles:
> 
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-17/igt@syncobj_timeline@invalid-wait-zero-handles.html> (i915#9781 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@drm_fdinfo@idle@rcs0:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-rkl-6/igt@drm_fdinfo@idle@rcs0.html> (i915#7742 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@drm_fdinfo@idle@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs0:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@gem_exec_fair@basic-pace@vcs0.html>
>   *
> 
>     igt@gem_mmap_offset@clear@smem0:
> 
>       o shard-dg1: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg1-15/igt@gem_mmap_offset@clear@smem0.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-15/igt@gem_mmap_offset@clear@smem0.html>
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-snb: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html> (i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html>
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html> (i915#10131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131> / i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html>
>   *
> 
>     igt@i915_selftest@live@workarounds:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-mtlp-2/igt@i915_selftest@live@workarounds.html> (i915#12061 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-6/igt@i915_selftest@live@workarounds.html>
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
> 
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html> (i915#5956 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb2/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html> +2 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_dp_aux_dev:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@kms_dp_aux_dev.html> (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_dp_aux_dev.html>
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1:
> 
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html> (i915#10826 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-hdmi-a1.html>
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a1:
> 
>       o shard-snb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a1.html> (i915#2122 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-hdmi-a1.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-snb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html> +1 other test pass
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-mtlp: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-mtlp-8/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-cpu.html>
>   *
> 
>     igt@kms_pm_dc@dc6-dpms:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html> (i915#9295 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html>
>   *
> 
>     igt@kms_pm_rpm@dpms-non-lpsp:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-rkl-4/igt@kms_pm_rpm@dpms-non-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html> +1 other test pass
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> (i915#9519 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html>
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-rkl-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html> (i915#9196 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-rkl-6/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-2.html>
>   *
> 
>     igt@perf_pmu@busy-double-start@vecs1:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@perf_pmu@busy-double-start@vecs1.html> (i915#4349 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html> +2 other tests pass
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_ctx_engines@invalid-engines:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html> (i915#12027 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12027>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-8/igt@gem_ctx_engines@invalid-engines.html> (i915#12031 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12031>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-tglu: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html> (i915#10887 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887> / i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>) -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html> (i915#9820 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-512x170:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-7/igt@kms_cursor_crc@cursor-sliding-512x170.html> (i915#11453 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-512x170.html> (i915#11453 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11453> / i915#3359 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#10354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-16bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> / i915#8810 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html> (i915#10433 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433> / i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>   *
> 
>     igt@kms_psr@fbc-pr-suspend:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg1-14/igt@kms_psr@fbc-pr-suspend.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg1-14/igt@kms_psr@fbc-pr-suspend.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>   *
> 
>     igt@kms_psr@fbc-psr-primary-mmap-cpu:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@kms_psr@fbc-psr-primary-mmap-cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9673 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +9 other tests skip
>   *
> 
>     igt@kms_psr@psr2-cursor-plane-move:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-11/igt@kms_psr@psr2-cursor-plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9673 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-7/igt@kms_psr@psr2-cursor-plane-move.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other tests skip
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-270:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-270.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131> / i915#4235 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-270.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131>)
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131> / i915#4235 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-90:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15351/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138142v1/shard-dg2-11/igt@kms_rotation_crc@primary-y-tiled-reflect-x-90.html> (i915#11131 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11131> / i915#4235 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235> / i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>)
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_15351 -> Patchwork_138142v1
> 
> CI-20190529: 20190529
> CI_DRM_15351: 03c3df86be6554d000257704958e586111d08947 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8001: d3a77fc98e89cc94b03be2b0903d44f83480b8a0 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_138142v1: 03c3df86be6554d000257704958e586111d08947 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
