Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C594EA8D2
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 09:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D651C10E784;
	Tue, 29 Mar 2022 07:54:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6BC210E782
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 07:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648540490; x=1680076490;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=L9CkzuxE4wKZR6dJeBiGes+LRLDY89VUYFN0Fofzcjo=;
 b=oA0xJjrHobiBdoZLyb5ZIcOoGUN2i2/LZgtiGjRORoPz1e+fmnZ4AVj9
 OIUhUxG+AJadnciKmA6a0Fgk6bm1BXqcp+oUL08AD+vRnWKGs/+k6BvcF
 XMm0zgmo8KqSSmte52jcjuJ7nGlKxxe7dnQWGLiJF4ex+UeRuXLVqCqfl
 T9R4z+3Udm3O7QkXkGeZ+O6s4AOC5zuK1g0gBKffgKo8/XyM1yZay0GLK
 9RWVyi0cC1pKFd36XJMw1JanRsfEoR2001AB0F7Agr6nUM+1qpSs0fbQM
 t2N9ZKbE/Lhz4kc7fD3bK2kb5pwjQ0/xn3jLqswTYTrxegTyUca81cIZN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="258017890"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="258017890"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:54:48 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="564411827"
Received: from aburakov-mobl.ger.corp.intel.com (HELO [10.213.216.20])
 ([10.213.216.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 00:54:47 -0700
Message-ID: <10e046ca-6da2-8a2c-96e3-d5edf4267da7@linux.intel.com>
Date: Tue, 29 Mar 2022 08:54:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org,
 Patchwork <patchwork@emeril.freedesktop.org>, "Yang, Fei"
 <fei.yang@intel.com>
References: <20220328171650.1900674-1-fei.yang@intel.com>
 <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <164852101313.5798.13575790930450522054@emeril.freedesktop.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_avoid_concurrent_writes_to_aux=5Finv_=28rev10=29?=
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


On 29/03/2022 03:30, Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915: avoid concurrent writes to aux_inv (rev10)
> *URL:*	https://patchwork.freedesktop.org/series/100772/ 
> <https://patchwork.freedesktop.org/series/100772/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_11415_full -> Patchwork_22704_full
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.

And pushed.

Does this have any chance of fixing hangs in multiple simultaneous media 
workloads?

Regards,

Tvrtko

> 
> 
>     Participating hosts (10 -> 10)
> 
> No changes in participating hosts
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_22704_full that come from known 
> issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_ctx_isolation@preservation-s3@bcs0:
> 
>       o shard-kbl: NOTRUN -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html>
>         ([i915#180]) +1 similar issue
>   *
> 
>     igt@gem_ctx_persistence@legacy-engines-mixed:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb4/igt@gem_ctx_persistence@legacy-engines-mixed.html>
>         ([fdo#109271] / [i915#1099])
>   *
> 
>     igt@gem_exec_fair@basic-none-rrul@rcs0:
> 
>       o
> 
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2852])
> 
>       o
> 
>         shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842]) +2 similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html>
>         ([i915#2842])
> 
>   *
> 
>     igt@gem_exec_fair@basic-pace-share@rcs0:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html>
>         ([i915#2842])
>   *
> 
>     igt@gem_exec_fair@basic-throttle@rcs0:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html>
>         ([i915#2849])
>   *
> 
>     igt@gem_exec_params@rsvd2-dirt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb3/igt@gem_exec_params@rsvd2-dirt.html>
>         ([fdo#109283])
>   *
> 
>     igt@gem_exec_schedule@u-semaphore-user:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb4/igt@gem_exec_schedule@u-semaphore-user.html>
>         ([fdo#109271]) +55 similar issues
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl1/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk9/igt@gem_huc_copy@huc-copy.html>
>         ([fdo#109271] / [i915#2190])
> 
>   *
> 
>     igt@gem_lmem_swapping@basic:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl2/igt@gem_lmem_swapping@basic.html>
>         ([fdo#109271] / [i915#4613]) +1 similar issue
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@gem_lmem_swapping@heavy-verify-random.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-engines:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk7/igt@gem_lmem_swapping@parallel-random-engines.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_lmem_swapping@smem-oom:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@gem_lmem_swapping@smem-oom.html>
>         ([fdo#109271] / [i915#4613])
>   *
> 
>     igt@gem_pipe_control_store_loop@reused-buffer:
> 
>       o shard-snb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb7/igt@gem_pipe_control_store_loop@reused-buffer.html>
>         ([i915#5441])
>   *
> 
>     igt@gem_ppgtt@blt-vs-render-ctx0:
> 
>       o shard-snb: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb2/igt@gem_ppgtt@blt-vs-render-ctx0.html>
>         ([i915#5441])
>   *
> 
>     igt@gem_ppgtt@blt-vs-render-ctxn:
> 
>       o shard-iclb: NOTRUN -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb4/igt@gem_ppgtt@blt-vs-render-ctxn.html>
>         ([i915#5441])
>   *
> 
>     igt@gem_pread@exhaustion:
> 
>       o
> 
>         shard-tglb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb2/igt@gem_pread@exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-iclb: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb3/igt@gem_pread@exhaustion.html>
>         ([i915#2658])
> 
>       o
> 
>         shard-skl: NOTRUN -> WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl9/igt@gem_pread@exhaustion.html>
>         ([i915#2658])
> 
>   *
> 
>     igt@gem_pxp@verify-pxp-stale-buf-execution:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@gem_pxp@verify-pxp-stale-buf-execution.html>
>         ([i915#4270]) +1 similar issue
>   *
> 
>     igt@gem_render_copy@x-tiled@smem:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl7/igt@gem_render_copy@x-tiled@smem.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl6/igt@gem_render_copy@x-tiled@smem.html>
>         ([i915#5441])
>   *
> 
>     igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html>
>         ([i915#768])
>   *
> 
>     igt@gem_softpin@noreloc-s3:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl3/igt@gem_softpin@noreloc-s3.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl1/igt@gem_softpin@noreloc-s3.html>
>         ([i915#180])
>   *
> 
>     igt@gem_tiled_blits@basic:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb1/igt@gem_tiled_blits@basic.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb1/igt@gem_tiled_blits@basic.html>
>         ([i915#5441]) +8 similar issues
>   *
> 
>     igt@gem_tiled_partial_pwrite_pread@reads:
> 
>       o shard-apl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@gem_tiled_partial_pwrite_pread@reads.html>
>         ([i915#5441]) +1 similar issue
>   *
> 
>     igt@gem_tiled_partial_pwrite_pread@writes:
> 
>       o shard-tglb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@gem_tiled_partial_pwrite_pread@writes.html>
>         ([i915#5441]) +4 similar issues
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([i915#3323])
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html>
>         ([fdo#109271] / [i915#3323])
> 
>   *
> 
>     igt@gem_userptr_blits@invalid-mmap-offset-unsync:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html>
>         ([i915#3297]) +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@unsync-overlap:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb2/igt@gem_userptr_blits@unsync-overlap.html>
>         ([i915#3297]) +1 similar issue
>   *
> 
>     igt@gem_userptr_blits@vma-merge:
> 
>       o
> 
>         shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
> 
>       o
> 
>         shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl6/igt@gem_userptr_blits@vma-merge.html>
>         ([i915#3318])
> 
>   *
> 
>     igt@gen3_render_linear_blits:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@gen3_render_linear_blits.html>
>         ([fdo#109289]) +1 similar issue
>   *
> 
>     igt@gen9_exec_parse@allowed-all:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@gen9_exec_parse@allowed-all.html>
>         ([i915#2856]) +1 similar issue
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html>
>         ([fdo#109271] / [i915#1937])
>   *
> 
>     igt@i915_pm_rpm@gem-execbuf-stress-pc8:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html>
>         ([fdo#109293] / [fdo#109506])
>   *
> 
>     igt@i915_query@query-topology-unsupported:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@i915_query@query-topology-unsupported.html>
>         ([fdo#109302])
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-skl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl9/igt@i915_suspend@fence-restore-untiled.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl10/igt@i915_suspend@fence-restore-untiled.html>
>         ([i915#4817])
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([i915#5286]) +1 similar issue
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([i915#5286])
> 
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-180:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb2/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-180.html>
>         ([i915#5441]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@linear-32bpp-rotate-90:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_big_fb@linear-32bpp-rotate-90.html>
>         ([fdo#110725] / [fdo#111614]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@linear-8bpp-rotate-180:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl6/igt@kms_big_fb@linear-8bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl7/igt@kms_big_fb@linear-8bpp-rotate-180.html>
>         ([i915#5441]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-0:
> 
>       o
> 
>         shard-iclb: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html>
>         ([i915#5441]) +2 similar issues
> 
>       o
> 
>         shard-skl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl9/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html>
>         ([i915#5441]) +3 similar issues
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-16bpp-rotate-180:
> 
>       o
> 
>         shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         ([i915#5441])
> 
>       o
> 
>         shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl1/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl8/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         ([i915#1373] / [i915#5441])
> 
>       o
> 
>         shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html>
>         ([i915#1373] / [i915#5441])
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-180:
> 
>       o
> 
>         shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html>
>         ([i915#2828] / [i915#5441])
> 
>       o
> 
>         shard-snb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-snb7/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html>
>         ([i915#5441])
> 
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html>
>         ([fdo#109271] / [i915#3777])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html>
>         ([i915#1982] / [i915#5441])
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-180:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl1/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html>
>         ([i915#5441]) +1 similar issue
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-kbl: NOTRUN -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html>
>         ([i915#5441]) +2 similar issues
>   *
> 
>     igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +2 similar issues
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html>
>         ([fdo#109271] / [i915#3777]) +1 similar issue
> 
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html>
>         ([fdo#111615])
>   *
> 
>     igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html>
>         ([fdo#110723])
>   *
> 
>     igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html>
>         ([fdo#111615] / [i915#3689])
>   *
> 
>     igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl2/igt@kms_ccs@pipe-b-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +4 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109271] / [i915#3886]) +2 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         ([fdo#109278] / [i915#3886]) +6 similar issues
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html>
>         ([i915#3689] / [i915#3886]) +1 similar issue
> 
>   *
> 
>     igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html>
>         ([fdo#109271] / [i915#3886]) +1 similar issue
>   *
> 
>     igt@kms_chamelium@dp-hpd-after-suspend:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb3/igt@kms_chamelium@dp-hpd-after-suspend.html>
>         ([fdo#109284] / [fdo#111827]) +1 similar issue
>   *
> 
>     igt@kms_chamelium@dp-mode-timings:
> 
>       o
> 
>         shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@kms_chamelium@dp-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +4 similar issues
> 
>       o
> 
>         shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@kms_chamelium@dp-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +5 similar issues
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@kms_chamelium@dp-mode-timings.html>
>         ([fdo#109284] / [fdo#111827]) +3 similar issues
> 
>   *
> 
>     igt@kms_chamelium@hdmi-mode-timings:
> 
>       o shard-snb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-snb4/igt@kms_chamelium@hdmi-mode-timings.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-max:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl7/igt@kms_color@pipe-d-ctm-max.html>
>         ([fdo#109271]) +87 similar issues
>   *
> 
>     igt@kms_color@pipe-d-ctm-negative:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_color@pipe-d-ctm-negative.html>
>         ([fdo#109278] / [i915#1149])
>   *
> 
>     igt@kms_color_chamelium@pipe-a-ctm-negative:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-negative.html>
>         ([fdo#109271] / [fdo#111827]) +1 similar issue
>   *
> 
>     igt@kms_color_chamelium@pipe-d-degamma:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl10/igt@kms_color_chamelium@pipe-d-degamma.html>
>         ([fdo#109271] / [fdo#111827]) +3 similar issues
>   *
> 
>     igt@kms_content_protection@atomic:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@kms_content_protection@atomic.html>
>         ([fdo#109300] / [fdo#111066])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html>
>         ([i915#3319])
>   *
> 
>     igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html>
>         ([fdo#109278] / [fdo#109279]) +3 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html>
>         ([fdo#109278]) +26 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html>
>         ([fdo#109279] / [i915#3359]) +1 similar issue
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
> 
>       o shard-kbl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html>
>         ([fdo#109271]) +81 similar issues
>   *
> 
>     igt@kms_cursor_crc@pipe-d-cursor-32x10-random:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html>
>         ([i915#3359])
>   *
> 
>     igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html>
>         ([fdo#109274] / [fdo#109278]) +2 similar issues
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-single-bo:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk4/igt@kms_cursor_legacy@pipe-d-single-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_cursor_legacy@pipe-d-torture-bo:
> 
>       o shard-skl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html>
>         ([fdo#109271] / [i915#533])
>   *
> 
>     igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
> 
>       o
> 
>         shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html>
>         ([i915#5287]) +1 similar issue
> 
>       o
> 
>         shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html>
>         ([i915#5287])
> 
>   *
> 
>     igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb2/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html>
>         ([fdo#109274] / [fdo#111825]) +5 similar issues
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@2x-flip-vs-rmfb-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html>
>         ([fdo#109274]) +6 similar issues
>   *
> 
>     igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html>
>         ([i915#79])
>   *
> 
>     igt@kms_flip@flip-vs-suspend@c-dp1:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html>
>         ([i915#180]) +2 similar issues
>   *
> 
>     igt@kms_flip@plain-flip-fb-recreate@b-edp1:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html>
>         ([i915#2122])
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html>
>         ([i915#2587])
>   *
> 
>     igt@kms_force_connector_basic@force-load-detect:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb5/igt@kms_force_connector_basic@force-load-detect.html>
>         ([fdo#109285])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html>
>         ([fdo#109280]) +19 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-suspend:
> 
>       o shard-kbl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html>
>         ([i915#180] / [i915#1982])
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-tglb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html>
>         ([fdo#109280] / [fdo#111825]) +8 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html>
>         ([i915#5438])
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-glk6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html>
>         ([fdo#109271]) +58 similar issues
>   *
> 
>     igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-apl4/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html>
>         ([fdo#109271] / [i915#533]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html>
>         ([fdo#108145] / [i915#265])
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
> 
>       o shard-kbl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html>
>         ([i915#265]) +1 similar issue
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
> 
>       o shard-skl: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html>
>         ([fdo#108145] / [i915#265]) +2 similar issues
>   *
> 
>     igt@kms_plane_lowres@pipe-c-tiling-y:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-y.html>
>         ([i915#3536])
>   *
> 
>     igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22704/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-75@pipe-b-edp-1-downscale-with-pixel-format.html>
>         ([i915#5293])
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-iclb: NOTRUN -> [SKIP][129] (
> 
