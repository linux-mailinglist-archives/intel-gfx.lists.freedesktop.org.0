Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF0EA7E7BFE
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 12:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B8310E998;
	Fri, 10 Nov 2023 11:52:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F414410E998
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 11:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699617161; x=1731153161;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=wA7c0793/HK0HJtZ9U9kNNJMFf4J5VXYI7S5PGOeXO0=;
 b=hFPZI0IpbQWogzTDiHF+pxOPAnbOOxcwE5kLtZMX5I0rtwyDiEG3xjl6
 24X5nPKPJpMH7PbNak5b+BVBpMHUrYT+ETez710p037qEPOrRjP0LJd8w
 QfFmM8Lou1kKK2Iwo6ub3wjQoFiE/V90zKPJOAwrqPZLAdHmZPZaLFq2R
 LGdeCPicgpmMT8mw8panJbMCGfMSzhzwYpe0kkKvKNUotiMdg/B0KDasn
 yWYRbTXH82LYNmU4qyHg4dw5BMylLi9EuqUpCg6XaVsb+TypZ5MMc5lUf
 s8scU3iYBMHpR/+NorJGRug/GRY4giEC/Jv0bZpX5LhrSFK7tpA7pEolk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="387336486"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="387336486"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 03:52:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="880948500"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="880948500"
Received: from gpruna-mobl4.ger.corp.intel.com (HELO [10.213.236.135])
 ([10.213.236.135])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 03:52:39 -0800
Message-ID: <f3b2d31e-ec5a-495f-8625-c03d797fd219@linux.intel.com>
Date: Fri, 10 Nov 2023 11:52:37 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20231107101806.608990-1-tvrtko.ursulin@linux.intel.com>
 <169957405154.26590.12985571408921553922@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <169957405154.26590.12985571408921553922@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915=3A_Add_ability_for_tr?=
 =?utf-8?q?acking_buffer_objects_per_client_=28rev5=29?=
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


On 09/11/2023 23:54, Patchwork wrote:
> *Patch Details*
> *Series:*	series starting with [CI,1/6] drm/i915: Add ability for 
> tracking buffer objects per client (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/126064/ 
> <https://patchwork.freedesktop.org/series/126064/>
> *State:*	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_13856_full -> Patchwork_126064v5_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_126064v5_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_126064v5_full, please notify your bug team 
> (lgci.bug.filing@intel.com) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/index.html
> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_126064v5_full:
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   * igt@gem_exec_suspend@basic-s3@smem:
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-6/igt@gem_exec_suspend@basic-s3@smem.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-2/igt@gem_exec_suspend@basic-s3@smem.html>

This is failing on DG2 in general so it is unrelated.

Regards,

Tvrtko

> 
> 
>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   *
> 
>     {igt@kms_flip_tiling@flip-change-tiling@pipe-b-dp-1-y-ccs-to-x}:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl2/igt@kms_flip_tiling@flip-change-tiling@pipe-b-dp-1-y-ccs-to-x.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl6/igt@kms_flip_tiling@flip-change-tiling@pipe-b-dp-1-y-ccs-to-x.html>
>   *
> 
>     {igt@kms_pm_rpm@fences-dpms}:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-6/igt@kms_pm_rpm@fences-dpms.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_pm_rpm@fences-dpms.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_126064v5_full that come from 
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
>     igt@gem_bad_reloc@negative-reloc-lut:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_bad_reloc@negative-reloc-lut.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>)
>   *
> 
>     igt@gem_ctx_persistence@processes:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-snb7/igt@gem_ctx_persistence@processes.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#1099 <https://gitlab.freedesktop.org/drm/intel/issues/1099>)
>   *
> 
>     igt@gem_ctx_sseu@invalid-args:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html> (i915#280 <https://gitlab.freedesktop.org/drm/intel/issues/280>)
>   *
> 
>     igt@gem_eio@hibernate:
> 
>       o shard-dg2: NOTRUN -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_eio@hibernate.html> (i915#7975 <https://gitlab.freedesktop.org/drm/intel/issues/7975> / i915#8213 <https://gitlab.freedesktop.org/drm/intel/issues/8213>)
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-dg1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-15/igt@gem_eio@kms.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg1-18/igt@gem_eio@kms.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_eio@reset-stress:
> 
>       o shard-snb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-snb7/igt@gem_eio@reset-stress.html> (i915#8898 <https://gitlab.freedesktop.org/drm/intel/issues/8898>)
>   *
> 
>     igt@gem_exec_balancer@bonded-false-hang:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_exec_balancer@bonded-false-hang.html> (i915#4812 <https://gitlab.freedesktop.org/drm/intel/issues/4812>)
>   *
> 
>     igt@gem_exec_balancer@parallel-contexts:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_exec_balancer@parallel-contexts.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_capture@capture-invisible@lmem0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_exec_capture@capture-invisible@lmem0.html> (i915#6334 <https://gitlab.freedesktop.org/drm/intel/issues/6334>) +1 other test skip
>   *
> 
>     igt@gem_exec_fair@basic-none-solo@rcs0:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk8/igt@gem_exec_fair@basic-none-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +1 other test fail
>   *
> 
>     igt@gem_exec_fair@basic-none@rcs0:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_exec_fair@basic-none@rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@gem_exec_fair@basic-none@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) +3 other tests fail
>   *
> 
>     igt@gem_exec_flush@basic-uc-ro-default:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_exec_flush@basic-uc-ro-default.html> (i915#3539 <https://gitlab.freedesktop.org/drm/intel/issues/3539> / i915#4852 <https://gitlab.freedesktop.org/drm/intel/issues/4852>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-wc-noreloc:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-scanout@bcs0:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_exec_reloc@basic-scanout@bcs0.html> (i915#3639 <https://gitlab.freedesktop.org/drm/intel/issues/3639>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc-noreloc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_exec_reloc@basic-write-wc-noreloc.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) +1 other test skip
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html> (i915#4860 <https://gitlab.freedesktop.org/drm/intel/issues/4860>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-multi:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl1/igt@gem_lmem_swapping@parallel-multi.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk8/igt@gem_lmem_swapping@random-engines.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +2 other tests skip
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_lmem_swapping@verify-ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_mmap_wc@set-cache-level:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_mmap_wc@set-cache-level.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_mmap_wc@set-cache-level.html> (i915#1850 <https://gitlab.freedesktop.org/drm/intel/issues/1850>)
>   *
> 
>     igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html> (i915#4083 <https://gitlab.freedesktop.org/drm/intel/issues/4083>) +1 other test skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_partial_pwrite_pread@reads.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>   *
> 
>     igt@gem_partial_pwrite_pread@write-uncached:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_partial_pwrite_pread@write-uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) +1 other test skip
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-glk: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk8/igt@gem_pread@exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-tglu: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@gem_pwrite@basic-exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@gem_pxp@create-regular-context-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gem_pxp@create-regular-context-2.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html> (i915#4270 <https://gitlab.freedesktop.org/drm/intel/issues/4270>)
>   *
> 
>     igt@gem_render_copy@y-tiled-to-vebox-linear:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_render_copy@y-tiled-to-vebox-linear.html> (i915#768 <https://gitlab.freedesktop.org/drm/intel/issues/768>) +1 other test skip
>   *
> 
>     igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-snb7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +55 other tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-tiled:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/intel/issues/8411>)
>   *
> 
>     igt@gem_softpin@evict-snoop-interruptible:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html> (i915#4885 <https://gitlab.freedesktop.org/drm/intel/issues/4885>)
>   *
> 
>     igt@gem_tiled_partial_pwrite_pread@reads:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_tiled_partial_pwrite_pread@reads.html> (i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>) +3 other tests skip
>   *
> 
>     igt@gem_userptr_blits@unsync-unmap:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gem_userptr_blits@unsync-unmap.html> (i915#3297 <https://gitlab.freedesktop.org/drm/intel/issues/3297>)
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk4/igt@gem_userptr_blits@vma-merge.html> (i915#3318 <https://gitlab.freedesktop.org/drm/intel/issues/3318>)
>   *
> 
>     igt@gen9_exec_parse@basic-rejected:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gen9_exec_parse@basic-rejected.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@gen9_exec_parse@basic-rejected.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@batch-invalid-length:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@gen9_exec_parse@batch-invalid-length.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@batch-without-end:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@gen9_exec_parse@batch-without-end.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527> / i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@bb-oversize:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@gen9_exec_parse@bb-oversize.html> (i915#2856 <https://gitlab.freedesktop.org/drm/intel/issues/2856>)
>   *
> 
>     igt@i915_module_load@reload-with-fault-injection:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-2/igt@i915_module_load@reload-with-fault-injection.html> (i915#8489 <https://gitlab.freedesktop.org/drm/intel/issues/8489> / i915#8668 <https://gitlab.freedesktop.org/drm/intel/issues/8668>)
>   *
> 
>     igt@i915_pm_rps@thresholds-idle@gt0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@i915_pm_rps@thresholds-idle@gt0.html> (i915#8925 <https://gitlab.freedesktop.org/drm/intel/issues/8925>)
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>)
>   *
> 
>     igt@i915_query@query-topology-unsupported:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@i915_query@query-topology-unsupported.html> (fdo#109302 <https://bugs.freedesktop.org/show_bug.cgi?id=109302>)
>   *
> 
>     igt@kms_async_flips@crc:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_async_flips@crc.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +12 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-8bpp-rotate-90:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>)
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_big_fb@linear-32bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>)
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-270:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +8 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html> (i915#3743 <https://gitlab.freedesktop.org/drm/intel/issues/3743>)
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html> (i915#4538 <https://gitlab.freedesktop.org/drm/intel/issues/4538> / i915#5190 <https://gitlab.freedesktop.org/drm/intel/issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1 other test skip
>   *
> 
>     igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html> (i915#4087 <https://gitlab.freedesktop.org/drm/intel/issues/4087>) +3 other tests skip
>   *
> 
>     igt@kms_chamelium_color@ctm-blue-to-red:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_chamelium_color@ctm-blue-to-red.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_chamelium_color@degamma:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_chamelium_color@degamma.html> (fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_chamelium_frames@hdmi-crc-fast.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>   *
> 
>     igt@kms_chamelium_frames@hdmi-frame-dump:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_chamelium_frames@hdmi-frame-dump.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>) +1 other test skip
>   *
> 
>     igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html> (i915#7828 <https://gitlab.freedesktop.org/drm/intel/issues/7828>)
>   *
> 
>     igt@kms_color@ctm-red-to-blue@pipe-a:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_color@ctm-red-to-blue@pipe-a.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_color@ctm-red-to-blue@pipe-a.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_content_protection@atomic.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-1:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html> (i915#3299 <https://gitlab.freedesktop.org/drm/intel/issues/3299>)
>   *
> 
>     igt@kms_content_protection@lic@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-11/igt@kms_content_protection@lic@pipe-a-dp-4.html> (i915#7173 <https://gitlab.freedesktop.org/drm/intel/issues/7173>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_content_protection@srm.html> (i915#6944 <https://gitlab.freedesktop.org/drm/intel/issues/6944> / i915#7116 <https://gitlab.freedesktop.org/drm/intel/issues/7116> / i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-64x64@pipe-a-edp-1:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-2/igt@kms_cursor_crc@cursor-random-64x64@pipe-a-edp-1.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-8/igt@kms_cursor_crc@cursor-random-64x64@pipe-a-edp-1.html> (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017> / i915#9157 <https://gitlab.freedesktop.org/drm/intel/issues/9157>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274>)
>   *
> 
>     igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +3 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html> (fdo#111767 <https://bugs.freedesktop.org/show_bug.cgi?id=111767> / fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
>   *
> 
>     igt@kms_cursor_legacy@single-move@all-pipes:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-5/igt@kms_cursor_legacy@single-move@all-pipes.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-4/igt@kms_cursor_legacy@single-move@all-pipes.html> (i915#2017 <https://gitlab.freedesktop.org/drm/intel/issues/2017>) +1 other test dmesg-warn
>   *
> 
>     igt@kms_fbcon_fbt@fbc:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_fbcon_fbt@fbc.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_fbcon_fbt@fbc.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +8 other tests skip
>   *
> 
>     igt@kms_fbcon_fbt@psr:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_fbcon_fbt@psr.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   *
> 
>     igt@kms_flip@2x-modeset-vs-vblank-race:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_flip@2x-modeset-vs-vblank-race.html> (fdo#109274 <https://bugs.freedesktop.org/show_bug.cgi?id=109274> / i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637>)
>   *
> 
>     igt@kms_flip@flip-vs-panning-interruptible:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_flip@flip-vs-panning-interruptible.html> (i915#3637 <https://gitlab.freedesktop.org/drm/intel/issues/3637> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@kms_flip@flip-vs-suspend@a-hdmi-a3:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-1/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-5/igt@kms_flip@flip-vs-suspend@a-hdmi-a3.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) +4 other tests fail
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +4 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-blt.html> (i915#6880 <https://gitlab.freedesktop.org/drm/intel/issues/6880>) +1 other test fail
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +54 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-render.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/intel/issues/8708>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html> (i915#3458 <https://gitlab.freedesktop.org/drm/intel/issues/3458>) +3 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> (i915#5439 <https://gitlab.freedesktop.org/drm/intel/issues/5439>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-pwrite.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>) +7 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html> (i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>) +7 other tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_hdr@bpc-switch-dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>) +1 other test skip
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_hdr@invalid-metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>)
>   *
> 
>     igt@kms_invalid_mode@bad-vtotal:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_invalid_mode@bad-vtotal.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html> (fdo#109289 <https://bugs.freedesktop.org/show_bug.cgi?id=109289>)
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk8/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html> (i915#4573 <https://gitlab.freedesktop.org/drm/intel/issues/4573>) +1 other test fail
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html> (i915#6953 <https://gitlab.freedesktop.org/drm/intel/issues/6953>)
>   *
> 
>     igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html> (i915#8292 <https://gitlab.freedesktop.org/drm/intel/issues/8292>)
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-11/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a-dp-4.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +11 other tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-a-hdmi-a-2.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_plane_scaling@planes-downscale-factor-0-75.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098> / i915#6953 <https://gitlab.freedesktop.org/drm/intel/issues/6953> / i915#8152 <https://gitlab.freedesktop.org/drm/intel/issues/8152>)
>   *
> 
>     igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098> / i915#6953 <https://gitlab.freedesktop.org/drm/intel/issues/6953> / i915#8152 <https://gitlab.freedesktop.org/drm/intel/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@cursor_mmap_cpu:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_psr@cursor_mmap_cpu.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189>) +6 other tests skip
>   *
> 
>     igt@kms_psr@primary_blt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_psr@primary_blt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>) +2 other tests skip
>   *
> 
>     igt@kms_psr@psr2_primary_mmap_gtt:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@kms_psr@psr2_primary_mmap_gtt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/intel/issues/1072>)
>   *
> 
>     igt@kms_psr@psr2_sprite_blt:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk8/igt@kms_psr@psr2_sprite_blt.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +106 other tests skip
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-90:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_rotation_crc@primary-rotation-90.html> (i915#4235 <https://gitlab.freedesktop.org/drm/intel/issues/4235>)
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
> 
>       o shard-tglu: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-7/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-3/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>)
>   *
> 
>     igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
> 
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-7/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) +1 other test fail
>   *
> 
>     igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1:
> 
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-dp-1.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>)
>   *
> 
>     igt@kms_vblank@wait-forked-busy-hang:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_vblank@wait-forked-busy-hang.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +5 other tests skip
>   *
> 
>     igt@kms_vrr@negative-basic:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@kms_vrr@negative-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 other test skip
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@kms_writeback@writeback-check-output.html> (i915#2437 <https://gitlab.freedesktop.org/drm/intel/issues/2437>)
>   *
> 
>     igt@perf@enable-disable@0-rcs0:
> 
>       o shard-dg2: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-7/igt@perf@enable-disable@0-rcs0.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-11/igt@perf@enable-disable@0-rcs0.html> (i915#8724 <https://gitlab.freedesktop.org/drm/intel/issues/8724>)
>   *
> 
>     igt@perf@mi-rpc:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@perf@mi-rpc.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@perf@mi-rpc.html> (i915#2434 <https://gitlab.freedesktop.org/drm/intel/issues/2434>)
>   *
> 
>     igt@perf@per-context-mode-unprivileged:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@perf@per-context-mode-unprivileged.html> (i915#2435 <https://gitlab.freedesktop.org/drm/intel/issues/2435>)
>   *
> 
>     igt@prime_vgem@basic-read:
> 
>       o shard-rkl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@prime_vgem@basic-read.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@prime_vgem@basic-read.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3291 <https://gitlab.freedesktop.org/drm/intel/issues/3291> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   *
> 
>     igt@prime_vgem@coherency-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@prime_vgem@coherency-gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708> / i915#4077 <https://gitlab.freedesktop.org/drm/intel/issues/4077>)
>   *
> 
>     igt@prime_vgem@fence-flip-hang:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@prime_vgem@fence-flip-hang.html> (fdo#109295 <https://bugs.freedesktop.org/show_bug.cgi?id=109295> / i915#3708 <https://gitlab.freedesktop.org/drm/intel/issues/3708>)
>   *
> 
>     igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled:
> 
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@syncobj_timeline@invalid-multi-wait-all-available-unsubmitted-signaled.html> (i915#9583 <https://gitlab.freedesktop.org/drm/intel/issues/9583>)
>   *
> 
>     igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled:
> 
>       o shard-dg2: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@syncobj_timeline@invalid-multi-wait-available-unsubmitted-signaled.html> (i915#9583 <https://gitlab.freedesktop.org/drm/intel/issues/9583>)
>   *
> 
>     igt@syncobj_timeline@invalid-single-wait-available-unsubmitted:
> 
>       o shard-tglu: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@syncobj_timeline@invalid-single-wait-available-unsubmitted.html> (i915#9582 <https://gitlab.freedesktop.org/drm/intel/issues/9582>)
>   *
> 
>     igt@v3d/v3d_get_param@base-params:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@v3d/v3d_get_param@base-params.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2 other tests skip
>   *
> 
>     igt@v3d/v3d_submit_cl@bad-multisync-pad:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@v3d/v3d_submit_cl@bad-multisync-pad.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315> / i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +1 other test skip
>   *
> 
>     igt@v3d/v3d_submit_csd@bad-flag:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@v3d/v3d_submit_csd@bad-flag.html> (fdo#109315 <https://bugs.freedesktop.org/show_bug.cgi?id=109315>) +2 other tests skip
>   *
> 
>     igt@vc4/vc4_tiling@get-bad-handle:
> 
>       o shard-tglu: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-9/igt@vc4/vc4_tiling@get-bad-handle.html> (i915#2575 <https://gitlab.freedesktop.org/drm/intel/issues/2575>) +2 other tests skip
>   *
> 
>     igt@vc4/vc4_tiling@set-bad-handle:
> 
>       o shard-dg2: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-6/igt@vc4/vc4_tiling@set-bad-handle.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +1 other test skip
>   *
> 
>     igt@vc4/vc4_wait_bo@used-bo-1ns:
> 
>       o shard-rkl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-1/igt@vc4/vc4_wait_bo@used-bo-1ns.html> (i915#7711 <https://gitlab.freedesktop.org/drm/intel/issues/7711>) +1 other test skip
> 
> 
>         Possible fixes
> 
>   *
> 
>     {igt@drm_fdinfo@context-close-stress}:
> 
>       o
> 
>         shard-glk: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk8/igt@drm_fdinfo@context-close-stress.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk2/igt@drm_fdinfo@context-close-stress.html> +4 other tests pass
> 
>       o
> 
>         shard-dg2: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-1/igt@drm_fdinfo@context-close-stress.html> (i915#9638 <https://gitlab.freedesktop.org/drm/intel/issues/9638>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-11/igt@drm_fdinfo@context-close-stress.html>
> 
>       o
> 
>         shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@drm_fdinfo@context-close-stress.html> (i915#9638 <https://gitlab.freedesktop.org/drm/intel/issues/9638>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@drm_fdinfo@context-close-stress.html> +5 other tests pass
> 
>   *
> 
>     {igt@drm_fdinfo@memory-info-idle@smem0}:
> 
>       o
> 
>         shard-tglu: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-8/igt@drm_fdinfo@memory-info-idle@smem0.html> (i915#9638 <https://gitlab.freedesktop.org/drm/intel/issues/9638>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-6/igt@drm_fdinfo@memory-info-idle@smem0.html> +5 other tests pass
> 
>       o
> 
>         shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@drm_fdinfo@memory-info-idle@smem0.html> (i915#9638 <https://gitlab.freedesktop.org/drm/intel/issues/9638>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-5/igt@drm_fdinfo@memory-info-idle@smem0.html> +5 other tests pass
> 
>   *
> 
>     {igt@drm_fdinfo@memory-info-purgeable@smem0}:
> 
>       o shard-dg1: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-13/igt@drm_fdinfo@memory-info-purgeable@smem0.html> (i915#9638 <https://gitlab.freedesktop.org/drm/intel/issues/9638>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg1-13/igt@drm_fdinfo@memory-info-purgeable@smem0.html> +10 other tests pass
>   *
> 
>     {igt@drm_fdinfo@memory-info-resident@smem0}:
> 
>       o shard-apl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl7/igt@drm_fdinfo@memory-info-resident@smem0.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl7/igt@drm_fdinfo@memory-info-resident@smem0.html> +4 other tests pass
>   *
> 
>     igt@drm_fdinfo@virtual-idle:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@drm_fdinfo@virtual-idle.html> (i915#7742 <https://gitlab.freedesktop.org/drm/intel/issues/7742>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html> +1 other test pass
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-tglu: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-tglu-7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>   *
> 
>     igt@gem_exec_reloc@basic-softpin:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_exec_reloc@basic-softpin.html> (i915#3281 <https://gitlab.freedesktop.org/drm/intel/issues/3281>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_exec_reloc@basic-softpin.html> +5 other tests pass
>   *
> 
>     igt@gem_set_tiling_vs_blt@untiled-to-tiled:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/intel/issues/8411>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html>
>   *
> 
>     igt@gem_tiled_partial_pwrite_pread@writes:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@writes.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_tiled_partial_pwrite_pread@writes.html>
>   *
> 
>     igt@gen9_exec_parse@secure-batches:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html> (i915#2527 <https://gitlab.freedesktop.org/drm/intel/issues/2527>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gen9_exec_parse@secure-batches.html> +1 other test pass
>   *
> 
>     igt@i915_pm_rpm@system-suspend-devices:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@i915_pm_rpm@system-suspend-devices.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-8/igt@i915_pm_rpm@system-suspend-devices.html>
>   *
> 
>     igt@i915_pm_rps@reset:
> 
>       o shard-snb: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-snb6/igt@i915_pm_rps@reset.html> (i915#7790 <https://gitlab.freedesktop.org/drm/intel/issues/7790>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-snb7/igt@i915_pm_rps@reset.html>
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@i915_pm_sseu@full-enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/intel/issues/4387>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@i915_pm_sseu@full-enable.html>
>   *
> 
>     igt@i915_suspend@basic-s2idle-without-i915:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@i915_suspend@basic-s2idle-without-i915.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-8/igt@i915_suspend@basic-s2idle-without-i915.html>
>   *
> 
>     igt@i915_suspend@basic-s3-without-i915:
> 
>       o shard-rkl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html> (fdo#103375 <https://bugs.freedesktop.org/show_bug.cgi?id=103375>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-4/igt@i915_suspend@basic-s3-without-i915.html>
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
> 
>       o shard-dg1: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html> (i915#4423 <https://gitlab.freedesktop.org/drm/intel/issues/4423>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg1-13/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html>
>   *
> 
>     igt@kms_color@legacy-gamma@pipe-a:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_color@legacy-gamma@pipe-a.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_color@legacy-gamma@pipe-a.html> +3 other tests pass
>   *
> 
>     igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
> 
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk6/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html>
>   *
> 
>     igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html> +8 other tests pass
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
> 
>       o shard-apl: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-apl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html>
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html> +4 other tests pass
>   *
> 
>     {igt@kms_pm_rpm@dpms-lpsp}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html> (i915#9519 <https://gitlab.freedesktop.org/drm/intel/issues/9519>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html> +1 other test pass
>   *
> 
>     {igt@kms_pm_rpm@i2c}:
> 
>       o shard-dg2: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-2/igt@kms_pm_rpm@i2c.html> (i915#8717 <https://gitlab.freedesktop.org/drm/intel/issues/8717>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-5/igt@kms_pm_rpm@i2c.html>
>   *
> 
>     {igt@kms_pm_rpm@system-suspend-modeset}:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html> (fdo#109308 <https://bugs.freedesktop.org/show_bug.cgi?id=109308>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_pm_rpm@system-suspend-modeset.html>
>   *
> 
>     {igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4}:
> 
>       o shard-dg1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg1-17/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html> (i915#9196 <https://gitlab.freedesktop.org/drm/intel/issues/9196>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg1-18/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-4.html>
>   *
> 
>     igt@perf@gen8-unprivileged-single-ctx-counters:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@perf@gen8-unprivileged-single-ctx-counters.html> (i915#2436 <https://gitlab.freedesktop.org/drm/intel/issues/2436>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@perf@gen8-unprivileged-single-ctx-counters.html>
>   *
> 
>     igt@perf_pmu@busy-double-start@ccs0:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-3/igt@perf_pmu@busy-double-start@ccs0.html> (i915#4349 <https://gitlab.freedesktop.org/drm/intel/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-8/igt@perf_pmu@busy-double-start@ccs0.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@gem_ccs@suspend-resume.html> (i915#9323 <https://gitlab.freedesktop.org/drm/intel/issues/9323>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_ccs@suspend-resume.html> (i915#7957 <https://gitlab.freedesktop.org/drm/intel/issues/7957>)
>   *
> 
>     igt@gem_exec_fair@basic-none@bcs0:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_exec_fair@basic-none@bcs0.html> (i915#9591 <https://gitlab.freedesktop.org/drm/intel/issues/9591>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@gem_exec_fair@basic-none@bcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o shard-rkl: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@gem_pread@exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@gem_pread@exhaustion.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>)
>   *
> 
>     igt@gem_pwrite@basic-exhaustion:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html> (i915#3282 <https://gitlab.freedesktop.org/drm/intel/issues/3282>) -> WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@gem_pwrite@basic-exhaustion.html> (i915#2658 <https://gitlab.freedesktop.org/drm/intel/issues/2658>)
>   *
> 
>     igt@kms_async_flips@crc@pipe-b-edp-1:
> 
>       o shard-mtlp: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-mtlp-7/igt@kms_async_flips@crc@pipe-b-edp-1.html> (i915#8247 <https://gitlab.freedesktop.org/drm/intel/issues/8247>) -> DMESG-FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-mtlp-3/igt@kms_async_flips@crc@pipe-b-edp-1.html> (i915#8561 <https://gitlab.freedesktop.org/drm/intel/issues/8561>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/intel/issues/1769> / i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb-size-overflow:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb-size-overflow.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-overflow.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_big_fb@linear-32bpp-rotate-90.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html> (fdo#111614 <https://bugs.freedesktop.org/show_bug.cgi?id=111614> / i915#3638 <https://gitlab.freedesktop.org/drm/intel/issues/3638>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615>)
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html> (fdo#110723 <https://bugs.freedesktop.org/show_bug.cgi?id=110723>) +1 other test skip
>   *
> 
>     igt@kms_content_protection@dp-mst-lic-type-0:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-0.html> (i915#3116 <https://gitlab.freedesktop.org/drm/intel/issues/3116>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_content_protection@srm:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_content_protection@srm.html> (i915#7118 <https://gitlab.freedesktop.org/drm/intel/issues/7118>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_content_protection@srm.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-32x32:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_cursor_crc@cursor-random-32x32.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>)
>   *
> 
>     igt@kms_cursor_crc@cursor-random-512x170:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x170.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x512:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html> (i915#3359 <https://gitlab.freedesktop.org/drm/intel/issues/3359>)
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +2 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html> (i915#4103 <https://gitlab.freedesktop.org/drm/intel/issues/4103>)
>   *
> 
>     igt@kms_fbcon_fbt@psr-suspend:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-1/igt@kms_fbcon_fbt@psr-suspend.html> (fdo#110189 <https://bugs.freedesktop.org/show_bug.cgi?id=110189> / i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_fbcon_fbt@psr-suspend.html> (i915#3955 <https://gitlab.freedesktop.org/drm/intel/issues/3955>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-shrfb-fliptrack-mmap-gtt.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825>)
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +10 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +16 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html> (fdo#111825 <https://bugs.freedesktop.org/show_bug.cgi?id=111825> / i915#1825 <https://gitlab.freedesktop.org/drm/intel/issues/1825>) +22 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> (i915#5439 <https://gitlab.freedesktop.org/drm/intel/issues/5439>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html> (i915#1849 <https://gitlab.freedesktop.org/drm/intel/issues/1849> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html> (i915#3023 <https://gitlab.freedesktop.org/drm/intel/issues/3023>) +8 other tests skip
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/intel/issues/8228>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html> (i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>)
>   *
> 
>     igt@kms_panel_fitting@legacy:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_panel_fitting@legacy.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-7/igt@kms_panel_fitting@legacy.html> (i915#6301 <https://gitlab.freedesktop.org/drm/intel/issues/6301>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html> (fdo#111615 <https://bugs.freedesktop.org/show_bug.cgi?id=111615> / i915#5289 <https://gitlab.freedesktop.org/drm/intel/issues/5289>)
>   *
> 
>     igt@kms_vrr@negative-basic:
> 
>       o shard-rkl: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-rkl-7/igt@kms_vrr@negative-basic.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-rkl-5/igt@kms_vrr@negative-basic.html> (i915#1845 <https://gitlab.freedesktop.org/drm/intel/issues/1845> / i915#4098 <https://gitlab.freedesktop.org/drm/intel/issues/4098>) +1 other test skip
>   *
> 
>     igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem:
> 
>       o shard-dg2: CRASH
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13856/shard-dg2-1/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html> (i915#9351 <https://gitlab.freedesktop.org/drm/intel/issues/9351>) -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_126064v5/shard-dg2-2/igt@prime_mmap@test_aperture_limit@test_aperture_limit-smem.html> (i915#5493 <https://gitlab.freedesktop.org/drm/intel/issues/5493>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_13856 -> Patchwork_126064v5
> 
> CI-20190529: 20190529
> CI_DRM_13856: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7580: 847ee1e7d365e2fb08bf4198d3bf5ee8a852649f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_126064v5: b81818fa6745cf79a86da57dc3a379bd80c7ea5f @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> 
