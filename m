Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB1D7F131E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 13:21:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75D4C10E3A8;
	Mon, 20 Nov 2023 12:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A108F10E3A8
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 12:21:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700482910; x=1732018910;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=6QufAjgPqhE35ryEM6FCQDse1NFnifBXFmCpWeDd3aU=;
 b=No+G8XSG1yNBzy6NHwcViCYORebwzGxolTywbEX1hMOZ+tPS71i2B+BS
 uKoX5CLpQLnN3ZiP0zObGc5canM5nqy344Ec9j9RVqUe07cIkfo2QGVxm
 sKMnjuHl0BKqyYQebMVaEwK9IdRSwg3xqiLI16z4Uu7mAv9W/L0iRk88V
 Pl1ix9DsxwQoeuUcmYiU5ExNTh6dW8GkqbT+dTOedKi4OTeN0mSvRCDGf
 f0V1Qo/ObGIVkZJyzafPLiCFe2EQV8a6EN98IL7X6zxtghvgt6LyRLpOD
 +rvmOvXylBpPhVNeLHs0Qs9E/mCulOUTacoqp5BqtauPZhX5bln8NCmqo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="388745979"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="388745979"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 04:21:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="836724690"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="836724690"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.27.249])
 ([10.213.27.249])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 04:21:48 -0800
Message-ID: <0a187141-2b6b-46e2-9b00-6b7b0ad9edfe@intel.com>
Date: Mon, 20 Nov 2023 13:21:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>
References: <20231030-ref_tracker_i915-v1-0-006fe6b96421@intel.com>
 <170027769982.12898.9793616998753164560@emeril.freedesktop.org>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <170027769982.12898.9793616998753164560@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?q?=C3=A2_Fi=2ECI=2EIGT=3A_success_for_drm/i9?=
 =?utf-8?q?15=3A_use_ref=5Ftracker_library_in_i915_=28rev4=29?=
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

On 18.11.2023 04:21, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: use ref_tracker library in i915 (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/125770/ 
> <https://patchwork.freedesktop.org/series/125770/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13885_full -> Patchwork_125770v4_full
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.


Patchset merged to intel-gt-next.

Regards
Andrzej


> 
> 
>     Participating hosts (11 -> 10)
> 
> Missing (1): shard-rkl0
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_125770v4_full:
> 
> 
>       IGT changes
> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     {igt@drm_mm@drm_mm@drm_test_mm_align64}:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@drm_mm@drm_mm@drm_test_mm_align64.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@drm_mm@drm_mm@drm_test_mm_align64.html> +1 other test timeout
>   *
> 
>     {igt@drm_mm@drm_mm@drm_test_mm_lowest}:
> 
>       o shard-tglu: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-4/igt@drm_mm@drm_mm@drm_test_mm_lowest.html>
>   *
> 
>     {igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0}:
> 
>       o shard-rkl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html>
>   *
> 
>     {igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0}:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html> +1 other test fail
>   *
> 
>     {igt@kms_psr@pr_primary_render}:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_psr@pr_primary_render.html> +1 other test skip
>   *
> 
>     {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid}:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-tglu-6/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_invalid.html>
>   *
> 
>     {igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options}:
> 
>       o
> 
>         shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html> +1 other test timeout
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-apl1/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl7/igt@kms_selftest@drm_cmdline_parser@drm_test_cmdline_tv_options.html>
> 
>   *
> 
>     {igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage}:
> 
>       o
> 
>         shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage.html> +1 other test timeout
> 
>       o
> 
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-snb6/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-snb1/igt@kms_selftest@drm_damage_helper@drm_test_damage_iter_simple_damage.html> +1 other test timeout
> 
>   *
> 
>     {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-13/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html> -> TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-13/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html> +1 other test timeout
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_125770v4_full that come from 
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
>     igt@api_intel_bb@object-reloc-keep-cache:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@api_intel_bb@object-reloc-keep-cache.html> ([i915#8411]) +1 other test skip
>   *
> 
>     igt@api_intel_bb@object-reloc-purge-cache:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@api_intel_bb@object-reloc-purge-cache.html> ([i915#8411])
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@api_intel_bb@object-reloc-purge-cache.html> ([i915#8411])
> 
>   *
> 
>     igt@device_reset@unbind-cold-reset-rebind:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html> ([i915#7701])
>   *
> 
>     igt@drm_fdinfo@busy-idle@bcs0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@drm_fdinfo@busy-idle@bcs0.html> ([i915#8414]) +5 other tests skip
>   *
> 
>     igt@drm_fdinfo@busy@vcs1:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@drm_fdinfo@busy@vcs1.html> ([i915#8414]) +4 other tests skip
>   *
> 
>     igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html> ([i915#7742])
>   *
> 
>     igt@drm_fdinfo@most-busy-idle-check-all@vecs1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@drm_fdinfo@most-busy-idle-check-all@vecs1.html> ([i915#8414]) +29 other tests skip
>   *
> 
>     igt@fbdev@eof:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@fbdev@eof.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@fbdev@eof.html> (i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) +2 other tests skip
>   *
> 
>     igt@gem_caching@read-writes:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_caching@read-writes.html> ([i915#4873])
>   *
> 
>     igt@gem_ccs@block-multicopy-inplace:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_ccs@block-multicopy-inplace.html> ([i915#7957])
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html> ([i915#7697])
>   *
> 
>     igt@gem_create@create-ext-cpu-access-big:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html> ([i915#9364])
>   *
> 
>     igt@gem_ctx_param@set-priority-not-supported:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <https://bugs.freedesktop.org/show_bug.cgi?id=109314>)
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <https://bugs.freedesktop.org/show_bug.cgi?id=109314>)
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_ctx_param@set-priority-not-supported.html> (fdo#109314 <https://bugs.freedesktop.org/show_bug.cgi?id=109314>)
> 
>   *
> 
>     igt@gem_ctx_persistence@hang:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_ctx_persistence@hang.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_ctx_persistence@hang.html> ([i915#6252])
>   *
> 
>     igt@gem_ctx_persistence@heartbeat-hostile:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_ctx_persistence@heartbeat-hostile.html> ([i915#8555])
>   *
> 
>     igt@gem_ctx_sseu@mmap-args:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_ctx_sseu@mmap-args.html> ([i915#280]) +1 other test skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_ctx_sseu@mmap-args.html> ([i915#280])
> 
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-dg1: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_eio@hibernate.html> ([i915#7975] / [i915#8213])
>   *
> 
>     igt@gem_eio@wait-wedge-1us:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-2/igt@gem_eio@wait-wedge-1us.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-4/igt@gem_eio@wait-wedge-1us.html> ([i915#9414]) +1 other test abort
>   *
> 
>     igt@gem_exec_balancer@fairslice:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_exec_balancer@fairslice.html> (Intel XE#874 <https://gitlab.freedesktop.org/drm/xe/kernel/issues/874>)
>   *
> 
>     igt@gem_exec_balancer@hog:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_exec_balancer@hog.html> ([i915#4812])
>   *
> 
>     igt@gem_exec_capture@many-4k-incremental:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@gem_exec_capture@many-4k-incremental.html> ([i915#9606])
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_exec_fair@basic-deadline.html> ([i915#4473] / [i915#4771])
> 
>       o
> 
>         shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@gem_exec_fair@basic-deadline.html> ([i915#2846])
> 
>   *
> 
>     igt@gem_exec_fair@basic-none-solo:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_exec_fair@basic-none-solo.html> ([i915#4473])
>   *
> 
>     igt@gem_exec_fair@basic-none@vcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-7/igt@gem_exec_fair@basic-none@vcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@gem_exec_fair@basic-none@vcs0.html> ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html> ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-throttle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_exec_fair@basic-throttle.html> ([i915#3539]) +1 other test skip
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html> ([i915#3539] / [i915#4852])
>   *
> 
>     igt@gem_exec_flush@basic-uc-ro-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_exec_flush@basic-uc-ro-default.html> ([i915#3539] / [i915#4852]) +8 other tests skip
>   *
> 
>     igt@gem_exec_params@rsvd2-dirt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html> (fdo#109283 <https://bugs.freedesktop.org/show_bug.cgi?id=109283> / [i915#5107])
>   *
> 
>     igt@gem_exec_reloc@basic-cpu-wc-active:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_exec_reloc@basic-cpu-wc-active.html> ([i915#3281]) +6 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-read:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@gem_exec_reloc@basic-gtt-read.html> ([i915#3281]) +19 other tests skip
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-read.html> ([i915#3281]) +5 other tests skip
> 
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> ([i915#3281]) +10 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc-active:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_exec_reloc@basic-write-wc-active.html> ([i915#3281]) +1 other test skip
>   *
> 
>     igt@gem_exec_schedule@preempt-queue-chain:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_exec_schedule@preempt-queue-chain.html> ([i915#4537] / [i915#4812])
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-threaded-none:
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_fence_thrash@bo-write-verify-threaded-none.html> ([i915#4860])
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_fence_thrash@bo-write-verify-threaded-none.html> ([i915#4860])
> 
>   *
> 
>     igt@gem_lmem_swapping@basic@lmem0:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-18/igt@gem_lmem_swapping@basic@lmem0.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-17/igt@gem_lmem_swapping@basic@lmem0.html> ([i915#4391] / [i915#4423])
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html> ([i915#4565])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl2/igt@gem_lmem_swapping@parallel-random.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / [i915#4613]) +3 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@smem-oom:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_lmem_swapping@smem-oom.html> ([i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@gem_lmem_swapping@verify-ccs.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / [i915#4613]) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@verify-random:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_lmem_swapping@verify-random.html> ([i915#4613]) +1 other test skip
>   *
> 
>     igt@gem_media_vme:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_media_vme.html> ([i915#284])
>   *
> 
>     igt@gem_mmap@short-mmap:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@gem_mmap@short-mmap.html> ([i915#4083]) +4 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@basic:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_mmap_gtt@basic.html> ([i915#4077]) +2 other tests skip
>   *
> 
>     igt@gem_mmap_gtt@coherency:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_mmap_gtt@coherency.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@gem_mmap_gtt@coherency.html> (fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656>)
>   *
> 
>     igt@gem_mmap_gtt@cpuset-medium-copy-xy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html> ([i915#4077]) +18 other tests skip
>   *
> 
>     igt@gem_mmap_wc@read-write:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_mmap_wc@read-write.html> ([i915#4083]) +1 other test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html> ([i915#3282]) +3 other tests skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_partial_pwrite_pread@reads.html> ([i915#3282]) +2 other tests skip
> 
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-snoop:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_partial_pwrite_pread@reads-snoop.html> ([i915#3282])
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html> ([i915#3282]) +5 other tests skip
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-apl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl2/igt@gem_pwrite@basic-exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@create-valid-protected-context:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_pxp@create-valid-protected-context.html> ([i915#4270]) +1 other test skip
>   *
> 
>     igt@gem_pxp@display-protected-crc:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@gem_pxp@display-protected-crc.html> ([i915#4270]) +5 other tests skip
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_pxp@display-protected-crc.html> ([i915#4270]) +3 other tests skip
> 
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html> ([i915#8428])
>   *
> 
>     igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html> ([i915#768]) +4 other tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@untiled-to-tiled:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> ([i915#8411])
>   *
> 
>     igt@gem_spin_batch@spin-all-new:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_spin_batch@spin-all-new.html> ([i915#5889])
>   *
> 
>     igt@gem_userptr_blits@access-control:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gem_userptr_blits@access-control.html> ([i915#3297])
>   *
> 
>     igt@gem_userptr_blits@coherency-sync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gem_userptr_blits@coherency-sync.html> ([i915#3297]) +3 other tests skip
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-busy:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate-busy.html> ([i915#3297] / [i915#4880]) +1 other test skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_userptr_blits@map-fixed-invalidate-busy.html> ([i915#3297])
> 
>   *
> 
>     igt@gem_userptr_blits@readonly-pwrite-unsync:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html> ([i915#3297])
>   *
> 
>     igt@gen3_render_tiledx_blits:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gen3_render_tiledx_blits.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +3 other tests skip
>   *
> 
>     igt@gen9_exec_parse@basic-rejected:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@gen9_exec_parse@basic-rejected.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@bb-chained:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@gen9_exec_parse@bb-chained.html> ([i915#2856]) +2 other tests skip
>   *
> 
>     igt@gen9_exec_parse@shadow-peek:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gen9_exec_parse@shadow-peek.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@gen9_exec_parse@shadow-peek.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) +5 other tests skip
>   *
> 
>     igt@i915_hangman@engine-engine-error@bcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@i915_hangman@engine-engine-error@bcs0.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@i915_hangman@engine-engine-error@bcs0.html> ([i915#9588])
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-dg2: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html> ([i915#9559])
>   *
> 
>     igt@i915_pipe_stress@stress-xrgb8888-ytiled:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html> ([i915#7091])
>   *
> 
>     igt@i915_pm_freq_api@freq-basic-api:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl2/igt@i915_pm_freq_api@freq-basic-api.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +117 other tests skip
>   *
> 
>     igt@i915_pm_rps@thresholds-park@gt0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@i915_pm_rps@thresholds-park@gt0.html> ([i915#8925]) +1 other test skip
>   *
> 
>     igt@i915_pm_rps@thresholds@gt0:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt0.html> ([i915#8925])
>   *
> 
>     igt@i915_pm_rps@thresholds@gt1:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@i915_pm_rps@thresholds@gt1.html> ([i915#3555] / [i915#8925])
>   *
> 
>     igt@i915_pm_rps@waitboost:
> 
>       o shard-mtlp: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@i915_pm_rps@waitboost.html> ([i915#8346])
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@i915_suspend@fence-restore-untiled.html> ([i915#4077]) +1 other test skip
>   *
> 
>     igt@kms_addfb_basic@basic-x-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_addfb_basic@basic-x-tiled-legacy.html> ([i915#4212]) +2 other tests skip
>   *
> 
>     igt@kms_addfb_basic@bo-too-small-due-to-tiling:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html> ([i915#4212])
>   *
> 
>     igt@kms_async_flips@crc@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-3.html> ([i915#8247]) +3 other tests fail
>   *
> 
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> ([i915#9531])
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html> ([i915#5286])
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +60 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html> ([i915#5138])
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-270:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / [i915#3638])
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +37 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-270:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +3 other tests skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> ([i915#3638])
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-tglu-9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> ([i915#3743]) +1 other test fail
>   *
> 
>     igt@kms_big_fb@y-tiled-64bpp-rotate-0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html> ([i915#5190]) +19 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html> ([i915#4538] / [i915#5190]) +5 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_big_fb@yf-tiled-addfb.html> ([i915#6187])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1 other test skip
>   *
> 
>     igt@kms_big_joiner@basic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_big_joiner@basic.html> (i915#2705 <https://gitlab.freedesktop.org/dr>) +1 other test skip
>   *
> 
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html> ([i915#4087] / [i915#7213]) +3 other tests skip
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html> ([i915#4087]) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_color@ctm-0-25:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_chamelium_color@ctm-0-25.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_color@ctm-blue-to-red:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_chamelium_color@ctm-blue-to-red.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html> ([i915#7828]) +5 other tests skip
>   *
> 
>     igt@kms_chamelium_edid@hdmi-edid-read:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_chamelium_edid@hdmi-edid-read.html> ([i915#7828]) +1 other test skip
>   *
> 
>     igt@kms_chamelium_frames@dp-crc-fast:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_chamelium_frames@dp-crc-fast.html> ([i915#7828]) +11 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@vga-hpd:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd.html> ([i915#7828]) +3 other tests skip
>   *
> 
>     igt@kms_color@ctm-green-to-red@pipe-b:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_color@ctm-green-to-red@pipe-b.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_color@ctm-green-to-red@pipe-b.html> ([i915#4098]) +4 other tests skip
>   *
> 
>     igt@kms_content_protection@atomic-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-6/igt@kms_content_protection@atomic-dpms.html> ([i915#7118])
>   *
> 
>     igt@kms_content_protection@dp-mst-type-0:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@kms_content_protection@dp-mst-type-0.html> ([i915#3299])
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html> ([i915#3116])
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_content_protection@dp-mst-type-0.html> ([i915#3299])
> 
>   *
> 
>     igt@kms_content_protection@lic@pipe-a-dp-1:
> 
>       o shard-apl: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl6/igt@kms_content_protection@lic@pipe-a-dp-1.html> ([i915#7173]) +1 other test timeout
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-256x256:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x256.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +50 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x170:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-512x170.html> ([i915#3359])
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html> ([i915#3359]) +1 other test skip
> 
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-512x512:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-512x512.html> ([i915#3359])
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x10:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html> ([i915#3555]) +8 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / [i915#5354])
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html> ([i915#4103])
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
> 
>       o
> 
>         shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +5 other tests skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html> ([i915#3546])
> 
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / [i915#5354]) +10 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl6/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> ([i915#4103] / [i915#4213])
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> ([i915#4103] / [i915#4213])
> 
>   *
> 
>     igt@kms_display_modes@mst-extended-mode-negative:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_display_modes@mst-extended-mode-negative.html> ([i915#8588])
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html> ([i915#3804])
>   *
> 
>     igt@kms_draw_crc@draw-method-mmap-gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_draw_crc@draw-method-mmap-gtt.html> ([i915#4098]) +21 other tests skip
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_dsc@dsc-basic.html> ([i915#3555] / [i915#3840])
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_fbcon_fbt@fbc-suspend.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_fbcon_fbt@fbc-suspend.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098])
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html> ([i915#3469])
>   *
> 
>     igt@kms_fence_pin_leak:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_fence_pin_leak.html> ([i915#4881])
>   *
> 
>     igt@kms_flip@2x-blocking-wf_vblank:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_flip@2x-blocking-wf_vblank.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>) +6 other tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767>)
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
> 
>   *
> 
>     igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html> ([i915#3637])
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_flip@2x-flip-vs-fences-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html> ([i915#8381])
>   *
> 
>     igt@kms_flip@2x-nonexisting-fb:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-snb2/igt@kms_flip@2x-nonexisting-fb.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +4 other tests skip
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html> ([i915#3637] / [i915#4098]) +11 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +8 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / [i915#3555])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html> ([i915#3555]) +18 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +5 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672> / [i915#3555])
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_force_connector_basic@force-load-detect.html> (fdo#109285 <https://bugs.freedesktop.org/show_bug.cgi?id=109285>)
>   *
> 
>     igt@kms_frontbuffer_tracking@basic:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-18/igt@kms_frontbuffer_tracking@basic.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-17/igt@kms_frontbuffer_tracking@basic.html> (i915#1982 <https://gitlab.freedesktop.org/drm/intel/issues/1982> / [i915#4423])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html> ([i915#6880])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html> ([i915#6880])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-gtt.html> ([i915#8708]) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html> ([i915#8708]) +27 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-shrfb-scaledprimary.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) +20 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu.html> ([i915#3458]) +27 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html> ([i915#3458]) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html> ([i915#5354]) +35 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html> ([i915#8708]) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-pwrite.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) +18 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html> (i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +8 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html> ([i915#3023]) +7 other tests skip
>   *
> 
>     igt@kms_hdmi_inject@inject-audio:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_hdmi_inject@inject-audio.html> ([i915#433])
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_hdr@bpc-switch-dpms.html> ([i915#3555] / [i915#8228]) +1 other test skip
>   *
> 
>     igt@kms_hdr@bpc-switch-suspend:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_hdr@bpc-switch-suspend.html> ([i915#3555] / [i915#8228])
>   *
> 
>     igt@kms_invalid_mode@zero-clock:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_invalid_mode@zero-clock.html> ([i915#3555] / [i915#4098]) +1 other test skip
>   *
> 
>     igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +8 other tests skip
> 
>       o
> 
>         shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +1 other test skip
> 
>   *
> 
>     igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>) +2 other tests skip
>   *
> 
>     igt@kms_plane@plane-panning-top-left:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane@plane-panning-top-left.html> ([i915#4098] / [i915#8825]) +2 other tests skip
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
> 
>       o shard-apl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl6/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html> ([i915#4573]) +1 other test fail
>   *
> 
>     igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk2/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html> ([i915#4573]) +1 other test fail
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html> ([i915#8292])
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html> ([i915#8292])
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b-hdmi-a-2.html> ([i915#5176] / [i915#9423]) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-19/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-d-hdmi-a-1.html> ([i915#5176] / [i915#9423]) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25.html> ([i915#4098] / [i915#6953] / [i915#8152]) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-a-hdmi-a-3.html> ([i915#5235]) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25.html> ([i915#6953] / [i915#8152]) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-5-unity-scaling.html> ([i915#8152]) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-scaler-unity-scaling:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane_scaling@planes-scaler-unity-scaling.html> ([i915#3555] / [i915#4098] / [i915#8152])
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-1.html> ([i915#5235]) +3 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_plane_scaling@planes-upscale-factor-0-25.html> ([i915#3555] / [i915#4098] / [i915#6953] / [i915#8152])
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html> ([i915#5235]) +27 other tests skip
>   *
> 
>     igt@kms_prime@basic-crc-hybrid:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_prime@basic-crc-hybrid.html> ([i915#6524])
>   *
> 
>     igt@kms_prime@d3hot:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_prime@d3hot.html> ([i915#6524] / [i915#6805])
>   *
> 
>     igt@kms_properties@plane-properties-atomic:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_properties@plane-properties-atomic.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_properties@plane-properties-atomic.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / [i915#9683])
>   *
> 
>     igt@kms_psr2_su@page_flip-xrgb8888:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html> ([i915#9683]) +4 other tests skip
>   *
> 
>     igt@kms_psr@psr2_cursor_mmap_gtt:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_psr@psr2_cursor_mmap_gtt.html> ([i915#9673])
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_psr@psr2_primary_mmap_gtt.html> ([i915#9673]) +1 other test skip
>   *
> 
>     igt@kms_psr@psr2_sprite_plane_move:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_psr@psr2_sprite_plane_move.html> ([i915#9681]) +6 other tests skip
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_rotation_crc@primary-rotation-90.html> ([i915#4235])
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html> ([i915#5289])
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-270:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_rotation_crc@sprite-rotation-270.html> ([i915#4235]) +1 other test skip
>   *
> 
>     igt@kms_setmode@clone-exclusive-crtc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_setmode@clone-exclusive-crtc.html> ([i915#3555] / [i915#4098])
>   *
> 
>     igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html> ([i915#9159])
>   *
> 
>     igt@kms_vrr@flip-dpms:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@kms_vrr@flip-dpms.html> ([i915#3555])
>   *
> 
>     igt@perf@gen12-group-exclusive-stream-ctx-handle:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@perf@gen12-group-exclusive-stream-ctx-handle.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@perf@gen12-group-exclusive-stream-ctx-handle.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/intel/issues/2436>)
>   *
> 
>     igt@perf@global-sseu-config-invalid:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@perf@global-sseu-config-invalid.html> ([i915#7387])
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@perf@global-sseu-config-invalid.html> ([i915#7387])
> 
>   *
> 
>     igt@perf@unprivileged-single-ctx-counters:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@perf@unprivileged-single-ctx-counters.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289> / i915#2433 <https://gitlab.freedesktop.org/drm/intel/issues/2433>)
>   *
> 
>     igt@perf_pmu@cpu-hotplug:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@perf_pmu@cpu-hotplug.html> ([i915#8850])
>   *
> 
>     igt@perf_pmu@event-wait@rcs0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@perf_pmu@event-wait@rcs0.html> (fdo#112283 <https://bugs.freedesktop.org/show_bug.cgi?id=112283>)
>   *
> 
>     igt@prime_vgem@basic-fence-mmap:
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@prime_vgem@basic-fence-mmap.html> ([i915#3708] / [i915#4077])
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-2/igt@prime_vgem@basic-fence-mmap.html> ([i915#3708] / [i915#4077])
> 
>   *
> 
>     igt@prime_vgem@basic-write:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@prime_vgem@basic-write.html> ([i915#3291] / [i915#3708]) +1 other test skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@prime_vgem@basic-write.html> ([i915#3708])
> 
>   *
> 
>     igt@prime_vgem@fence-read-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@prime_vgem@fence-read-hang.html> ([i915#3708])
>   *
> 
>     igt@runner@aborted:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-snb1/igt@runner@aborted.html> ([i915#7812])
>   *
> 
>     igt@v3d/v3d_submit_cl@bad-extension:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@v3d/v3d_submit_cl@bad-extension.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_cl@bad-multisync-out-sync:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-11/igt@v3d/v3d_submit_cl@bad-multisync-out-sync.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +16 other tests skip
>   *
> 
>     igt@v3d/v3d_wait_bo@bad-bo:
> 
>       o shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@v3d/v3d_wait_bo@bad-bo.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +3 other tests skip
>   *
> 
>     igt@v3d/v3d_wait_bo@used-bo-1ns:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@v3d/v3d_wait_bo@used-bo-1ns.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +6 other tests skip
>   *
> 
>     igt@vc4/vc4_lookup_fail@bad-color-write:
> 
>       o shard-dg1: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-14/igt@vc4/vc4_lookup_fail@bad-color-write.html> ([i915#7711])
>   *
> 
>     igt@vc4/vc4_tiling@get-bad-flags:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@vc4/vc4_tiling@get-bad-flags.html> ([i915#7711]) +5 other tests skip
>   *
> 
>     igt@vc4/vc4_tiling@get-bad-modifier:
> 
>       o
> 
>         shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@vc4/vc4_tiling@get-bad-modifier.html> ([i915#7711]) +14 other tests skip
> 
>       o
> 
>         shard-mtlp: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@vc4/vc4_tiling@get-bad-modifier.html> ([i915#7711]) +2 other tests skip
> 
> 
>         Possible fixes
> 
>   *
> 
>     {igt@drm_mm@drm_mm@drm_test_mm_align64}:
> 
>       o shard-tglu: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-tglu-10/igt@drm_mm@drm_mm@drm_test_mm_align64.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-4/igt@drm_mm@drm_mm@drm_test_mm_align64.html>
>   *
> 
>     igt@fbdev@info:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@fbdev@info.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@fbdev@info.html>
>   *
> 
>     igt@fbdev@unaligned-read:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@fbdev@unaligned-read.html> (i915#2582 <https://gitlab.freedesktop.org/drm/intel/issues/2582>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@fbdev@unaligned-read.html> +1 other test pass
>   *
> 
>     igt@gem_bad_reloc@negative-reloc-lut:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_bad_reloc@negative-reloc-lut.html> ([i915#3281]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html> +11 other tests pass
>   *
> 
>     {igt@gem_compute@compute-square}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_compute@compute-square.html> ([i915#9310]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_compute@compute-square.html>
>   *
> 
>     igt@gem_eio@wait-1us:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-4/igt@gem_eio@wait-1us.html> ([i915#9262]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-8/igt@gem_eio@wait-1us.html>
>   *
> 
>     igt@gem_exec_endless@dispatch@bcs0:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_exec_endless@dispatch@bcs0.html> ([i915#9591]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@gem_exec_endless@dispatch@bcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_exec_fair@basic-none-rrul@rcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_exec_fair@basic-none-rrul@rcs0.html> +1 other test pass
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html> ([i915#2842]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html> +2 other tests pass
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html> (fdo#109313 <https://bugs.freedesktop.org/show_bug.cgi?id=109313>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html>
>   *
> 
>     igt@gem_partial_pwrite_pread@writes-after-reads:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads.html> ([i915#3282]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_partial_pwrite_pread@writes-after-reads.html> +12 other tests pass
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-untiled:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html> ([i915#8411]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html> +1 other test pass
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gen9_exec_parse@allowed-all.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html> +3 other tests pass
>   *
> 
>     igt@i915_power@sanity:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@i915_power@sanity.html> ([i915#7984]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@i915_power@sanity.html>
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@i915_suspend@basic-s3-without-i915.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html> +1 other test pass
>   *
> 
>     {igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html> ([i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_ccs@pipe-b-bad-rotation-90-y-tiled-gen12-rc-ccs-cc.html> +13 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html> +33 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@single-move@all-pipes:
> 
>       o shard-mtlp: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html> (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-6/igt@kms_cursor_legacy@single-move@all-pipes.html>
>   *
> 
>     igt@kms_fbcon_fbt@fbc:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_fbcon_fbt@fbc.html>
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-mtlp: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-8/igt@kms_fbcon_fbt@fbc-suspend.html> ([i915#9414]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-7/igt@kms_fbcon_fbt@fbc-suspend.html> +1 other test pass
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html> ([i915#6880]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-pwrite.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-mmap-cpu.html> +15 other tests pass
>   *
> 
>     igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1:
> 
>       o shard-apl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html> ([i915#9392]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-dp-1.html>
>   *
> 
>     {igt@kms_plane@planar-pixel-format-settings}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_plane@planar-pixel-format-settings.html> ([i915#9581]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_plane@planar-pixel-format-settings.html>
>   *
> 
>     {igt@kms_pm_rpm@dpms-lpsp}:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html> ([i915#9519]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html> +2 other tests pass
>   *
> 
>     {igt@kms_pm_rpm@dpms-mode-unset-non-lpsp}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html> ([i915#9519]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html> +1 other test pass
>   *
> 
>     {igt@kms_pm_rpm@drm-resources-equal}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_pm_rpm@drm-resources-equal.html> (fdo#109308 <https://bugs.freedesktop.org/show_bug.cgi?id=109308>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_pm_rpm@drm-resources-equal.html> +1 other test pass
>   *
> 
>     igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
> 
>       o shard-rkl: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html> ([i915#8875] / [i915#9475] / [i915#9569]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html>
>   *
> 
>     {igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode}:
> 
>       o shard-rkl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_selftest@drm_dp_mst_helper@drm_test_dp_mst_sideband_msg_req_decode.html>
>   *
> 
>     {igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state}:
> 
>       o shard-snb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-snb6/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-snb7/igt@kms_selftest@drm_plane_helper@drm_test_check_invalid_plane_state.html> +2 other tests pass
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html> ([i915#9196]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-edp-1.html> +1 other test pass
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html> ([i915#9196]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-c-hdmi-a-1.html>
>   *
> 
>     {igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4}:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html> ([i915#9196]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html>
>   *
> 
>     igt@perf@enable-disable@0-rcs0:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html> ([i915#8724]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg2-6/igt@perf@enable-disable@0-rcs0.html>
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/intel/issues/2434>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@perf@mi-rpc.html>
>   *
> 
>     igt@perf_pmu@busy-double-start@vcs1:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-mtlp-4/igt@perf_pmu@busy-double-start@vcs1.html> ([i915#4349]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-mtlp-2/igt@perf_pmu@busy-double-start@vcs1.html> +2 other tests pass
>   *
> 
>     igt@prime_vgem@basic-fence-flip:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@prime_vgem@basic-fence-flip.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / [i915#3708] / [i915#4098]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@prime_vgem@basic-fence-flip.html>
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@prime_vgem@coherency-gtt.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / fdo#111656 <https://bugs.freedesktop.org/show_bug.cgi?id=111656> / [i915#3708]) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@prime_vgem@coherency-gtt.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_ccs@block-copy-compressed:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html> ([i915#3555]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_ccs@block-copy-compressed.html> ([i915#7957])
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gem_ccs@suspend-resume.html> ([i915#7957]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gem_ccs@suspend-resume.html> ([i915#9323])
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@gem_pread@exhaustion.html> ([i915#3282]) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@gem_pread@exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gen9_exec_parse@bb-oversize:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@gen9_exec_parse@bb-oversize.html> (i915#2532 <https://gitlab.freedesktop.org/drm/intel/issues/2532>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>   *
> 
>     igt@kms_atomic@plane-primary-overlay-mutable-zpos:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> ([i915#9531]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098])
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769> / [i915#3555])
>   *
> 
>     igt@kms_big_fb@4-tiled-8bpp-rotate-0:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html> ([i915#4538] / [i915#5286]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-dg1-17/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html> ([i915#4423] / [i915#4538] / [i915#5286])
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_big_fb@4-tiled-addfb.html> ([i915#5286]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +7 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> ([i915#5286]) +6 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / [i915#3638]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +3 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-8bpp-rotate-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / [i915#3638]) +6 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +8 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +8 other tests skip
>   *
> 
>     igt@kms_color@deep-color:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_color@deep-color.html> ([i915#3555]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_color@deep-color.html> ([i915#9608])
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_content_protection@legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_content_protection@legacy.html> ([i915#7118]) +1 other test skip
>   *
> 
>     igt@kms_content_protection@type1:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_content_protection@type1.html> ([i915#7118]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_content_protection@type1.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +2 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x512.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html> ([i915#3359]) +2 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x170:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> ([i915#3359]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +2 other tests skip
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x10:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-32x10.html> ([i915#3555]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +8 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-atomic.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +11 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> ([i915#4103])
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> ([i915#4103]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098])
>   *
> 
>     igt@kms_dsc@dsc-basic:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_dsc@dsc-basic.html> ([i915#3555] / [i915#3840]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_dsc@dsc-basic.html> ([i915#4098]) +1 other test skip
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html> ([i915#4098])
>   *
> 
>     igt@kms_fbcon_fbt@psr:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_fbcon_fbt@psr.html> ([i915#3955]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_fbcon_fbt@psr.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / [i915#3955])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +55 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) +61 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 other test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html> ([i915#3023]) +33 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> ([i915#5439]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354])
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html> ([i915#3023]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / [i915#4098] / [i915#5354]) +34 other tests skip
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html> ([i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes.html> ([i915#3555] / [i915#8228])
>   *
> 
>     igt@kms_hdr@static-swap:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_hdr@static-swap.html> ([i915#3555] / [i915#8228]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_hdr@static-swap.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) +1 other test skip
>   *
> 
>     igt@kms_panel_fitting@legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_panel_fitting@legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-4/igt@kms_panel_fitting@legacy.html> ([i915#6301])
>   *
> 
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-4/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html> ([i915#5289]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098])
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / [i915#5289]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098])
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / [i915#5289]) +1 other test skip
>   *
> 
>     igt@kms_vrr@negative-basic:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13885/shard-rkl-5/igt@kms_vrr@negative-basic.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / [i915#4098]) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_125770v4/shard-rkl-1/igt@kms_vrr@negative-basic.html> ([i915#3555]) +4 other tests skip
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 

