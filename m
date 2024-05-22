Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCAA8CBE96
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 11:54:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DAA910E02A;
	Wed, 22 May 2024 09:54:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PAJ8xyah";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D770610E02A
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 09:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716371684; x=1747907684;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=ne3aAJL6Oy6lXlalBz3vtqRfOyIXCza5qqAa1NA52KI=;
 b=PAJ8xyahYXfJmnwj1IaAgKc1RUxWyAEaMb7QvhS+rb/EFKdmkdLLix6Q
 txXHtzIiHMhooQHlEkNdh2PpNGE/UVdGgbcwbHZry+Hl/Lvb0yHriyHYQ
 GmT3YmfYoiMCVriZb8U1rC0RbZmgWoIxwl7kaXH5juSsse2mWZcpj+fPM
 0CqTytFxJNSWbL1wxW9Ug3uv208RnFsR3FLSifGmfXgAhVdrDfqNtTh/F
 x3mOAzZJTBaAIabl3B8ofaxAraj8x9xGyaXyxjI2rbZ/RKhTE+02KuUN5
 znpyFM9Um0WFEkoDjnf6tYURVhRq0hoCIqK+nMi2ikL2KhT9hFmtpiKWZ Q==;
X-CSE-ConnectionGUID: J3aaag4OS2ma3k9xAhpQfQ==
X-CSE-MsgGUID: /UCb6ZfYQIGXEu4xWsfuRA==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="23741811"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="23741811"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:54:44 -0700
X-CSE-ConnectionGUID: wtsrNmySRC2fMLRqUDrnLA==
X-CSE-MsgGUID: nDyzSII+RF2YZZ1IqZpcyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="37626844"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 22 May 2024 02:54:38 -0700
Received: from [10.246.25.139] (mwajdecz-MOBL.ger.corp.intel.com
 [10.246.25.139])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 308EA28169
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 10:54:23 +0100 (IST)
Message-ID: <14bbaab0-c5f8-4641-a383-9fca8a97087d@intel.com>
Date: Wed, 22 May 2024 11:54:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?B?UmU6IOKclyBGaS5DSS5JR1Q6IGZhaWx1cmUgZm9yIGRybS94ZTogQ2xl?=
 =?UTF-8?Q?anup_xe=5Fmmio=2Eh?=
To: intel-gfx@lists.freedesktop.org
References: <20240520181814.2392-1-michal.wajdeczko@intel.com>
 <171627050013.2162100.7060564688560856099@8e613ede5ea5>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <171627050013.2162100.7060564688560856099@8e613ede5ea5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 21.05.2024 07:48, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/xe: Cleanup xe_mmio.h
> URL   : https://patchwork.freedesktop.org/series/133825/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14785_full -> Patchwork_133825v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_133825v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_133825v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_133825v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_vrr@seamless-rr-switch-virtual:
>     - shard-dg2:          NOTRUN -> [SKIP][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-virtual.html
>     - shard-dg1:          NOTRUN -> [SKIP][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_vrr@seamless-rr-switch-virtual.html

unrelated

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14785_full and Patchwork_133825v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@perf@blocking@1-vcs1:
>     - Statuses : 1 pass(s)
>     - Exec time: [10.02] s
> 
>   * igt@perf@oa-exponents@1-vcs1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.83] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_133825v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][3] ([i915#9408])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg1:          NOTRUN -> [SKIP][4] ([i915#8414]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@drm_fdinfo@virtual-idle:
>     - shard-rkl:          NOTRUN -> [FAIL][5] ([i915#7742])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#9323])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#3555] / [i915#9323])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][8] -> [FAIL][9] ([i915#6268])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_persistence@heartbeat-stop:
>     - shard-dg1:          NOTRUN -> [SKIP][10] ([i915#8555])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-stop.html
>     - shard-dg2:          NOTRUN -> [SKIP][11] ([i915#8555])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@gem_ctx_persistence@heartbeat-stop.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][12] ([i915#1099])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
> 
>   * igt@gem_exec_balancer@bonded-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#4771])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_exec_balancer@bonded-sync.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6344])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg1:          NOTRUN -> [FAIL][16] ([i915#9606])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#3539])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_exec_fair@basic-pace.html
>     - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3539])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][20] ([i915#2842]) +1 other test fail
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#3281]) +9 other tests skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-write-gtt-active:
>     - shard-dg1:          NOTRUN -> [SKIP][22] ([i915#3281]) +4 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_exec_reloc@basic-write-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#3281]) +5 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg1:          NOTRUN -> [SKIP][24] ([i915#4812])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_whisper@basic-queues:
>     - shard-snb:          NOTRUN -> [SKIP][25] +62 other tests skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb2/igt@gem_exec_whisper@basic-queues.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#4860])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#4860])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg1:          [PASS][28] -> [FAIL][29] ([i915#10378])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-16/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-14/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][30] ([i915#10378])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][31] ([i915#4613]) +4 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-glk8/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
> 
>   * igt@gem_lmem_swapping@massive-random:
>     - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#4613])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@gem_lmem_swapping@massive-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#4613]) +4 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          NOTRUN -> [TIMEOUT][34] ([i915#5493])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_wc@bad-size:
>     - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4083]) +2 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@gem_mmap_wc@bad-size.html
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4083]) +2 other tests skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_mmap_wc@bad-size.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][37] ([i915#3282]) +4 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@gem_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_pwrite@basic-random:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#3282]) +2 other tests skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@gem_pwrite@basic-random.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3282]) +8 other tests skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-regular-buffer:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4270]) +3 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_pxp@create-regular-buffer.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4270]) +2 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#4270]) +1 other test skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#5190] / [i915#8428]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4079])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#8411])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4077]) +7 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#3297]) +2 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#3297] / [i915#4880])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#3297])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-tglu:         NOTRUN -> [SKIP][50] ([i915#2527] / [i915#2856])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#2527]) +3 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-rkl:          [PASS][52] -> [ABORT][53] ([i915#9820])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][54] -> [ABORT][55] ([i915#10131] / [i915#9820])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-mtlp-1/igt@i915_module_load@reload-with-fault-injection.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_module_load@resize-bar:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#6412])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@i915_module_load@resize-bar.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg1:          NOTRUN -> [SKIP][57] ([i915#6621])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@thresholds-idle@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#8925])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@i915_pm_rps@thresholds-idle@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#4387])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#4387])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#5723])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#7707])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#4212])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#8709]) +3 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-1-y-rc-ccs-cc.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg1:          NOTRUN -> [SKIP][65] ([i915#9531])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#5286])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-rkl:          NOTRUN -> [SKIP][67] ([i915#5286]) +7 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#5286]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3638]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_big_fb@linear-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#3638]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-32bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#4538]) +1 other test skip
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-32bpp-rotate-270.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#6095]) +63 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-y-tiled-ccs@pipe-c-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#10278])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#10307] / [i915#6095]) +105 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-4.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#6095]) +57 other tests skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#10278]) +1 other test skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#6095]) +7 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-10/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#3742]) +1 other test skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_cdclk@plane-scaling.html
>     - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#3742])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium_audio@hdmi-audio-edid:
>     - shard-dg1:          NOTRUN -> [SKIP][82] ([i915#7828]) +6 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_chamelium_audio@hdmi-audio-edid.html
> 
>   * igt@kms_chamelium_color@ctm-0-25:
>     - shard-dg2:          NOTRUN -> [SKIP][83] +3 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_chamelium_color@ctm-0-25.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#7828]) +1 other test skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-after-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#7828]) +1 other test skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_chamelium_hpd@hdmi-hpd-after-suspend.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#7828]) +9 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][87] ([i915#7173])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3299])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#7118] / [i915#9424])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#3555]) +2 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-32x32:
>     - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#3555]) +2 other tests skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][92] ([i915#3359]) +2 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3555]) +7 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3359]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#4103])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#9723])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#9723])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#3804])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][99] ([i915#8812])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_draw_crc@draw-method-mmap-wc.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3840])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-formats:
>     - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#3555] / [i915#3840])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_dsc@dsc-with-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#3555] / [i915#3840]) +1 other test skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#1839])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_flip@2x-flip-vs-panning-interruptible:
>     - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3637])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-rkl:          NOTRUN -> [SKIP][105] +58 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#9934])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#3637] / [i915#3966])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@blocking-wf_vblank@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][108] ([i915#2122])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_flip@blocking-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
>     - shard-snb:          [PASS][109] -> [FAIL][110] ([i915#2122]) +2 other tests fail
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
>     - shard-dg2:          [PASS][111] -> [FAIL][112] ([i915#2122])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4:
>     - shard-dg1:          NOTRUN -> [FAIL][113] ([i915#2122]) +2 other tests fail
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_flip@flip-vs-absolute-wf_vblank@c-hdmi-a4.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][114] ([i915#2587] / [i915#2672]) +1 other test skip
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#2672]) +3 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#2587] / [i915#2672])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#2672])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [PASS][118] -> [FAIL][119] ([i915#6880])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#5354]) +9 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#8708]) +10 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3023]) +27 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3458]) +5 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#8708]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#5439])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#9766])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
>     - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#9766])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][128] ([i915#3458]) +6 other tests skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#1825]) +40 other tests skip
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
>     - shard-tglu:         NOTRUN -> [SKIP][130] +18 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3555] / [i915#8228]) +2 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_hdr@static-toggle.html
>     - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3555] / [i915#8228])
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#8806])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#3555]) +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [FAIL][135] ([i915#8292])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][136] ([i915#8292])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#9423]) +3 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#9423]) +7 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#9423]) +7 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#9423]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5235] / [i915#9423] / [i915#9728]) +3 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][142] ([i915#5235]) +7 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#5235] / [i915#9423]) +3 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-1/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#5235]) +7 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_pm_backlight@fade-with-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#5354]) +2 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@kms_pm_backlight@fade-with-dpms.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#9685])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [PASS][147] -> [SKIP][148] ([i915#4281])
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-6/igt@kms_pm_dc@dc9-dpms.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_lpsp@screens-disabled:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#8430])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_pm_lpsp@screens-disabled.html
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8430])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          [PASS][151] -> [SKIP][152] ([i915#9519])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#9519])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#9519])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@pm-tiling:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#4077]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_pm_rpm@pm-tiling.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#6524])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][157] +20 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][158] ([i915#9683])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][159] ([i915#1072] / [i915#9732]) +6 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@kms_psr@fbc-psr2-sprite-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#1072] / [i915#9732]) +26 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr2-sprite-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#1072] / [i915#9732]) +7 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_psr@psr2-sprite-blt.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-cpu:
>     - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#9732]) +4 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_psr@psr2-sprite-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-sprite-plane-onoff:
>     - shard-glk:          NOTRUN -> [SKIP][163] +163 other tests skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html
> 
>   * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#9685])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#5289]) +2 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
>     - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#5289]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-270:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4235]) +1 other test skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-270.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#8623])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
>     - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#8623])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][170] -> [FAIL][171] ([i915#9196])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#9906])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#9906])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#9906])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#2437])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#2437] / [i915#9412])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>     - shard-glk:          NOTRUN -> [SKIP][177] ([i915#2437])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-glk8/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-invalid-parameters:
>     - shard-dg1:          NOTRUN -> [SKIP][178] ([i915#2437])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_writeback@writeback-invalid-parameters.html
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#2437])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@kms_writeback@writeback-invalid-parameters.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#8850])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6-all-gts:
>     - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#8516])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@perf_pmu@rc6-all-gts.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#3708])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@runner@aborted:
>     - shard-glk:          NOTRUN -> [FAIL][183] ([i915#10291])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-glk1/igt@runner@aborted.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#9917])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#9917])
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@sriov_basic@enable-vfs-autoprobe-on.html
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9917]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][187] ([i915#9779])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_mmap@mmap-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#2575]) +1 other test skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@v3d/v3d_mmap@mmap-bad-handle.html
> 
>   * igt@v3d/v3d_submit_cl@single-in-sync:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#2575]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@v3d/v3d_submit_cl@single-in-sync.html
> 
>   * igt@v3d/v3d_submit_csd@single-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#2575]) +3 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@v3d/v3d_submit_csd@single-in-sync.html
> 
>   * igt@vc4/vc4_label_bo@set-label:
>     - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#7711]) +8 other tests skip
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@vc4/vc4_label_bo@set-label.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem:
>     - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#7711]) +4 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@vc4/vc4_purgeable_bo@access-purgeable-bo-mem.html
> 
>   * igt@vc4/vc4_tiling@get-bad-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#7711]) +1 other test skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@vc4/vc4_tiling@get-bad-modifier.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [FAIL][194] ([i915#6268]) -> [PASS][195]
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-dg1:          [FAIL][196] ([i915#5784]) -> [PASS][197]
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-17/igt@gem_eio@reset-stress.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@gem_eio@reset-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglu:         [FAIL][198] ([i915#2842]) -> [PASS][199]
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-8/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@bcs0:
>     - shard-rkl:          [FAIL][200] ([i915#2842]) -> [PASS][201] +2 other tests pass
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-3/igt@gem_exec_fair@basic-none@bcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [FAIL][202] ([i915#10378]) -> [PASS][203] +1 other test pass
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-2/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg2:          [FAIL][204] ([i915#10446]) -> [PASS][205]
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [INCOMPLETE][206] ([i915#9849]) -> [PASS][207]
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [ABORT][208] ([i915#9820]) -> [PASS][209]
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@i915_module_load@reload-with-fault-injection.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [ABORT][210] ([i915#9820]) -> [PASS][211]
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-7/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_freq_api@freq-suspend@gt0:
>     - shard-dg2:          [INCOMPLETE][212] ([i915#9407]) -> [PASS][213]
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-10/igt@i915_pm_freq_api@freq-suspend@gt0.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1:
>     - shard-snb:          [INCOMPLETE][214] ([i915#4839]) -> [PASS][215]
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb6/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          [FAIL][216] ([i915#6880]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-snb:          [SKIP][218] -> [PASS][219] +1 other test pass
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][220] ([i915#9519]) -> [PASS][221]
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][222] ([i915#9196]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-tglu-8/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-tglu-5/igt@kms_universal_plane@cursor-fb-leak@pipe-a-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          [SKIP][224] ([i915#9433]) -> [SKIP][225] ([i915#9424])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg1-13/igt@kms_content_protection@mei-interface.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg1-18/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][226] ([i915#10433] / [i915#3458]) -> [SKIP][227] ([i915#3458]) +1 other test skip
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          [SKIP][228] ([i915#3458]) -> [SKIP][229] ([i915#10433] / [i915#3458]) +1 other test skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][230] ([i915#4070] / [i915#4816]) -> [SKIP][231] ([i915#4816])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_psr@pr-cursor-plane-move:
>     - shard-dg2:          [SKIP][232] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][233] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-11/igt@kms_psr@pr-cursor-plane-move.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-10/igt@kms_psr@pr-cursor-plane-move.html
> 
>   * igt@kms_psr@psr-primary-mmap-cpu:
>     - shard-dg2:          [SKIP][234] ([i915#1072] / [i915#9732]) -> [SKIP][235] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@kms_psr@psr-primary-mmap-cpu.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-11/igt@kms_psr@psr-primary-mmap-cpu.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][236] ([i915#7484]) -> [FAIL][237] ([i915#9100])
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14785/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/shard-dg2-11/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10291
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3966]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3966
>   [i915#4070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
>   [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5784]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8806
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9407]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9407
>   [i915#9408]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9728]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9728
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
>   [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
>   [i915#9820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9849
>   [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
>   [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14785 -> Patchwork_133825v1
>   * Piglit: piglit_4509 -> None
> 
>   CI-20190529: 20190529
>   CI_DRM_14785: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7863: fa1dc232d5d840532521df8a6fcf1fe82c514304 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_133825v1: 1ba62f8cea9c797427d45108df1d453f4b343240 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_133825v1/index.html
> 
