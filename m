Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591297A8E14
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:59:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3DAC10E55A;
	Wed, 20 Sep 2023 20:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F4110E55C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Sep 2023 20:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695243571; x=1726779571;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=f6u1zsf6OlQUgcmCTMD4P7n5uknmvduotq4cxa2rG+w=;
 b=ZiOCaarfW0ph1HRb5ZQzM9vz7gJECQoH/KXTW0qdJdD/JPHeWfbS4yud
 M8NA4I0Xk56GBMAiUJPsbq9JRxnrNgVYp4w6fnAyNbQQapRefJSXlT1X5
 6B1zlQ9XfiuIaOghmhGO4F7qWAylZ8EvN3VSIrUWHiUmHYEbiHHMZdLn/
 pdepktiDtIYX0e6Oa/O3Jzu7i1RZLB/kK6uQaF7sTygn0kHLfVc25vWHO
 cgxIm/L3XkPdZxrKsUxdfzQYjzVvOCNa1N4YRpj8tGzLByn9nAryj/+et
 7Fq0ZcrDFDJkNk9j8qelGuHhKzygJAWNv4L0m9y/6cr8yYQxZSzWqsSTu w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="360589202"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="360589202"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:59:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077618085"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="1077618085"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.151])
 ([10.213.8.151])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:59:27 -0700
Message-ID: <bf296406-bb9d-0690-49ba-c6f97bbdd03c@intel.com>
Date: Wed, 20 Sep 2023 22:59:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>
References: <20230919194855.347582-1-willy@infradead.org>
 <169521122876.6467.9127602377375784585@emeril.freedesktop.org>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <169521122876.6467.9127602377375784585@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_Limit_the_length_of_an_sg_list_to_the_requested_length?=
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

On 20.09.2023 14:00, Patchwork wrote:
> *Patch Details*
> *Series:*	i915: Limit the length of an sg list to the requested length
> *URL:*	https://patchwork.freedesktop.org/series/123940/ 
> <https://patchwork.freedesktop.org/series/123940/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13653_full -> Patchwork_123940v1_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_123940v1_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_123940v1_full, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
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
> Patchwork_123940v1_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@drm_mm@drm_mm_test:
> 
>       o shard-rkl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@drm_mm@drm_mm_test.html>


This test always fails (notrun/timeout).

>   *
> 
>     igt@kms_lease@page_flip_implicit_plane@pipe-d-edp-1:
> 
>       o shard-mtlp: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_lease@page_flip_implicit_plane@pipe-d-edp-1.html>

Re-appearing issue:
https://gitlab.freedesktop.org/drm/intel/-/issues/6955

>   *
> 
>     igt@kms_selftest@drm_damage:
> 
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_selftest@drm_damage.html> +2 other tests timeout
>   *
> 
>     igt@kms_selftest@drm_plane:
> 
>       o
> 
>         shard-snb: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb1/igt@kms_selftest@drm_plane.html> +1 other test timeout
> 
>       o
> 
>         shard-mtlp: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_selftest@drm_plane.html>

https://gitlab.freedesktop.org/drm/intel/-/issues/8628

> 
>   *
> 
>     igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-2/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html>
> 

Also seen on CI:
http://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13652/shard-dg2-6/igt@kms_vblank@pipe-b-ts-continuation-dpms-suspend.html

> 
>         Warnings
> 
>   * igt@drm_buddy@drm_buddy_test:
>       o shard-apl: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl7/igt@drm_buddy@drm_buddy_test.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-apl4/igt@drm_buddy@drm_buddy_test.html>
> 
> 


It also usually timeouts, nothing new.


Summarizing all issues seems unrelated to the patch. If there are no 
objections I will merge it tomorrow.

Regards
Andrzej


>     Known issues
> 
> Here are the changes found in Patchwork_123940v1_full that come from 
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
>     igt@core_hotunplug@unbind-rebind:
> 
>       o shard-snb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb1/igt@core_hotunplug@unbind-rebind.html> (i915#4528 <https://gitlab.freedesktop.org/drm/intel/issues/4528> / i915#9372 <https://gitlab.freedesktop.org/drm/intel/issues/9372>)
>   *
> 
>     igt@drm_fdinfo@busy-hang@bcs0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@drm_fdinfo@busy-hang@bcs0.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>) +9 other tests skip
>   *
> 
>     igt@drm_fdinfo@virtual-busy-idle:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@drm_fdinfo@virtual-busy-idle.html> (i915#8414 <https://gitlab.freedesktop.org/drm/intel/issues/8414>)
>   *
> 
>     igt@gem_bad_reloc@negative-reloc-lut:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-lut.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +1 other test skip
>   *
> 
>     igt@gem_ccs@block-multicopy-compressed:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@gem_ccs@block-multicopy-compressed.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_close_race@multigpu-basic-threads.html> (i915#7697 <https://gitlab.freedesktop.org/drm/intel/issues/7697>)
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_create@create-ext-cpu-access-big.html> (i915#7461 <https://gitlab.freedesktop.org/drm/intel/issues/7461>)
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vcs0:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@vcs0.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@gem_ctx_isolation@preservation-s3@vcs0.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) +2 other tests dmesg-warn
>   *
> 
>     igt@gem_ctx_persistence@engines-mixed-process:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb2/igt@gem_ctx_persistence@engines-mixed-process.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-17/igt@gem_eio@unwedge-stress.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-17/igt@gem_eio@unwedge-stress.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_exec_balancer@hang:
> 
>       o shard-mtlp: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@gem_exec_balancer@hang.html> (i915#8104 <https://gitlab.freedesktop.org/drm/intel/issues/8104> / i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>)
>   *
> 
>     igt@gem_exec_endless@dispatch@rcs0:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-3/igt@gem_exec_endless@dispatch@rcs0.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-4/igt@gem_exec_endless@dispatch@rcs0.html> (i915#3778 <https://gitlab.freedesktop.org/drm/intel/issues/3778> / i915#7392 <https://gitlab.freedesktop.org/drm/intel/issues/7392>)
>   *
> 
>     igt@gem_exec_fair@basic-none@bcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-1/igt@gem_exec_fair@basic-none@bcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1 other test fail
>   *
> 
>     igt@gem_exec_fair@basic-pace:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_exec_fair@basic-pace.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539>) +1 other test skip
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-throttle:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@gem_exec_fair@basic-throttle.html> (i915#4473 <https://gitlab.freedesktop.org/drm/intel/issues/4473> / i915#4771 <https://gitlab.freedesktop.org/drm/intel/issues/4771>)
>   *
> 
>     igt@gem_exec_flush@basic-uc-ro-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_exec_flush@basic-uc-ro-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +4 other tests skip
>   *
> 
>     igt@gem_exec_params@rsvd2-dirt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_exec_params@rsvd2-dirt.html> (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283> / i915#5107 <https://gitlab.freedesktop.org/drm/intel/issues/5107>)
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +7 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-wc-gtt-active:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_exec_reloc@basic-wc-gtt-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +7 other tests skip
>   *
> 
>     igt@gem_exec_schedule@preempt-queue:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@gem_exec_schedule@preempt-queue.html> (i915#4537 <https://gitlab.freedesktop.org/drm/intel/issues/4537> / i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-x:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_fence_thrash@bo-write-verify-x.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>)
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@gem_fenced_exec_thrash@no-spare-fences.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@gem_lmem_swapping@basic.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_media_fill@media-fill:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@gem_media_fill@media-fill.html> (i915#8289 <https://gitlab.freedesktop.org/drm/intel/issues/8289>)
>   *
> 
>     igt@gem_mmap_gtt@basic-read-write-distinct:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@gem_mmap_gtt@basic-read-write-distinct.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +9 other tests skip
>   *
> 
>     igt@gem_mmap_wc@copy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gem_mmap_wc@copy.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +6 other tests skip
>   *
> 
>     igt@gem_pread@bench:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@gem_pread@bench.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +3 other tests skip
>   *
> 
>     igt@gem_pread@snoop:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gem_pread@snoop.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +5 other tests skip
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-snb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb2/igt@gem_pwrite@basic-exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@create-regular-buffer:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gem_pxp@create-regular-buffer.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_pxp@fail-invalid-protected-context:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@gem_pxp@fail-invalid-protected-context.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +1 other test skip
>   *
> 
>     igt@gem_pxp@protected-raw-src-copy-not-readible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gem_pxp@protected-raw-src-copy-not-readible.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>) +2 other tests skip
>   *
> 
>     igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html> (i915#8428 <https://gitlab.freedesktop.org/drm/intel/issues/8428>) +2 other tests skip
>   *
> 
>     igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +161 other tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@untiled-to-tiled:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/intel/issues/8411>)
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-mtlp: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@gem_softpin@noreloc-s3.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) +2 other tests abort
>   *
> 
>     igt@gem_tiled_pread_pwrite:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gem_tiled_pread_pwrite.html> (i915#4079 <https://gitlab.freedesktop.org/drm/intel/issues/4079>) +2 other tests skip
>   *
> 
>     igt@gem_unfence_active_buffers:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@gem_unfence_active_buffers.html> (i915#4879 <https://gitlab.freedesktop.org/drm/intel/issues/4879>)
> 
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gem_userptr_blits@create-destroy-unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gem_userptr_blits@dmabuf-sync.html> (i915#3323 <https://gitlab.freedesktop.org/drm/intel/issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@forbidden-operations:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>   *
> 
>     igt@gem_userptr_blits@mmap-offset-banned@gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@gem_userptr_blits@mmap-offset-banned@gtt.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +2 other tests skip
>   *
> 
>     igt@gem_userptr_blits@unsync-overlap:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@gem_userptr_blits@unsync-overlap.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@gem_userptr_blits@vma-merge.html> (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen7_exec_parse@basic-offset:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@gen7_exec_parse@basic-offset.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   *
> 
>     igt@gen7_exec_parse@load-register-reg:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@gen7_exec_parse@load-register-reg.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   *
> 
>     igt@gen9_exec_parse@bb-oversize:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@gen9_exec_parse@bb-oversize.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@unaligned-jump:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@gen9_exec_parse@unaligned-jump.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>) +2 other tests skip
>   *
> 
>     igt@gen9_exec_parse@valid-registers:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@gen9_exec_parse@valid-registers.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) +1 other test skip
>   *
> 
>     igt@i915_hangman@engine-engine-error@vcs0:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@i915_hangman@engine-engine-error@vcs0.html> (i915#7069 <https://gitlab.freedesktop.org/drm/intel/issues/7069>)
>   *
> 
>     igt@i915_module_load@load:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@i915_module_load@load.html> (i915#6227 <https://gitlab.freedesktop.org/drm/intel/issues/6227>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o
> 
>         shard-dg2: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@i915_module_load@reload-with-fault-injection.html> (i915#8617 <https://gitlab.freedesktop.org/drm/intel/issues/8617>)
> 
>       o
> 
>         shard-mtlp: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html> (i915#8489 <https://gitlab.freedesktop.org/drm/intel/issues/8489> / i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
> 
>   *
> 
>     igt@i915_module_load@resize-bar:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@i915_module_load@resize-bar.html> (i915#6412 <https://gitlab.freedesktop.org/drm/intel/issues/6412>)
>   *
> 
>     igt@i915_pm_freq_api@freq-reset:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@i915_pm_freq_api@freq-reset.html> (i915#8399 <https://gitlab.freedesktop.org/drm/intel/issues/8399>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vecs0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>   *
> 
>     igt@i915_pm_rpm@dpms-non-lpsp:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-18/igt@i915_pm_rpm@dpms-non-lpsp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) +1 other test skip
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>)
>   *
> 
>     igt@i915_pm_rpm@pm-caching:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@i915_pm_rpm@pm-caching.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +6 other tests skip
>   *
> 
>     igt@i915_pm_rpm@system-suspend-modeset:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-7/igt@i915_pm_rpm@system-suspend-modeset.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-5/igt@i915_pm_rpm@system-suspend-modeset.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) +1 other test fail
>   *
> 
>     igt@i915_pm_rps@min-max-config-idle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@i915_pm_rps@min-max-config-idle.html> (i915#6621 <https://gitlab.freedesktop.org/drm/intel/issues/6621>)
>   *
> 
>     igt@i915_query@test-query-geometry-subslices:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html> (i915#5723 <https://gitlab.freedesktop.org/drm/intel/issues/5723>)
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-snb: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb2/igt@i915_suspend@fence-restore-tiled2untiled.html> (i915#8841 <https://gitlab.freedesktop.org/drm/intel/issues/8841>) +4 other tests dmesg-warn
>   *
> 
>     igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>) +1 other test skip
>   *
> 
>     igt@kms_addfb_basic@addfb25-x-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212>)
>   *
> 
>     igt@kms_addfb_basic@basic-y-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_addfb_basic@basic-y-tiled-legacy.html> (i915#4215 <https://gitlab.freedesktop.org/drm/intel/issues/4215> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>)
>   *
> 
>     igt@kms_addfb_basic@tile-pitch-mismatch:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_addfb_basic@tile-pitch-mismatch.html> (i915#4212 <https://gitlab.freedesktop.org/drm/intel/issues/4212> / i915#5608 <https://gitlab.freedesktop.org/drm/intel/issues/5608>)
>   *
> 
>     igt@kms_async_flips@crc@pipe-d-edp-1:
> 
>       o shard-mtlp: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_async_flips@crc@pipe-d-edp-1.html> (i915#8561 <https://gitlab.freedesktop.org/drm/intel/issues/8561>) +3 other tests dmesg-fail
>   *
> 
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#404 <https://gitlab.freedesktop.org/drm/intel/issues/404>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-270:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-32bpp-rotate-90:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-0:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-4/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>)
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-180:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +12 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-90:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> (i915#6187 <https://gitlab.freedesktop.org/drm/intel/issues/6187>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +3 other tests skip
>   *
> 
>     igt@kms_big_joiner@invalid-modeset:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-apl4/igt@kms_big_joiner@invalid-modeset.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +23 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +1 other test skip
>   *
> 
>     igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html> (i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +4 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   *
> 
>     igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html> (i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs.html> (i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +23 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_ccs@pipe-c-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>) +2 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +8 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354> / i915#6095 <https://gitlab.freedesktop.org/drm/intel/issues/6095>)
>   *
> 
>     igt@kms_ccs@pipe-d-bad-aux-stride-4_tiled_mtl_mc_ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_ccs@pipe-d-bad-aux-stride-4_tiled_mtl_mc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +6 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +39 other tests skip
>   *
> 
>     igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html> (i915#3689 <https://gitlab.freedesktop.org/drm/intel/issues/3689> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +17 other tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition-all-outputs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_cdclk@mode-transition-all-outputs.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087> / i915#7213 <https://gitlab.freedesktop.org/drm/intel/issues/7213>)
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-b-dp-4:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-11/igt@kms_cdclk@plane-scaling@pipe-b-dp-4.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_color@ctm-0-50:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_chamelium_color@ctm-0-50.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_color@degamma:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_chamelium_frames@hdmi-crc-fast.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-with-enabled-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_chamelium_hpd@hdmi-hpd-enable-disable-mode.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +3 other tests skip
>   *
> 
>     igt@kms_content_protection@lic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_content_protection@lic.html> (i915#6944 <https://gitlab.freedesktop.org/drm/intel/issues/6944>)
>   *
> 
>     igt@kms_content_protection@mei_interface:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_content_protection@mei_interface.html> (i915#8063 <https://gitlab.freedesktop.org/drm/intel/issues/8063>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_cursor_crc@cursor-onscreen-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-max-size:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html> (i915#3546 <https://gitlab.freedesktop.org/drm/intel/issues/3546>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +5 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html> (i915#4213 <https://gitlab.freedesktop.org/drm/intel/issues/4213>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-8bpc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +5 other tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-fences:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences.html> (i915#8381 <https://gitlab.freedesktop.org/drm/intel/issues/8381>) +1 other test skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-suspend-interruptible:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-suspend-interruptible.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>) +4 other tests skip
>   *
> 
>     igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +5 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html> (i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8810 <https://gitlab.freedesktop.org/drm/intel/issues/8810>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-pwrite.html> (i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +18 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-pgflip-blt.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-fullscreen.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +12 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +2 other tests skip
>   *
> 
>     igt@kms_getfb@getfb-reject-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs.html> (i915#6118 <https://gitlab.freedesktop.org/drm/intel/issues/6118>)
>   *
> 
>     igt@kms_hdr@invalid-hdr:
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
> 
>       o
> 
>         shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_hdr@invalid-hdr.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
> 
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-5/igt@kms_hdr@invalid-metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>) +2 other tests skip
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_hdr@static-toggle-suspend.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>   *
> 
>     igt@kms_lease@page_flip_implicit_plane@pipe-a-edp-1:
> 
>       o shard-mtlp: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_lease@page_flip_implicit_plane@pipe-a-edp-1.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>   *
> 
>     igt@kms_lease@page_flip_implicit_plane@pipe-c-edp-1:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_lease@page_flip_implicit_plane@pipe-c-edp-1.html> (i915#6955 <https://gitlab.freedesktop.org/drm/intel/issues/6955>) +1 other test fail
>   *
> 
>     igt@kms_panel_fitting@atomic-fastset:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html> (i915#6301 <https://gitlab.freedesktop.org/drm/intel/issues/6301>)
>   *
> 
>     igt@kms_plane_lowres@tiling-yf:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_plane_lowres@tiling-yf.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8821 <https://gitlab.freedesktop.org/drm/intel/issues/8821>)
>   *
> 
>     igt@kms_plane_multiple@tiling-y:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@kms_plane_multiple@tiling-y.html> (i915#8806 <https://gitlab.freedesktop.org/drm/intel/issues/8806>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
> 
>       o shard-dg1: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-19/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html> (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html> (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-11/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-a-dp-4.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-25@pipe-d-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-7/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-75@pipe-b-hdmi-a-3.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) +15 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-19/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-c-hdmi-a-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-b-hdmi-a-2.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +5 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-3.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +7 other tests skip
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_prime@basic-modeset-hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/intel/issues/6524> / i915#6805 <https://gitlab.freedesktop.org/drm/intel/issues/6805>)
>   *
> 
>     igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_su@page_flip-nv12:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_psr2_su@page_flip-nv12.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_psr2_su@page_flip-p010.html> (i915#4348 <https://gitlab.freedesktop.org/drm/intel/issues/4348>)
>   *
> 
>     igt@kms_psr@no_drrs:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_psr@no_drrs.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +6 other tests skip
>   *
> 
>     igt@kms_psr@psr2_sprite_mmap_cpu:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_psr@psr2_sprite_mmap_cpu.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>   *
> 
>     igt@kms_psr@psr2_suspend:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-7/igt@kms_psr@psr2_suspend.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-8/igt@kms_psr@psr2_suspend.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>)
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-1/igt@kms_rotation_crc@primary-rotation-90.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-6/igt@kms_rotation_crc@primary-rotation-90.html> (i915#8875 <https://gitlab.freedesktop.org/drm/intel/issues/8875>) +1 other test incomplete
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>) +1 other test skip
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak-pipe-a:
> 
>       o shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-snb2/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>)
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak-pipe-d:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-9/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak-pipe-d.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) +1 other test fail
>   *
> 
>     igt@kms_vblank@pipe-c-ts-continuation-modeset:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_vblank@pipe-c-ts-continuation-modeset.html> (i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#6768 <https://gitlab.freedesktop.org/drm/intel/issues/6768>)
>   *
> 
>     igt@kms_vblank@pipe-d-wait-idle:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-apl4/igt@kms_vblank@pipe-d-wait-idle.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#533 <https://gitlab.freedesktop.org/drm/intel/issues/533>)
>   *
> 
>     igt@kms_writeback@writeback-invalid-parameters:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_writeback@writeback-invalid-parameters.html> (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/intel/issues/2436>)
>   *
> 
>     igt@perf@global-sseu-config-invalid:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@perf@global-sseu-config-invalid.html> (i915#7387 <https://gitlab.freedesktop.org/drm/intel/issues/7387>)
>   *
> 
>     igt@perf_pmu@all-busy-check-all:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@perf_pmu@all-busy-check-all.html> (i915#5234 <https://gitlab.freedesktop.org/drm/intel/issues/5234>)
>   *
> 
>     igt@perf_pmu@busy-idle-check-all@bcs0:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@perf_pmu@busy-idle-check-all@bcs0.html> (i915#4521 <https://gitlab.freedesktop.org/drm/intel/issues/4521>) +2 other tests fail
>   *
> 
>     igt@perf_pmu@event-wait@rcs0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@perf_pmu@event-wait@rcs0.html> (fdo#112283 <https://bugs.freedesktop.org/show_bug.cgi?id=112283>)
>   *
> 
>     igt@perf_pmu@module-unload:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@perf_pmu@module-unload.html> (i915#5793 <https://gitlab.freedesktop.org/drm/intel/issues/5793> / i915#6121 <https://gitlab.freedesktop.org/drm/intel/issues/6121>)
>   *
> 
>     igt@perf_pmu@multi-client@ccs0:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-2/igt@perf_pmu@multi-client@ccs0.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) +2 other tests fail
>   *
> 
>     igt@prime_mmap_coherency@ioctl-errors:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@prime_mmap_coherency@ioctl-errors.html> (i915#9334 <https://gitlab.freedesktop.org/drm/intel/issues/9334>)
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@prime_vgem@basic-write.html> (i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   *
> 
>     igt@prime_vgem@fence-read-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@prime_vgem@fence-read-hang.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>) +2 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +8 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_csd@bad-bo:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@v3d/v3d_submit_csd@bad-bo.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +7 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_csd@bad-multisync-extension:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@v3d/v3d_submit_csd@bad-multisync-extension.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +2 other tests skip
>   *
> 
>     igt@vc4/vc4_mmap@mmap-bad-handle:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@vc4/vc4_mmap@mmap-bad-handle.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>)
>   *
> 
>     igt@vc4/vc4_mmap@mmap-bo:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-6/igt@vc4/vc4_mmap@mmap-bo.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +5 other tests skip
>   *
> 
>     igt@vc4/vc4_perfmon@create-perfmon-exceed:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@vc4/vc4_perfmon@create-perfmon-exceed.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +3 other tests skip
>   *
> 
>     igt@vc4/vc4_tiling@get-after-free:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@vc4/vc4_tiling@get-after-free.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@vecs0:
> 
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-7/igt@gem_ctx_isolation@preservation-s3@vecs0.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@gem_ctx_isolation@preservation-s3@vecs0.html>
>   *
> 
>     igt@gem_eio@in-flight-suspend:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-5/igt@gem_eio@in-flight-suspend.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-11/igt@gem_eio@in-flight-suspend.html>
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-15/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html>
>   *
> 
>     igt@i915_pm_rpm@dpms-lpsp:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-13/igt@i915_pm_rpm@dpms-lpsp.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-19/igt@i915_pm_rpm@dpms-lpsp.html> +1 other test pass
>   *
> 
>     igt@i915_pm_rpm@modeset-lpsp-stress:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-11/igt@i915_pm_rpm@modeset-lpsp-stress.html> (i915#1397 <https://gitlab.freedesktop.org/drm/intel/issues/1397>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@i915_pm_rpm@modeset-lpsp-stress.html>
>   *
> 
>     igt@kms_big_fb@4-tiled-64bpp-rotate-180:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-4/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html> (i915#5138 <https://gitlab.freedesktop.org/drm/intel/issues/5138>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html>
>   *
> 
>     igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-2/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html> (i915#9262 <https://gitlab.freedesktop.org/drm/intel/issues/9262>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-4/igt@kms_busy@extended-modeset-hang-oldfb-with-reset@pipe-a.html> +2 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-pwrite.html>
>   *
> 
>     {igt@kms_pm_dc@dc6-dpms}:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html> (i915#9295 <https://gitlab.freedesktop.org/drm/intel/issues/9295>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-9/igt@kms_pm_dc@dc6-dpms.html>
>   *
> 
>     {igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html> (i915#1937 <https://gitlab.freedesktop.org/drm/intel/issues/1937>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>   *
> 
>     igt@kms_properties@plane-properties-legacy:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-mtlp-5/igt@kms_properties@plane-properties-legacy.html> (i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-mtlp-1/igt@kms_properties@plane-properties-legacy.html>
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak-pipe-a:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-apl3/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-apl1/igt@kms_universal_plane@cursor-fb-leak-pipe-a.html>
>   *
> 
>     igt@perf@enable-disable@0-rcs0:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html> (i915#8724 <https://gitlab.freedesktop.org/drm/intel/issues/8724>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-10/igt@perf@enable-disable@0-rcs0.html>
>   *
> 
>     igt@perf_pmu@busy-double-start@vcs1:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-17/igt@perf_pmu@busy-double-start@vcs1.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vcs0:
> 
>       o shard-tglu: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681> / i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>)
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@vecs0:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-tglu-9/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681> / i915#3591 <https://gitlab.freedesktop.org/drm/intel/issues/3591>) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html> (i915#2681 <https://gitlab.freedesktop.org/drm/intel/issues/2681>)
>   *
> 
>     igt@kms_content_protection@content_type_change:
> 
>       o shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg2-5/igt@kms_content_protection@content_type_change.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg2-11/igt@kms_content_protection@content_type_change.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118> / i915#7162 <https://gitlab.freedesktop.org/drm/intel/issues/7162>)
>   *
> 
>     igt@kms_content_protection@mei_interface:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-13/igt@kms_content_protection@mei_interface.html> (fdo#109300 <https://bugs.freedesktop.org/show_bug.cgi?id=109300>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-19/igt@kms_content_protection@mei_interface.html> (i915#7116 <https://gitlab.freedesktop.org/drm/intel/issues/7116>)
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html> (i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html> (i915#4070 <https://gitlab.freedesktop.org/drm/intel/issues/4070> / i915#4816 <https://gitlab.freedesktop.org/drm/intel/issues/4816>)
>   *
> 
>     igt@kms_psr@primary_mmap_gtt:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-14/igt@kms_psr@primary_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-13/igt@kms_psr@primary_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>)
>   *
> 
>     igt@kms_psr@sprite_plane_onoff:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13653/shard-dg1-18/igt@kms_psr@sprite_plane_onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072> / i915#4078 <https://gitlab.freedesktop.org/drm/intel/issues/4078>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123940v1/shard-dg1-14/igt@kms_psr@sprite_plane_onoff.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13653 -> Patchwork_123940v1
> 
> CI-20190529: 20190529
> CI_DRM_13653: 56d487b04d902a227f8bc5cc93b73a71f7c06a12 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7493: 2517e42d612e0c1ca096acf8b5f6177f7ef4bce7 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_123940v1: 56d487b04d902a227f8bc5cc93b73a71f7c06a12 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 

