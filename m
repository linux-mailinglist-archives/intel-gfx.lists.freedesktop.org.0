Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA051669C0
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 22:22:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426526EE5F;
	Thu, 20 Feb 2020 21:22:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DDF6EE5F
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Feb 2020 21:22:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Feb 2020 13:22:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,465,1574150400"; d="scan'208";a="236372616"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga003.jf.intel.com with SMTP; 20 Feb 2020 13:22:08 -0800
Date: Thu, 20 Feb 2020 13:22:08 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200220212208.GI2733348@mdroper-desk1.amr.corp.intel.com>
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
 <158137321780.3099.10671401057618107059@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158137321780.3099.10671401057618107059@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Program_MBUS_with_rmw_d?=
 =?utf-8?q?uring_initialization_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 10, 2020 at 10:20:17PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915: Program MBUS with rmw during initialization (rev2)
> URL   : https://patchwork.freedesktop.org/series/72950/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7903 -> Patchwork_16509
> ====================================================
> 
> Summary
> -------
> 
>   **WARNING**
> 
>   Minor unknown changes coming with Patchwork_16509 need to be verified
>   manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16509, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_16509:
> 
> ### IGT changes ###
> 
> #### Warnings ####
> 
>   * igt@i915_pm_rpm@module-reload:
>     - fi-ivb-3770:        [SKIP][1] ([fdo#109271]) -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-ivb-3770/igt@i915_pm_rpm@module-reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-ivb-3770/igt@i915_pm_rpm@module-reload.html

Unrelated IVB issue; wouldn't be caused by this patch.

Patchwork also shows clean results for the shards CI, although I can't
find the results mail in my inbox.

Applied to dinq.  Thanks Matt Atwood for the reviews.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16509 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_parallel@basic:
>     - fi-byt-n2820:       [PASS][3] -> [TIMEOUT][4] ([fdo#112271])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@gem_exec_parallel@basic.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-byt-n2820/igt@gem_exec_parallel@basic.html
> 
>   * igt@i915_selftest@live_blt:
>     - fi-hsw-4770r:       [PASS][5] -> [DMESG-FAIL][6] ([i915#553] / [i915#725])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770r/igt@i915_selftest@live_blt.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-hsw-4770r/igt@i915_selftest@live_blt.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live_blt:
>     - fi-bsw-n3050:       [INCOMPLETE][7] ([i915#392]) -> [PASS][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bsw-n3050/igt@i915_selftest@live_blt.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-bsw-n3050/igt@i915_selftest@live_blt.html
>     - fi-hsw-4770:        [DMESG-FAIL][9] ([i915#553] / [i915#725]) -> [PASS][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-hsw-4770/igt@i915_selftest@live_blt.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-hsw-4770/igt@i915_selftest@live_blt.html
> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-cfl-8700k:       [DMESG-FAIL][11] ([i915#623]) -> [PASS][12]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-cfl-8700k/igt@i915_selftest@live_gem_contexts.html
>     - fi-byt-n2820:       [DMESG-FAIL][13] ([i915#1052]) -> [PASS][14]
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-byt-n2820/igt@i915_selftest@live_gem_contexts.html
>     - fi-cfl-guc:         [INCOMPLETE][15] ([CI#80] / [fdo#106070] / [i915#424]) -> [PASS][16]
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-cfl-guc/igt@i915_selftest@live_gem_contexts.html
>     - fi-cml-s:           [DMESG-FAIL][17] ([i915#877]) -> [PASS][18]
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-cml-s/igt@i915_selftest@live_gem_contexts.html
> 
>   * igt@i915_selftest@live_gtt:
>     - fi-bdw-5557u:       [TIMEOUT][19] ([fdo#112271]) -> [PASS][20]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7903/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/fi-bdw-5557u/igt@i915_selftest@live_gtt.html
> 
>   
>   [CI#80]: https://gitlab.freedesktop.org/gfx-ci/i915-infra/issues/80
>   [fdo#106070]: https://bugs.freedesktop.org/show_bug.cgi?id=106070
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#1052]: https://gitlab.freedesktop.org/drm/intel/issues/1052
>   [i915#392]: https://gitlab.freedesktop.org/drm/intel/issues/392
>   [i915#424]: https://gitlab.freedesktop.org/drm/intel/issues/424
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#623]: https://gitlab.freedesktop.org/drm/intel/issues/623
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#877]: https://gitlab.freedesktop.org/drm/intel/issues/877
> 
> 
> Participating hosts (47 -> 44)
> ------------------------------
> 
>   Additional (3): fi-skl-lmem fi-kbl-7560u fi-snb-2600 
>   Missing    (6): fi-ilk-m540 fi-hsw-4200u fi-byt-squawks fi-snb-2520m fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7903 -> Patchwork_16509
> 
>   CI-20190529: 20190529
>   CI_DRM_7903: 47b768c475f4a11a48bc43e6228660f8b26a542b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5433: 6a96c17f3a1b4e1f90b1a0b0ce42a7219875d1a4 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16509: 5a3c01778052d138ca6065b76e55f9a98d225f34 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 5a3c01778052 drm/i915/tgl: Program MBUS_ABOX{1, 2}_CTL during display init
> 901419eb8a59 drm/i915: Program MBUS with rmw during initialization
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16509/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
