Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1618A0B811
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2025 14:25:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67E8810E680;
	Mon, 13 Jan 2025 13:25:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XJOmgH3t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D55710E680
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 13:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736774725; x=1768310725;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=F3PsRwTvwX5JGuTHgr29ptZGb26GLzi1spfGDwxdR1A=;
 b=XJOmgH3tIwoMLFf4MlTDvmUlHeye5aFE+letSHtZRq5+KdnJLjhFpm4y
 2g8fTjh9Bz63mIaN7xLR+XihoFo69rAxplb/ihXkP6yd2X+jd08/GlmCx
 7DvlvvYrjRPzCuQ2PCHqTZ7LJpdk8SQ8NTUljyKkelXEsnfzj7qe6ifvg
 i5vaQ3temSnTSui95nz6wtK/BEBohtnvBO+sqqNjnEnI0DSyEJ8nOkOeF
 /C539X6IEYVZOElx1ibuvMtW0bgJ6R8HabA5yaj9mIn60ck4ZPFulm9hh
 V8IvowPT8tHAx+QLPBEhvS2eOCsFf7O2Hin+wRXmqWrRmzI+b1DwpKR6y A==;
X-CSE-ConnectionGUID: ZPjld47kTC250LW0MmIJUw==
X-CSE-MsgGUID: oZSuQ0j5ROmRMN9fQcYtBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="47701552"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="47701552"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 05:25:24 -0800
X-CSE-ConnectionGUID: ilgy7Ar8R0CWJzjStpS+PQ==
X-CSE-MsgGUID: aVF/IEqNTGKWo8Q+Ui9gOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104360803"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2025 05:25:23 -0800
Date: Mon, 13 Jan 2025 15:26:15 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuQkFUOiBzdWNj?=
 =?utf-8?Q?ess_for_drm=2Fi915=2Fdp=5Fmst?= =?utf-8?Q?=3A?= Fix error
 handling/clean up pointer use (rev2)
Message-ID: <Z4UUdwvF1pQc2t2f@ideak-desk.fi.intel.com>
References: <20250108151916.491113-1-imre.deak@intel.com>
 <173652381179.1995016.17525789682922485183@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173652381179.1995016.17525789682922485183@b555e5b46a47>
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

On Fri, Jan 10, 2025 at 03:43:31PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix error handling/clean up pointer use (rev2)
> URL   : https://patchwork.freedesktop.org/series/143259/
> State : success

Thanks for the review, patchset is pushed to drm-intel-next.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15942 -> Patchwork_143259v2
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/index.html
> 
> Participating hosts (38 -> 36)
> ------------------------------
> 
>   Missing    (2): bat-rplp-1 fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_143259v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][1] -> [FAIL][2] ([i915#13401])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>     - bat-dg2-11:         [PASS][3] -> [FAIL][4] ([i915#13401])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_selftest@live@gt_mocs:
>     - bat-twl-2:          [PASS][5] -> [ABORT][6] ([i915#12919]) +1 other test abort
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/bat-twl-2/igt@i915_selftest@live@gt_mocs.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][7] -> [SKIP][8] ([i915#9197]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@execlists:
>     - bat-arlh-2:         [INCOMPLETE][9] ([i915#13050]) -> [PASS][10] +1 other test pass
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/bat-arlh-2/igt@i915_selftest@live@execlists.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/bat-arlh-2/igt@i915_selftest@live@execlists.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [SKIP][11] -> [ABORT][12] ([i915#13169])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15942/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
> 
>   
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13050]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13050
>   [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
>   [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15942 -> Patchwork_143259v2
> 
>   CI-20190529: 20190529
>   CI_DRM_15942: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8186: 2c6b2f0ed4075aa1ac3d341d612e41343cff4e4d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143259v2: 00f4619246294b1de4bac42742cfef95c1f37fde @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143259v2/index.html
