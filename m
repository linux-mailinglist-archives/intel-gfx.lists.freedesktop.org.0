Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F2C9F1341
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 18:08:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CD1010F0A7;
	Fri, 13 Dec 2024 17:08:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LaJLtE51";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9779910F0A6;
 Fri, 13 Dec 2024 17:08:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734109728; x=1765645728;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Pw9+Y/S1WRoQmi+NTz6Kc3TdMxX99xfkdv9RSsG98Pk=;
 b=LaJLtE51y3uezdCldLsLnMQFeruZ5ExR1+jvYKyKbkmOWJS0IG1qFrcM
 MsNk+oz8f0aQVAVtM8l65jn1YuWvUiP0/kM8YOGFNID+0TlkLGYqCVCWe
 b2mtY91I2r1t8DYefhugBVKZYX8cpPTTCMpffjn1OYJYeaGVd93LkTyrZ
 p81HSFAvvp59aQE/C1QCPwGhMseUI20JDCFH12zp/sAohOs6xS7/xUf47
 WW8qRfvKQgyP2Sow1a6x1KcvAEU+aNzfZE5UD9c2xF7Cjz3hbdhcmSwRX
 dCCy98gzvMRs4734VO4IGwBf3g+uj40bkeHZNWFwaPE61On0XA6XKSopZ A==;
X-CSE-ConnectionGUID: S7WulQoLSsuczACtaMrTTQ==
X-CSE-MsgGUID: i1nMRf2mSKyk6mCrQbJFfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11285"; a="37415484"
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="37415484"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 09:08:47 -0800
X-CSE-ConnectionGUID: Q1RzNkVQR9ihsRqWi034zg==
X-CSE-MsgGUID: lUKU0xWZTFuIbF9MNeovjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="96468806"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 09:08:45 -0800
Date: Fri, 13 Dec 2024 19:09:23 +0200
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?=
 =?utf-8?Q?lure_for_drm=2Fdisplay?= =?utf-8?Q?=3A?= use ERR_PTR on DP tunnel
 manager creation fail (rev3)
Message-ID: <Z1xqQ0dCoU0gBeqH@ideak-desk.fi.intel.com>
References: <7q4fpnmmztmchczjewgm6igy55qt6jsm7tfd4fl4ucfq6yg2oy@q4lxtsu6445c>
 <173402984020.1703471.6123292903752076564@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173402984020.1703471.6123292903752076564@b555e5b46a47>
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

On Thu, Dec 12, 2024 at 06:57:20PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/display: use ERR_PTR on DP tunnel manager creation fail (rev3)
> URL   : https://patchwork.freedesktop.org/series/142423/
> State : failure

The failures are unrelated, since none of the hosts have a sink going
through TBT DP tunnel. Some of the failures match described at:

https://lore.kernel.org/all/Z1xVsISN2thh2xOs@ideak-desk.fi.intel.com

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15831_full -> Patchwork_142423v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_142423v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142423v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_142423v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-dg2:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-6/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-5/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@kms_async_flips@crc-atomic:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][3] +2 other tests incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk6/igt@kms_async_flips@crc-atomic.html
> 
>   * igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [CRASH][5] +6 other tests crash
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-11/igt@kms_async_flips@crc@pipe-b-hdmi-a-2.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1:
>     - shard-mtlp:         [PASS][6] -> [FAIL][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-5/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-2/igt@kms_flip@flip-vs-wf_vblank-interruptible@b-edp1.html
> 
>   * igt@perf_pmu@rc6@runtime-pm-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][8]
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@perf_pmu@rc6@runtime-pm-gt0.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-1:
>     - shard-glk:          [INCOMPLETE][9] ([i915#13287]) -> [INCOMPLETE][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk4/igt@kms_async_flips@crc@pipe-a-hdmi-a-1.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk1/igt@kms_async_flips@crc@pipe-a-hdmi-a-1.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@kms_plane_cursor@primary:
>     - {shard-dg2-9}:      NOTRUN -> [DMESG-WARN][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-9/igt@kms_plane_cursor@primary.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_142423v3_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8411])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@api_intel_bb@object-reloc-keep-cache:
>     - shard-dg1:          NOTRUN -> [SKIP][13] ([i915#8411])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@api_intel_bb@object-reloc-keep-cache.html
> 
>   * igt@device_reset@cold-reset-bound:
>     - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#11078])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@device_reset@cold-reset-bound.html
> 
>   * igt@drm_fdinfo@busy-idle-check-all@vcs1:
>     - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#8414]) +8 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@drm_fdinfo@busy-idle-check-all@vcs1.html
> 
>   * igt@drm_fdinfo@virtual-busy-all:
>     - shard-mtlp:         NOTRUN -> [SKIP][16] ([i915#8414])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-all.html
> 
>   * igt@drm_fdinfo@virtual-busy-idle-all:
>     - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#8414]) +1 other test skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@drm_fdinfo@virtual-busy-idle-all.html
> 
>   * igt@gem_bad_reloc@negative-reloc:
>     - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#3281]) +4 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@gem_bad_reloc@negative-reloc.html
> 
>   * igt@gem_busy@semaphore:
>     - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#3936])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@gem_busy@semaphore.html
> 
>   * igt@gem_ccs@block-copy-compressed:
>     - shard-dg1:          NOTRUN -> [SKIP][20] ([i915#3555] / [i915#9323]) +1 other test skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@gem_ccs@block-copy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-compressed:
>     - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#9323])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@gem_ccs@block-multicopy-compressed.html
> 
>   * igt@gem_ccs@block-multicopy-inplace:
>     - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#3555] / [i915#9323])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html
> 
>   * igt@gem_ccs@suspend-resume:
>     - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#9323])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@gem_ccs@suspend-resume.html
> 
>   * igt@gem_close_race@multigpu-basic-process:
>     - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#7697])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_close_race@multigpu-basic-process.html
> 
>   * igt@gem_close_race@multigpu-basic-threads:
>     - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#7697])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_close_race@multigpu-basic-threads.html
>     - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#7697])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_close_race@multigpu-basic-threads.html
> 
>   * igt@gem_ctx_freq@sysfs:
>     - shard-dg2:          [PASS][27] -> [FAIL][28] ([i915#9561]) +1 other test fail
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-2/igt@gem_ctx_freq@sysfs.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-6/igt@gem_ctx_freq@sysfs.html
> 
>   * igt@gem_ctx_persistence@file:
>     - shard-snb:          NOTRUN -> [SKIP][29] ([i915#1099]) +4 other tests skip
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@gem_ctx_persistence@file.html
> 
>   * igt@gem_ctx_persistence@heartbeat-hang:
>     - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#8555])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_ctx_persistence@heartbeat-hang.html
> 
>   * igt@gem_ctx_persistence@heartbeat-many:
>     - shard-dg1:          NOTRUN -> [SKIP][31] ([i915#8555])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_ctx_persistence@heartbeat-many.html
>     - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#8555])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_ctx_persistence@heartbeat-many.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-dg1:          NOTRUN -> [SKIP][33] ([i915#280]) +1 other test skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_ctx_sseu@engines.html
>     - shard-mtlp:         NOTRUN -> [SKIP][34] ([i915#280])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
>     - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4525])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-tglu:         NOTRUN -> [SKIP][36] ([i915#4525])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_capture@capture-recoverable:
>     - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#6344])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html
> 
>   * igt@gem_exec_fence@concurrent:
>     - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4812]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_exec_fence@concurrent.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#3539] / [i915#4852]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_flush@basic-uc-set-default:
>     - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#3539]) +1 other test skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_exec_flush@basic-uc-set-default.html
> 
>   * igt@gem_exec_flush@basic-wb-ro-before-default:
>     - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#3539] / [i915#4852])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-before-default.html
> 
>   * igt@gem_exec_reloc@basic-cpu-wc:
>     - shard-dg1:          NOTRUN -> [SKIP][42] ([i915#3281]) +7 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_exec_reloc@basic-cpu-wc.html
>     - shard-mtlp:         NOTRUN -> [SKIP][43] ([i915#3281]) +1 other test skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_exec_reloc@basic-cpu-wc.html
> 
>   * igt@gem_exec_reloc@basic-wc-gtt:
>     - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#3281]) +7 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_exec_reloc@basic-wc-gtt.html
> 
>   * igt@gem_exec_schedule@reorder-wide:
>     - shard-mtlp:         NOTRUN -> [SKIP][45] ([i915#4537] / [i915#4812])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_exec_schedule@reorder-wide.html
> 
>   * igt@gem_exec_schedule@semaphore-power:
>     - shard-dg1:          NOTRUN -> [SKIP][46] ([i915#4812]) +2 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_exec_schedule@semaphore-power.html
>     - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4537] / [i915#4812])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_exec_schedule@semaphore-power.html
> 
>   * igt@gem_exec_store@basic:
>     - shard-rkl:          [PASS][48] -> [DMESG-WARN][49] ([i915#12964]) +1 other test dmesg-warn
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-rkl-1/igt@gem_exec_store@basic.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-5/igt@gem_exec_store@basic.html
> 
>   * igt@gem_fence_thrash@bo-write-verify-threaded-none:
>     - shard-dg1:          NOTRUN -> [SKIP][50] ([i915#4860]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#4613]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_lmem_swapping@massive:
>     - shard-mtlp:         NOTRUN -> [SKIP][52] ([i915#4613])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_lmem_swapping@massive.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#4613]) +1 other test skip
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-ccs:
>     - shard-glk:          NOTRUN -> [SKIP][54] ([i915#4613]) +2 other tests skip
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk4/igt@gem_lmem_swapping@verify-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs:
>     - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#12193]) +1 other test skip
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@gem_lmem_swapping@verify-random-ccs.html
> 
>   * igt@gem_lmem_swapping@verify-random-ccs@lmem0:
>     - shard-dg1:          NOTRUN -> [SKIP][56] ([i915#4565]) +1 other test skip
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@gem_lmem_swapping@verify-random-ccs@lmem0.html
> 
>   * igt@gem_media_fill@media-fill:
>     - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#8289])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_media_fill@media-fill.html
> 
>   * igt@gem_mmap@bad-object:
>     - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#4083]) +2 other tests skip
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_mmap@bad-object.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-dg1:          NOTRUN -> [SKIP][59] ([i915#4077]) +8 other tests skip
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_mmap_gtt@hang-user:
>     - shard-mtlp:         NOTRUN -> [SKIP][60] ([i915#4077]) +1 other test skip
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_mmap_gtt@hang-user.html
> 
>   * igt@gem_mmap_wc@write-cpu-read-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4083]) +3 other tests skip
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_mmap_wc@write-cpu-read-wc.html
> 
>   * igt@gem_mmap_wc@write-read-distinct:
>     - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#4083])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_mmap_wc@write-read-distinct.html
> 
>   * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
>     - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#3282]) +5 other tests skip
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-glk:          NOTRUN -> [WARN][64] ([i915#2658])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pread@snoop:
>     - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#3282]) +4 other tests skip
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_pread@snoop.html
> 
>   * igt@gem_pwrite@basic-self:
>     - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#3282]) +3 other tests skip
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@gem_pwrite@basic-self.html
> 
>   * igt@gem_pxp@create-valid-protected-context:
>     - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4270]) +1 other test skip
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_pxp@create-valid-protected-context.html
> 
>   * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][68] ([i915#12964])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-dg1:          NOTRUN -> [SKIP][69] ([i915#4270]) +3 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-rkl:          NOTRUN -> [TIMEOUT][70] ([i915#12917] / [i915#12964]) +1 other test timeout
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@yf-tiled-ccs-to-linear:
>     - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#5190] / [i915#8428]) +3 other tests skip
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - shard-mtlp:         NOTRUN -> [SKIP][72] ([i915#4079])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
>     - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#8411]) +2 other tests skip
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
> 
>   * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
>     - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#4079]) +1 other test skip
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
> 
>   * igt@gem_softpin@evict-snoop-interruptible:
>     - shard-dg1:          NOTRUN -> [SKIP][75] ([i915#4885])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@gem_softpin@evict-snoop-interruptible.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][76] ([i915#13306])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk1/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_tiled_partial_pwrite_pread@writes:
>     - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#4077]) +10 other tests skip
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_tiled_partial_pwrite_pread@writes.html
> 
>   * igt@gem_tiled_pread_pwrite:
>     - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4079])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_tiled_pread_pwrite.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#3297]) +2 other tests skip
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-tglu-1:       NOTRUN -> [SKIP][80] ([i915#3297])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@create-destroy-unsync:
>     - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3297]) +2 other tests skip
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@gem_userptr_blits@create-destroy-unsync.html
> 
>   * igt@gem_userptr_blits@map-fixed-invalidate-busy:
>     - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#3297])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
>     - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#3297] / [i915#4880])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_userptr_blits@map-fixed-invalidate-busy.html
> 
>   * igt@gem_userptr_blits@sd-probe:
>     - shard-dg1:          NOTRUN -> [SKIP][84] ([i915#3297] / [i915#4958])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@gem_userptr_blits@sd-probe.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3297]) +3 other tests skip
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#2527]) +2 other tests skip
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@gen9_exec_parse@bb-start-cmd:
>     - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#2527]) +2 other tests skip
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@gen9_exec_parse@bb-start-cmd.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#2527] / [i915#2856])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@gen9_exec_parse@shadow-peek:
>     - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#2856]) +1 other test skip
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gen9_exec_parse@shadow-peek.html
> 
>   * igt@gen9_exec_parse@unaligned-access:
>     - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#2527] / [i915#2856])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          NOTRUN -> [ABORT][91] ([i915#9820])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-dg1:          [PASS][92] -> [ABORT][93] ([i915#9820])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@i915_module_load@reload-with-fault-injection.html
>     - shard-mtlp:         [PASS][94] -> [ABORT][95] ([i915#10131] / [i915#10887] / [i915#9820])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-8/igt@i915_module_load@reload-with-fault-injection.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pipe_stress@stress-xrgb8888-ytiled:
>     - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#8436])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-ytiled.html
> 
>   * igt@i915_pm_freq_api@freq-basic-api:
>     - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#8399])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@i915_pm_freq_api@freq-basic-api.html
> 
>   * igt@i915_pm_freq_api@freq-reset-multiple:
>     - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#8399])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress:
>     - shard-dg1:          [PASS][99] -> [DMESG-WARN][100] ([i915#4423]) +1 other test dmesg-warn
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-18/igt@i915_pm_rpm@gem-execbuf-stress.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@i915_pm_rpm@gem-execbuf-stress.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-glk:          [PASS][101] -> [INCOMPLETE][102] ([i915#12797])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk6/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_pm_rps@thresholds-idle-park:
>     - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#11681])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@i915_pm_rps@thresholds-idle-park.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-mtlp:         NOTRUN -> [FAIL][104] ([i915#8346])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#4387])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-coherent-slice-mask:
>     - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#6188])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html
> 
>   * igt@i915_query@test-query-geometry-subslices:
>     - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#5723])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@i915_query@test-query-geometry-subslices.html
>     - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#5723])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@i915_query@test-query-geometry-subslices.html
> 
>   * igt@i915_selftest@mock:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][109] ([i915#9311]) +1 other test dmesg-warn
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@i915_selftest@mock.html
> 
>   * igt@i915_suspend@basic-s3-without-i915:
>     - shard-rkl:          NOTRUN -> [INCOMPLETE][110] ([i915#4817])
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][111] ([i915#4817]) +1 other test incomplete
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk6/igt@i915_suspend@forcewake.html
> 
>   * igt@intel_hwmon@hwmon-write:
>     - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#7707])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@intel_hwmon@hwmon-write.html
> 
>   * igt@kms_addfb_basic@clobberred-modifier:
>     - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#4212]) +1 other test skip
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_addfb_basic@clobberred-modifier.html
> 
>   * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
>     - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#12454] / [i915#12712])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
> 
>   * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
>     - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#8709]) +7 other tests skip
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][116] ([i915#13287] / [i915#9878])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_async_flips@crc.html
>     - shard-dg1:          NOTRUN -> [WARN][117] ([i915#13287])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_async_flips@crc.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [INCOMPLETE][118] ([i915#13287])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_async_flips@crc@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
>     - shard-dg2:          NOTRUN -> [CRASH][119] ([i915#13287])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-11/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
>     - shard-dg1:          NOTRUN -> [CRASH][120] ([i915#13287]) +3 other tests crash
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-mtlp:         NOTRUN -> [SKIP][121] ([i915#3555])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
>     - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#9531])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
>     - shard-dg1:          NOTRUN -> [SKIP][123] ([i915#4538] / [i915#5286]) +4 other tests skip
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
>     - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#5286]) +1 other test skip
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#5286])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html
>     - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#5286])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
>     - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#5286]) +3 other tests skip
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>     - shard-mtlp:         [PASS][128] -> [DMESG-FAIL][129] ([i915#13314])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-mtlp:         NOTRUN -> [SKIP][130] +3 other tests skip
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
>     - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3638]) +3 other tests skip
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
>     - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#3638]) +6 other tests skip
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-addfb-size-offset-overflow:
>     - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#5190]) +1 other test skip
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_big_fb@y-tiled-addfb-size-offset-overflow.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
>     - shard-dg1:          NOTRUN -> [SKIP][134] ([i915#4538]) +5 other tests skip
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#4538] / [i915#5190]) +3 other tests skip
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>     - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#6095]) +159 other tests skip
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html
> 
>   * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
>     - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
>     - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#6095]) +41 other tests skip
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
> 
>   * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
>     - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#12313])
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
>     - shard-dg1:          NOTRUN -> [SKIP][140] ([i915#12313]) +1 other test skip
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
> 
>   * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#10307] / [i915#6095]) +188 other tests skip
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-1/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3.html
> 
>   * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#6095]) +9 other tests skip
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#6095]) +21 other tests skip
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
> 
>   * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
>     - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#12313])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
>     - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#6095]) +9 other tests skip
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
>     - shard-glk:          NOTRUN -> [SKIP][146] +128 other tests skip
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk4/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][147] ([i915#6095]) +14 other tests skip
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-edp-1.html
> 
>   * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
>     - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#4087]) +4 other tests skip
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html
> 
>   * igt@kms_chamelium_audio@dp-audio-edid:
>     - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#7828]) +6 other tests skip
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_chamelium_audio@dp-audio-edid.html
> 
>   * igt@kms_chamelium_color@degamma:
>     - shard-dg2:          NOTRUN -> [SKIP][150] +13 other tests skip
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_chamelium_color@degamma.html
> 
>   * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
>     - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#7828]) +1 other test skip
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe:
>     - shard-mtlp:         NOTRUN -> [SKIP][152] ([i915#7828]) +2 other tests skip
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_chamelium_hpd@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm:
>     - shard-tglu:         NOTRUN -> [SKIP][153] ([i915#7828]) +2 other tests skip
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_chamelium_hpd@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>     - shard-dg1:          NOTRUN -> [SKIP][154] ([i915#7828]) +8 other tests skip
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_chamelium_hpd@vga-hpd-fast:
>     - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#7828]) +7 other tests skip
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#7118] / [i915#9424])
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#7116] / [i915#9424]) +1 other test skip
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_content_protection@type1.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-32x32:
>     - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#3555]) +8 other tests skip
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_cursor_crc@cursor-offscreen-32x32.html
> 
>   * igt@kms_cursor_crc@cursor-offscreen-512x512:
>     - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#13049])
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html
>     - shard-dg1:          NOTRUN -> [SKIP][161] ([i915#13049]) +1 other test skip
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_cursor_crc@cursor-offscreen-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-onscreen-32x10:
>     - shard-mtlp:         NOTRUN -> [SKIP][162] ([i915#3555] / [i915#8814])
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x170:
>     - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#13049]) +1 other test skip
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html
> 
>   * igt@kms_cursor_crc@cursor-random-512x512:
>     - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#13049]) +2 other tests skip
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_cursor_crc@cursor-random-512x512.html
> 
>   * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>     - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#3555])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#4103] / [i915#4213]) +1 other test skip
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>     - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#4103] / [i915#4213])
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
>     - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#13046] / [i915#5354]) +4 other tests skip
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-toggle:
>     - shard-mtlp:         NOTRUN -> [SKIP][169] ([i915#9809])
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_cursor_legacy@cursorb-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
>     - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#4103])
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
>     - shard-mtlp:         NOTRUN -> [SKIP][171] ([i915#4213])
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_display_modes@mst-extended-mode-negative:
>     - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#8588])
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_display_modes@mst-extended-mode-negative.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
>     - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#3555]) +4 other tests skip
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#3555] / [i915#3840])
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_dsc@dsc-fractional-bpp:
>     - shard-rkl:          NOTRUN -> [SKIP][175] ([i915#3840]) +1 other test skip
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html
> 
>   * igt@kms_dsc@dsc-with-bpc:
>     - shard-tglu:         NOTRUN -> [SKIP][176] ([i915#3555] / [i915#3840])
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_dsc@dsc-with-bpc.html
> 
>   * igt@kms_dsc@dsc-with-bpc-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#3555] / [i915#3840]) +1 other test skip
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_dsc@dsc-with-bpc-formats.html
> 
>   * igt@kms_dsc@dsc-with-output-formats-with-bpc:
>     - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#3840] / [i915#9053])
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
>     - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#3840] / [i915#9053])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
> 
>   * igt@kms_fbcon_fbt@psr-suspend:
>     - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#3469])
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_fbcon_fbt@psr-suspend.html
> 
>   * igt@kms_feature_discovery@display-4x:
>     - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#1839])
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_feature_discovery@display-4x.html
> 
>   * igt@kms_feature_discovery@dp-mst:
>     - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9337])
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_feature_discovery@dp-mst.html
> 
>   * igt@kms_fence_pin_leak:
>     - shard-dg1:          NOTRUN -> [SKIP][183] ([i915#4881]) +1 other test skip
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_fence_pin_leak.html
> 
>   * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>     - shard-tglu-1:       NOTRUN -> [SKIP][184] ([i915#3637]) +1 other test skip
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
>     - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#9934]) +11 other tests skip
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
> 
>   * igt@kms_flip@2x-flip-vs-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][186] ([i915#8381]) +1 other test skip
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_flip@2x-flip-vs-fences.html
>     - shard-dg2:          NOTRUN -> [SKIP][187] ([i915#8381])
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-fences.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race:
>     - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#9934]) +5 other tests skip
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_flip@2x-modeset-vs-vblank-race.html
> 
>   * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>     - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#3637])
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
> 
>   * igt@kms_flip@2x-wf_vblank-ts-check:
>     - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#9934]) +5 other tests skip
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_flip@2x-wf_vblank-ts-check.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible:
>     - shard-mtlp:         [PASS][191] -> [FAIL][192] ([i915#10826])
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-5/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-2/igt@kms_flip@flip-vs-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible:
>     - shard-rkl:          [PASS][193] -> [FAIL][194] ([i915#11989]) +1 other test fail
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#2672] / [i915#3555]) +3 other tests skip
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
>     - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#2672] / [i915#3555]) +4 other tests skip
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
>     - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#2672]) +3 other tests skip
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
>     - shard-dg1:          NOTRUN -> [SKIP][198] ([i915#2587] / [i915#2672]) +5 other tests skip
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
>     - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#2672] / [i915#3555])
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode:
>     - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#2587] / [i915#2672])
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
>     - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#2672] / [i915#3555])
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
>     - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#2587] / [i915#2672])
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#2587] / [i915#2672] / [i915#3555])
>    [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
>     - shard-mtlp:         NOTRUN -> [SKIP][204] ([i915#2672] / [i915#3555] / [i915#8813]) +1 other test skip
>    [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
>     - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#2672] / [i915#8813]) +1 other test skip
>    [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - shard-dg2:          NOTRUN -> [SKIP][206] ([i915#5274])
>    [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu:
>     - shard-mtlp:         NOTRUN -> [SKIP][207] ([i915#1825]) +4 other tests skip
>    [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
>     - shard-snb:          [PASS][208] -> [SKIP][209] +4 other tests skip
>    [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
>    [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#8708]) +21 other tests skip
>    [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
>     - shard-rkl:          NOTRUN -> [SKIP][211] +14 other tests skip
>    [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][212] +20 other tests skip
>    [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
>     - shard-dg1:          NOTRUN -> [SKIP][213] +36 other tests skip
>    [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
>     - shard-dg2:          NOTRUN -> [SKIP][214] ([i915#8708]) +13 other tests skip
>    [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen:
>     - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#5354]) +21 other tests skip
>    [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
>     - shard-tglu:         NOTRUN -> [SKIP][216] +19 other tests skip
>    [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
>     - shard-dg1:          NOTRUN -> [SKIP][217] ([i915#3458]) +14 other tests skip
>    [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
>     - shard-dg1:          NOTRUN -> [SKIP][218] ([i915#9766])
>    [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#3023]) +19 other tests skip
>    [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
>     - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#1825]) +26 other tests skip
>    [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
>     - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#3458]) +13 other tests skip
>    [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
> 
>   * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][222] ([i915#8708]) +5 other tests skip
>    [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-tglu:         NOTRUN -> [SKIP][223] ([i915#3555] / [i915#8228])
>    [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#1187] / [i915#12713])
>    [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_hdr@invalid-metadata-sizes:
>     - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#3555] / [i915#8228])
>    [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html
> 
>   * igt@kms_hdr@static-toggle:
>     - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8228])
>    [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_hdr@static-toggle.html
>     - shard-dg1:          NOTRUN -> [SKIP][227] ([i915#3555] / [i915#8228])
>    [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_hdr@static-toggle.html
> 
>   * igt@kms_joiner@basic-big-joiner:
>     - shard-dg2:          NOTRUN -> [SKIP][228] ([i915#10656])
>    [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_joiner@basic-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-big-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#12388])
>    [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_joiner@basic-force-big-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#12388])
>    [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_joiner@basic-force-big-joiner.html
> 
>   * igt@kms_joiner@basic-force-ultra-joiner:
>     - shard-rkl:          NOTRUN -> [SKIP][231] ([i915#12394])
>    [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_joiner@basic-force-ultra-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-big-joiner:
>     - shard-tglu:         NOTRUN -> [SKIP][232] ([i915#10656])
>    [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_joiner@invalid-modeset-big-joiner.html
> 
>   * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>     - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#12394])
>    [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
>     - shard-dg1:          NOTRUN -> [SKIP][234] ([i915#12394])
>    [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][235] ([i915#12756])
>    [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc.html
> 
>   * igt@kms_plane_lowres@tiling-yf:
>     - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#3555]) +3 other tests skip
>    [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html
> 
>   * igt@kms_plane_multiple@tiling-yf:
>     - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#3555]) +5 other tests skip
>    [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_plane_multiple@tiling-yf.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#6953])
>    [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers:
>     - shard-dg2:          NOTRUN -> [SKIP][239] ([i915#12247] / [i915#9423])
>    [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers.html
> 
>   * igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b:
>     - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#12247]) +3 other tests skip
>    [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-25-with-modifiers@pipe-b.html
> 
>   * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>     - shard-dg1:          NOTRUN -> [SKIP][241] ([i915#12247]) +14 other tests skip
>    [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a:
>     - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#12247]) +2 other tests skip
>    [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25:
>     - shard-tglu:         NOTRUN -> [SKIP][243] ([i915#12247] / [i915#3555])
>    [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a:
>     - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#12247]) +3 other tests skip
>    [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75:
>     - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#12247] / [i915#6953])
>    [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d:
>     - shard-mtlp:         NOTRUN -> [SKIP][246] ([i915#12247]) +3 other tests skip
>    [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-75@pipe-d.html
> 
>   * igt@kms_pm_backlight@bad-brightness:
>     - shard-rkl:          NOTRUN -> [SKIP][247] ([i915#5354]) +1 other test skip
>    [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_pm_backlight@bad-brightness.html
> 
>   * igt@kms_pm_dc@dc3co-vpb-simulation:
>     - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#9685])
>    [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_pm_dc@dc3co-vpb-simulation.html
>     - shard-dg1:          NOTRUN -> [SKIP][249] ([i915#9685]) +1 other test skip
>    [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@kms_pm_dc@dc6-dpms:
>     - shard-tglu:         NOTRUN -> [FAIL][250] ([i915#9295])
>    [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_pm_dc@dc6-dpms.html
> 
>   * igt@kms_pm_dc@dc6-psr:
>     - shard-dg2:          NOTRUN -> [SKIP][251] ([i915#9685])
>    [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_pm_dc@dc6-psr.html
> 
>   * igt@kms_pm_lpsp@kms-lpsp:
>     - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#3828])
>    [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_pm_lpsp@kms-lpsp.html
>     - shard-dg1:          NOTRUN -> [SKIP][253] ([i915#9340])
>    [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_pm_lpsp@kms-lpsp.html
> 
>   * igt@kms_pm_rpm@dpms-lpsp:
>     - shard-rkl:          [PASS][254] -> [SKIP][255] ([i915#9519])
>    [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html
>    [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp:
>     - shard-dg2:          [PASS][256] -> [SKIP][257] ([i915#9519])
>    [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp.html
>    [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp.html
>     - shard-dg1:          NOTRUN -> [SKIP][258] ([i915#9519])
>    [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_pm_rpm@modeset-lpsp.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress:
>     - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#9519])
>    [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
> 
>   * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>     - shard-dg2:          NOTRUN -> [SKIP][260] ([i915#9519])
>    [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
> 
>   * igt@kms_prime@basic-crc-hybrid:
>     - shard-rkl:          NOTRUN -> [SKIP][261] ([i915#6524])
>    [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
> 
>   * igt@kms_prime@d3hot:
>     - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#6524])
>    [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_prime@d3hot.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
>     - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#11520]) +4 other tests skip
>    [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
>     - shard-glk:          NOTRUN -> [SKIP][264] ([i915#11520]) +5 other tests skip
>    [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
>     - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#11520]) +6 other tests skip
>    [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
>     - shard-snb:          NOTRUN -> [SKIP][266] ([i915#11520]) +5 other tests skip
>    [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#9808])
>    [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html
> 
>   * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1:
>     - shard-mtlp:         NOTRUN -> [SKIP][268] ([i915#12316]) +1 other test skip
>    [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-b-edp-1.html
> 
>   * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf:
>     - shard-dg1:          NOTRUN -> [SKIP][269] ([i915#11520]) +7 other tests skip
>    [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
>     - shard-tglu:         NOTRUN -> [SKIP][270] ([i915#11520]) +1 other test skip
>    [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
>     - shard-tglu-1:       NOTRUN -> [SKIP][271] ([i915#11520]) +1 other test skip
>    [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#9683])
>    [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@fbc-pr-sprite-render:
>     - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#9732]) +3 other tests skip
>    [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html
> 
>   * igt@kms_psr@fbc-psr-primary-blt:
>     - shard-dg2:          NOTRUN -> [SKIP][274] ([i915#1072] / [i915#9732]) +16 other tests skip
>    [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_psr@fbc-psr-primary-blt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
>     - shard-tglu:         NOTRUN -> [SKIP][275] ([i915#9732]) +4 other tests skip
>    [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_psr@fbc-psr2-sprite-render:
>     - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#1072] / [i915#9732]) +15 other tests skip
>    [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html
> 
>   * igt@kms_psr@pr-no-drrs:
>     - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#9688]) +4 other tests skip
>    [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_psr@pr-no-drrs.html
> 
>   * igt@kms_psr@psr2-sprite-mmap-gtt:
>     - shard-dg1:          NOTRUN -> [SKIP][278] ([i915#1072] / [i915#9732]) +21 other tests skip
>    [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_psr@psr2-sprite-mmap-gtt.html
> 
>   * igt@kms_rotation_crc@exhaust-fences:
>     - shard-dg1:          NOTRUN -> [SKIP][279] ([i915#4884])
>    [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_rotation_crc@exhaust-fences.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-tglu-1:       NOTRUN -> [SKIP][280] ([i915#5289])
>    [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
>     - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#5289])
>    [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>     - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#5289])
>    [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html
> 
>   * igt@kms_selftest@drm_framebuffer:
>     - shard-dg1:          NOTRUN -> [ABORT][283] ([i915#13179]) +1 other test abort
>    [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_selftest@drm_framebuffer.html
>     - shard-snb:          NOTRUN -> [ABORT][284] ([i915#13179]) +1 other test abort
>    [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb5/igt@kms_selftest@drm_framebuffer.html
>     - shard-glk:          NOTRUN -> [ABORT][285] ([i915#13179]) +1 other test abort
>    [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk5/igt@kms_selftest@drm_framebuffer.html
> 
>   * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
>     - shard-dg2:          NOTRUN -> [ABORT][286] ([i915#13179]) +1 other test abort
>    [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
> 
>   * igt@kms_tiled_display@basic-test-pattern:
>     - shard-dg2:          NOTRUN -> [SKIP][287] ([i915#8623]) +1 other test skip
>    [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_tiled_display@basic-test-pattern.html
> 
>   * igt@kms_universal_plane@cursor-fb-leak:
>     - shard-mtlp:         [PASS][288] -> [FAIL][289] ([i915#9196]) +1 other test fail
>    [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-8/igt@kms_universal_plane@cursor-fb-leak.html
>    [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-4/igt@kms_universal_plane@cursor-fb-leak.html
> 
>   * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1:
>     - shard-glk:          [PASS][290] -> [INCOMPLETE][291] ([i915#12276])
>    [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk9/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
>    [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk9/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_vrr@lobf:
>     - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#11920])
>    [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_vrr@lobf.html
>     - shard-dg1:          NOTRUN -> [SKIP][293] ([i915#11920])
>    [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_vrr@lobf.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-dg2:          NOTRUN -> [SKIP][294] ([i915#2437])
>    [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-check-output-xrgb2101010:
>     - shard-dg1:          NOTRUN -> [SKIP][295] ([i915#2437] / [i915#9412])
>    [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@kms_writeback@writeback-check-output-xrgb2101010.html
>     - shard-mtlp:         NOTRUN -> [SKIP][296] ([i915#2437] / [i915#9412])
>    [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@kms_writeback@writeback-check-output-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-fb-id:
>     - shard-tglu:         NOTRUN -> [SKIP][297] ([i915#2437])
>    [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-8/igt@kms_writeback@writeback-fb-id.html
> 
>   * igt@kms_writeback@writeback-fb-id-xrgb2101010:
>     - shard-rkl:          NOTRUN -> [SKIP][298] ([i915#2437] / [i915#9412])
>    [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@kms_writeback@writeback-fb-id-xrgb2101010.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-dg2:          NOTRUN -> [SKIP][299] ([i915#2437] / [i915#9412])
>    [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf_pmu@busy-accuracy-98:
>     - shard-snb:          NOTRUN -> [SKIP][300] +272 other tests skip
>    [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@perf_pmu@busy-accuracy-98.html
> 
>   * igt@perf_pmu@busy-double-start@rcs0:
>     - shard-mtlp:         [PASS][301] -> [FAIL][302] ([i915#4349])
>    [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html
>    [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-dg2:          NOTRUN -> [FAIL][303] ([i915#11823])
>    [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@perf_pmu@module-unload.html
> 
>   * igt@perf_pmu@rc6:
>     - shard-rkl:          NOTRUN -> [DMESG-WARN][304] ([i915#12964]) +11 other tests dmesg-warn
>    [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@perf_pmu@rc6.html
> 
>   * igt@perf_pmu@rc6@other-idle-gt0:
>     - shard-rkl:          NOTRUN -> [SKIP][305] ([i915#8516])
>    [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@perf_pmu@rc6@other-idle-gt0.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - shard-mtlp:         NOTRUN -> [SKIP][306] ([i915#3708] / [i915#4077])
>    [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@prime_vgem@basic-gtt.html
>     - shard-dg1:          NOTRUN -> [SKIP][307] ([i915#3708] / [i915#4077])
>    [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-14/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@fence-read-hang:
>     - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#3708]) +2 other tests skip
>    [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@prime_vgem@fence-read-hang.html
> 
>   * igt@sriov_basic@bind-unbind-vf:
>     - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#9917]) +2 other tests skip
>    [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.html
> 
>   * igt@sriov_basic@enable-vfs-autoprobe-on:
>     - shard-dg1:          NOTRUN -> [SKIP][310] ([i915#9917])
>    [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@sriov_basic@enable-vfs-autoprobe-on.html
> 
>   * igt@tools_test@sysfs_l3_parity:
>     - shard-dg1:          NOTRUN -> [SKIP][311] ([i915#4818])
>    [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-13/igt@tools_test@sysfs_l3_parity.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_gttfill@engines@vecs0:
>     - shard-dg2:          [INCOMPLETE][312] -> [PASS][313] +1 other test pass
>    [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-3/igt@gem_exec_gttfill@engines@vecs0.html
>    [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-10/igt@gem_exec_gttfill@engines@vecs0.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-dg2:          [INCOMPLETE][314] ([i915#11441] / [i915#13304]) -> [PASS][315]
>    [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
>    [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_exec_suspend@basic-s0@lmem0:
>     - shard-dg2:          [INCOMPLETE][316] ([i915#11441]) -> [PASS][317]
>    [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-1/igt@gem_exec_suspend@basic-s0@lmem0.html
>    [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [ABORT][318] ([i915#5566]) -> [PASS][319]
>    [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk2/igt@gen9_exec_parse@allowed-single.html
>    [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk7/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-glk:          [ABORT][320] ([i915#9820]) -> [PASS][321]
>    [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk1/igt@i915_module_load@reload-with-fault-injection.html
>    [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
> 
>   * igt@i915_pm_rps@reset:
>     - shard-snb:          [INCOMPLETE][322] ([i915#7790]) -> [PASS][323]
>    [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-snb2/igt@i915_pm_rps@reset.html
>    [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb2/igt@i915_pm_rps@reset.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - shard-mtlp:         [ABORT][324] ([i915#12061]) -> [PASS][325] +1 other test pass
>    [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
>    [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-7/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1:
>     - shard-snb:          [INCOMPLETE][326] -> [PASS][327] +1 other test pass
>    [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-snb4/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html
>    [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@kms_async_flips@crc-atomic@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1:
>     - shard-mtlp:         [FAIL][328] ([i915#11808] / [i915#5956]) -> [PASS][329] +1 other test pass
>    [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
>    [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-edp-1.html
> 
>   * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1:
>     - shard-tglu:         [FAIL][330] ([i915#11808]) -> [PASS][331] +1 other test pass
>    [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-tglu-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
>    [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-4/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-mtlp:         [DMESG-FAIL][332] ([i915#11627] / [i915#13314]) -> [PASS][333]
>    [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
>    [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
>     - shard-dg2:          [SKIP][334] ([i915#3555]) -> [PASS][335]
>    [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
>    [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - shard-dg1:          [DMESG-WARN][336] ([i915#4423]) -> [PASS][337] +2 other tests pass
>    [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-12/igt@kms_frontbuffer_tracking@basic.html
>    [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
>     - shard-dg2:          [FAIL][338] ([i915#6880]) -> [PASS][339]
>    [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
>    [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_pm_dc@dc9-dpms:
>     - shard-tglu:         [SKIP][340] ([i915#4281]) -> [PASS][341]
>    [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html
>    [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-tglu-3/igt@kms_pm_dc@dc9-dpms.html
> 
>   * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-dg2:          [SKIP][342] ([i915#9519]) -> [PASS][343]
>    [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-1/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
>    [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-dg2:          [FAIL][344] ([IGT#160]) -> [PASS][345]
>    [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-3/igt@kms_sysfs_edid_timing.html
>    [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-10/igt@kms_sysfs_edid_timing.html
> 
>   * igt@perf@blocking@0-rcs0:
>     - shard-rkl:          [FAIL][346] ([i915#10538]) -> [PASS][347] +1 other test pass
>    [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-rkl-2/igt@perf@blocking@0-rcs0.html
>    [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-4/igt@perf@blocking@0-rcs0.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_lmem_swapping@smem-oom@lmem0:
>     - shard-dg1:          [DMESG-WARN][348] ([i915#5493]) -> [TIMEOUT][349] ([i915#5493]) +1 other test timeout
>    [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
>    [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-glk:          [INCOMPLETE][350] ([i915#13287] / [i915#9878]) -> [INCOMPLETE][351] ([i915#9878])
>    [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-glk4/igt@kms_async_flips@crc.html
>    [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-glk1/igt@kms_async_flips@crc.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-dg1:          [SKIP][352] ([i915#4423] / [i915#4538] / [i915#5286]) -> [SKIP][353] ([i915#4538] / [i915#5286])
>    [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
>    [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-dg2:          [TIMEOUT][354] ([i915#7173]) -> [SKIP][355] ([i915#7118] / [i915#9424])
>    [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-10/igt@kms_content_protection@atomic-dpms.html
>    [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-1/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_content_protection@lic-type-1:
>     - shard-snb:          [INCOMPLETE][356] ([i915#8816]) -> [SKIP][357]
>    [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-snb4/igt@kms_content_protection@lic-type-1.html
>    [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-snb1/igt@kms_content_protection@lic-type-1.html
> 
>   * igt@kms_content_protection@type1:
>     - shard-dg2:          [SKIP][358] ([i915#7118] / [i915#9424]) -> [SKIP][359] ([i915#7118] / [i915#7162] / [i915#9424])
>    [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-4/igt@kms_content_protection@type1.html
>    [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-10/igt@kms_content_protection@type1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
>     - shard-dg1:          [SKIP][360] ([i915#2672] / [i915#3555]) -> [SKIP][361] ([i915#2672] / [i915#3555] / [i915#4423])
>    [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
>    [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode:
>     - shard-dg1:          [SKIP][362] ([i915#2587] / [i915#2672]) -> [SKIP][363] ([i915#2587] / [i915#2672] / [i915#4423])
>    [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
>    [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling@pipe-a-valid-mode.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc:
>     - shard-dg1:          [SKIP][364] ([i915#4423] / [i915#8708]) -> [SKIP][365] ([i915#8708])
>    [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
>    [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-dg2:          [SKIP][366] ([i915#3458]) -> [SKIP][367] ([i915#10433] / [i915#3458]) +5 other tests skip
>    [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-dg2:          [SKIP][368] ([i915#10433] / [i915#3458]) -> [SKIP][369] ([i915#3458]) +1 other test skip
>    [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render:
>     - shard-dg1:          [SKIP][370] -> [SKIP][371] ([i915#4423])
>    [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
>    [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@brightness-with-hdr:
>     - shard-rkl:          [SKIP][372] ([i915#1187] / [i915#12713]) -> [SKIP][373] ([i915#12713])
>    [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
>    [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
> 
>   * igt@kms_plane_scaling@intel-max-src-size:
>     - shard-dg2:          [FAIL][374] ([i915#8292]) -> [SKIP][375] ([i915#6953] / [i915#9423])
>    [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15831/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
>    [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [IGT#160]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/160
>   [i915#10131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131
>   [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
>   [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
>   [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
>   [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
>   [i915#10656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#10887]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887
>   [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
>   [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
>   [i915#11441]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11441
>   [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
>   [i915#11627]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11627
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11808
>   [i915#11823]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11823
>   [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
>   [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
>   [i915#12247]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247
>   [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
>   [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
>   [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
>   [i915#12388]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388
>   [i915#12394]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394
>   [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
>   [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
>   [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
>   [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
>   [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
>   [i915#12797]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12797
>   [i915#12917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917
>   [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
>   [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
>   [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
>   [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
>   [i915#13287]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13287
>   [i915#13304]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13304
>   [i915#13306]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13306
>   [i915#13314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13314
>   [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
>   [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
>   [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
>   [i915#2587]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587
>   [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
>   [i915#2672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672
>   [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
>   [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
>   [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
>   [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
>   [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
>   [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
>   [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4087]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4087
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
>   [i915#4281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281
>   [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
>   [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
>   [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
>   [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
>   [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
>   [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
>   [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
>   [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
>   [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
>   [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
>   [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
>   [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
>   [i915#4881]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4881
>   [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
>   [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
>   [i915#4958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4958
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
>   [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
>   [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
>   [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
>   [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
>   [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
>   [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
>   [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
>   [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
>   [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
>   [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
>   [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
>   [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
>   [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
>   [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
>   [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
>   [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
>   [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
>   [i915#7790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7790
>   [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
>   [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
>   [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
>   [i915#8292]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8292
>   [i915#8346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8346
>   [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
>   [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
>   [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
>   [i915#8414]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8414
>   [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
>   [i915#8436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8436
>   [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
>   [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
>   [i915#8588]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8588
>   [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
>   [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
>   [i915#8709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/is
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142423v3/index.html
