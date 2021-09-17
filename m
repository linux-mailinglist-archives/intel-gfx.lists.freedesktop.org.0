Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1D940FED6
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 19:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A55CA6E041;
	Fri, 17 Sep 2021 17:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 720656E041
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 17:50:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="219657255"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="219657255"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:50:06 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="701349833"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 10:50:06 -0700
Date: Fri, 17 Sep 2021 10:50:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210917175005.GO3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210917170845.836358-1-matthew.d.roper@intel.com>
 <163190069598.810.8282055002158807050@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163190069598.810.8282055002158807050@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Make_wa_list_per-gt?=
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

On Fri, Sep 17, 2021 at 05:44:55PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Make wa list per-gt
> URL   : https://patchwork.freedesktop.org/series/94811/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10604 -> Patchwork_21086
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21086 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21086, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21086:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-plain-flip@c-dp1:
>     - fi-cfl-8109u:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cfl-8109u/igt@kms_flip@basic-plain-flip@c-dp1.html

(kms_flip:5362) CRITICAL: Test assertion failure function __run_test_on_crtc_set, file ../tests/kms_flip.c:1333:
(kms_flip:5362) CRITICAL: Failed assertion: crtc_count > 1 || crtc_idxs[0] < 2

Not related to this GT workaround refactoring.


Matt

> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-soraka:      [INCOMPLETE][3] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-soraka/igt@i915_module_load@reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-kbl-soraka/igt@i915_module_load@reload.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_module_load@reload:
>     - {fi-ehl-2}:         [INCOMPLETE][5] ([i915#4136]) -> [INCOMPLETE][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-ehl-2/igt@i915_module_load@reload.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-ehl-2/igt@i915_module_load@reload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21086 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@cs-gfx:
>     - fi-rkl-guc:         NOTRUN -> [SKIP][7] ([fdo#109315]) +17 similar issues
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html
> 
>   * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
>     - fi-cfl-8700k:       NOTRUN -> [SKIP][8] ([fdo#109271]) +17 similar issues
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cfl-8700k/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-cfl-guc:         [PASS][9] -> [INCOMPLETE][10] ([i915#4130])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
>     - fi-tgl-1115g4:      NOTRUN -> [INCOMPLETE][11] ([i915#4130])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
>     - fi-kbl-7567u:       [PASS][12] -> [INCOMPLETE][13] ([i915#4130])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-kbl-7567u/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][14] ([i915#2190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-6700k2:      NOTRUN -> [INCOMPLETE][15] ([i915#4130])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-skl-6700k2/igt@i915_module_load@reload.html
>     - fi-skl-guc:         [PASS][16] -> [INCOMPLETE][17] ([i915#4130])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-guc/igt@i915_module_load@reload.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-skl-guc/igt@i915_module_load@reload.html
>     - fi-kbl-guc:         [PASS][18] -> [INCOMPLETE][19] ([i915#4139])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-guc/igt@i915_module_load@reload.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-kbl-guc/igt@i915_module_load@reload.html
> 
>   * igt@i915_pm_backlight@basic-brightness:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][20] ([i915#1155])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@i915_pm_backlight@basic-brightness.html
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][21] ([fdo#111827]) +8 similar issues
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@kms_chamelium@common-hpd-after-suspend.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][22] ([i915#4103]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][23] ([fdo#109285])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>     - fi-cfl-8109u:       [PASS][24] -> [DMESG-WARN][25] ([i915#295]) +14 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> 
>   * igt@kms_psr@primary_mmap_gtt:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][26] ([i915#1072]) +3 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@kms_psr@primary_mmap_gtt.html
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-tgl-1115g4:      NOTRUN -> [SKIP][27] ([i915#3301])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@prime_vgem@basic-userptr.html
> 
>   * igt@runner@aborted:
>     - fi-kbl-8809g:       NOTRUN -> [FAIL][28] ([i915#2722] / [i915#3363])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-kbl-8809g/igt@runner@aborted.html
>     - fi-tgl-1115g4:      NOTRUN -> [FAIL][29] ([i915#1602] / [i915#2722])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-tgl-1115g4/igt@runner@aborted.html
>     - fi-skl-guc:         NOTRUN -> [FAIL][30] ([i915#2426] / [i915#3363])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-skl-guc/igt@runner@aborted.html
>     - fi-skl-6700k2:      NOTRUN -> [FAIL][31] ([i915#2426] / [i915#3363])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-skl-6700k2/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-skl-6700k2:      [INCOMPLETE][32] ([i915#4130]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
>     - fi-rkl-guc:         [INCOMPLETE][34] ([i915#4130]) -> [PASS][35]
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-cfl-8700k:       [INCOMPLETE][36] -> [PASS][37]
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cfl-8700k/igt@i915_pm_rpm@module-reload.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-8809g:       [INCOMPLETE][38] -> [INCOMPLETE][39] ([i915#4136])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-kbl-8809g/igt@i915_module_load@reload.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-kbl-8809g/igt@i915_module_load@reload.html
>     - fi-icl-u2:          [INCOMPLETE][40] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][41] ([i915#4130])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-icl-u2/igt@i915_module_load@reload.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-icl-u2/igt@i915_module_load@reload.html
>     - fi-cml-u2:          [INCOMPLETE][42] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][43] ([i915#4136])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10604/fi-cml-u2/igt@i915_module_load@reload.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/fi-cml-u2/igt@i915_module_load@reload.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#295]: https://gitlab.freedesktop.org/drm/intel/issues/295
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
>   [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
>   [i915#4139]: https://gitlab.freedesktop.org/drm/intel/issues/4139
> 
> 
> Participating hosts (38 -> 32)
> ------------------------------
> 
>   Additional (1): fi-tgl-1115g4 
>   Missing    (7): fi-ilk-m540 bat-dg1-6 fi-tgl-u2 fi-hsw-4200u fi-ctg-p8600 bat-jsl-2 fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10604 -> Patchwork_21086
> 
>   CI-20190529: 20190529
>   CI_DRM_10604: febea2142ec3332a63b3a0afaee75163207e7060 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21086: 924016e893510cf65aeebc5ee571ff9618280f0c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 924016e89351 drm/i915: Make wa list per-gt
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21086/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
