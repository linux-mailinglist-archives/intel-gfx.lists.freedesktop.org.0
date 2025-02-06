Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D10A2AE06
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 17:42:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8495A10E8D8;
	Thu,  6 Feb 2025 16:42:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="APigM9q3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADFB810E8D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2025 16:42:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738860163; x=1770396163;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=TEHWQie5qWVlimYGXZB7BOgZCAXWFtYFU4P7tURG4Ks=;
 b=APigM9q3YxCVuZKfSTchJm3FOcMRzXroRDEDxVnsnyR2rLfAKM3CjAEO
 KoZd/r8pZ1EosttB8ArfOw+S2UVOeqPnWT76M8/lo3rxylq25Z2vATzN1
 wQdYgu21EhkmAI1hwi46vPhMtj5fmNZVTI7M3j5Xc6wiRvhQyXN4s6LvF
 UmBmYfrfpGmnlSCNIifdI8FCD+yT1nxhHnXMMj0Rs8UdiRjDreqUvz1hB
 cqA1RY6z5SB+n4kwAi23qbKdoETGJpk7NsS+WrOfCzVGvNrCDybe5b7kJ
 yryoXT5CxLTGrAsZpoicsz+wwwVBBCg3jkjEH3YrTrRdmx6tNViPxWTpc g==;
X-CSE-ConnectionGUID: HJG+0KzrQNCgLrcj3ECjqA==
X-CSE-MsgGUID: RcRmRItHQDun7vC7TrD7AQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39345798"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="39345798"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 08:42:42 -0800
X-CSE-ConnectionGUID: ZE6CipdGR/GWHQckiwcokQ==
X-CSE-MsgGUID: 17jn1s8xRLS9mrDbJy4AMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="111175879"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 08:42:41 -0800
Date: Thu, 6 Feb 2025 18:43:36 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Khaled Almahallawy <khaled.almahallawy@intel.com>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuQkFUOiBzdWNj?=
 =?utf-8?Q?ess_for_drm=2Fi915=2Fdp=5Fmst=3A_Fix_gettin?= =?utf-8?Q?g?=
 display pointer in intel_dp_mst_compute_min_hblank() (rev2)
Message-ID: <Z6TmuPCXIRcVAvQn@ideak-desk.fi.intel.com>
References: <20250205232855.3017421-1-imre.deak@intel.com>
 <173885437827.2091800.14177479765957843934@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173885437827.2091800.14177479765957843934@b555e5b46a47>
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

On Thu, Feb 06, 2025 at 03:06:18PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank() (rev2)
> URL   : https://patchwork.freedesktop.org/series/144387/
> State : success

Thanks for the report, testing and review, patch is pushed to
drm-intel-next.

On bat-mtlp-9 there is still a related but separate issue, I'll follow
up with a fix for that.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16076 -> Patchwork_144387v2
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_144387v2 need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144387v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/index.html
> 
> Participating hosts (45 -> 43)
> ------------------------------
> 
>   Missing    (2): fi-snb-2520m fi-pnv-d510 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_144387v2:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@i915_module_load@load:
>     - bat-mtlp-9:         [ABORT][1] ([i915#13641]) -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-9/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-mtlp-9/igt@i915_module_load@load.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_144387v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests@dma_fence_chain:
>     - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][5] -> [FAIL][6] ([i915#13633])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][7] -> [FAIL][8] ([i915#13633])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [PASS][9] -> [DMESG-FAIL][10] ([i915#12061]) +1 other test dmesg-fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][13] -> [SKIP][14] ([i915#9197]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Warnings ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-kbl-7567u:       [DMESG-WARN][15] ([i915#11621] / [i915#180]) -> [DMESG-WARN][16] ([i915#11621] / [i915#180] / [i915#1982])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16076/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
> 
>   
>   [i915#11621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11621
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
>   [i915#13641]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13641
>   [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16076 -> Patchwork_144387v2
> 
>   CI-20190529: 20190529
>   CI_DRM_16076: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144387v2: 7a632b6798b6a05b63725249e3209afea13ea499 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 55cb2fc137f9 drm/i915/dp_mst: Fix getting display pointer in intel_dp_mst_compute_min_hblank()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144387v2/index.html
