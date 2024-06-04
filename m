Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D17438FB7EB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 17:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E090C10E53C;
	Tue,  4 Jun 2024 15:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hEb4Anl5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D126710E53C;
 Tue,  4 Jun 2024 15:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717516221; x=1749052221;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=52/UG5MkUwLti5vlsdilNPnybNRIuVymAKprbV+XfwY=;
 b=hEb4Anl5SYElrlOFUriVqHi/F/XgEJsG0Ng7XeJSP6LVq1ZZ748zuaSb
 q0dSkRcThjNUE5SmIckRes/yEDKMiiqpWwcJ6O/dBxd/56tenLC/2AcH9
 1AmjJ45bYJrMyIouLfSrNKScjEnauJOET6ydyHhHnCMIwmRVuyL4e90SP
 MCeENqC7Wb3lDkc0lxgVs39g32+wTEjDSv5QOtud3zQBu8gV/YNWpQff8
 QUyfkIE/UL5pehTmDOK8zQFiLVfoZ14Bp86sKnwRZD8MBl44F6N/BA0e0
 F1mxqVl61tTMKdz/43vd2Vy/E8MsTVPajDZd7oxDhfyj+IIpqhKgcB4bL g==;
X-CSE-ConnectionGUID: QDcRIOpXQrOXGzmKuALGHQ==
X-CSE-MsgGUID: hIymFcGBSyW7rj7bd/hq6A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="11897893"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="11897893"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:50:20 -0700
X-CSE-ConnectionGUID: C4pu2vF3SWu9vJJtKi5T5A==
X-CSE-MsgGUID: P0dYmamITWOfJMfZN+X9Cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37862358"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 08:50:18 -0700
Date: Tue, 4 Jun 2024 18:50:24 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for PCI:
 Revert the cfg_access_lock lockdep mechanism
Message-ID: <Zl83wNQurnxcE+21@ideak-desk.fi.intel.com>
References: <20240531183345.1400330-1-imre.deak@intel.com>
 <171730001601.2243889.18021263048635316927@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171730001601.2243889.18021263048635316927@8e613ede5ea5>
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

On Sun, Jun 02, 2024 at 03:46:56AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: PCI: Revert the cfg_access_lock lockdep mechanism
> URL   : https://patchwork.freedesktop.org/series/134316/
> State : failure

Thanks for the ack, patch is pushed to core-for-CI.

The failures are unrelated see below.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14865_full -> Patchwork_134316v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134316v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134316v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 9)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134316v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_schedule@wide@bcs0:
>     - shard-dg1:          [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg1-18/igt@gem_exec_schedule@wide@bcs0.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_exec_schedule@wide@bcs0.html

No (pstore) log available, but can't see how it would be related. The
change only removes a lockdep annotation, so should only remove lockdep
WARNs. I found several previous CI runs on DG1 with incomplete result in
gem_exec_schedule:

./Trybot_134193v1/shard-dg1-17/23 (parallel-multi/lmem0)
./Patchwork_134295v1/shard-dg1-16/9/igt_runner.log (wide/bcs0)
./Trybot_134314v1/shard-dg1-13/9/igt_runner.log (wide/vecs0)
./CI_DRM_14850/shard-dg1-17/23/igt_runner.log (deep/rcs0)

and other KMS and GEM tests on DG1 with incomplete result.

> #### Warnings ####
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-tglu:         [SKIP][3] -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-tglu-8/igt@kms_big_fb@linear-8bpp-rotate-270.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-10/igt@kms_big_fb@linear-8bpp-rotate-270.html

This is probably
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10354

a known DSB/LUT issue.

> 
>   * igt@kms_pm_dc@deep-pkgc:
>     - shard-rkl:          [SKIP][5] ([i915#3828]) -> [SKIP][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-5/igt@kms_pm_dc@deep-pkgc.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-4/igt@kms_pm_dc@deep-pkgc.html

Looks like it has a ticket already, so not a regression:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828

> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14865_full and Patchwork_134316v1_full:
> 
> ### New IGT tests (20) ###
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.65] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
>     - Statuses : 2 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.61] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.46] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.32] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-1:
>     - Statuses : 2 pass(s) 1 skip(s)
>     - Exec time: [0.0, 0.50] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.37] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.28] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.26, 0.46] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.27] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.27, 0.47] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - Statuses :
>     - Exec time: [None] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.59] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-1:
>     - Statuses : 2 pass(s)
>     - Exec time: [0.48, 0.83] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.35] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.37] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.51] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.29] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.47] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-edp-1:
>     - Statuses : 1 pass(s)
>     - Exec time: [1.28] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134316v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#8411])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@debugfs_test@basic-hwmon:
>     - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#9318])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#8414]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#9323])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#9323])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@gem_ccs@suspend-resume.html
>     - shard-tglu:         NOTRUN -> [SKIP][12] ([i915#9323])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#7697])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#7697])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#6335])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          NOTRUN -> [FAIL][16] ([i915#6268])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#280]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#280])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-semaphore:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#4812]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_exec_balancer@bonded-semaphore.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4525]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][21] ([i915#6334])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk1/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@capture@vecs0-lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][22] ([i915#10386]) +1 other test fail
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@gem_exec_capture@capture@vecs0-lmem0.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-rkl:          NOTRUN -> [FAIL][23] ([i915#9606])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          NOTRUN -> [FAIL][24] ([i915#2846])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk9/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow:
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3539] / [i915#4852]) +1 other test skip
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_exec_fair@basic-flow.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-tglu:         NOTRUN -> [FAIL][27] ([i915#2842])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][28] ([i915#2842])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace:
>     - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3539])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_exec_fair@basic-pace.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          [PASS][30] -> [FAIL][31] ([i915#2842])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-4/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-dg2:          NOTRUN -> [SKIP][32] +5 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_exec_reloc@basic-gtt-cpu-active:
>     - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#3281]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html
> 
>   * igt@gem_exec_reloc@basic-scanout:
>     - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#3281]) +9 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_exec_reloc@basic-scanout.html
> 
>   * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#3281]) +4 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_exec_reloc@basic-wc-cpu-noreloc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain:
>     - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-chain.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@smem:
>     - shard-tglu:         [PASS][37] -> [ABORT][38] ([i915#7975] / [i915#8213])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-tglu-5/igt@gem_exec_suspend@basic-s4-devices@smem.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-10/igt@gem_exec_suspend@basic-s4-devices@smem.html
> 
>   * igt@gem_fenced_exec_thrash@2-spare-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4860])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_fenced_exec_thrash@2-spare-fences.html
> 
>   * igt@gem_lmem_evict@dontneed-evict-race:
>     - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#4613] / [i915#7582])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_lmem_evict@dontneed-evict-race.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi:
>     - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#4613])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-verify-multi.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [PASS][42] -> [FAIL][43] ([i915#10446])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4565]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4613]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-glk:          NOTRUN -> [SKIP][46] ([i915#4613])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk2/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][47] ([i915#5493])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_lmem_swapping@smem-oom@lmem0.html
>     - shard-dg1:          [PASS][48] -> [TIMEOUT][49] ([i915#5493])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg1-18/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_mmap_gtt@big-bo:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4077]) +4 other tests skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_mmap_gtt@big-bo.html
> 
>   * igt@gem_mmap_gtt@hang-user:
>     - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#4077]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_mmap_gtt@hang-user.html
> 
>   * igt@gem_mmap_wc@write-read:
>     - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4083]) +7 other tests skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_mmap_wc@write-read.html
> 
>   * igt@gem_partial_pwrite_pread@write-uncached:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#3282]) +2 other tests skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_partial_pwrite_pread@write-uncached.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#3282]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-tglu:         NOTRUN -> [WARN][55] ([i915#2658])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-4/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3282]) +4 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#4270])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#4270]) +1 other test skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-2:
>     - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4270])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_pxp@reject-modify-context-protection-off-2.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#4270]) +3 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4270]) +2 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#5190] / [i915#8428]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#8411]) +1 other test skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#4079]) +1 other test skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@gem_set_tiling_vs_gtt.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#3297])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3297]) +1 other test skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#2856])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#2527]) +1 other test skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@gen9_exec_parse@bb-start-cmd.html
>     - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#2527] / [i915#2856]) +1 other test skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@valid-registers:
>     - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#2527]) +5 other tests skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@gen9_exec_parse@valid-registers.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          NOTRUN -> [FAIL][71] ([i915#3591])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@thresholds@gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#8925])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@i915_pm_rps@thresholds@gt0.html
> 
>   * igt@i915_query@hwconfig_table:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#6245])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@i915_query@hwconfig_table.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#5723])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-tglu:         NOTRUN -> [INCOMPLETE][75] ([i915#7443])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-4/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>     - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#4212]) +1 other test skip
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4212])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#9531])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#9531])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#1769] / [i915#3555])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#1769] / [i915#3555])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
>     - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#1769] / [i915#3555])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#5286]) +5 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-addfb-size-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#5286])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_big_fb@4-tiled-addfb-size-overflow.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#5286]) +2 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5286]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-270:
>     - shard-tglu:         NOTRUN -> [SKIP][87] +49 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#3638]) +2 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_big_fb@x-tiled-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#3638]) +3 other tests skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#5190])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#4538]) +1 other test skip
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
>     - shard-dg1:          NOTRUN -> [SKIP][92] +32 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4538] / [i915#5190]) +1 other test skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#10656]) +1 other test skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_big_joiner@invalid-modeset-force-joiner:
>     - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#10656])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_big_joiner@invalid-modeset-force-joiner.html
> 
>   * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#6095]) +7 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-mc-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#6095]) +59 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#6095]) +31 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#10307] / [i915#6095]) +163 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#6095]) +63 other tests skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][101] +196 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk2/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-8/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3742])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][104] ([i915#7213] / [i915#9010]) +3 other tests skip
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_cdclk@mode-transition@pipe-b-edp-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4087]) +3 other tests skip
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-8/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_audio@dp-audio:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#7828]) +2 other tests skip
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_chamelium_audio@dp-audio.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#7828]) +3 other tests skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_frames@dp-crc-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#7828]) +7 other tests skip
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_chamelium_frames@dp-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#7828]) +6 other tests skip
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [TIMEOUT][110] ([i915#7173])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_content_protection@atomic-dpms@pipe-a-dp-4.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - shard-dg1:          NOTRUN -> [SKIP][111] ([i915#3299])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_content_protection@dp-mst-lic-type-0.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#3116])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#7118] / [i915#9424])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-1/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#6944] / [i915#9424])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9424]) +1 other test skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#7118] / [i915#9424]) +1 other test skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_content_protection@type1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#3555]) +8 other tests skip
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3359])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-max-size:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3555])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_cursor_crc@cursor-onscreen-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#3359])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x170:
>     - shard-tglu:         NOTRUN -> [SKIP][121] ([i915#3359])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#3359]) +1 other test skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#4103])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#4103])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@torture-bo@pipe-b:
>     - shard-glk:          [PASS][125] -> [DMESG-WARN][126] ([i915#10166] / [i915#1982])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-glk8/igt@kms_cursor_legacy@torture-bo@pipe-b.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk8/igt@kms_cursor_legacy@torture-bo@pipe-b.html
> 
>   * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#9723]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
>     - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#9723])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#9227])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3555]) +1 other test skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#8588])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-4/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#3555] / [i915#3840]) +2 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3955])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@chamelium:
>     - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#2065] / [i915#4854])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-4/igt@kms_feature_discovery@chamelium.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#9337])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_feature_discovery@dp-mst.html
>     - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#9337])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#658])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4881])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#9934]) +6 other tests skip
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms:
>     - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#3637]) +3 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_flip@2x-flip-vs-dpms.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
>     - shard-rkl:          NOTRUN -> [FAIL][141] ([i915#2122])
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][142] ([i915#6113])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-10/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
>     - shard-snb:          [PASS][143] -> [FAIL][144] ([i915#2122]) +2 other tests fail
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-snb5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-snb7/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][145] ([i915#2587] / [i915#2672]) +1 other test skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][146] ([i915#8810])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#2587] / [i915#2672]) +1 other test skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#2672]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#1825]) +40 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu:
>     - shard-snb:          [PASS][150] -> [SKIP][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#1825]) +1 other test skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][153] ([i915#8708]) +14 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#5439])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#3458]) +3 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][156] +36 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#8708]) +5 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#10070])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3458]) +8 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#3023]) +21 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#5354]) +5 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8228]) +1 other test skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_hdr@bpc-switch.html
>     - shard-tglu:         NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#8228]) +1 other test skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_panel_fitting@legacy:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#6301])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_panel_fitting@legacy.html
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#6301])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_panel_fitting@legacy.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555]) +3 other tests skip
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4:
>     - shard-dg2:          NOTRUN -> [FAIL][168] ([i915#8292])
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size@pipe-a-dp-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#9423]) +7 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9423]) +7 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#5176] / [i915#9423]) +1 other test skip
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#9423]) +7 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#9423]) +7 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#5235]) +5 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#5235]) +7 other tests skip
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#5354]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade:
>     - shard-snb:          NOTRUN -> [SKIP][178] +10 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-snb6/igt@kms_pm_backlight@fade.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#9685])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#9519])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#9519])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#9519])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp:
>     - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#9519]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp.html
>     - shard-rkl:          [PASS][184] -> [SKIP][185] ([i915#9519])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#9519]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#6524])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#6524] / [i915#6805])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#9683])
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#9683])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@fbc-pr-cursor-plane-onoff:
>     - shard-mtlp:         NOTRUN -> [SKIP][192] ([i915#9688])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-2/igt@kms_psr@fbc-pr-cursor-plane-onoff.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#9732]) +11 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#1072] / [i915#9673] / [i915#9732]) +4 other tests skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072] / [i915#9732]) +22 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#1072] / [i915#9732]) +14 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#5289]) +1 other test skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#8623])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_vrr@flip-basic-fastset:
>     - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#9906])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html
> 
>   * igt@kms_vrr@max-min:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#9906])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@kms_vrr@max-min.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#9906]) +1 other test skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#2437])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@perf@gen12-group-concurrent-oa-buffer-read:
>     - shard-rkl:          NOTRUN -> [FAIL][203] ([i915#10449] / [i915#10538])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@perf@gen12-group-concurrent-oa-buffer-read.html
> 
>   * igt@perf@per-context-mode-unprivileged:
>     - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#2435])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html
> 
>   * igt@perf@unprivileged-single-ctx-counters:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#2433])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@perf@unprivileged-single-ctx-counters.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#8850])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#8516])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-write:
>     - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#3291] / [i915#3708])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-3/igt@prime_vgem@basic-write.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][209] ([i915#3708] / [i915#4077])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#3708])
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#3708])
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#9917])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-bind-unbind-each:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#9917])
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-glk:          NOTRUN -> [FAIL][214] ([i915#9781])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk9/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg1:          NOTRUN -> [FAIL][215] ([i915#9779])
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-15/igt@syncobj_wait@invalid-wait-zero-handles.html
>     - shard-tglu:         NOTRUN -> [FAIL][216] ([i915#9779])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-invalid-counters:
>     - shard-mtlp:         NOTRUN -> [SKIP][217] ([i915#2575]) +2 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-5/igt@v3d/v3d_perfmon@create-perfmon-invalid-counters.html
> 
>   * igt@v3d/v3d_submit_cl@simple-flush-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#2575]) +8 other tests skip
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-16/igt@v3d/v3d_submit_cl@simple-flush-cache.html
> 
>   * igt@v3d/v3d_wait_bo@bad-pad:
>     - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#2575]) +2 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@v3d/v3d_wait_bo@bad-pad.html
> 
>   * igt@vc4/vc4_label_bo@set-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#7711])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@vc4/vc4_label_bo@set-bad-handle.html
> 
>   * igt@vc4/vc4_label_bo@set-label:
>     - shard-dg1:          NOTRUN -> [SKIP][221] ([i915#7711]) +4 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@vc4/vc4_label_bo@set-label.html
> 
>   * igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained:
>     - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#7711]) +7 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@vc4/vc4_purgeable_bo@mark-unpurgeable-check-retained.html
> 
>   * igt@vc4/vc4_wait_bo@used-bo:
>     - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#2575]) +10 other tests skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-7/igt@vc4/vc4_wait_bo@used-bo.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@kms:
>     - shard-tglu:         [INCOMPLETE][224] ([i915#10513]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-tglu-5/igt@gem_eio@kms.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-9/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-rkl:          [FAIL][226] ([i915#2842]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-4/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][228] ([i915#2842]) -> [PASS][229]
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [FAIL][230] ([i915#2842]) -> [PASS][231]
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-tglu-4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi@lmem0:
>     - shard-dg2:          [FAIL][232] ([i915#10378]) -> [PASS][233]
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-10/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-multi@lmem0.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1:
>     - shard-snb:          [INCOMPLETE][234] -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-snb6/igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-snb6/igt@kms_cursor_crc@cursor-sliding-256x256@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][236] ([i915#2122]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-snb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-snb5/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@dpms-vs-vblank-race@b-edp1:
>     - shard-mtlp:         [INCOMPLETE][238] -> [PASS][239] +1 other test pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-mtlp-1/igt@kms_flip@dpms-vs-vblank-race@b-edp1.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-4/igt@kms_flip@dpms-vs-vblank-race@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render:
>     - shard-dg2:          [FAIL][240] ([i915#6880]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-render.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [SKIP][242] ([i915#9519]) -> [PASS][243] +1 other test pass
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html
>     - shard-rkl:          [SKIP][244] ([i915#9519]) -> [PASS][245] +1 other test pass
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg1:          [INCOMPLETE][246] ([i915#9408]) -> [ABORT][247] ([i915#11164])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg1-17/igt@device_reset@unbind-reset-rebind.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-13/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg1:          [DMESG-WARN][248] ([i915#1982] / [i915#4391] / [i915#4423]) -> [INCOMPLETE][249] ([i915#1982] / [i915#9820] / [i915#9849])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-tglu:         [INCOMPLETE][250] ([i915#10047] / [i915#9697] / [i915#9820]) -> [INCOMPLETE][251] ([i915#10047] / [i915#9820])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-tglu-8/igt@i915_module_load@reload-with-fault-injection.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-tglu-10/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][252] ([i915#10131] / [i915#10887]) -> [ABORT][253] ([i915#10131] / [i915#9820])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-mtlp-6/igt@i915_module_load@reload-with-fault-injection.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg2:          [INCOMPLETE][254] ([i915#1982] / [i915#9820] / [i915#9849]) -> [ABORT][255] ([i915#9820])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-4/igt@i915_module_load@reload-with-fault-injection.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-8/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu:
>     - shard-dg2:          [SKIP][256] ([i915#3458]) -> [SKIP][257] ([i915#10433] / [i915#3458]) +4 other tests skip
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>     - shard-dg2:          [SKIP][258] ([i915#10433] / [i915#3458]) -> [SKIP][259] ([i915#3458])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][260] ([i915#3361]) -> [SKIP][261] ([i915#4281])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr@fbc-pr-basic:
>     - shard-dg2:          [SKIP][262] ([i915#1072] / [i915#9732]) -> [SKIP][263] ([i915#1072] / [i915#9673] / [i915#9732]) +10 other tests skip
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-2/igt@kms_psr@fbc-pr-basic.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-11/igt@kms_psr@fbc-pr-basic.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-cpu:
>     - shard-dg2:          [SKIP][264] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][265] ([i915#1072] / [i915#9732]) +9 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-11/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-1/igt@kms_psr@fbc-psr2-sprite-mmap-cpu.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][266] ([i915#9100]) -> [FAIL][267] ([i915#7484])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14865/shard-dg2-6/igt@perf@non-zero-reason@0-rcs0.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/shard-dg2-4/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
>   [i915#10070]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10070
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10166
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10386
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10446]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10446
>   [i915#10449]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10449
>   [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#11164]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11164
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
>   [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#5176]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
>   [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6805
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#8925]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8925
>   [i915#9010]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9010
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
>   [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
>   [i915#9408]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9408
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9779
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
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
>   * Linux: CI_DRM_14865 -> Patchwork_134316v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14865: 71fb583af6dea41793b38d947a991f06156f7f11 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7875: 44d48b5aec41357e90aa7990c8877ca807ff8d57 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134316v1: 71fb583af6dea41793b38d947a991f06156f7f11 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134316v1/index.html
