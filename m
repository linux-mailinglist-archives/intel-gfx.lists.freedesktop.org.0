Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D55BF8AAE04
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 14:05:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D69D710FE79;
	Fri, 19 Apr 2024 12:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gNZKe7yX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 784F310FE75
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 12:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713528303; x=1745064303;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Z6EQhSAOHG/gzl5H+OBgEDdbTndstAULAsz9ADf/AGM=;
 b=gNZKe7yXOXPN30lRI6SpluMSAEdR07jBhCmavYfvX5phhLJgzwZp+Jej
 A0pXxTdM8mmAHm/4+W528eZ1QUKKBmRob/FXCxoS4GLdQGqrfbSruN3ZS
 uUKGcP3oO+9sgzNvXGhLyGi7akdfevMuZQpOUCzk4R0NiavwynEqDRh9y
 HPPNBy7dtGg7rrZUjFQuWfC4PFYLldXdKfHYfiGfHK6Q42liIYtja1inI
 0uO5lmM0OvKgyKgUf8QgQ84biuiPUzCzp6dfQ3tBmP6wA0kH0Q/vUz3/r
 Cfvt9GzlckWAXa5NrguWl3xBFKHTAXOKWfnshvzlo01jm26pOgo5CJCFt Q==;
X-CSE-ConnectionGUID: LAJ3+FeeQtCgMdZGaPRY5g==
X-CSE-MsgGUID: 3rkiPdJkRlWvvi0axxCqNA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8985808"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8985808"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:05:02 -0700
X-CSE-ConnectionGUID: +B+C5T5STHyNdZuC7jW4YQ==
X-CSE-MsgGUID: /zpzcbLBSdOXTT2lVcrHoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27930979"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 05:05:01 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=97?= Fi.CI.BAT: failure for drm/i915/dsi: stop
 relying on implicit dev_priv variable (rev2)
In-Reply-To: <171352402278.1520059.10980206345371832882@8e613ede5ea5>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1713520813.git.jani.nikula@intel.com>
 <171352402278.1520059.10980206345371832882@8e613ede5ea5>
Date: Fri, 19 Apr 2024 15:04:55 +0300
Message-ID: <874jbxwobc.fsf@intel.com>
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

On Fri, 19 Apr 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/dsi: stop relying on implicit dev_priv variable (rev2)
> URL   : https://patchwork.freedesktop.org/series/132285/
> State : failure
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_14611 -> Patchwork_132285v2
> ====================================================
>
> Summary
> -------
>
>   **FAILURE**
>
>   Serious unknown changes coming with Patchwork_132285v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_132285v2, please notify your bug team (&quot;I915-ci-infra@lists.freedesktop.org&quot;) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/index.html
>
> Participating hosts (34 -> 33)
> ------------------------------
>
>   Additional (4): fi-glk-j4005 bat-dg2-11 bat-mtlp-6 fi-elk-e7500 
>   Missing    (5): fi-kbl-7567u bat-dg1-7 fi-apl-guc fi-kbl-8809g bat-jsl-1 
>
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_132285v2:
>
> ### IGT changes ###
>
> #### Possible regressions ####
>
>   * igt@core_auth@basic-auth:
>     - bat-arls-2:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-arls-2/igt@core_auth@basic-auth.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-arls-2/igt@core_auth@basic-auth.html
>
>   * igt@i915_selftest@live@active:
>     - fi-glk-j4005:       NOTRUN -> [DMESG-FAIL][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/fi-glk-j4005/igt@i915_selftest@live@active.html
>
>   * igt@i915_selftest@live@gt_engines:
>     - bat-arls-1:         [PASS][4] -> [DMESG-WARN][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-arls-1/igt@i915_selftest@live@gt_engines.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-arls-1/igt@i915_selftest@live@gt_engines.html

Completely unrelated, please re-report.

BR,
Jani.

>
>   
> #### Suppressed ####
>
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
>
>   * igt@debugfs_test@read_all_entries:
>     - {bat-mtlp-9}:       [PASS][6] -> [ABORT][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-mtlp-9/igt@debugfs_test@read_all_entries.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-9/igt@debugfs_test@read_all_entries.html
>
>   
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_132285v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Issues hit ####
>
>   * igt@debugfs_test@basic-hwmon:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][8] ([i915#9318])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@debugfs_test@basic-hwmon.html
>
>   * igt@fbdev@info:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][9] ([i915#1849] / [i915#2582])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@fbdev@info.html
>
>   * igt@fbdev@write:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][10] ([i915#2582]) +3 other tests skip
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@fbdev@write.html
>
>   * igt@gem_huc_copy@huc-copy:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][11] ([i915#2190])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/fi-glk-j4005/igt@gem_huc_copy@huc-copy.html
>
>   * igt@gem_lmem_swapping@basic:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][12] ([i915#4613]) +3 other tests skip
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/fi-glk-j4005/igt@gem_lmem_swapping@basic.html
>
>   * igt@gem_lmem_swapping@verify-random:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][13] ([i915#4613]) +3 other tests skip
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@gem_lmem_swapping@verify-random.html
>
>   * igt@gem_mmap@basic:
>     - bat-dg2-11:         NOTRUN -> [SKIP][14] ([i915#4083])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@gem_mmap@basic.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][15] ([i915#4083])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@gem_mmap@basic.html
>
>   * igt@gem_tiled_blits@basic:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][16] ([i915#4077]) +2 other tests skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@gem_tiled_blits@basic.html
>
>   * igt@gem_tiled_fence_blits@basic:
>     - bat-dg2-11:         NOTRUN -> [SKIP][17] ([i915#4077]) +2 other tests skip
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@gem_tiled_fence_blits@basic.html
>
>   * igt@gem_tiled_pread_basic:
>     - bat-dg2-11:         NOTRUN -> [SKIP][18] ([i915#4079]) +1 other test skip
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@gem_tiled_pread_basic.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][19] ([i915#4079]) +1 other test skip
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@gem_tiled_pread_basic.html
>
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-11:         NOTRUN -> [SKIP][20] ([i915#6621])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@i915_pm_rps@basic-api.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][21] ([i915#6621])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@i915_pm_rps@basic-api.html
>
>   * igt@i915_selftest@live@objects:
>     - bat-arls-1:         [PASS][22] -> [DMESG-FAIL][23] ([i915#10262]) +32 other tests dmesg-fail
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-arls-1/igt@i915_selftest@live@objects.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-arls-1/igt@i915_selftest@live@objects.html
>
>   * igt@i915_selftest@live@workarounds:
>     - bat-adlp-6:         [PASS][24] -> [INCOMPLETE][25] ([i915#9413])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-adlp-6/igt@i915_selftest@live@workarounds.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-adlp-6/igt@i915_selftest@live@workarounds.html
>
>   * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][26] ([i915#4212] / [i915#9792]) +8 other tests skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html
>
>   * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>     - bat-dg2-11:         NOTRUN -> [SKIP][27] ([i915#4212]) +7 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html
>
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][28] ([i915#5190] / [i915#9792])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>     - bat-dg2-11:         NOTRUN -> [SKIP][29] ([i915#5190])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
>
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-11:         NOTRUN -> [SKIP][30] ([i915#4215] / [i915#5190])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_addfb_basic@basic-y-tiled-legacy.html
>
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-glk-j4005:       NOTRUN -> [SKIP][31] +10 other tests skip
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/fi-glk-j4005/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>     - bat-dg2-11:         NOTRUN -> [SKIP][32] ([i915#4103] / [i915#4213]) +1 other test skip
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>
>   * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][33] ([i915#9792]) +17 other tests skip
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
>
>   * igt@kms_dsc@dsc-basic:
>     - bat-dg2-11:         NOTRUN -> [SKIP][34] ([i915#3555] / [i915#3840])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_dsc@dsc-basic.html
>
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][35] ([i915#3637] / [i915#9792]) +3 other tests skip
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_flip@basic-flip-vs-dpms.html
>
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-11:         NOTRUN -> [SKIP][36]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_force_connector_basic@force-load-detect.html
>
>   * igt@kms_force_connector_basic@prune-stale-modes:
>     - bat-dg2-11:         NOTRUN -> [SKIP][37] ([i915#5274])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][38] ([i915#5274] / [i915#9792])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html
>
>   * igt@kms_frontbuffer_tracking@basic:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][39] ([i915#4342] / [i915#5354] / [i915#9792])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_frontbuffer_tracking@basic.html
>
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-dg2-11:         NOTRUN -> [SKIP][40] ([i915#5354])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_pm_backlight@basic-brightness.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][41] ([i915#5354] / [i915#9792])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_pm_backlight@basic-brightness.html
>
>   * igt@kms_pm_rpm@basic-pci-d3-state:
>     - fi-elk-e7500:       NOTRUN -> [SKIP][42] +24 other tests skip
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/fi-elk-e7500/igt@kms_pm_rpm@basic-pci-d3-state.html
>
>   * igt@kms_psr@psr-cursor-plane-move:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][43] ([i915#1072] / [i915#9673] / [i915#9732] / [i915#9792]) +3 other tests skip
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_psr@psr-cursor-plane-move.html
>
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - bat-dg2-11:         NOTRUN -> [SKIP][44] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_psr@psr-sprite-plane-onoff.html
>
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-11:         NOTRUN -> [SKIP][45] ([i915#3555])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@kms_setmode@basic-clone-single-crtc.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][46] ([i915#3555] / [i915#8809] / [i915#9792])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@kms_setmode@basic-clone-single-crtc.html
>
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-11:         NOTRUN -> [SKIP][47] ([i915#3708])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@prime_vgem@basic-fence-flip.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][48] ([i915#3708] / [i915#9792])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@prime_vgem@basic-fence-flip.html
>
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-11:         NOTRUN -> [SKIP][49] ([i915#3708] / [i915#4077]) +1 other test skip
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@prime_vgem@basic-fence-mmap.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][50] ([i915#3708] / [i915#4077]) +1 other test skip
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@prime_vgem@basic-fence-mmap.html
>
>   * igt@prime_vgem@basic-read:
>     - bat-dg2-11:         NOTRUN -> [SKIP][51] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-11/igt@prime_vgem@basic-read.html
>     - bat-mtlp-6:         NOTRUN -> [SKIP][52] ([i915#3708]) +1 other test skip
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@prime_vgem@basic-read.html
>
>   * igt@prime_vgem@basic-write:
>     - bat-mtlp-6:         NOTRUN -> [SKIP][53] ([i915#10216] / [i915#3708])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-mtlp-6/igt@prime_vgem@basic-write.html
>
>   
> #### Possible fixes ####
>
>   * igt@gem_lmem_swapping@basic@lmem0:
>     - bat-dg2-9:          [FAIL][54] ([i915#10378]) -> [PASS][55]
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14611/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/bat-dg2-9/igt@gem_lmem_swapping@basic@lmem0.html
>
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>   [i915#10216]: https://gitlab.freedesktop.org/drm/intel/issues/10216
>   [i915#10262]: https://gitlab.freedesktop.org/drm/intel/issues/10262
>   [i915#10378]: https://gitlab.freedesktop.org/drm/intel/issues/10378
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/intel/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/intel/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/intel/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/intel/issues/4215
>   [i915#4342]: https://gitlab.freedesktop.org/drm/intel/issues/4342
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
>   [i915#5274]: https://gitlab.freedesktop.org/drm/intel/issues/5274
>   [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
>   [i915#8809]: https://gitlab.freedesktop.org/drm/intel/issues/8809
>   [i915#9318]: https://gitlab.freedesktop.org/drm/intel/issues/9318
>   [i915#9413]: https://gitlab.freedesktop.org/drm/intel/issues/9413
>   [i915#9673]: https://gitlab.freedesktop.org/drm/intel/issues/9673
>   [i915#9732]: https://gitlab.freedesktop.org/drm/intel/issues/9732
>   [i915#9792]: https://gitlab.freedesktop.org/drm/intel/issues/9792
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_14611 -> Patchwork_132285v2
>
>   CI-20190529: 20190529
>   CI_DRM_14611: d02ac9d1c1a99eac3bb111d443de62d7286f7708 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7814: 7814
>   Patchwork_132285v2: d02ac9d1c1a99eac3bb111d443de62d7286f7708 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_132285v2/index.html

-- 
Jani Nikula, Intel
