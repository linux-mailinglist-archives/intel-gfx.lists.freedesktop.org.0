Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE6EADF161
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 17:27:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798D010E8C0;
	Wed, 18 Jun 2025 15:27:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bh2Pv0Kb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CCD910E8B9;
 Wed, 18 Jun 2025 15:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750260446; x=1781796446;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=2gv3O5GzkbhEL2pb/u4d4GLAKytmuWCrdwcJhOVUwx0=;
 b=Bh2Pv0KbwlUt1zyRS9EzNeSxk2r+6SAYULNqlVhqLKLzbcjtCAHg7pDw
 w1Kse1CVYpYod4UJVWQSBoq5OXJwRSMQ+jvX+bkSDNpGUv8dr11RPqRIK
 u1VZTvZ/7dNx5SA2eHUY1oVBfExsprZUXHyfgcvgE0jTIshN1RJqOZJCm
 Mekl9VQnng3bEvuPgaFvToTsdHYGxwxtBj0dIxJGQHDevx4eTMl43vvSc
 iezDh8rTsMq8/559pAEUYE+V+tZT0tswDyAFubxNgVMog5UHICntksxco
 zXT9nm6RGpmO+A+3W4mzRDBIitiyuBXBQAkGMbnEnZs1+FpJ1eGOpq384 A==;
X-CSE-ConnectionGUID: ZdSnUre4SaS958+HLkHOYA==
X-CSE-MsgGUID: BdEfHRRvTRC8DBY2SU8YyA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52407694"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52407694"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 08:27:26 -0700
X-CSE-ConnectionGUID: U2ObM5DcQwO9K6dmSuosYQ==
X-CSE-MsgGUID: AWBSv0fERMuQPG4MjCWE+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150375812"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.161])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 08:27:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=93?= i915.CI.BAT: success for drm/i915,
 drm/xe: add drm device based pcode interface for display
In-Reply-To: <174912819630.51837.13456874122170648917@1538d3639d33>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1749119274.git.jani.nikula@intel.com>
 <174912819630.51837.13456874122170648917@1538d3639d33>
Date: Wed, 18 Jun 2025 18:27:22 +0300
Message-ID: <f74213e7858d22f3bd65d12dc047f1b519d1563e@intel.com>
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

On Thu, 05 Jun 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915, drm/xe: add drm device based pcode interface for display
> URL   : https://patchwork.freedesktop.org/series/149878/
> State : success
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16649 -> Patchwork_149878v1
> ====================================================
>
> Summary
> -------
>
>   **SUCCESS**
>
>   No regressions found.

Success from BAT, but no full results for i915? Can you give it a kick
please?

BR,
Jani.


>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/index.html
>
> Participating hosts (43 -> 42)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_149878v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][1] -> [DMESG-FAIL][2] ([i915#12061])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-arls-5:         [PASS][3] -> [DMESG-FAIL][4] ([i915#12061]) +1 other test dmesg-fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
>
>   
> #### Possible fixes ####
>
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][5] ([i915#12904]) -> [PASS][6] +1 other test pass
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-apl-1/igt@dmabuf@all-tests.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-apl-1/igt@dmabuf@all-tests.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [DMESG-FAIL][7] ([i915#12061]) -> [PASS][8] +1 other test pass
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>     - bat-mtlp-9:         [DMESG-FAIL][9] ([i915#12061]) -> [PASS][10] +1 other test pass
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [DMESG-FAIL][11] ([i915#12061]) -> [PASS][12] +1 other test pass
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-arls-6/igt@i915_selftest@live@workarounds.html
>
>   
> #### Warnings ####
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [DMESG-FAIL][13] ([i915#14243]) -> [DMESG-FAIL][14] ([i915#12061] / [i915#14243])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-arlh-3/igt@i915_selftest@live.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-arlh-3/igt@i915_selftest@live.html
>     - bat-atsm-1:         [DMESG-FAIL][15] ([i915#12061] / [i915#14204]) -> [DMESG-FAIL][16] ([i915#12061] / [i915#13929])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-atsm-1/igt@i915_selftest@live.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-atsm-1/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][17] ([i915#14204]) -> [DMESG-FAIL][18] ([i915#13929])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16649/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/bat-atsm-1/igt@i915_selftest@live@mman.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>   [i915#14243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14243
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16649 -> Patchwork_149878v1
>
>   CI-20190529: 20190529
>   CI_DRM_16649: cbceb1c61ee3a50472a3155eb8166b36929541d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8396: 8396
>   Patchwork_149878v1: cbceb1c61ee3a50472a3155eb8166b36929541d8 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_149878v1/index.html

-- 
Jani Nikula, Intel
