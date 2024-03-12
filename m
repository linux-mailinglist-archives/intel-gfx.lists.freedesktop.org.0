Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C80879655
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:32:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437D4112E74;
	Tue, 12 Mar 2024 14:32:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z+xYdsZP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E98B3112E74;
 Tue, 12 Mar 2024 14:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253935; x=1741789935;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=iMnAJRQb/SAGQKZN2Hd8U3X9CYULDFq43MG4ctty/v8=;
 b=Z+xYdsZPvmhd1piBR+lDn+PVx9UvBK4ggEy0x3EeUOP5l7Ta83xVQ+tx
 ywbwJOdLqLHXa2IRAPtOCUMFP9d2M/GrPx0j/9MUw2F8z4KaDa4ae2iAF
 RQVSVewc43aIowNtb+/4bbRwkI8XH8wMUV4A710DLsrW6Elap4aFlu+wd
 qtVIXWUHbzQBAwrRvPT2EpouoWKeBzwK48mPhzcnFow7HgXMN4FwSbszi
 +tjAPueELGVvGvxIYg+4PdYkc7dA5PmS0m1nJDEVE2Db4e9MCDnfcf//6
 C4U2sI8jUNGMahGlJE7lfRhWVe+HZyLSEVsanGjl7L4chGKH/nr5siWPj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="7912280"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="7912280"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:32:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11465434"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:32:09 -0700
Date: Tue, 12 Mar 2024 16:32:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>,
 I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/dp: Fix DSC state HW readout for SST connectors
Message-ID: <ZfBng81DmkifZIZI@ideak-desk.fi.intel.com>
References: <20240311145626.2454923-1-imre.deak@intel.com>
 <171023418337.694324.15888886638880573558@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171023418337.694324.15888886638880573558@8e613ede5ea5>
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

On Tue, Mar 12, 2024 at 09:03:03AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Fix DSC state HW readout for SST connectors
> URL   : https://patchwork.freedesktop.org/series/130986/
> State : failure

Thanks for the review, pushed to drm-intel-next with the Closes: gitlab
issue line added. The failures are unrelated see below.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14420_full -> Patchwork_130986v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_130986v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_130986v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (8 -> 8)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_130986v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_eio@context-create:
>     - shard-dg2:          NOTRUN -> [ABORT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@gem_eio@context-create.html
>     - shard-dg1:          NOTRUN -> [ABORT][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-19/igt@gem_eio@context-create.html

<4> [237.045073] ======================================================
<4> [237.045078] WARNING: possible circular locking dependency detected
<4> [237.045083] 6.8.0-Patchwork_130986v1-g61fa386186cb+ #1 Tainted: G     U            
<4> [237.045089] ------------------------------------------------------
<4> [237.045094] gem_eio/937 is trying to acquire lock:
<4> [237.045098] ffff88812d46b640 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: i915_hwmon_power_max_disable+0x43/0xb0 [i915]
<4> [237.045255] 
but task is already holding lock:
<4> [237.045260] ffff88810de2d8f0 (&gt->reset.mutex){+.+.}-{3:3}, at: intel_gt_reset+0x181/0x480 [i915]

No DP connectors on the above DG1, where the patch would make a difference.
The issue is already filed at:
https://gitlab.freedesktop.org/drm/intel/-/issues/10404
and
https://gitlab.freedesktop.org/drm/intel/-/issues/10367

>   * igt@gem_exec_await@wide-contexts:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_exec_await@wide-contexts.html

Connection lost after a series of GEM tests, no DP connector on the machine.

>   * igt@gem_exec_capture@capture@ccs0-smem:
>     - shard-dg2:          [PASS][4] -> [INCOMPLETE][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-2/igt@gem_exec_capture@capture@ccs0-smem.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_exec_capture@capture@ccs0-smem.html

Connection lost after a series of GEM tests, no DP connector on the machine.

>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [PASS][6] -> [INCOMPLETE][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-3/igt@i915_module_load@reload-with-fault-injection.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-9/igt@i915_module_load@reload-with-fault-injection.html

<6>[  129.204916] i915 0000:00:02.0: [drm:__i915_inject_probe_error [i915]] Injecting failure -19 at checkpoint 15 [intel_connector_register:121]
...
<4>[  129.209885] i915 0000:00:02.0: drm_WARN_ON(power_domains->init_wakeref)

No DP connectors. The issue is missing error handling during DRM connector
registration, filed at:
https://gitlab.freedesktop.org/drm/intel/-/issues/10047

>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
>     - shard-rkl:          [PASS][8] -> [FAIL][9] +1 other test fail
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-5/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

No DP connectors on the machine.

> 
>   * igt@kms_pm_rpm@cursor-dpms:
>     - shard-dg2:          [PASS][10] -> [ABORT][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-6/igt@kms_pm_rpm@cursor-dpms.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-7/igt@kms_pm_rpm@cursor-dpms.html

<4> [384.860378] ======================================================
<4> [384.860381] WARNING: possible circular locking dependency detected
<4> [384.860384] 6.8.0-Patchwork_130986v1-g61fa386186cb+ #1 Not tainted
<4> [384.860389] ------------------------------------------------------
<4> [384.860391] prometheus-node/462 is trying to acquire lock:
<4> [384.860396] ffffffff82764d80 (fs_reclaim){+.+.}-{0:0}, at: __kmalloc+0x9a/0x350
<4> [384.860419] 
but task is already holding lock:
<4> [384.860421] ffff888104aa7240 (&hwmon->hwmon_lock){+.+.}-{3:3}, at: hwm_energy+0x4b/0x100 [i915]

Same as the first issue.

> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg2:          [FAIL][12] ([i915#10378]) -> [FAIL][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-5/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14420_full and Patchwork_130986v1_full:
> 
> ### New IGT tests (2) ###
> 
>   * igt@kms_cursor_crc@cursor-random-64x21@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [4.38] s
> 
>   * igt@kms_cursor_crc@cursor-suspend@pipe-d-dp-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [7.72] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_130986v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#7701])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-hang@bcs0:
>     - shard-dg2:          NOTRUN -> [SKIP][15] ([i915#8414]) +10 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@drm_fdinfo@busy-hang@bcs0.html
> 
>   * igt@drm_fdinfo@busy-hang@rcs0:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#8414]) +5 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@drm_fdinfo@busy-hang@rcs0.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#8414]) +6 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@drm_fdinfo@busy-idle-check-all@vcs1.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#3555] / [i915#9323])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#9323])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][20] ([i915#7297])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
> 
>   * igt@gem_create@create-ext-cpu-access-big:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][21] ([i915#9364])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@gem_create@create-ext-cpu-access-big.html
> 
>   * igt@gem_create@create-ext-set-pat:
>     - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#8562])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_create@create-ext-set-pat.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [PASS][23] -> [FAIL][24] ([i915#6268])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-4/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-rkl:          [PASS][25] -> [FAIL][26] ([i915#10086]) +1 other test fail
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_ctx_persistence@hang:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#8555])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_ctx_persistence@hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#8555]) +1 other test skip
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_sseu@invalid-sseu:
>     - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#280])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_ctx_sseu@invalid-sseu.html
> 
>   * igt@gem_exec_balancer@bonded-true-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#4812]) +1 other test skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_exec_balancer@bonded-true-hang.html
> 
>   * igt@gem_exec_capture@capture-invisible@lmem0:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#6334]) +1 other test skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@gem_exec_capture@capture-invisible@lmem0.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#6334])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-glk:          NOTRUN -> [FAIL][33] ([i915#9606])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk8/igt@gem_exec_capture@many-4k-incremental.html
>     - shard-dg2:          NOTRUN -> [FAIL][34] ([i915#9606])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          NOTRUN -> [FAIL][35] ([i915#2846])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][36] ([i915#2842])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk4/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share:
>     - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3539] / [i915#4852]) +2 other tests skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_exec_fair@basic-pace-share.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-tglu:         [PASS][38] -> [FAIL][39] ([i915#2842]) +2 other tests fail
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-rkl:          [PASS][40] -> [FAIL][41] ([i915#2842]) +1 other test fail
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-4/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fence@submit67:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#4812])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_exec_fence@submit67.html
> 
>   * igt@gem_exec_flush@basic-uc-rw-default:
>     - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#3539] / [i915#4852]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-rw-default.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3539]) +1 other test skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_gttfill@multigpu-basic:
>     - shard-dg2:          NOTRUN -> [SKIP][45] ([i915#7697])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_exec_gttfill@multigpu-basic.html
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#7697])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_exec_gttfill@multigpu-basic.html
> 
>   * igt@gem_exec_reloc@basic-wc-read:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3281]) +7 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@gem_exec_reloc@basic-wc-read.html
> 
>   * igt@gem_exec_reloc@basic-write-read-active:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#3281]) +15 other tests skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_exec_reloc@basic-write-read-active.html
> 
>   * igt@gem_exec_reloc@basic-write-wc-noreloc:
>     - shard-mtlp:         NOTRUN -> [SKIP][49] ([i915#3281]) +3 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#4537] / [i915#4812])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_suspend@basic-s4-devices@lmem0:
>     - shard-dg2:          [PASS][51] -> [ABORT][52] ([i915#7975] / [i915#8213])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-11/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@gem_exec_suspend@basic-s4-devices@lmem0.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#4860])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences.html
> 
>   * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
>     - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4860]) +3 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#4423] / [i915#4565])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-verify-multi-ccs@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][56] ([i915#4613]) +5 other tests skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk4/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs@lmem0:
>     - shard-dg2:          NOTRUN -> [FAIL][57] ([i915#10378])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_lmem_swapping@verify-ccs@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#8289])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap@basic-small-bo:
>     - shard-mtlp:         NOTRUN -> [SKIP][59] ([i915#4083]) +1 other test skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_mmap@basic-small-bo.html
> 
>   * igt@gem_mmap@pf-nonblock:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4083]) +2 other tests skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_mmap@pf-nonblock.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-x:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4077]) +17 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@gem_mmap_gtt@fault-concurrent-x.html
> 
>   * igt@gem_mmap_gtt@medium-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4077]) +10 other tests skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_mmap_gtt@medium-copy-odd.html
> 
>   * igt@gem_mmap_wc@invalid-flags:
>     - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#4083]) +5 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_mmap_wc@invalid-flags.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-dg1:          NOTRUN -> [SKIP][64] ([i915#3282]) +5 other tests skip
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3282]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@gem_pread@snoop.html
>     - shard-mtlp:         NOTRUN -> [SKIP][66] ([i915#3282])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_pread@snoop.html
> 
>   * igt@gem_pxp@regular-baseline-src-copy-readible:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4270]) +3 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@gem_pxp@regular-baseline-src-copy-readible.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#4270]) +3 other tests skip
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#4270])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#4079]) +1 other test skip
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][71] ([i915#4885]) +1 other test skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4885])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_basic:
>     - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#4079])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gem_tiled_pread_basic.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#4079])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#3297]) +2 other tests skip
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@forbidden-operations:
>     - shard-dg2:          NOTRUN -> [SKIP][76] ([i915#3282] / [i915#3297])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_userptr_blits@forbidden-operations.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3297] / [i915#4880])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@gem_userptr_blits@map-fixed-invalidate.html
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#3297] / [i915#4880])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-17/igt@gem_userptr_blits@map-fixed-invalidate.html
> 
>   * igt@gem_userptr_blits@unsync-overlap:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#3297])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gem_userptr_blits@unsync-overlap.html
> 
>   * igt@gem_userptr_blits@unsync-unmap:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#3297])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@gem_userptr_blits@unsync-unmap.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-mtlp:         NOTRUN -> [SKIP][81] +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#2856])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@bb-start-far:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#2527])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@gen9_exec_parse@bb-start-far.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#2856]) +5 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@load:
>     - shard-mtlp:         NOTRUN -> [SKIP][85] ([i915#6227])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@i915_module_load@load.html
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#6227])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@i915_module_load@load.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][87] ([i915#9820] / [i915#9849])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-dg2:          [PASS][88] -> [ABORT][89] ([i915#10367])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-10/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#6621])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_pm_rps@min-max-config-idle:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#6621])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@i915_pm_rps@min-max-config-idle.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park@gt0:
>     - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#8925])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@i915_pm_rps@thresholds-idle-park@gt0.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#4387])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@i915_pm_sseu@full-enable.html
>     - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4387])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][95] ([i915#6188])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-dg1:          NOTRUN -> [SKIP][96] ([i915#5723])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-19/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][97] ([i915#9311])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#4077]) +5 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#4212])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg1:          NOTRUN -> [SKIP][100] ([i915#4212]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#8709]) +3 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-2-y-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#8709]) +7 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-4-y-rc-ccs.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#8709]) +11 other tests skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-dp-4-4-rc-ccs-cc.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#9531])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
>     - shard-glk:          NOTRUN -> [SKIP][105] ([i915#1769])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][106] ([i915#1769] / [i915#3555])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#4538] / [i915#5286]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [PASS][108] -> [FAIL][109] ([i915#5138])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#3638]) +2 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][111] ([i915#5190]) +6 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
>     - shard-mtlp:         NOTRUN -> [SKIP][112] ([i915#6187])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-tglu:         [PASS][113] -> [FAIL][114] ([i915#3743]) +1 other test fail
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4538] / [i915#5190]) +12 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][116] ([i915#4538]) +2 other tests skip
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][117] ([i915#2705])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][118] ([i915#6095]) +59 other tests skip
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-15/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#10278])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#6095]) +11 other tests skip
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-d-edp-1.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#6095]) +53 other tests skip
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#10307]) +119 other tests skip
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#10278])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#7213]) +3 other tests skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#4087]) +3 other tests skip
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_chamelium_frames@hdmi-crc-fast:
>     - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#7828]) +11 other tests skip
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_chamelium_frames@hdmi-crc-fast.html
> 
>   * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#7828]) +4 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][128] ([i915#7828]) +1 other test skip
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#7118] / [i915#9424])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@content-type-change:
>     - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#9424])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_content_protection@content-type-change.html
>     - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#9424])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_content_protection@content-type-change.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#3299]) +1 other test skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#3359])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#3359]) +1 other test skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#3359]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-32x10:
>     - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#3555]) +4 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_cursor_crc@cursor-sliding-32x10.html
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#3555] / [i915#8814])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_cursor_crc@cursor-sliding-32x10.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#9809]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-glk:          NOTRUN -> [FAIL][139] ([i915#2346])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#4213])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#4103] / [i915#4213]) +1 other test skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-dg2:          [PASS][142] -> [DMESG-WARN][143] ([i915#10166])
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-6/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#9723])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-2/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-1.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#9227])
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#9723])
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-17/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-4.html
> 
>   * igt@kms_display_modes@extended-mode-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][147] ([i915#3555]) +3 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_display_modes@extended-mode-basic.html
> 
>   * igt@kms_dp_aux_dev:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#1257])
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_dp_aux_dev.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#8812])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_draw_crc@draw-method-mmap-gtt.html
>     - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8812])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][151] ([i915#3840])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][152] ([i915#3555] / [i915#3840])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-output-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#3555] / [i915#3840])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats.html
> 
>   * igt@kms_feature_discovery@display-3x:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#1839])
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_feature_discovery@display-3x.html
> 
>   * igt@kms_feature_discovery@psr1:
>     - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#658])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_feature_discovery@psr1.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#3637]) +3 other tests skip
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@2x-plain-flip:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#9934]) +2 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-17/igt@kms_flip@2x-plain-flip.html
> 
>   * igt@kms_flip@flip-vs-fences:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#8381]) +2 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_flip@flip-vs-fences.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#2587] / [i915#2672]) +2 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][160] ([i915#3555] / [i915#8810])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][161] ([i915#2672]) +4 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#2672] / [i915#3555])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg2:          [PASS][163] -> [FAIL][164] ([i915#6880]) +1 other test fail
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move:
>     - shard-mtlp:         NOTRUN -> [SKIP][165] ([i915#1825]) +7 other tests skip
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt:
>     - shard-snb:          [PASS][166] -> [SKIP][167]
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#8708]) +29 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
>     - shard-dg1:          NOTRUN -> [SKIP][169] +33 other tests skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-tiling-4:
>     - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#5439])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-19/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#8708])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
>     - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#3458]) +9 other tests skip
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#8708]) +10 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move:
>     - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#5354]) +45 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@plane-fbc-rte:
>     - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#10070])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
>     - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#10070])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_frontbuffer_tracking@plane-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#4423] / [i915#8708])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#3458]) +20 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_hdr@static-swap:
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#3555] / [i915#8228]) +1 other test skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_hdr@static-swap.html
> 
>   * igt@kms_hdr@static-toggle-suspend:
>     - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#3555] / [i915#8228]) +3 other tests skip
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@kms_hdr@static-toggle-suspend.html
> 
>   * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][181] ([i915#4573]) +1 other test fail
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk4/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_multiple@tiling-y:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#8806])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_plane_multiple@tiling-y.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][183] ([i915#8292])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#9423]) +7 other tests skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#5176] / [i915#9423]) +3 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#9423]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][187] ([i915#8875])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#5235]) +7 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#5235]) +3 other tests skip
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#5235]) +2 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3555] / [i915#5235])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-d-edp-1.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][192] ([i915#5235] / [i915#9423]) +7 other tests skip
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#5354]) +2 other tests skip
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#9340])
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#9519])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [PASS][196] -> [SKIP][197] ([i915#9519])
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_prime@basic-modeset-hybrid:
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#6524])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_prime@basic-modeset-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#6524])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_prime@d3hot.html
>     - shard-dg2:          NOTRUN -> [SKIP][200] ([i915#6524] / [i915#6805])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][201] +35 other tests skip
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_psr2_sf@fbc-cursor-plane-move-continuous-exceed-sf.html
> 
>   * igt@kms_psr@fbc-pr-cursor-mmap-cpu:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#9732]) +12 other tests skip
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_psr@fbc-pr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@fbc-psr-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#9732]) +18 other tests skip
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-plane-move.html
> 
>   * igt@kms_psr@fbc-psr2-no-drrs@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#9688]) +2 other tests skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_psr@fbc-psr2-no-drrs@edp-1.html
> 
>   * igt@kms_psr@psr-primary-mmap-cpu:
>     - shard-dg2:          NOTRUN -> [SKIP][205] ([i915#9673] / [i915#9732]) +6 other tests skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_psr@psr-primary-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-sprite-plane-onoff:
>     - shard-glk:          NOTRUN -> [SKIP][206] +311 other tests skip
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk8/igt@kms_psr@psr2-sprite-plane-onoff.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#5289])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][208] ([i915#5289])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
>     - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#4235])
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [PASS][210] -> [FAIL][211] ([i915#9196]) +1 other test fail
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1:
>     - shard-mtlp:         [PASS][212] -> [FAIL][213] ([i915#9196])
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-c-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1:
>     - shard-tglu:         [PASS][214] -> [FAIL][215] ([i915#9196])
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][216] ([i915#2437])
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@kms_writeback@writeback-check-output.html
>     - shard-glk:          NOTRUN -> [SKIP][217] ([i915#2437])
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][218] -> [FAIL][219] ([i915#4349]) +3 other tests fail
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][220] ([i915#6806])
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-6/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][221] ([i915#5793])
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-dg1:          NOTRUN -> [SKIP][222] ([i915#8516])
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][223] ([i915#3708]) +1 other test skip
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-2/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-dg2:          NOTRUN -> [SKIP][224] ([i915#9917])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@sriov_basic@bind-unbind-vf.html
>     - shard-dg1:          NOTRUN -> [SKIP][225] ([i915#9917]) +1 other test skip
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-dg1:          NOTRUN -> [FAIL][226] ([i915#9781])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@syncobj_wait@invalid-wait-zero-handles:
>     - shard-dg2:          NOTRUN -> [FAIL][227] ([i915#9779])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@syncobj_wait@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_create_bo@create-bo-zeroed:
>     - shard-mtlp:         NOTRUN -> [SKIP][228] ([i915#2575]) +1 other test skip
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@v3d/v3d_create_bo@create-bo-zeroed.html
> 
>   * igt@v3d/v3d_job_submission@threaded-job-submission:
>     - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#2575]) +16 other tests skip
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@v3d/v3d_job_submission@threaded-job-submission.html
> 
>   * igt@v3d/v3d_submit_cl@bad-in-sync:
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#2575]) +8 other tests skip
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@v3d/v3d_submit_cl@bad-in-sync.html
> 
>   * igt@vc4/vc4_perfmon@destroy-invalid-perfmon:
>     - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#7711]) +3 other tests skip
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-16/igt@vc4/vc4_perfmon@destroy-invalid-perfmon.html
> 
>   * igt@vc4/vc4_purgeable_bo@access-purged-bo-mem:
>     - shard-mtlp:         NOTRUN -> [SKIP][232] ([i915#7711]) +2 other tests skip
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-2/igt@vc4/vc4_purgeable_bo@access-purged-bo-mem.html
> 
>   * igt@vc4/vc4_wait_bo@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#7711]) +11 other tests skip
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@vc4/vc4_wait_bo@bad-bo.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_isolation@preservation-s3@rcs0:
>     - shard-rkl:          [FAIL][234] ([i915#10086]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@gem_ctx_isolation@preservation-s3@rcs0.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-5/igt@gem_ctx_isolation@preservation-s3@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [FAIL][236] ([i915#2842]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-rkl:          [FAIL][238] ([i915#2842]) -> [PASS][239]
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglu:         [FAIL][240] ([i915#2842]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-8/igt@gem_exec_fair@basic-pace@rcs0.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-5/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [INCOMPLETE][242] ([i915#5566]) -> [PASS][243]
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-glk4/igt@gen9_exec_parse@allowed-single.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-glk8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0:
>     - shard-dg1:          [FAIL][244] ([i915#3591]) -> [PASS][245]
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-bcs0.html
> 
>   * igt@i915_pm_rpm@gem-idle:
>     - shard-dg1:          [ABORT][246] ([i915#10367]) -> [PASS][247] +1 other test pass
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg1-18/igt@i915_pm_rpm@gem-idle.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg1-17/igt@i915_pm_rpm@gem-idle.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglu:         [FAIL][248] ([i915#3743]) -> [PASS][249]
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_cursor_legacy@torture-move@pipe-a:
>     - shard-snb:          [DMESG-WARN][250] ([i915#10166]) -> [PASS][251]
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-snb1/igt@kms_cursor_legacy@torture-move@pipe-a.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-snb4/igt@kms_cursor_legacy@torture-move@pipe-a.html
> 
>   * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [FAIL][252] ([i915#2122]) -> [PASS][253]
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-rkl:          [SKIP][254] ([i915#9519]) -> [PASS][255] +3 other tests pass
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1:
>     - shard-mtlp:         [FAIL][256] ([i915#9196]) -> [PASS][257]
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-b-edp-1.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-tglu:         [FAIL][258] ([i915#9196]) -> [PASS][259]
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-tglu-6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-tglu-10/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-snb:          [INCOMPLETE][260] -> [SKIP][261]
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-snb7/igt@kms_content_protection@lic-type-1.html
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-snb7/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-rkl:          [SKIP][262] ([i915#4816]) -> [SKIP][263] ([i915#4070] / [i915#4816])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-4/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-rkl:          [SKIP][264] ([i915#3361]) -> [FAIL][265] ([i915#9295])
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-5/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-rkl:          [SKIP][266] ([i915#4281]) -> [SKIP][267] ([i915#3361])
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-rkl-5/igt@kms_pm_dc@dc9-dpms.html
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-rkl-4/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_psr@fbc-psr-primary-mmap-gtt:
>     - shard-dg2:          [SKIP][268] ([i915#9673] / [i915#9732]) -> [SKIP][269] ([i915#9732]) +6 other tests skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-11/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-5/igt@kms_psr@fbc-psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr-suspend:
>     - shard-dg2:          [SKIP][270] ([i915#9732]) -> [SKIP][271] ([i915#9673] / [i915#9732]) +4 other tests skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-5/igt@kms_psr@fbc-psr-suspend.html
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-11/igt@kms_psr@fbc-psr-suspend.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][272] ([i915#9100]) -> [FAIL][273] ([i915#7484])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14420/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [i915#10070]: https://gitlab.freedesktop.org/drm/intel/issues/10070
>   [i915#10086]: https://gitlab.freedesktop.org/drm/intel/issues/10086
>   [i915#10166]: https://gitlab.freedesktop.org/drm/intel/issues/10166
>   [i915#10278]: https://gitlab.freedesktop.org/drm/intel/issues/10278
>   [i915#10307]: https://gitlab.freedesktop.org/drm/intel/issues/10307
>   [i915#10367]: https://gitlab.freedesktop.org/drm/intel/issues/10367
>   [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3361]: https://gitlab.freedesktop.org/drm/intel/issues/3361
>   [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
>   [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/intel/issues/4423
>   [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/intel/issues/4565
>   [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
>   [i915#4816]: https://gitlab.freedesktop.org/drm/intel/issues/4816
>   [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/intel/issues/4880
>   [i915#4885]: https://gitlab.freedesktop.org/drm/intel/issues/4885
>   [i915#5138]: https://gitlab.freedesktop.org/drm/intel/issues/5138
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#5793]: https://gitlab.freedesktop.org/drm/intel/issues/5793
>   [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
>   [i915#6187]: https://gitlab.freedesktop.org/drm/intel/issues/6187
>   [i915#6188]: https://gitlab.freedesktop.org/drm/intel/issues/6188
>   [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#6805]: https://gitlab.freedesktop.org/drm/intel/issues/6805
>   [i915#6806]: https://gitlab.freedesktop.org/drm/intel/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
>   [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
>   [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
>   [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/intel/issues/7697
>   [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
>   [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
>   [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
>   [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/intel/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
>   [i915#8381]: https://gitlab.freedesktop.org/drm/intel/issues/8381
>   [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
>   [i915#8516]: https://gitlab.freedesktop.org/drm/intel/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/intel/issues/8555
>   [i915#8562]: https://gitlab.freedesktop.org/drm/intel/issues/8562
>   [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/intel/issues/8709
>   [i915#8806]: https://gitlab.freedesktop.org/drm/intel/issues/8806
>   [i915#8810]: https://gitlab.freedesktop.org/drm/intel/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/intel/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/intel/issues/8814
>   [i915#8875]: https://gitlab.freedesktop.org/drm/intel/issues/8875
>   [i915#8925]: https://gitlab.freedesktop.org/drm/intel/issues/8925
>   [i915#9100]: https://gitlab.freedesktop.org/drm/intel/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/intel/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/intel/issues/9227
>   [i915#9295]: https://gitlab.freedesktop.org/drm/intel/issues/9295
>   [i915#9311]: https://gitlab.freedesktop.org/drm/intel/issues/9311
>   [i915#9323]: https://gitlab.freedesktop.org/drm/intel/issues/9323
>   [i915#9340]: https://gitlab.freedesktop.org/drm/intel/issues/9340
>   [i915#9364]: https://gitlab.freedesktop.org/drm/intel/issues/9364
>   [i915#9423]: https://gitlab.freedesktop.org/drm/intel/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/intel/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/intel/issues/9519
>   [i915#9531]: https://gitlab.freedesktop.org/drm/intel/issues/9531
>   [i915#9606]: https://gitlab.freedesktop.org/drm/intel/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9688]: https://gitlab.freedesktop.org/drm/intel/issues/9688
>   [i915#9723]: https://gitlab.freedesktop.org/drm/intel/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9779]: https://gitlab.freedesktop.org/drm/intel/issues/9779
>   [i915#9781]: https://gitlab.freedesktop.org/drm/intel/issues/9781
>   [i915#9809]: https://gitlab.freedesktop.org/drm/intel/issues/9809
>   [i915#9820]: https://gitlab.freedesktop.org/drm/intel/issues/9820
>   [i915#9849]: https://gitlab.freedesktop.org/drm/intel/issues/9849
>   [i915#9917]: https://gitlab.freedesktop.org/drm/intel/issues/9917
>   [i915#9934]: https://gitlab.freedesktop.org/drm/intel/issues/9934
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14420 -> Patchwork_130986v1
>   * Piglit: None -> piglit_4509
> 
>   CI-20190529: 20190529
>   CI_DRM_14420: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7754: 5fb3239299b5be2c110aafa483c9e197c53f8bb8 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_130986v1: 61fa386186cb302cf26e29aef76d5b1a6ffe57ad @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_130986v1/index.html
