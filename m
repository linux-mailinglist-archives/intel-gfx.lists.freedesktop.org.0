Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD94AB5584
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 15:05:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565DD10E5B0;
	Tue, 13 May 2025 13:05:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itZ1idRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B79C10E5A0;
 Tue, 13 May 2025 13:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747141524; x=1778677524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uiWH/Z1qTdDtIvAYflPv4uosNiV6nbSaoKY27AMkaiI=;
 b=itZ1idRaV2d5ltXsXxAoDab9W6uvU1DtVGolDcYlRxPNO7raJ9+SRhlA
 gsYUHMkOAq6nqCzhXRVoMY1MujW4ftmETH7Sx3wjDVmn8q2EjJGPYKnw8
 h04aAgjnVA9t+Mt8crrqE8ppQUbuJYnH45yIeuzu+htShH94ipOsC2spT
 zi9glRTk3331MH/M2jDvsMfSwhciP5k/gZ8f6gjLTw2E3MrRhDglV2JUu
 TgbIFVZpVkDF5c0agXGP6rEvJj90gxnm5mTI6wRFeRcZ8HcfGAaHOLjsz
 A28RxOhLF3cZkYneoyycLBgesp6LDJX+1kb7BkqdIUQhMASozMGcV39Wt A==;
X-CSE-ConnectionGUID: yF+EJDmWTZ+TtdrIF42l4A==
X-CSE-MsgGUID: 7zLJbMu8QFOlcc2eM+L66g==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="60385771"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="60385771"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:05:24 -0700
X-CSE-ConnectionGUID: kvBs0iTDQSWr9LmnydP2jg==
X-CSE-MsgGUID: uQ9vNV+KTJK+StoHKo0zRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="168800772"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 06:05:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for
 drm/i915/display: various small cleanups
In-Reply-To: <174714028321.75033.5313850630385690448@c664b1dc75d1>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1747128495.git.jani.nikula@intel.com>
 <174714028321.75033.5313850630385690448@c664b1dc75d1>
Date: Tue, 13 May 2025 16:05:20 +0300
Message-ID: <87bjrwiru7.fsf@intel.com>
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

On Tue, 13 May 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: various small cleanups
> URL   : https://patchwork.freedesktop.org/series/148952/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16538 -> Patchwork_148952v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_148952v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_148952v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/index.html
>
> Participating hosts (44 -> 44)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_148952v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@sanitycheck:
>     - bat-mtlp-6:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-mtlp-6/igt@i915_selftest@live@sanitycheck.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-mtlp-6/igt@i915_selftest@live@sanitycheck.html

Unlikely to be related, please re-report.


>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_148952v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-apl-1/igt@dmabuf@all-tests.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
>     - bat-rpls-4:         [PASS][5] -> [DMESG-WARN][6] ([i915#13400])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-rpls-4/igt@kms_cursor_legacy@basic-flip-after-cursor-atomic.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live:
>     - bat-mtlp-8:         [DMESG-FAIL][7] ([i915#12061]) -> [PASS][8] +1 other test pass
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-mtlp-8/igt@i915_selftest@live.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-mtlp-8/igt@i915_selftest@live.html
>     - bat-arlh-2:         [INCOMPLETE][9] ([i915#14046]) -> [PASS][10] +1 other test pass
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-arlh-2/igt@i915_selftest@live.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-arlh-2/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [DMESG-FAIL][11] ([i915#12061]) -> [PASS][12] +1 other test pass
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
>
>   
> #### Warnings ####
>
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][13] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][14] ([i915#12061] / [i915#13929])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-atsm-1/igt@i915_selftest@live.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-atsm-1/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][15] ([i915#14204]) -> [DMESG-FAIL][16] ([i915#13929])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16538/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/bat-atsm-1/igt@i915_selftest@live@mman.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14046
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16538 -> Patchwork_148952v1
>
>   CI-20190529: 20190529
>   CI_DRM_16538: c9de1544553b1d6112ccc32977b6d56881cedcea @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8362: 8362
>   Patchwork_148952v1: c9de1544553b1d6112ccc32977b6d56881cedcea @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_148952v1/index.html

-- 
Jani Nikula, Intel
