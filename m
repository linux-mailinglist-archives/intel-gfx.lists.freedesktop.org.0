Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8379E3F9E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 17:27:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2FC3210E50F;
	Wed,  4 Dec 2024 16:27:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c1j26jmc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E96D10E4FA;
 Wed,  4 Dec 2024 16:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733329644; x=1764865644;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=pMqecpv4+Q7odRkqm3nfG6SRA2bWT6Jz8/bqD06kKio=;
 b=c1j26jmc+uvjoNNfc2qdcaQLstx0jYNUZW2jjVyLIqde28EBVNVN+98+
 w2Ngm7wQuN/4yDLosQ+qGPXXmgr2iOB+wSqZFbmYrAhzY6bNgoeazezXi
 GoYkaOwYGihvSZbDePfHVbnACeMMeLMrrmKcaWWBpmba/Qs/pyT0SYonX
 P/c36oGSDlbm7ORUZCUxQNhQxFvrkk3ejCvSjtjmiY/qMwOshzDvUPJ1E
 JdcF+edesTtK0Q4jrf3hBSOgskp1NKqtVsEei77J5RorRkRgJb9BIBq1y
 XgZQfOjQA4HHaS1xz3l7YsRNKTuQACyB/mEMV5Avyn0WjGGTtghXjoZj7 w==;
X-CSE-ConnectionGUID: f4rHXAXFTMa+KQmtkfN89Q==
X-CSE-MsgGUID: rjFwTAY6Rri1OD1UnfWnsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33350893"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33350893"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:27:24 -0800
X-CSE-ConnectionGUID: vLybTzzpTz+oei3paM7zuA==
X-CSE-MsgGUID: OccO0/KIQVulTNHfFVVCbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="94644553"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 08:27:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm: remove
 driver date
In-Reply-To: <173332941290.2565367.7669910611173295133@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1733322525.git.jani.nikula@intel.com>
 <173332941290.2565367.7669910611173295133@b555e5b46a47>
Date: Wed, 04 Dec 2024 18:27:19 +0200
Message-ID: <87wmgf1kig.fsf@intel.com>
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

On Wed, 04 Dec 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm: remove driver date
> URL   : https://patchwork.freedesktop.org/series/142116/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15786 -> Patchwork_142116v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_142116v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142116v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/index.html
>
> Participating hosts (44 -> 43)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_142116v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@execlists:
>     - bat-jsl-3:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-jsl-3/igt@i915_selftest@live@execlists.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-jsl-3/igt@i915_selftest@live@execlists.html

Looks bad but hardly related, please re-report.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_142116v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_module_load@load:
>     - fi-pnv-d510:        [PASS][3] -> [ABORT][4] ([i915#13203])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/fi-pnv-d510/igt@i915_module_load@load.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/fi-pnv-d510/igt@i915_module_load@load.html
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][5] -> [FAIL][6] ([i915#12903])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [PASS][7] -> [ABORT][8] ([i915#12061]) +1 other test abort
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-mtlp-8/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-jsl-3:          [PASS][9] -> [INCOMPLETE][10] ([i915#13241])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-jsl-3/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-jsl-3/igt@i915_selftest@live.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_module_load@load:
>     - bat-twl-1:          [DMESG-WARN][11] ([i915#1982]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-twl-1/igt@i915_module_load@load.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-twl-1/igt@i915_module_load@load.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [ABORT][13] ([i915#12061]) -> [PASS][14] +1 other test pass
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15786/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#11989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#13134]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13134
>   [i915#13203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203
>   [i915#13241]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13241
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15786 -> Patchwork_142116v1
>
>   CI-20190529: 20190529
>   CI_DRM_15786: c8df5caf278df4f9ca0aba627047c5ee4318fc0d @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8137: 8137
>   Patchwork_142116v1: c8df5caf278df4f9ca0aba627047c5ee4318fc0d @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142116v1/index.html

-- 
Jani Nikula, Intel
