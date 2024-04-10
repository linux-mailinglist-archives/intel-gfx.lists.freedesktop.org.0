Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A835289EF98
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 12:08:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E397310E06E;
	Wed, 10 Apr 2024 10:08:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T1RfwQKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A7B8113292
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 10:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712743701; x=1744279701;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iTC7ZcK+/25XZNdov2bsrfW6MkGb4EyP9M38phPAjFA=;
 b=T1RfwQKg09W0vO41T7O47ZdnAKqXv+2I+Pf77kk1p9OUUVT1+cTPP44I
 bnuQR/QqotrptkddqURGuEQcabQxw5DJhSQUNrWNW/DcUb/yKBOftpEYX
 xVVskqDag7Sjh7Bc3di2enGCwXAAsNUpL+t514tOL9OdDyD/97dwPkgYb
 lOr7gupS+tAKIbmgsI4PS1gsrv+8T2b9xDt37wgX+7OLcjgZQpLMqg4pA
 AWs9wEKkag5Sg41hz6UJJ0/EVA+f8MOlyjOiP9QmZmqvtkJR6D9Fwl7M7
 RY7ZvtPn/wm1EGYrcpIxUSKvILaJJNwWgCuZC+9flU0r2LN3hkp4ZeXsN g==;
X-CSE-ConnectionGUID: l89I6dJVRSej3yVSyNYwJg==
X-CSE-MsgGUID: wGzt5dk2Ske758giazbwdg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="30579045"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="30579045"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 03:08:19 -0700
X-CSE-ConnectionGUID: WpP4kj/oTu2CvOvzuC3uxQ==
X-CSE-MsgGUID: JJXhLczLQ/Of8YAkImpOyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="20584255"
Received: from oakasatk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.60.54])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 03:08:09 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/edid &
 drm/i915: vendor and product id logging improvements (rev3)
In-Reply-To: <171273608618.1319548.10132695946960857052@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1712655867.git.jani.nikula@intel.com>
 <171273608618.1319548.10132695946960857052@8e613ede5ea5>
Date: Wed, 10 Apr 2024 13:08:06 +0300
Message-ID: <878r1l8r95.fsf@intel.com>
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

On Wed, 10 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/edid & drm/i915: vendor and product id logging improvements (rev3)
> URL   : https://patchwork.freedesktop.org/series/131414/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14552 -> Patchwork_131414v3
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_131414v3 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_131414v3, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/index.html
>
> Participating hosts (37 -> 34)
> ------------------------------
>
>   Additional (2): fi-rkl-11600 fi-cfl-8109u 
>   Missing    (5): bat-dg1-7 fi-elk-e7500 fi-blb-e6850 bat-jsl-1 bat-arls-3 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_131414v3:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@i915_selftest@live@gt_timelines:
>     - bat-arls-2:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-arls-2/igt@i915_selftest@live@gt_timelines.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-arls-2/igt@i915_selftest@live@gt_timelines.html

I don't see how this could result from the changes. Please re-report.

Thanks,
Jani.

>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_131414v3 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][3] ([i915#9318])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@debugfs_test@basic-hwmon.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][4] ([i915#2190])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-cfl-8109u/igt@gem_huc_copy@huc-copy.html
>     - fi-rkl-11600:       NOTRUN -> [SKIP][5] ([i915#2190])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-8:          [PASS][6] -> [FAIL][7] ([i915#10378])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-dg2-8/igt@gem_lmem_swapping@basic@lmem0.html
>
>   * igt@gem_lmem_swapping@parallel-random-engines:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][8] ([i915#4613]) +3 other tests skip
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@gem_lmem_swapping@parallel-random-engines.html
>
>   * igt@gem_lmem_swapping@verify-random:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][9] ([i915#4613]) +3 other tests skip
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html
>
>   * igt@gem_tiled_pread_basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][10] ([i915#3282])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_selftest@live@gt_engines:
>     - bat-adls-6:         [PASS][11] -> [TIMEOUT][12] ([i915#10026])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-adls-6/igt@i915_selftest@live@gt_engines.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-adls-6/igt@i915_selftest@live@gt_engines.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][13] ([i915#4103]) +1 other test skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
>
>   * igt@kms_dsc@dsc-basic:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][14] ([i915#3555] / [i915#3840])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][15]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][16] ([i915#5354])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_pm_backlight@basic-brightness.html
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][17] +11 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-cfl-8109u/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][18] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_psr@psr-sprite-plane-onoff.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][19] ([i915#3555])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-read:
>     - fi-rkl-11600:       NOTRUN -> [SKIP][20] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/fi-rkl-11600/igt@prime_vgem@basic-read.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-11:         [FAIL][21] ([i915#10378]) -> [PASS][22]
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-dg2-11/igt@gem_lmem_swapping@basic@lmem0.html
>     - bat-dg2-9:          [FAIL][23] ([i915#10378]) -> [PASS][24]
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>
>   * igt@i915_selftest@live@gt_contexts:
>     - bat-dg2-8:          [ABORT][25] ([i915#10366]) -> [PASS][26]
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14552/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/bat-dg2-8/igt@i915_selftest@live@gt_contexts.html
>
>   
>   [i915#10026]: https://gitlab.freedesktop.org/drm/intel/issues/10026
>   [i915#10366]: https://gitlab.freedesktop.org/drm/intel/issues/10366
>   [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14552 -> Patchwork_131414v3
>
>   CI-20190529: 20190529
>   CI_DRM_14552: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7803: 9669a17ae56f1dcd22ba4c5cb39b3cd334a46862 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_131414v3: 057ec21a54cddd595a7725fa8731eb4c5bd5abff @ git://anongit.freedesktop.org/gfx-ci/linux
>
>
> ### Linux commits
>
> 423abf498a49 drm/i915/bios: return drm_edid_product_id from get_lvds_pnp_id()
> bec9e40d51c6 drm/i915/bios: switch to struct drm_edid and struct drm_edid_product_id
> 9198292942f9 drm/edid: add drm_edid_print_product_id()
> fe86e819efa5 drm/edid: add drm_edid_get_product_id()
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131414v3/index.html

-- 
Jani Nikula, Intel
