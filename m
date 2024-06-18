Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF40F90D300
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 15:57:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5830510E691;
	Tue, 18 Jun 2024 13:57:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bSRboEma";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C906E10E0C3;
 Tue, 18 Jun 2024 13:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718719043; x=1750255043;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=kGL6cqW1XyLECKAzCuaV1RFM1aDx1EPrJfGJovKdUB8=;
 b=bSRboEmabuAnASIsHq7gneTRCSUiykk18Jm/8Ukc9kbdb8ezPMAz5J6T
 /7cD3eln6YcXcRkQEJe5e3jjoTO4VARi2ZVDy29GzG8OceOdk7RohLIi6
 NX/s/KRi6BYTJetbz/IQr3adDuy0ytcZwxPp9E/eM/8TWgm1QrPNnziyL
 o9oBLBKVoS0jLVnJxdg2JjAZeHYb/dIwklUXsJ1Tprd47in9TXdEgtwQB
 ii7NrBuNtSExsmTPqg8B9MH+00klO2zO9UO4xkwMtF2keVMVB1h/ezTTU
 WPNsubOkG9uUg2ETpqeAZKRc+lxj12CKgZccLgTUAF5GoxcJhFiD3QklF A==;
X-CSE-ConnectionGUID: OiCRD6muT3+SJ8+0558m5w==
X-CSE-MsgGUID: o2x2+cTjR7aRXhH7WLxq6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11107"; a="15465696"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15465696"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:57:23 -0700
X-CSE-ConnectionGUID: pEU4zUA7Ta6fowsL5/84hw==
X-CSE-MsgGUID: jBmuKBUnRsesW7ZHaum9jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="64799865"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 06:57:21 -0700
Date: Tue, 18 Jun 2024 16:57:30 +0300
From: Imre Deak <imre.deak@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?=
 =?utf-8?Q?e_for_series_starting_with_=5Bv2=2C1=2F3=5D_drm=2Fi915?=
 =?utf-8?Q?=3A?= Move encoder suspend/shutdown helpers to intel_encoder.c
Message-ID: <ZnGSSoSG9yXgOBYS@ideak-desk.fi.intel.com>
References: <20240618125255.4080303-1-imre.deak@intel.com>
 <171871741487.103671.7361030199944321061@a6498e030952>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <171871741487.103671.7361030199944321061@a6498e030952>
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

could you check the failure below, it looks unrelated:

On Tue, Jun 18, 2024 at 01:30:14PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [v2,1/3] drm/i915: Move encoder suspend/shutdown helpers to intel_encoder.c
> URL   : https://patchwork.freedesktop.org/series/135014/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14963 -> Patchwork_135014v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_135014v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_135014v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/index.html
> 
> Participating hosts (42 -> 41)
> ------------------------------
> 
>   Additional (3): fi-cfl-8109u bat-mtlp-8 fi-elk-e7500 
>   Missing    (4): bat-kbl-2 bat-jsl-1 fi-snb-2520m fi-kbl-8809g 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_135014v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1:
>     - bat-dg2-8:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14963/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-dg2-8/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-dp-1.html

There wasn't any suspend/resume sequence run on the above machine before
the failure, so this patch changing only the driver's suspend handler
shouldn't have an effect. Looks like the problem is:

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11359

on a different pipe. Could you please unblock shards testing for this
patchset?

Thanks,
Imre

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_135014v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@debugfs_test@basic-hwmon:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@debugfs_test@basic-hwmon.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([i915#2190])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][5] ([i915#4613]) +3 other tests skip
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@gem_lmem_swapping@parallel-random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][6] ([i915#4613]) +3 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_mmap@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][7] ([i915#4083])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@gem_mmap@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][8] ([i915#4079]) +1 other test skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][9] ([i915#4077]) +2 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@gem_tiled_fence_blits@basic.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][10] ([i915#6621])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@i915_pm_rps@basic-api.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][11] ([i915#5190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][12] ([i915#4212]) +8 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][13] ([i915#4213]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_dsc@dsc-basic:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][14] +11 other tests skip
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/fi-cfl-8109u/igt@kms_dsc@dsc-basic.html
>     - bat-mtlp-8:         NOTRUN -> [SKIP][15] ([i915#3555] / [i915#3840] / [i915#9159])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_dsc@dsc-basic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][16]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][17] ([i915#5274])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1:
>     - fi-elk-e7500:       NOTRUN -> [SKIP][18] +24 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/fi-elk-e7500/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-nv12@pipe-a-hdmi-a-1.html
> 
>   * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][19] ([i915#4077] / [i915#9688])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][20] ([i915#3555] / [i915#8809])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-read:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][21] ([i915#3708]) +1 other test skip
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@prime_vgem@basic-fence-read.html
> 
>   * igt@prime_vgem@basic-gtt:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][22] ([i915#3708] / [i915#4077]) +1 other test skip
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@prime_vgem@basic-gtt.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-mtlp-8:         NOTRUN -> [SKIP][23] ([i915#10216] / [i915#3708])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-8/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - {bat-mtlp-9}:       [DMESG-WARN][24] ([i915#11009]) -> [PASS][25]
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14963/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-mtlp-9/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-9:          [FAIL][26] ([i915#10378]) -> [PASS][27]
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14963/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#10216]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10216
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10580]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10580
>   [i915#11009]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11009
>   [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274
>   [i915#6121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6121
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9159]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9159
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14963 -> Patchwork_135014v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14963: 5a093f17293ae50283f19372263a7595ed50bc34 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7890: a137e386eba9f46f838315f5d93b87561691d45e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_135014v1: 5a093f17293ae50283f19372263a7595ed50bc34 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135014v1/index.html
