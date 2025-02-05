Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B627A2986C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 19:09:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08FE710E061;
	Wed,  5 Feb 2025 18:09:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YVUYUSR1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2053A10E061;
 Wed,  5 Feb 2025 18:09:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738778946; x=1770314946;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=aXE8jEE48DaJAdLYvs3TE1a61aiv4iOs2pueSXYSG/Y=;
 b=YVUYUSR1xcWBIAhUxOZPIYv9LLbNuKQ8Pzi03pcwqSMWEAZZ0yc4xuon
 gKrvE2MUHOt0OJF5K2nePyi5txeZWjgkakEOjn7ath6VEk2X5eRi+F6PJ
 +AgKIODvlYk7aKXPVj5U4QUA0yt5Ysi/eitSFf/msVRtfqes8bdwEHGzo
 lTE2YyYP6r4f//a6TAZLnTKssw2ICITFQBgmfMf225LZ5JG6G9BYUecQg
 /XvnTvQqAkRBWh5IO3w9FuvdZkFUD7pMgzqEGLwZ43qzHjVb4wpmhK1cG
 6wT61+Ov7Ytg5nfLJ4QGHsQGk3HFIfcXF3K34XjtvIRkBuxMQIE1+Ld19 Q==;
X-CSE-ConnectionGUID: CgcrsrQKTrGlC2W2l5zSXA==
X-CSE-MsgGUID: Yc0ScYOZSW2XANEhQSiVKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="56780557"
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="56780557"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:09:06 -0800
X-CSE-ConnectionGUID: HIRZcTsRRiOCzPuZf20moQ==
X-CSE-MsgGUID: mTQJ7PelRCOtpINBmqfpAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,262,1732608000"; d="scan'208";a="110868531"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 10:09:04 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= i915.CI.BAT: failure for drm/i915/psr:
 clarify intel_psr_pre_plane_update() conditions (rev2)
In-Reply-To: <173869949227.1028151.13085419230738501676@b555e5b46a47>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250204140518.2971530-1-jani.nikula@intel.com>
 <173869949227.1028151.13085419230738501676@b555e5b46a47>
Date: Wed, 05 Feb 2025 20:09:01 +0200
Message-ID: <87o6zg2ria.fsf@intel.com>
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
> Series: drm/i915/psr: clarify intel_psr_pre_plane_update() conditions (rev2)
> URL   : https://patchwork.freedesktop.org/series/143235/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_16064 -> Patchwork_143235v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_143235v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143235v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/index.html
>
> Participating hosts (42 -> 41)
> ------------------------------
>
>   Additional (1): bat-twl-2 
>   Missing    (2): fi-snb-2520m fi-bsw-n3050 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_143235v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg2-11:         [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-dg2-11/igt@i915_pm_rpm@module-reload.html
>     - bat-rpls-4:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-rpls-4/igt@i915_pm_rpm@module-reload.html
>
>   * igt@kms_flip@basic-flip-vs-dpms@a-dp1:
>     - bat-apl-1:          NOTRUN -> [DMESG-WARN][5] +1 other test dmesg-warn
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-apl-1/igt@kms_flip@basic-flip-vs-dpms@a-dp1.html

Please re-report

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_143235v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - bat-twl-2:          NOTRUN -> [SKIP][6] ([i915#9318])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@debugfs_test@basic-hwmon.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - bat-apl-1:          NOTRUN -> [SKIP][7] +22 other tests skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-apl-1/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][8] ([i915#10213] / [i915#11671]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][9] ([i915#11031])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-twl-2:          NOTRUN -> [SKIP][10] ([i915#10209] / [i915#11681])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@i915_pm_rps@basic-api.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - bat-twl-2:          NOTRUN -> [SKIP][11] ([i915#11030] / [i915#11731]) +1 other test skip
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-twl-2:          NOTRUN -> [SKIP][12] ([i915#9886])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-twl-2:          NOTRUN -> [SKIP][13] ([i915#11032])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-twl-2:          NOTRUN -> [SKIP][14] ([i915#8809])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][15] ([i915#10212] / [i915#3708])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@prime_vgem@basic-fence-read.html
>
>   * igt@prime_vgem@basic-read:
>     - bat-twl-2:          NOTRUN -> [SKIP][16] ([i915#10214] / [i915#3708])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-twl-2:          NOTRUN -> [SKIP][17] ([i915#10216] / [i915#3708])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-twl-2/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_exec_gttfill@basic:
>     - bat-apl-1:          [ABORT][18] -> [PASS][19]
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-apl-1/igt@gem_exec_gttfill@basic.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-apl-1/igt@gem_exec_gttfill@basic.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-mtlp-6:         [DMESG-FAIL][20] ([i915#12061]) -> [PASS][21] +1 other test pass
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-mtlp-6/igt@i915_selftest@live@workarounds.html
>     - {bat-mtlp-9}:       [DMESG-FAIL][22] ([i915#12061]) -> [PASS][23] +1 other test pass
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16064/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
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
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#8809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8809
>   [i915#9318]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9318
>   [i915#9886]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9886
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_16064 -> Patchwork_143235v2
>
>   CI-20190529: 20190529
>   CI_DRM_16064: ac87843456aa558a665df43aa62c03eaf7701bcb @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8223: ccfe042787b082c06402ff9af257f8338b8edd5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143235v2: ac87843456aa558a665df43aa62c03eaf7701bcb @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143235v2/index.html

-- 
Jani Nikula, Intel
