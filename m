Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FA0D8B3227
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 10:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85A110E620;
	Fri, 26 Apr 2024 08:19:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/9vb5Np";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE59410E620;
 Fri, 26 Apr 2024 08:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714119563; x=1745655563;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=y8fzIK3yfm5DCQ6Lrkw8mx5uXyVOOwMbzzeJq8waXLk=;
 b=h/9vb5NpV/lIP54cLmv7oFVEebTwnXIBHPHOS77S2Xczn4YKUDcpHuWu
 hyoHlMjX6j80zRkBin1q6DdUptTPHDX58LRI0aZHEfro6t13JEEOzXnSH
 09XhFdKd8yD/UkVqSq9wEYv2MspZxIVNbasApgducTF+7e3xMyPDcR6dA
 yJfcY/nu+ohCzzV2zQBlIEq6rOvuStGb2IqjniTCpCVmU3IHidGO76z5N
 kaDQLyRjTO0t2NHFF9tpseR/xt2wx53FpbZ3LMAzrIkQE2aPotPLfxvf0
 sFlBTgIshowGakKipbmwzCqMmkntMRmB89i8mPwPO0BAd/o7SBJqnW4IG Q==;
X-CSE-ConnectionGUID: uqANaey5T2q0degrYnSOUw==
X-CSE-MsgGUID: gnE7DaT6Teiepx7/SRUUJw==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9681379"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; 
   d="scan'208";a="9681379"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 01:19:22 -0700
X-CSE-ConnectionGUID: DZ6SoTafR62cHvflDIjURQ==
X-CSE-MsgGUID: ImCybZaaQYOHMgyG85sVBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="29818769"
Received: from mbarlik-mobl2.ger.corp.intel.com (HELO
 jkrzyszt-mobl2.ger.corp.intel.com) ([10.213.16.41])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 01:19:21 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= Fi.CI.BAT: failure for drm/i915/gt: Disarm
 breadcrumbs if engines are already idle (rev2)
Date: Fri, 26 Apr 2024 10:19:17 +0200
Message-ID: <1766954.X513TT2pbd@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <171406615701.1668081.15590034653319080228@8e613ede5ea5>
References: <20240423165505.465734-2-janusz.krzysztofik@linux.intel.com>
 <171406615701.1668081.15590034653319080228@8e613ede5ea5>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi @I915-ci-infra,

On Thursday, 25 April 2024 19:29:17 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Disarm breadcrumbs if engines are already idle (rev2)
> URL   : https://patchwork.freedesktop.org/series/132786/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14657 -> Patchwork_132786v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_132786v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_132786v2, please notify your bug team (&#x27;I915-ci-infra@lists.freedesktop.org&#x27;) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/index.html
> 
> Participating hosts (41 -> 41)
> ------------------------------
> 
>   Additional (1): fi-kbl-8809g 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_132786v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_flink_basic@bad-flink:
>     - bat-arls-2:         NOTRUN -> [FAIL][1] +19 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@gem_flink_basic@bad-flink.html
> 
>   * igt@kms_addfb_basic@addfb25-modifier-no-flag:
>     - bat-arls-2:         NOTRUN -> [INCOMPLETE][2] +42 other tests incomplete
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@kms_addfb_basic@addfb25-modifier-no-flag.html

Plenty of fails and incompletes on a single bat-arls-2 machine.  There must be 
something wrong with that piece of hardware.

Please update filters and re-report.

Thanks,
Janusz


> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_132786v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][3] ([i915#2190])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/fi-kbl-8809g/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests skip
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/fi-kbl-8809g/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-9:          [PASS][5] -> [FAIL][6] ([i915#10378])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14657/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>     - bat-dg2-8:          [PASS][7] -> [FAIL][8] ([i915#10378])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14657/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][9] +30 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/fi-kbl-8809g/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@read-crc:
>     - bat-arls-2:         NOTRUN -> [INCOMPLETE][10] ([i915#10377]) +44 other tests incomplete
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@kms_pipe_crc_basic@read-crc.html
> 
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - bat-arls-2:         NOTRUN -> [INCOMPLETE][11] ([i915#10377] / [i915#10553]) +1 other test incomplete
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@kms_pm_rpm@basic-pci-d3-state.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-arls-2:         NOTRUN -> [SKIP][12] ([i915#10196] / [i915#3708] / [i915#4077])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@prime_vgem@basic-fence-mmap.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fence@basic-busy@ccs0:
>     - bat-arls-2:         [ABORT][13] -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14657/bat-arls-2/igt@gem_exec_fence@basic-busy@ccs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-arls-2/igt@gem_exec_fence@basic-busy@ccs0.html
> 
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-11:         [FAIL][15] ([i915#10378]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14657/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-nick:        [ABORT][17] ([i915#10594]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14657/fi-bsw-nick/igt@i915_selftest@live@execlists.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/fi-bsw-nick/igt@i915_selftest@live@execlists.html
> 
>   
>   [i915#10196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10196
>   [i915#10377]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10377
>   [i915#10378]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10378
>   [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
>   [i915#10594]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10594
>   [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14657 -> Patchwork_132786v2
> 
>   CI-20190529: 20190529
>   CI_DRM_14657: 92b848b529903fb99d21168491692474aae4872c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7824: 7824
>   Patchwork_132786v2: 92b848b529903fb99d21168491692474aae4872c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132786v2/index.html
> 




