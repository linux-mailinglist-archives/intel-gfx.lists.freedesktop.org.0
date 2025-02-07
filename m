Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69AF0A2C363
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 14:18:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 120EF10E286;
	Fri,  7 Feb 2025 13:18:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mW73BFf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8356610E286
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2025 13:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738934308; x=1770470308;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=Zp2Rcvy5x0tFVuJ28CBehKZ/gPSt4Bm3/0OetMGBTJg=;
 b=mW73BFf31XjxpZa3abJTQ7YhltYwutI6UipzxvzulZSHRFzcqybDopkT
 /N7101k8KmZ9BGGByPFSPF85EtCa0TYAnTEYAnSSJKfgu0UEnKx33XGMm
 zhHQwBRxD0uPgbumQiv99ocqrXTQ51ApgvPi9Q8UhEj2qaMMYpCjE5zNH
 YTwLPQy2CG49td0UiT81hTQwDouEVRoobHT+izaE6fgYsB3yp8oWzBKHy
 dBWuucgVw2YOy1SEGvDtLP5sBiPnfoYPeTYO4rFfsGl1P+xAxzftvo73H
 F7TGykh5Dxud7dzG0usp8E85Tyx0j11cWGK6KiUgRCDCjQw33LQdYerDt A==;
X-CSE-ConnectionGUID: B8MMk2gXRxKzs9qDwcb48Q==
X-CSE-MsgGUID: NOt2LnJuQ02OQ4XrwhRfdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39446206"
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="39446206"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:18:28 -0800
X-CSE-ConnectionGUID: 6RVkP+WWScGX2WmgTisa4A==
X-CSE-MsgGUID: pd6itkrdTwCGVDKBOXqFQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,267,1732608000"; d="scan'208";a="116528270"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 05:18:27 -0800
Date: Fri, 7 Feb 2025 15:19:20 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: =?utf-8?B?4pyTIGk5MTUuQ0kuQkFUOiBzdWNj?= =?utf-8?Q?ess?= for
 drm/i915/dp_mst: Fix disabling the minimum HBlank time
Message-ID: <Z6YIWChKoMpZwR5b@ideak-desk.fi.intel.com>
References: <20250206164624.3185280-1-imre.deak@intel.com>
 <173893088614.2629883.10888107320306683643@b555e5b46a47>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173893088614.2629883.10888107320306683643@b555e5b46a47>
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

On Fri, Feb 07, 2025 at 12:21:26PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp_mst: Fix disabling the minimum HBlank time
> URL   : https://patchwork.freedesktop.org/series/144432/
> State : success

Thanks for the review, patch is pushed to drm-intel-next with the Bspec
link added.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16080 -> Patchwork_144432v1
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/index.html
> 
> Participating hosts (42 -> 44)
> ------------------------------
> 
>   Additional (3): bat-adlm-1 bat-arlh-2 fi-pnv-d510 
>   Missing    (1): fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_144432v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-adlm-1:         NOTRUN -> [SKIP][1] ([i915#3826] / [i915#9900])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@debugfs_test@basic-hwmon.html
>     - bat-mtlp-9:         NOTRUN -> [SKIP][2] ([i915#9318])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@debugfs_test@basic-hwmon.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][3] ([i915#11346] / [i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@fbdev@eof:
>     - bat-arlh-2:         NOTRUN -> [SKIP][4] ([i915#11345] / [i915#11346]) +3 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@fbdev@eof.html
> 
>   * igt@fbdev@info:
>     - bat-adlm-1:         NOTRUN -> [SKIP][5] ([i915#1849] / [i915#2582] / [i915#9900])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@fbdev@info.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][6] ([i915#11346] / [i915#1849])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@fbdev@info.html
> 
>   * igt@fbdev@read:
>     - bat-adlm-1:         NOTRUN -> [SKIP][7] ([i915#2582] / [i915#9900]) +3 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@fbdev@read.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][8] ([i915#10213] / [i915#11346] / [i915#11671]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-adlm-1:         NOTRUN -> [SKIP][9] ([i915#4613] / [i915#9900]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@gem_lmem_swapping@parallel-random-engines.html
>     - bat-mtlp-9:         NOTRUN -> [SKIP][10] ([i915#4613]) +3 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_mmap@basic:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][11] ([i915#4083])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@gem_mmap@basic.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][12] ([i915#11343] / [i915#11346])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@gem_mmap@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][13] ([i915#4079]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@gem_render_tiled_blits@basic.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][14] ([i915#10197] / [i915#10211] / [i915#11346] / [i915#11725])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_tiled_blits@basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][15] ([i915#11346] / [i915#12637]) +4 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@gem_tiled_blits@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][16] ([i915#4077]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@gem_tiled_pread_basic:
>     - bat-arlh-2:         NOTRUN -> [SKIP][17] ([i915#10206] / [i915#11346] / [i915#11724])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@gem_tiled_pread_basic.html
>     - bat-adlm-1:         NOTRUN -> [SKIP][18] ([i915#3282] / [i915#9900])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@gem_tiled_pread_basic.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][19] -> [FAIL][20] ([i915#13633])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][21] -> [FAIL][22] ([i915#13633])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][23] ([i915#11681] / [i915#6621])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@i915_pm_rps@basic-api.html
>     - bat-adlm-1:         NOTRUN -> [SKIP][24] ([i915#6621] / [i915#9900])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@i915_pm_rps@basic-api.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][25] ([i915#10209] / [i915#11346] / [i915#11681])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live:
>     - bat-twl-2:          NOTRUN -> [ABORT][26] ([i915#12919] / [i915#13503])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-twl-2/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gt_timelines:
>     - bat-twl-2:          NOTRUN -> [ABORT][27] ([i915#12919])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-twl-2/igt@i915_selftest@live@gt_timelines.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][28] ([i915#5190])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][29] ([i915#10200] / [i915#11346] / [i915#11666] / [i915#12203])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-x-tiled-legacy:
>     - bat-arlh-2:         NOTRUN -> [SKIP][30] ([i915#10200] / [i915#11346] / [i915#11666]) +8 other tests skip
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@kms_addfb_basic@basic-x-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][31] ([i915#4212]) +8 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][32] ([i915#4213]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
>     - bat-adlm-1:         NOTRUN -> [SKIP][33] ([i915#9900]) +17 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][34] ([i915#3555] / [i915#3840] / [i915#9159])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - bat-adlm-1:         NOTRUN -> [SKIP][35] ([i915#3637] / [i915#9900]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][36]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-adlm-1:         NOTRUN -> [SKIP][37] ([i915#1849] / [i915#4342] / [i915#9900])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-adlm-1:         NOTRUN -> [SKIP][38] ([i915#5354] / [i915#9900])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][39] ([i915#4077] / [i915#9688]) +1 other test skip
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_psr@psr-primary-mmap-gtt.html
>     - fi-pnv-d510:        NOTRUN -> [SKIP][40] +33 other tests skip
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/fi-pnv-d510/igt@kms_psr@psr-primary-mmap-gtt.html
> 
>   * igt@kms_psr@psr-primary-page-flip:
>     - bat-arlh-2:         NOTRUN -> [SKIP][41] ([i915#11346]) +32 other tests skip
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@kms_psr@psr-primary-page-flip.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - bat-adlm-1:         NOTRUN -> [SKIP][42] ([i915#1072] / [i915#9732] / [i915#9900]) +3 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-arlh-2:         NOTRUN -> [SKIP][43] ([i915#10208] / [i915#11346] / [i915#8809])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-9:         NOTRUN -> [SKIP][44] ([i915#3555] / [i915#8809])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-adlm-1:         NOTRUN -> [SKIP][45] ([i915#3555] / [i915#9900])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-adlm-1:         NOTRUN -> [SKIP][46] ([i915#3708] / [i915#9900]) +3 other tests skip
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-adlm-1/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][47] ([i915#10212] / [i915#11346] / [i915#11726])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][48] ([i915#3708] / [i915#4077]) +1 other test skip
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-read:
>     - bat-arlh-2:         NOTRUN -> [SKIP][49] ([i915#10214] / [i915#11346] / [i915#11726])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@prime_vgem@basic-read.html
>     - bat-mtlp-9:         NOTRUN -> [SKIP][50] ([i915#3708]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@prime_vgem@basic-read.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-mtlp-9:         NOTRUN -> [SKIP][51] ([i915#10216] / [i915#3708])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@prime_vgem@basic-write.html
>     - bat-arlh-2:         NOTRUN -> [SKIP][52] ([i915#10216] / [i915#11346] / [i915#11723])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-2/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fence@nb-await@vecs0:
>     - bat-rpls-4:         [DMESG-WARN][53] ([i915#13400]) -> [PASS][54] +1 other test pass
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-rpls-4/igt@gem_exec_fence@nb-await@vecs0.html
> 
>   * igt@i915_selftest@live:
>     - bat-twl-1:          [ABORT][55] ([i915#12919] / [i915#13503]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-twl-1/igt@i915_selftest@live.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-twl-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@gt_contexts:
>     - bat-twl-1:          [ABORT][57] ([i915#12919]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-twl-1/igt@i915_selftest@live@gt_contexts.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-twl-1/igt@i915_selftest@live@gt_contexts.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [DMESG-FAIL][59] ([i915#12061]) -> [PASS][60] +1 other test pass
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@load:
>     - bat-mtlp-9:         [ABORT][61] -> [DMESG-WARN][62] ([i915#13494])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16080/bat-mtlp-9/igt@i915_module_load@load.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/bat-mtlp-9/igt@i915_module_load@load.html
> 
>   
>   [i915#10197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10197
>   [i915#10200]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10200
>   [i915#10206]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10206
>   [i915#10208]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10208
>   [i915#10209]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10209
>   [i915#10211]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10211
>   [i915#10212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10212
>   [i915#10213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10213
>   [i915#10214]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10214
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11343
>   [i915#11345]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11345
>   [i915#11346]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11346
>   [i915#11666]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11666
>   [i915#11671]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11671
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
>   [i915#11724]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11724
>   [i915#11725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11725
>   [i915#11726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11726
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12203]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12203
>   [i915#12637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12637
>   [i915#12919]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12919
>   [i915#13400]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13400
>   [i915#13494]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13494
>   [i915#13503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13503
>   [i915#13633]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13633
>   [i915#1849]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849
>   [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
>   [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3826
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
>   [i915#9900]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9900
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16080 -> Patchwork_144432v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16080: 68225b9bc1d285bd2ab63355e94f9e661d2f895e @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8224: c659b986ba648584d36b3cfece897bc84a33dcbb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_144432v1: 68225b9bc1d285bd2ab63355e94f9e661d2f895e @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> d73108c0826a drm/i915/dp_mst: Fix disabling the minimum HBlank time
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144432v1/index.html
