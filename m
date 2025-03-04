Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E65AA4D5CC
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:08:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 239DA10E303;
	Tue,  4 Mar 2025 08:08:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R6JZcEGR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DE210E303;
 Tue,  4 Mar 2025 08:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741075732; x=1772611732;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JCz1/pFx+Jsidhto+fJVDOP/XzaYtGJQQ8/cQ1YbcUs=;
 b=R6JZcEGRHcYJlk2PJjDshEQvy3QoIH2EEaHZZ0pJIDVUqFSuEHCXPJbe
 3lm7MEmH6GifYv+mfFz70L9rGO3Egkt0HM9tBMBIKn/84aADTuFq8QwiA
 GjFybLxf9KxDh/opvm7Qkn7RFnRHXdDad7CsBdi9uCAWJ32Lfmfpd6t9m
 QH+ww/Idkkwgzmyd60uMWTwjuCXoMEmq8F4Osnorb9DBXlgPBX4hyiGb9
 2v1PQr7a5/RIvsIp3Ncyt6cVKwC/v0a5ezYNuImqq5FQNqs6qQqBKrFnY
 0rZUQPGFd1hKiS1h4iNrAvVFJg2DEAPJwR5zZlY7sjbjSYVrbG/XLoWsi g==;
X-CSE-ConnectionGUID: hAZItxvVTOy0s0ZIRJLJew==
X-CSE-MsgGUID: sM2eYfkRQaWg+nzgN3Dhig==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="41890184"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="41890184"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:08:51 -0800
X-CSE-ConnectionGUID: Flec8PrsTQGZ19xNwJW4rA==
X-CSE-MsgGUID: UUunbS2wR/63Rq5giKMvVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="123422951"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.192])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:08:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915:
 display reset cleanups (rev3)
In-Reply-To: <174100497638.123879.14186429438268449748@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1741001054.git.jani.nikula@intel.com>
 <174100497638.123879.14186429438268449748@b555e5b46a47>
Date: Tue, 04 Mar 2025 10:08:47 +0200
Message-ID: <87zfi1z08g.fsf@intel.com>
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

On Mon, 03 Mar 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: display reset cleanups (rev3)
> URL   : https://patchwork.freedesktop.org/series/143233/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16211 -> Patchwork_143233v3
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_143233v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143233v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/index.html
>
> Participating hosts (42 -> 42)
> ------------------------------
>
>   No changes in participating hosts
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_143233v3:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/fi-cfl-8109u/igt@i915_pm_rpm@module-reload.html
>
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4] +1 other test dmesg-warn
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/fi-kbl-7567u/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html

Unrelated, please re-report.

BR,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_143233v3 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_module_load@load:
>     - bat-mtlp-9:         [PASS][5] -> [DMESG-WARN][6] ([i915#13494])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-mtlp-9/igt@i915_module_load@load.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-mtlp-9/igt@i915_module_load@load.html
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-11:         [PASS][7] -> [FAIL][8] ([i915#13633])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>     - bat-adls-6:         [PASS][9] -> [FAIL][10] ([i915#13633])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][11] -> [FAIL][12] ([i915#13633])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [PASS][13] -> [DMESG-FAIL][14] ([i915#12061]) +1 other test dmesg-fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][15] -> [SKIP][16] ([i915#9197]) +3 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@reset:
>     - bat-twl-2:          [ABORT][17] ([i915#12919] / [i915#13503]) -> [PASS][18] +1 other test pass
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-twl-2/igt@i915_selftest@live@reset.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-twl-2/igt@i915_selftest@live@reset.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [DMESG-FAIL][19] ([i915#12061]) -> [PASS][20] +1 other test pass
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-arls-5/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [DMESG-FAIL][21] ([i915#12061]) -> [PASS][22] +1 other test pass
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16211/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/bat-arls-6/igt@i915_selftest@live@workarounds.html
>
>   
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
>   [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
>   [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16211 -> Patchwork_143233v3
>
>   CI-20190529: 20190529
>   CI_DRM_16211: ef9e58a7f9d52f558aaad0e4b02de1d77ff9ca82 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8255: 4ef742fae97d2f4af680f9e29f7ea45920f939b7 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143233v3: ef9e58a7f9d52f558aaad0e4b02de1d77ff9ca82 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143233v3/index.html

-- 
Jani Nikula, Intel
