Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1739DB838
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 14:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2091410E477;
	Thu, 28 Nov 2024 13:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJhlf7+3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A03610E479;
 Thu, 28 Nov 2024 13:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732798990; x=1764334990;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OYNU8Tdppt2E4/02v1+h9wj0ypQka+uQYNwJ7tU/JWI=;
 b=lJhlf7+3AtZu/y4Ilo767wtBAxsj/XvOYIbIAPw4KQ1pK1tE31FlaSmg
 LQPRpErBidpX8wnVx3lAwGw0H3j2KKWMT9cuC4xvJaS8JnqSjj0Q38JaW
 I0UCvW0v4eMgdPTlQPxFZoyivGKaroY1aOAE6J/ZiXIgv/8AW7+1akq1X
 YwANi1ZDrihci+q8kw40wyMdZDjmvjCqRCCkA5cpZAh4+cBXSjsH5318e
 FemVn1bjNbpmjZUc31CvJsT0TKEtRqMhvvz5CHGrhKoh3Kxg2e0lKL+Z7
 eYfyLgA8VJiJGcgW/pjPb8xGjb0FXEKHxuaA7Lxu11LlmoWrpOyJrwDd1 A==;
X-CSE-ConnectionGUID: jZjjOIe3RvqV05mpkmSzLg==
X-CSE-MsgGUID: 9rE94JtWR9iEr8ugd+8RKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="20622904"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="20622904"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 05:03:10 -0800
X-CSE-ConnectionGUID: K+GUscs4SM6Z/bgtpn7kxA==
X-CSE-MsgGUID: emS9YbrrR+u4o2ccDITSPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="92561014"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 05:03:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/dp: use
 seq buf for printing rates
In-Reply-To: <173271686438.3737589.2860729581870715186@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241127131838.3268735-1-jani.nikula@intel.com>
 <173271686438.3737589.2860729581870715186@b555e5b46a47>
Date: Thu, 28 Nov 2024 15:03:06 +0200
Message-ID: <871pyv8q9h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 27 Nov 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/dp: use seq buf for printing rates
> URL   : https://patchwork.freedesktop.org/series/141841/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15753 -> Patchwork_141841v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_141841v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141841v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/index.html
>
> Participating hosts (45 -> 43)
> ------------------------------
>
>   Missing    (2): fi-snb-2520m bat-jsl-3 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_141841v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-mtlp-8/igt@i915_selftest@live.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-mtlp-8/igt@i915_selftest@live.html

Unrelated, please re-report.

BR,
Jani.


>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_141841v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [PASS][3] -> [FAIL][4] ([i915#12903])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][5] -> [ABORT][6] ([i915#12061]) +1 other test abort
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>
>   
> #### Possible fixes ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][7] ([i915#12904]) -> [PASS][8] +1 other test pass
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-apl-1/igt@dmabuf@all-tests.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [FAIL][9] ([i915#12903]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-6:         [ABORT][11] -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-mtlp-6/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-mtlp-6/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [ABORT][13] ([i915#12061]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-6:         [ABORT][15] ([i915#12061]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15753/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15753 -> Patchwork_141841v1
>
>   CI-20190529: 20190529
>   CI_DRM_15753: 4e5e3c93cf642f47374ed6e003f0a55b8af0f25b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8127: 433ecaf95ccaed2b5adcb40d27fa5b7a08a2e03d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_141841v1: 4e5e3c93cf642f47374ed6e003f0a55b8af0f25b @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141841v1/index.html

-- 
Jani Nikula, Intel
