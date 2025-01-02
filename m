Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A9E9FF8A0
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2025 12:17:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04CB10E49B;
	Thu,  2 Jan 2025 11:17:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EYvz8WFi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D2410E23C;
 Thu,  2 Jan 2025 11:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735816643; x=1767352643;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nW/WysH4iNm2YboIuzu4aK3RfMnGwwDKOPj/1N3KyJw=;
 b=EYvz8WFiFBfTqqFZnEo3ptGSS+kkg9rolNyrgr8LMN5kkX1+lIxsQv9G
 l/Bh8GOiGmggclxLpBiHLgvbJ4lUMmnO8yN+e1/g4o5PaC7ltrdgHhb+l
 5E3vg2Rz19OVTnlrT48dlslhbtCyHukzbddkuhg0falGqMVn9tyutaxCj
 +xgkziZTzfK9HXt/UkoxOVRrddxCX5tzA/ibhDPLDuhllmZkthZeWa0lA
 QDHQlw0GyN5t1cd6FfkUKqoFcqFnoFrtY4M572+R4N7dtP9o2XcmhnK+l
 2ky9+QhxO1Ui+7kNlE5y47+0NDjuHqpLUQVWX9tV2wjEeee2dbRjy043w w==;
X-CSE-ConnectionGUID: 3nav6s+tSsCIDkZxTRhkJA==
X-CSE-MsgGUID: OMRa1uUYSkCDoDLE/3TWoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="36163599"
X-IronPort-AV: E=Sophos;i="6.12,285,1728975600"; d="scan'208";a="36163599"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 03:17:23 -0800
X-CSE-ConnectionGUID: r6EwfMRSTrCejnl2+KuWRQ==
X-CSE-MsgGUID: dgihGimcTOeRu0i8DqkfWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,285,1728975600"; d="scan'208";a="132325085"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.212])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2025 03:17:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for
 drm/i915/display: handle hdmi
 connector init failures, and no HDMI/DP cases (rev7)
In-Reply-To: <173559989105.1101968.12335734921663728138@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1735568047.git.jani.nikula@intel.com>
 <173559989105.1101968.12335734921663728138@b555e5b46a47>
Date: Thu, 02 Jan 2025 13:17:19 +0200
Message-ID: <874j2ho474.fsf@intel.com>
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

On Mon, 30 Dec 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/display: handle hdmi connector init failures, and no HDMI/DP cases (rev7)
> URL   : https://patchwork.freedesktop.org/series/142119/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15892 -> Patchwork_142119v7
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_142119v7 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_142119v7, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/index.html
>
> Participating hosts (41 -> 39)
> ------------------------------
>
>   Missing    (2): bat-twl-1 fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_142119v7:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-adls-6:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-adls-6/igt@i915_pm_rpm@module-reload.html
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4] +1 other test dmesg-warn
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html

The consecutive BAT results have been giving pretty much random
failures. Please re-report.


>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_142119v7 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@fbdev@info:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][5] ([i915#1849])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/fi-bsw-nick/igt@fbdev@info.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-bsw-nick:        NOTRUN -> [SKIP][6] +42 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/fi-bsw-nick/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1:
>     - fi-kbl-7567u:       [PASS][7] -> [DMESG-WARN][8] ([i915#12914]) +1 other test dmesg-warn
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/fi-kbl-7567u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-dp-1.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][9] -> [SKIP][10] ([i915#9197]) +2 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   * igt@runner@aborted:
>     - fi-pnv-d510:        NOTRUN -> [FAIL][11] ([i915#13350])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/fi-pnv-d510/igt@runner@aborted.html
>
>   
> #### Possible fixes ####
>
>   * igt@core_hotunplug@unbind-rebind:
>     - bat-rpls-4:         [DMESG-WARN][12] ([i915#13400]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-rpls-4/igt@core_hotunplug@unbind-rebind.html
>
>   * igt@i915_selftest@live:
>     - bat-adlp-9:         [ABORT][14] ([i915#13399]) -> [PASS][15] +1 other test pass
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-adlp-9/igt@i915_selftest@live.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-adlp-9/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][16] ([i915#13393]) -> [PASS][17] +1 other test pass
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - {bat-arls-6}:       [DMESG-FAIL][18] ([i915#13393]) -> [PASS][19] +1 other test pass
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15892/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/bat-arls-6/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#12914]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12914
>   [i915#13350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13350
>   [i915#13393]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393
>   [i915#13399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15892 -> Patchwork_142119v7
>
>   CI-20190529: 20190529
>   CI_DRM_15892: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8172: 9112581619aa198fa03041d5c7e18e02f42ac00f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_142119v7: 08bd590935a5258ffd79355c59adffd72fb2c642 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_142119v7/index.html

-- 
Jani Nikula, Intel
