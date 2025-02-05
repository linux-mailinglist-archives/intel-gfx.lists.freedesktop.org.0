Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A34A28573
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D12910E74F;
	Wed,  5 Feb 2025 08:19:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLdxTGGU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D89A10E74F;
 Wed,  5 Feb 2025 08:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738743597; x=1770279597;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yNwSFhpy7NJuZLZcwF7yA1lX9ARBfsr9+n/wCqOCOBA=;
 b=WLdxTGGUuGA9OItD2zmypaNM1ZKqIndSpC/ThQp9zSXAHHDXN6XXUlqr
 Owm8RvHKvHYqqCVKCBQCrL7N3gexb+QhymDUcQ5PYZ01z/FLwQkyeF8o2
 cHQcnhHBs2ji+/ZGMoKTjahPYiI8GbbGSqzuYVPTB01IXpCrYenI/bA83
 C7j26sR+t/4mPYoT6IwyyVxF1OMnuMAzeZ641eCylawZmN17aaUHl5Xe/
 1RdYFhfSsQzYK6g4ITxCVvXmQ+NmFwYgIL+GY7YetuJg43sXMmoWhkenw
 VuPcqjZoQT3Q2Dmht85Dy/HZK/A48kVk01q7Zs+feH2v67KGKRNeozlKU w==;
X-CSE-ConnectionGUID: /Ri3wXJpRWKe3R8HHFjr5g==
X-CSE-MsgGUID: kDyeGpyTQWeqEkxR29S0pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="61766581"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="61766581"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:19:56 -0800
X-CSE-ConnectionGUID: 2o5KCQfITMSWWyJEgoxl4w==
X-CSE-MsgGUID: hVdpwzstTvqDjH1Y2GWahQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="111368017"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:19:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/dp: Fix
 potential infinite loop in 128b/132b SST
In-Reply-To: <173870403950.1086277.5888532990421551255@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204154925.3001781-1-jani.nikula@intel.com>
 <173870403950.1086277.5888532990421551255@b555e5b46a47>
Date: Wed, 05 Feb 2025 10:19:50 +0200
Message-ID: <87a5b06bx5.fsf@intel.com>
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
> Series: drm/i915/dp: Fix potential infinite loop in 128b/132b SST
> URL   : https://patchwork.freedesktop.org/series/144326/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16064 -> Patchwork_144326v1
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_144326v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144326v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/index.html
>
> Participating hosts (42 -> 40)
> ------------------------------
>
>   Additional (1): bat-twl-2 
>   Missing    (3): bat-apl-1 fi-snb-2520m fi-pnv-d510 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_144326v1:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1:
>     - fi-kbl-7567u:       [PASS][3] -> [DMESG-WARN][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24@pipe-a-dp-1.html

Unrelated, please re-report.

BR,
Jani.



>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_144326v1 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - bat-twl-2:          NOTRUN -> [SKIP][5] ([i915#9318])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@debugfs_test@basic-hwmon.html
>
>   * igt@gem_lmem_swapping@basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][6] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][7] ([i915#11031])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-twl-2:          NOTRUN -> [SKIP][8] ([i915#10209] / [i915#11681])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@i915_pm_rps@basic-api.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - bat-twl-2:          NOTRUN -> [SKIP][9] ([i915#11030] / [i915#11731]) +1 other test skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][10] ([i915#9886])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-twl-2:          NOTRUN -> [SKIP][11] ([i915#11032])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24:
>     - fi-kbl-7567u:       [PASS][12] -> [DMESG-WARN][13] ([i915#13436]) +1 other test dmesg-warn
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/fi-kbl-7567u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-xr24.html
>
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][14] -> [SKIP][15] ([i915#9197]) +3 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-twl-2:          NOTRUN -> [SKIP][16] ([i915#8809])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][17] ([i915#10212] / [i915#3708])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][18] ([i915#10214] / [i915#3708])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-twl-2:          NOTRUN -> [SKIP][19] ([i915#10216] / [i915#3708])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-twl-2/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@i915_selftest@live@workarounds:
>     - {bat-mtlp-9}:       [DMESG-FAIL][20] ([i915#12061]) -> [PASS][21] +1 other test pass
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#11030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11030
>   [i915#11031]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11031
>   [i915#11032]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11032
>   [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11731]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11731
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#13436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13436
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16064 -> Patchwork_144326v1
>
>   CI-20190529: 20190529
>   CI_DRM_16064: ac87843456aa558a665df43aa62c03eaf7701bcb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144326v1: ac87843456aa558a665df43aa62c03eaf7701bcb @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144326v1/index.html

-- 
Jani Nikula, Intel
