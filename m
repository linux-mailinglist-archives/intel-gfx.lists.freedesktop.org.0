Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA68AA2869F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 162BD10E75A;
	Wed,  5 Feb 2025 09:33:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NAr0N1XX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0B7010E163;
 Wed,  5 Feb 2025 09:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738747985; x=1770283985;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=gjcmdimUujMZ1LsRRgh6ENJvbIZPW3uDNctu26Fhqj4=;
 b=NAr0N1XX61YeaUqgOVfxOdpW82EuLFdHMpv8HCzXVs6Q/kjcrccmz4Ho
 BPmzoNy5l4yDcoxwarVSqBnAXNvsTH5DY4ZVelo1lshnSmgFgoWfHtLtx
 JdEi/Vl0wofRv8CYmijNj08a/sDolUlijlY7+G4nAIlhuNWkZPrguk7NZ
 pGNslSSj61o0UvJmU6Pd+4HShVd5E7kRldOwIybHmCJZtG+7qrXnNJiRc
 Fmq+ZWwhoDaHDQp5yBlSx7mrPFtNpkca1g2zg7UG7PeyMNtw4O91MDAQ0
 EjZcIHyJDrQGp7noTmJ0Nc0WRzgvFXYQcGV5gyL1sTS9RZGlovl+jl+hY g==;
X-CSE-ConnectionGUID: z6cL4KGWTNiCEV7eByqjmA==
X-CSE-MsgGUID: R/AO2ZH9Q4GrecLnIHYZoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43057670"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="43057670"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:33:05 -0800
X-CSE-ConnectionGUID: x/G16eVSQdaiMjUhFPzLwg==
X-CSE-MsgGUID: BPQVVCfVTCyVwvgzO6X1Hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="115899649"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:33:03 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for
 drm/i915/backlight: convert to use struct intel_display
In-Reply-To: <173868957891.976180.5891882877547956524@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204132423.2910978-1-jani.nikula@intel.com>
 <173868957891.976180.5891882877547956524@b555e5b46a47>
Date: Wed, 05 Feb 2025 11:33:00 +0200
Message-ID: <87zfj04tyr.fsf@intel.com>
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

On Tue, 04 Feb 2025, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/backlight: convert to use struct intel_display
> URL   : https://patchwork.freedesktop.org/series/144312/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16063 -> Patchwork_144312v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_144312v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144312v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/index.html
>
> Participating hosts (43 -> 42)
> ------------------------------
>
>   Missing    (1): fi-snb-2520m 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_144312v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-rpls-4:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>     - fi-tgl-1115g4:      [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/fi-tgl-1115g4/igt@i915_pm_rpm@module-reload.html

Please re-report


>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_144312v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@i915_selftest@live:
>     - bat-twl-1:          NOTRUN -> [ABORT][5] ([i915#12919] / [i915#13503])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-twl-1/igt@i915_selftest@live.html
>
>   * igt@i915_selftest@live@gt_heartbeat:
>     - bat-twl-1:          [PASS][6] -> [ABORT][7] ([i915#12919])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-twl-1/igt@i915_selftest@live@gt_heartbeat.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [PASS][8] -> [DMESG-FAIL][9] ([i915#12061]) +1 other test dmesg-fail
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][10] -> [SKIP][11] ([i915#9197]) +3 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [DMESG-FAIL][12] ([i915#12061]) -> [PASS][13] +1 other test pass
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-arls-5/igt@i915_selftest@live@workarounds.html
>     - {bat-mtlp-9}:       [DMESG-FAIL][14] ([i915#12061]) -> [PASS][15] +1 other test pass
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16063/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16063 -> Patchwork_144312v1
>
>   CI-20190529: 20190529
>   CI_DRM_16063: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144312v1: 34f113e9fef546134e402e7657fc47e92fba59dc @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144312v1/index.html

-- 
Jani Nikula, Intel
