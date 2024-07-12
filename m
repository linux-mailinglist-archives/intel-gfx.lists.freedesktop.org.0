Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0396F92FD9C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2024 17:30:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C4610ED38;
	Fri, 12 Jul 2024 15:30:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ejnmZHJj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E590E10ED38;
 Fri, 12 Jul 2024 15:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720798248; x=1752334248;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=3nEEtA+ZuRS2rXGyZTOLSWpScpZv8NnlbRenAS7YOIs=;
 b=ejnmZHJjdUD1oZd3bntFz4iSTnBp6izuSaZz3haNbvyZnsLPxZouam4t
 DSt/KJuNQqqfcIzPVVaToAoVMgInIUwgkKWRErxdoNdsatGeZUxbE22Ph
 XY5b1WiUBeZp6Wfos2QTqDZrf1x7UldQrkfYVXMGV05MA39Zgd5FgHK5+
 SarTF0RqkLYBQNtgawkJCAKLt8qrY4ACIO9YVZDFQGDPebAHaMmXy6qkB
 rmHw9IBuCsxBfJiP/ioKVm1q8rJPCUgL2XG2riJC8Icmtq/Nl/RmGSIvY
 jhQyGkek5cKui883y/kCGrkJXKXHROCxfvnZ+bXFj1UVSgJQOivd0BZQN Q==;
X-CSE-ConnectionGUID: Ws1M/5aETYK0CvoVi+HosA==
X-CSE-MsgGUID: bVV0QZlNRvKuIsx6lH5+/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11131"; a="22004366"
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="22004366"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 08:30:48 -0700
X-CSE-ConnectionGUID: 3qvkLA2tT2qQue1Ho4TzpQ==
X-CSE-MsgGUID: hL5dN/i9Q8u2avQBp6q9JA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,203,1716274800"; d="scan'208";a="54136237"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2024 08:30:47 -0700
Date: Fri, 12 Jul 2024 18:30:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_wit?= =?utf-8?Q?h?= [1/3] drm/i915/dp:
 Retrain SST links via a modeset commit
Message-ID: <ZpFMMyumhoL6CnDU@ideak-desk.fi.intel.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
 <172079559866.182980.17267427818875246663@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <172079559866.182980.17267427818875246663@2413ebb6fbb6>
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

Hi CI team,

the failure is unrelated, please check the comments below.

On Fri, Jul 12, 2024 at 02:46:38PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/3] drm/i915/dp: Retrain SST links via a modeset commit
> URL   : https://patchwork.freedesktop.org/series/136044/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15071 -> Patchwork_136044v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_136044v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_136044v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/index.html
> 
> Participating hosts (39 -> 36)
> ------------------------------
> 
>   Additional (2): bat-mtlp-8 bat-mtlp-6 
>   Missing    (5): fi-kbl-7567u bat-kbl-2 fi-snb-2520m bat-atsm-1 fi-elk-e7500 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_136044v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-14:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/bat-dg2-14/igt@i915_selftest@live@workarounds.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-dg2-14/igt@i915_selftest@live@workarounds.html

There is no link training during any of the tests, so the failure is
unrelated to the changes.

It's
<6> [307.604278] [IGT] i915_selftest: starting dynamic subtest workarounds
...
<6> [308.663191] i915: Running intel_workarounds_live_selftests/live_gpu_reset_workarounds
<6> [308.663223] Verifying after GPU reset...
...
<5> [308.685792] i915 0000:03:00.0: [drm] GT0: Resetting chip for live_workarounds
<6> [308.687844] i915 0000:03:00.0: [drm] GT0: GuC firmware i915/dg2_guc_70.bin version 70.20.0
<6> [308.687854] i915 0000:03:00.0: [drm] GT0: HuC firmware i915/dg2_huc_gsc.bin version 7.10.15
<7> [308.697276] i915 0000:03:00.0: [drm:intel_guc_fw_upload [i915]] GT0: GUC: init took 7ms, freq = 2400MHz, before = 2400MHz, status = 0x8002F034, count = 0, ret = 0
<7> [308.698552] i915 0000:03:00.0: [drm:guc_enable_communication [i915]] GT0: GUC: communication enabled
<6> [308.702578] i915 0000:03:00.0: [drm] GT0: GUC: submission enabled
<6> [308.702586] i915 0000:03:00.0: [drm] GT0: GUC: SLPC enabled
<4> [308.704049] ------------[ cut here ]------------
<4> [308.704055] WARNING: CPU: 2 PID: 5994 at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:2021 intel_guc_submission_reset_finish+0x197/0x210 [i915]

Looks similar to the following pre-existing issues, though the failure
point is different during the same test/subtest:

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15013/bat-dg2-11/igt@i915_selftest@live@workarounds.html#dmesg-warnings556
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15046/bat-dg2-11/igt@i915_selftest@live@workarounds.html#dmesg-warnings564
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/bat-dg2-11/igt@i915_selftest@live@workarounds.html#dmesg-warnings518
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135966v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html#dmesg-warnings529

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_136044v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][4] ([i915#9318])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@fbdev@info:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][5] ([i915#1849] / [i915#2582])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@fbdev@info.html
> 
>   * igt@fbdev@write:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][6] ([i915#2582]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@fbdev@write.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][7] ([i915#4613]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#4083])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@gem_mmap@basic.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][10] ([i915#4083])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#4077]) +2 other tests skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#4079]) +1 other test skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_tiled_blits@basic:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][13] ([i915#4077]) +2 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][14] ([i915#4079]) +1 other test skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#6621])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][16] ([i915#6621])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][17] ([i915#4212] / [i915#9792]) +8 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][18] ([i915#5190])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][19] ([i915#5190] / [i915#9792])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#4212]) +8 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][21] ([i915#4213]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][22] ([i915#9792]) +17 other tests skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][23] ([i915#3555] / [i915#3840] / [i915#9159])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][24] ([i915#3637] / [i915#9792]) +3 other tests skip
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][25]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][26] ([i915#5274])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][27] ([i915#5274] / [i915#9792])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][28] ([i915#4342] / [i915#5354] / [i915#9792])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][29] ([i915#5354] / [i915#9792])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_psr@psr-cursor-plane-move:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][30] ([i915#1072] / [i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][31] ([i915#4077] / [i915#9688])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][32] ([i915#3555] / [i915#8809])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#3555] / [i915#8809] / [i915#9792])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][34] ([i915#3708] / [i915#9792])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][35] ([i915#3708] / [i915#4077]) +1 other test skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][36] ([i915#3708] / [i915#4077]) +1 other test skip
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][37] ([i915#3708]) +1 other test skip
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][38] ([i915#3708]) +1 other test skip
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][39] ([i915#10216] / [i915#3708])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-8/igt@prime_vgem@basic-write.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][40] ([i915#10216] / [i915#3708])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-mtlp-6/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-dg2-11:         [DMESG-FAIL][41] ([i915#9500]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/bat-dg2-11/igt@i915_selftest@live@workarounds.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-dg2-11/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-arls-2:         [DMESG-WARN][43] ([i915#7507]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-arls-2/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1:
>     - bat-dg2-8:          [FAIL][45] ([i915#11379]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15071/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-a-dp-1.html
> 
>   
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11379]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11379
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#7507]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7507
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9500
>   [i915#9673]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9673
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9792]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_15071 -> Patchwork_136044v1
> 
>   CI-20190529: 20190529
>   CI_DRM_15071: 12d7fd45f021d2077e3381a79dc8bbdff419e4ea @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7925: def41c762723c9ba046a3ffe722d046cd12e993d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_136044v1: 12d7fd45f021d2077e3381a79dc8bbdff419e4ea @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_136044v1/index.html
