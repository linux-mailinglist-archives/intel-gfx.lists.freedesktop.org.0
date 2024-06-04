Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D0B8FB5E2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 16:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266E210E49F;
	Tue,  4 Jun 2024 14:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XxRQf9j7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7B9110E49F;
 Tue,  4 Jun 2024 14:44:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717512290; x=1749048290;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3PsZhEfKM3gnLJ3a4zkg6KnW03PRAnnxwSrThGpPHnY=;
 b=XxRQf9j7R5xMIl9z/CgTJhuyWNIFIKeRzc0ZQH2bSZrCzNlFSE/tMkpv
 YZQLCELq8W2nqb41uA8wI2fSKGiVtT1ZZC2hFS3h+ucU5Vhm5CkO/6ey7
 XQGY8Pp38WG0JYdwmdBlEPUtx1xoHgh5iFxA3xkwAJ+zpLjf69a/egSt/
 NC/FbgkliTpuV7sA5RXG5Yk6QKr36L+K7p2iCvPagwVSGOnvzXQSwGz/7
 0q6+Qekx1RsRKKfuF08XSQy/05QjsIJ3aWLuADQOnzhem5/uDdSKy5E6b
 zeqKn1H2RWmz8nml1Obo0av33JI3ay6CS5riWThYTstLeTyzUKIBbhVvF Q==;
X-CSE-ConnectionGUID: xdTrkIDnRJGJeqbGrmAezg==
X-CSE-MsgGUID: XFSiDd6ISuS4aFfI6LF60A==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="25463958"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="25463958"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 07:44:50 -0700
X-CSE-ConnectionGUID: BTUyEc8/Qjeg/bK3+vV6kw==
X-CSE-MsgGUID: 6Vu0BRZnRxCff796BLpSSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="37320887"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.251.212.221])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 07:44:48 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.IGT: failure for drm/i915/gt: Fix
 potential UAF by revoke of fence registers
Date: Tue, 04 Jun 2024 16:44:45 +0200
Message-ID: <2937615.e9J7NaK4W3@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <171749530312.2263479.15802986412972947185@8e613ede5ea5>
References: <20240603195446.297690-2-janusz.krzysztofik@linux.intel.com>
 <171749530312.2263479.15802986412972947185@8e613ede5ea5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Tuesday, 4 June 2024 12:01:43 GMT+2 Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Fix potential UAF by revoke of fence registers
> URL   : https://patchwork.freedesktop.org/series/134411/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14870_full -> Patchwork_134411v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_134411v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_134411v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (9 -> 10)
> ------------------------------
> 
>   Additional (1): shard-snb-0 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_134411v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a3:
>     - shard-dg1:          NOTRUN -> [FAIL][1] +11 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-13/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a3.html

<3> [484.349238] e1000e 0000:00:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend [e1000e] returns -2
<3> [484.349254] e1000e 0000:00:1f.6: PM: dpm_run_callback(): pci_pm_suspend returns -2
<3> [484.349262] e1000e 0000:00:1f.6: PM: failed to suspend async: error -2
<7> [484.416988] PM: suspend of devices aborted after 129.028 msecs
<7> [484.417012] PM: start suspend of devices aborted after 341.180 msecs
<3> [484.417026] PM: Some devices failed to suspend, or early wake event detected

Ethernet device/driver issue, not even related to i915, not speaking of the 
patch under test.

> 
>   * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [FAIL][2] +7 other tests fail
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-2/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html

The same as above.

@I915-ci-infra, please update CI filters and re-report.

Thanks,
Janusz


> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_14870_full and Patchwork_134411v1_full:
> 
> ### New IGT tests (16) ###
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.57] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-b-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.42] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-c-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.42] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-d-hdmi-a-4:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.41] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.45] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.33] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.36] s
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.37] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0-25@pipe-d-hdmi-a-2:
>     - Statuses : 1 skip(s)
>     - Exec time: [0.00] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-c-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.10] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-d-hdmi-a-2:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-a-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-b-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.13] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-c-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.12] s
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-factor-0-25@pipe-d-hdmi-a-3:
>     - Statuses : 1 pass(s)
>     - Exec time: [0.09] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_134411v1_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][3] ([i915#8411]) +1 other test skip
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@api_intel_bb@blit-reloc-keep-cache.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#8411]) +1 other test skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-dg2:          NOTRUN -> [INCOMPLETE][5] ([i915#5507])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-5/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@drm_fdinfo@all-busy-check-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][6] ([i915#8414]) +6 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@drm_fdinfo@all-busy-check-all.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@bcs0:
>     - shard-dg1:          NOTRUN -> [SKIP][7] ([i915#8414]) +4 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@drm_fdinfo@most-busy-check-all@bcs0.html
> 
>   * igt@drm_fdinfo@most-busy-check-all@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][8] ([i915#7742])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@drm_fdinfo@most-busy-check-all@rcs0.html
> 
>   * igt@gem_basic@multigpu-create-close:
>     - shard-dg1:          NOTRUN -> [SKIP][9] ([i915#7697]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_basic@multigpu-create-close.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#7697])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-tglu:         [PASS][11] -> [FAIL][12] ([i915#6268])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-tglu-5/igt@gem_ctx_exec@basic-nohangcheck.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-tglu-8/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_ctx_freq@sysfs@gt0:
>     - shard-dg2:          [PASS][13] -> [FAIL][14] ([i915#9561])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-2/igt@gem_ctx_freq@sysfs@gt0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_ctx_freq@sysfs@gt0.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hostile:
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8555])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-hostile.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@gem_ctx_sseu@engines.html
>     - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#280]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglu:         [PASS][18] -> [INCOMPLETE][19] ([i915#10513])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-tglu-7/igt@gem_eio@kms.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-tglu-7/igt@gem_eio@kms.html
>     - shard-dg1:          NOTRUN -> [INCOMPLETE][20] ([i915#10513])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_balancer@parallel-out-fence:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@gem_exec_balancer@parallel-out-fence.html
> 
>   * igt@gem_exec_balancer@sliced:
>     - shard-mtlp:         NOTRUN -> [SKIP][22] ([i915#4812])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_exec_balancer@sliced.html
> 
>   * igt@gem_exec_capture@capture-invisible@smem0:
>     - shard-glk:          NOTRUN -> [SKIP][23] ([i915#6334])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@gem_exec_capture@capture-invisible@smem0.html
> 
>   * igt@gem_exec_capture@many-4k-incremental:
>     - shard-dg1:          NOTRUN -> [FAIL][24] ([i915#9606])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_exec_capture@many-4k-incremental.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-dg2:          [PASS][25] -> [TIMEOUT][26] ([i915#3778] / [i915#7016])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-3/igt@gem_exec_endless@dispatch@bcs0.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-7/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3539] / [i915#4852]) +1 other test skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-rrul:
>     - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_exec_fair@basic-none-rrul.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-glk:          NOTRUN -> [FAIL][29] ([i915#2842])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-rkl:          NOTRUN -> [FAIL][30] ([i915#2842]) +2 other tests fail
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-gtt-active:
>     - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3281])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_exec_reloc@basic-gtt-active.html
> 
>   * igt@gem_exec_reloc@basic-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][32] ([i915#3281]) +7 other tests skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_exec_reloc@basic-wc.html
> 
>   * igt@gem_exec_reloc@basic-wc-read-noreloc:
>     - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281]) +11 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html
> 
>   * igt@gem_exec_reloc@basic-write-wc:
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#3281]) +3 other tests skip
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_exec_reloc@basic-write-wc.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts:
>     - shard-dg1:          NOTRUN -> [SKIP][35] ([i915#4812])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_exec_schedule@preempt-queue-contexts.html
> 
>   * igt@gem_fence_thrash@bo-copy:
>     - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#4860]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_fence_thrash@bo-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-multi@lmem0:
>     - shard-dg1:          NOTRUN -> [FAIL][37] ([i915#10378])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>     - shard-dg2:          [PASS][38] -> [FAIL][39] ([i915#10378])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-1/igt@gem_lmem_swapping@heavy-multi@lmem0.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-8/igt@gem_lmem_swapping@heavy-multi@lmem0.html
> 
>   * igt@gem_lmem_swapping@heavy-random@lmem0:
>     - shard-dg1:          [PASS][40] -> [FAIL][41] ([i915#10378])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg1-16/igt@gem_lmem_swapping@heavy-random@lmem0.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-16/igt@gem_lmem_swapping@heavy-random@lmem0.html
> 
>   * igt@gem_lmem_swapping@parallel-multi:
>     - shard-rkl:          NOTRUN -> [SKIP][42] ([i915#4613]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#4613])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          NOTRUN -> [TIMEOUT][44] ([i915#5493])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][45] ([i915#4613]) +2 other tests skip
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_madvise@dontneed-before-exec:
>     - shard-mtlp:         NOTRUN -> [SKIP][46] ([i915#3282])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_madvise@dontneed-before-exec.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#4083]) +5 other tests skip
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@basic-small-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#4077])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_mmap_gtt@basic-small-bo.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
>     - shard-dg1:          NOTRUN -> [SKIP][49] ([i915#4077]) +9 other tests skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
>     - shard-mtlp:         NOTRUN -> [SKIP][50] ([i915#4083])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_mmap_wc@write-cpu-read-wc-unflushed.html
> 
>   * igt@gem_partial_pwrite_pread@reads-snoop:
>     - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#3282]) +7 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_partial_pwrite_pread@reads-snoop.html
> 
>   * igt@gem_pxp@display-protected-crc:
>     - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4270]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_pxp@display-protected-crc.html
> 
>   * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
>     - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#4270]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
> 
>   * igt@gem_pxp@protected-raw-src-copy-not-readible:
>     - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#4270]) +1 other test skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@gem_pxp@protected-raw-src-copy-not-readible.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-execution:
>     - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4270])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_pxp@verify-pxp-stale-buf-execution.html
> 
>   * igt@gem_readwrite@write-bad-handle:
>     - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#3282])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_readwrite@write-bad-handle.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-x-tiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][57] ([i915#8428])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gem_render_copy@y-tiled-to-vebox-x-tiled.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled:
>     - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#5190] / [i915#8428])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled.html
> 
>   * igt@gem_set_tiling_vs_pwrite:
>     - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#3282]) +7 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@gem_set_tiling_vs_pwrite.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][60] ([i915#4885])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#4079]) +1 other test skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#3297]) +1 other test skip
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-dg1:          NOTRUN -> [FAIL][63] ([i915#10177])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-mtlp:         NOTRUN -> [SKIP][64] ([i915#2856])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-chained:
>     - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#2527])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
> 
>   * igt@gen9_exec_parse@bb-secure:
>     - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#2856])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@gen9_exec_parse@bb-secure.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#2527]) +2 other tests skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@load:
>     - shard-dg2:          NOTRUN -> [SKIP][68] ([i915#6227])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@i915_module_load@load.html
> 
>   * igt@i915_pm_freq_api@freq-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#8399])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@i915_pm_freq_api@freq-suspend.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
>     - shard-dg1:          [PASS][70] -> [FAIL][71] ([i915#3591])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg1-18/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-13/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#6621])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#5723])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock@memory_region:
>     - shard-dg1:          NOTRUN -> [DMESG-WARN][74] ([i915#9311])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@i915_selftest@mock@memory_region.html
> 
>   * igt@i915_suspend@basic-s2idle-without-i915:
>     - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#10031])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@i915_suspend@basic-s2idle-without-i915.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-dg1:          NOTRUN -> [FAIL][76] ([i915#10031]) +1 other test fail
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
>     - shard-mtlp:         NOTRUN -> [SKIP][77] ([i915#4212])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
> 
>   * igt@kms_addfb_basic@tile-pitch-mismatch:
>     - shard-dg1:          NOTRUN -> [SKIP][78] ([i915#4212]) +2 other tests skip
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_addfb_basic@tile-pitch-mismatch.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc:
>     - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#8709]) +11 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-edp-1-4-rc-ccs-cc.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][80] ([i915#8709]) +7 other tests skip
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-13/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-a-hdmi-a-3-y-rc-ccs.html
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
>     - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#1769] / [i915#3555])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
> 
>   * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>     - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#5286]) +6 other tests skip
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#4538] / [i915#5286]) +4 other tests skip
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3638]) +2 other tests skip
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3638]) +3 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
>     - shard-dg2:          NOTRUN -> [SKIP][86] ([i915#4538] / [i915#5190]) +1 other test skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][87] +40 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][88] ([i915#4538]) +5 other tests skip
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_joiner@basic:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10656]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_big_joiner@basic.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][90] ([i915#6095]) +87 other tests skip
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#10278])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_ccs@bad-rotation-90-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][92] ([i915#6095]) +15 other tests skip
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-edp-1.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#10307] / [i915#6095]) +167 other tests skip
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#6095]) +55 other tests skip
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs:
>     - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#10278])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-xe2-ccs.html
> 
>   * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2:
>     - shard-glk:          NOTRUN -> [SKIP][96] +136 other tests skip
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-2.html
> 
>   * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#7213]) +3 other tests skip
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#4087]) +3 other tests skip
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-2/igt@kms_cdclk@plane-scaling@pipe-d-hdmi-a-2.html
> 
>   * igt@kms_chamelium_color@ctm-limited-range:
>     - shard-mtlp:         NOTRUN -> [SKIP][99] +3 other tests skip
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_chamelium_color@ctm-limited-range.html
> 
>   * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
>     - shard-mtlp:         NOTRUN -> [SKIP][100] ([i915#7828]) +1 other test skip
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
>     - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#7828]) +8 other tests skip
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#7828]) +8 other tests skip
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
>     - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#7828]) +1 other test skip
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#7116] / [i915#9424])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - shard-dg1:          NOTRUN -> [SKIP][105] ([i915#3299])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_content_protection@dp-mst-type-1.html
> 
>   * igt@kms_content_protection@lic-type-0:
>     - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#9424])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_content_protection@lic-type-0.html
> 
>   * igt@kms_content_protection@mei-interface:
>     - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#9424]) +1 other test skip
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#7118])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_content_protection@srm.html
>     - shard-dg1:          NOTRUN -> [SKIP][109] ([i915#7116])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_content_protection@srm.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x32:
>     - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3555]) +4 other tests skip
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-512x512:
>     - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3359]) +2 other tests skip
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-512x512.html
>     - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#3359]) +1 other test skip
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-random-max-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][113] ([i915#3555] / [i915#8814]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-max-size.html
> 
>   * igt@kms_cursor_crc@cursor-sliding-512x512:
>     - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#3359])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_cursor_crc@cursor-sliding-512x512.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][115] ([i915#9809]) +2 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>     - shard-snb:          [PASS][116] -> [SKIP][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#9723])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-2.html
> 
>   * igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#9227])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-6/igt@kms_dirtyfb@fbc-dirtyfb-ioctl@a-hdmi-a-3.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-dg1:          NOTRUN -> [SKIP][120] ([i915#8588])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3804])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_draw_crc@draw-method-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][122] ([i915#3555] / [i915#8812])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_draw_crc@draw-method-mmap-gtt.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#3555] / [i915#3840])
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr:
>     - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3955])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#1839])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_feature_discovery@display-4x.html
>     - shard-dg1:          NOTRUN -> [SKIP][127] ([i915#1839]) +1 other test skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@psr2:
>     - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#658])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg1:          NOTRUN -> [SKIP][129] ([i915#4881])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][130] ([i915#9934]) +2 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1:
>     - shard-snb:          [PASS][131] -> [FAIL][132] ([i915#2122])
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-snb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-snb7/igt@kms_flip@2x-flip-vs-blocking-wf-vblank@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-mtlp:         NOTRUN -> [SKIP][133] ([i915#3637]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][134] +4 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2672]) +2 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#2587] / [i915#2672])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][137] ([i915#8810])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#2672]) +1 other test skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#2672] / [i915#3555])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs-downscaling@pipe-a-default-mode.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#5354]) +7 other tests skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#1825]) +35 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][142] ([i915#1825]) +6 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
>     - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#3023]) +22 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][144] ([i915#8708]) +13 other tests skip
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3458]) +4 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3458]) +14 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#8708]) +2 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#8708]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_getfb@getfb-reject-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#6118])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_getfb@getfb-reject-ccs.html
> 
>   * igt@kms_hdr@invalid-hdr:
>     - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#3555] / [i915#8228])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_hdr@invalid-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3555] / [i915#8228])
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#3555] / [i915#8228])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][153] ([i915#7862]) +1 other test fail
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html
> 
>   * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [FAIL][154] ([i915#10647]) +1 other test fail
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [FAIL][155] ([i915#8292])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [FAIL][156] ([i915#8292])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#9423]) +3 other tests skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#9423]) +11 other tests skip
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-1/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9423]) +7 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-13/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-c-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#5235] / [i915#9423]) +15 other tests skip
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-6/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#5235]) +7 other tests skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-1/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][162] ([i915#5235]) +11 other tests skip
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-d-hdmi-a-4.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#5354])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_backlight@fade-with-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#5354])
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#9685])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#9685])
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][167] -> [SKIP][168] ([i915#9519])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-1/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9519]) +1 other test skip
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-dg2:          [PASS][170] -> [SKIP][171] ([i915#9519]) +2 other tests skip
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#6524])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_prime@basic-crc-hybrid.html
>     - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#6524])
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area:
>     - shard-dg1:          NOTRUN -> [SKIP][174] +50 other tests skip
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_psr2_sf@fbc-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#4348])
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#9683])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#9683])
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@pr-primary-render:
>     - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#9688]) +2 other tests skip
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_psr@pr-primary-render.html
> 
>   * igt@kms_psr@psr2-cursor-plane-move:
>     - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_psr@psr2-cursor-plane-move.html
> 
>   * igt@kms_psr@psr2-primary-mmap-gtt@edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][180] ([i915#4077] / [i915#9688])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_psr@psr2-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_psr@psr2-suspend:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1072] / [i915#9732]) +20 other tests skip
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_psr@psr2-suspend.html
>     - shard-dg1:          NOTRUN -> [SKIP][182] ([i915#1072] / [i915#9732]) +19 other tests skip
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_psr@psr2-suspend.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
>     - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#5289])
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][184] ([i915#5289])
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_scaling_modes@scaling-mode-center:
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#3555]) +2 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_scaling_modes@scaling-mode-center.html
> 
>   * igt@kms_scaling_modes@scaling-mode-none:
>     - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#3555]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_scaling_modes@scaling-mode-none.html
> 
>   * igt@kms_setmode@invalid-clone-single-crtc-stealing:
>     - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#3555] / [i915#8809])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_setmode@invalid-clone-single-crtc-stealing.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          NOTRUN -> [FAIL][188] ([IGT#2])
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>     - shard-mtlp:         NOTRUN -> [SKIP][189] ([i915#8623])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [FAIL][190] ([i915#10305]) +1 other test fail
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#3555] / [i915#8808])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@kms_vrr@flip-dpms.html
> 
>   * igt@kms_vrr@seamless-rr-switch-drrs:
>     - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#9906])
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
>     - shard-dg1:          NOTRUN -> [SKIP][193] ([i915#9906])
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@kms_vrr@seamless-rr-switch-drrs.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#2437] / [i915#9412]) +1 other test skip
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
>     - shard-dg1:          NOTRUN -> [SKIP][195] ([i915#2437] / [i915#9412])
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@perf_pmu@busy-double-start@vecs1:
>     - shard-dg2:          [PASS][196] -> [FAIL][197] ([i915#4349]) +3 other tests fail
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#8850])
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@perf_pmu@cpu-hotplug.html
> 
>   * igt@perf_pmu@frequency@gt0:
>     - shard-dg2:          NOTRUN -> [FAIL][199] ([i915#6806])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@perf_pmu@frequency@gt0.html
> 
>   * igt@perf_pmu@most-busy-idle-check-all@rcs0:
>     - shard-rkl:          [PASS][200] -> [FAIL][201] ([i915#4349])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-3/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-all@rcs0.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#3708] / [i915#4077])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#3708] / [i915#4077])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@fence-flip-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#3708])
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@prime_vgem@fence-flip-hang.html
> 
>   * igt@prime_vgem@fence-write-hang:
>     - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#3708])
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@prime_vgem@fence-write-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9917])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-off:
>     - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#9917])
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html
> 
>   * igt@syncobj_timeline@invalid-wait-zero-handles:
>     - shard-rkl:          NOTRUN -> [FAIL][208] ([i915#9781])
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@syncobj_timeline@invalid-wait-zero-handles.html
> 
>   * igt@v3d/v3d_perfmon@create-perfmon-exceed:
>     - shard-mtlp:         NOTRUN -> [SKIP][209] ([i915#2575]) +2 other tests skip
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@v3d/v3d_perfmon@create-perfmon-exceed.html
> 
>   * igt@v3d/v3d_perfmon@get-values-invalid-pointer:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#2575]) +10 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-14/igt@v3d/v3d_perfmon@get-values-invalid-pointer.html
> 
>   * igt@v3d/v3d_submit_csd@bad-multisync-out-sync:
>     - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#2575]) +2 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@v3d/v3d_submit_csd@bad-multisync-out-sync.html
> 
>   * igt@vc4/vc4_mmap@mmap-bad-handle:
>     - shard-dg1:          NOTRUN -> [SKIP][212] ([i915#7711]) +8 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg1-18/igt@vc4/vc4_mmap@mmap-bad-handle.html
> 
>   * igt@vc4/vc4_perfmon@create-two-perfmon:
>     - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#7711]) +8 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-6/igt@vc4/vc4_perfmon@create-two-perfmon.html
> 
>   * igt@vc4/vc4_wait_bo@bad-bo:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#7711]) +1 other test skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@vc4/vc4_wait_bo@bad-bo.html
> 
>   * igt@vc4/vc4_wait_seqno@bad-seqno-0ns:
>     - shard-mtlp:         NOTRUN -> [SKIP][215] ([i915#7711]) +1 other test skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-7/igt@vc4/vc4_wait_seqno@bad-seqno-0ns.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_exec@basic-nohangcheck:
>     - shard-rkl:          [FAIL][216] ([i915#6268]) -> [PASS][217]
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-3/igt@gem_ctx_exec@basic-nohangcheck.html
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-5/igt@gem_ctx_exec@basic-nohangcheck.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-dg2:          [FAIL][218] -> [PASS][219]
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-4/igt@gem_eio@in-flight-suspend.html
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-1/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-rkl:          [FAIL][220] ([i915#2842]) -> [PASS][221]
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-2/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-4/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg2:          [TIMEOUT][222] ([i915#5493]) -> [PASS][223]
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-4/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [INCOMPLETE][224] ([i915#9849]) -> [PASS][225]
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_power@sanity:
>     - shard-mtlp:         [SKIP][226] ([i915#7984]) -> [PASS][227]
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-mtlp-4/igt@i915_power@sanity.html
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-4/igt@i915_power@sanity.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
>     - shard-snb:          [SKIP][228] -> [PASS][229] +2 other tests pass
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-snb6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-snb7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1:
>     - shard-snb:          [FAIL][230] ([i915#2122]) -> [PASS][231] +2 other tests pass
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-snb7/igt@kms_flip@flip-vs-absolute-wf_vblank@b-vga1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
>     - shard-dg2:          [FAIL][232] ([i915#6880]) -> [PASS][233] +2 other tests pass
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][234] ([i915#4281]) -> [PASS][235]
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
>     - shard-dg2:          [SKIP][236] ([i915#9519]) -> [PASS][237]
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-1/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-10/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress:
>     - shard-rkl:          [SKIP][238] ([i915#9519]) -> [PASS][239] +1 other test pass
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1:
>     - shard-snb:          [FAIL][240] ([i915#9196]) -> [PASS][241]
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-snb2/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-snb6/igt@kms_universal_plane@cursor-fb-leak@pipe-b-hdmi-a-1.html
> 
>   
> #### Warnings ####
> 
>   * igt@device_reset@unbind-reset-rebind:
>     - shard-rkl:          [ABORT][242] ([i915#5507]) -> [INCOMPLETE][243] ([i915#5507])
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-rkl-5/igt@device_reset@unbind-reset-rebind.html
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-rkl-4/igt@device_reset@unbind-reset-rebind.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-tglu:         [INCOMPLETE][244] ([i915#10047] / [i915#10887] / [i915#9820]) -> [INCOMPLETE][245] ([i915#10047] / [i915#9820])
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-tglu-6/igt@i915_module_load@reload-with-fault-injection.html
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-tglu-5/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [ABORT][246] ([i915#10131] / [i915#10887] / [i915#9697]) -> [ABORT][247] ([i915#10131] / [i915#9697])
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][248] ([i915#3458]) -> [SKIP][249] ([i915#10433] / [i915#3458]) +1 other test skip
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-slowdraw:
>     - shard-dg2:          [SKIP][250] ([i915#10433] / [i915#3458]) -> [SKIP][251] ([i915#3458]) +1 other test skip
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-slowdraw.html
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-slowdraw.html
> 
>   * igt@kms_psr@fbc-psr-cursor-mmap-cpu:
>     - shard-dg2:          [SKIP][252] ([i915#1072] / [i915#9673] / [i915#9732]) -> [SKIP][253] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-6/igt@kms_psr@fbc-psr-cursor-mmap-cpu.html
> 
>   * igt@kms_psr@psr2-no-drrs:
>     - shard-dg2:          [SKIP][254] ([i915#1072] / [i915#9732]) -> [SKIP][255] ([i915#1072] / [i915#9673] / [i915#9732]) +6 other tests skip
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-8/igt@kms_psr@psr2-no-drrs.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-11/igt@kms_psr@psr2-no-drrs.html
> 
>   * igt@perf@non-zero-reason@0-rcs0:
>     - shard-dg2:          [FAIL][256] ([i915#7484]) -> [FAIL][257] ([i915#9100])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14870/shard-dg2-10/igt@perf@non-zero-reason@0-rcs0.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/shard-dg2-2/igt@perf@non-zero-reason@0-rcs0.html
> 
>   
>   [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
>   [i915#10031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10031
>   [i915#10047]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10047
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10177
>   [i915#10278]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10278
>   [i915#10305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10305
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10513
>   [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2122]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2122
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
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
>   [i915#3591]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3591
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
>   [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4348
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5235
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5507
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6118
>   [i915#6227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
>   [i915#6268]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
>   [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#6806]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6806
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7213
>   [i915#7484]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7484
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7711
>   [i915#7742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
>   [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8709
>   [i915#8808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8808
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
>   [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
>   [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
>   [i915#8850]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8850
>   [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
>   [i915#9196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9196
>   [i915#9227]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9227
>   [i915#9311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
>   [i915#9412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9412
>   [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
>   [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
>   [i915#9519]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9519
>   [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
>   [i915#9606]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9606
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
>   [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9697
>   [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9781
>   [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
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
>   * Linux: CI_DRM_14870 -> Patchwork_134411v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14870: 35fd8da4aabacfb22e4d62be372aa7f2db72e426 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7877: 23b8b8a0168e1b5141e29346be1f83fdbed31037 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_134411v1: 35fd8da4aabacfb22e4d62be372aa7f2db72e426 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_134411v1/index.html
> 




