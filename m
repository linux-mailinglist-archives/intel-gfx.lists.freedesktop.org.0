Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31B009D4DC4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 14:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 584EA10E944;
	Thu, 21 Nov 2024 13:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="etaxwujL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BEA310E940;
 Thu, 21 Nov 2024 13:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732195749; x=1763731749;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ljRw7GiHhgGV8PhdV5IdFOlm1Kjgw73PhXBUovmZreg=;
 b=etaxwujLSXaci2yLeTkimvRzE3X8prIiSlI91yl/Sq7ZzHH+ek+oGg3f
 6hivQDr5LrIiUe6FpvnGYfA4WblRtjWeU557RyvwWk/gPHf8YD2N7PAO2
 Cn7D84WNDQeFlO66XOLlouvvBSwd2lbAXbwk0fJBHjoHUsBjhWk5jzvcQ
 5lG2FobzdmdZ2VlkOdDaN2oIIfMjXoNg6WEQM9Nios+NWBKfn4GCofqIB
 bfqukO0nsRwWC5x81bq5Rfo4yTHU05gBdJKmKaLbH4I0ktpr6tk+YtJIe
 J02FRWKo6GYP2PNu0K+R5njbDL5oRQWGH5/B9cDFpfsFJx5IxIbRD3d9Q A==;
X-CSE-ConnectionGUID: Qc/FfVziR9efwwflaPkgZA==
X-CSE-MsgGUID: u1m3KTQLRB6iRKPlgvlECg==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="32423050"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="32423050"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 05:29:08 -0800
X-CSE-ConnectionGUID: lYKwb9qASlCqlmc8iPcM3g==
X-CSE-MsgGUID: d8c0MbKoRZyKFQph0gNuoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90071471"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 05:29:08 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/i915: MST and
 DDI cleanups and refactoring (rev4)
In-Reply-To: <173211289837.742969.7471609695790087491@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1732106557.git.jani.nikula@intel.com>
 <173211289837.742969.7471609695790087491@b555e5b46a47>
Date: Thu, 21 Nov 2024 15:29:04 +0200
Message-ID: <87y11czpen.fsf@intel.com>
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

On Wed, 20 Nov 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: MST and DDI cleanups and refactoring (rev4)
> URL   : https://patchwork.freedesktop.org/series/141500/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15724 -> Patchwork_141500v4
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_141500v4 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141500v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/index.html
>
> Participating hosts (46 -> 45)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_141500v4:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-arlh-3:         NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html

Unrelated, please re-report.

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_141500v4 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-11:         [PASS][2] -> [FAIL][3] ([i915#12903])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>     - bat-adls-6:         [PASS][4] -> [FAIL][5] ([i915#12903])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][6] -> [SKIP][7] ([i915#9197]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   * igt@runner@aborted:
>     - bat-dg2-13:         NOTRUN -> [FAIL][8] ([i915#12658])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-dg2-13/igt@runner@aborted.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [ABORT][9] ([i915#12061]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>
>   
> #### Warnings ####
>
>   * igt@i915_selftest@live:
>     - bat-arlh-3:         [ABORT][11] ([i915#12829]) -> [INCOMPLETE][12] ([i915#12829])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15724/bat-arlh-3/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/bat-arlh-3/igt@i915_selftest@live.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12658
>   [i915#12829]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12829
>   [i915#12903]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12903
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15724 -> Patchwork_141500v4
>
>   CI-20190529: 20190529
>   CI_DRM_15724: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8118: 17707095f1e5d3c30f463b43022f01c0160579b6 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_141500v4: 0cb17ecec562c61d45997a2fced4e5ed99b31f99 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141500v4/index.html

-- 
Jani Nikula, Intel
