Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3CE1523E9
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 01:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52C056F423;
	Wed,  5 Feb 2020 00:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D04E6F423
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 00:11:47 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 16:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="264036557"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga002.fm.intel.com with SMTP; 04 Feb 2020 16:11:46 -0800
Date: Tue, 4 Feb 2020 16:11:46 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20200205001146.GS232048@mdroper-desk1.amr.corp.intel.com>
References: <20200204011032.582737-1-matthew.d.roper@intel.com>
 <158085960621.25089.12501443355272510481@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158085960621.25089.12501443355272510481@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Program_MBUS_with_rmw_d?=
 =?utf-8?q?uring_initialization?=
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

On Tue, Feb 04, 2020 at 11:40:06PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/2] drm/i915: Program MBUS with rmw during initialization
> URL   : https://patchwork.freedesktop.org/series/72950/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7866 -> Patchwork_16408
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16408 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_16408, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_16408:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_create@basic-files:
>     - fi-skl-6770hq:      NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-skl-6770hq/igt@gem_ctx_create@basic-files.html

Unrelated to this series.  These patches only touch a function that's
exclusive to gen11+, so it would have no impact on SKL (which in this
case seems to have just crashed or been disconnected with no visible
errors).


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16408 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_close_race@basic-threads:
>     - fi-byt-j1900:       [PASS][2] -> [TIMEOUT][3] ([fdo#112271] / [i915#1084] / [i915#816])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@gem_close_race@basic-threads.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-byt-j1900/igt@gem_close_race@basic-threads.html
> 
>   * igt@i915_selftest@live_blt:
>     - fi-hsw-4770r:       [PASS][4] -> [DMESG-FAIL][5] ([i915#553] / [i915#725])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-hsw-4770r/igt@i915_selftest@live_blt.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-hsw-4770r/igt@i915_selftest@live_blt.html
>     - fi-byt-j1900:       [PASS][6] -> [DMESG-FAIL][7] ([i915#725])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@i915_selftest@live_blt.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-byt-j1900/igt@i915_selftest@live_blt.html
>     - fi-hsw-4770:        [PASS][8] -> [DMESG-FAIL][9] ([i915#553] / [i915#725])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-hsw-4770/igt@i915_selftest@live_blt.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-hsw-4770/igt@i915_selftest@live_blt.html
> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-byt-j1900:       [PASS][10] -> [DMESG-FAIL][11] ([i915#722])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-byt-j1900/igt@i915_selftest@live_gem_contexts.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_parallel@fds:
>     - fi-byt-j1900:       [FAIL][12] ([i915#694]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@gem_exec_parallel@fds.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-byt-j1900/igt@gem_exec_parallel@fds.html
> 
>   * igt@i915_selftest@live_gem_contexts:
>     - fi-kbl-x1275:       [DMESG-FAIL][14] ([i915#943]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-kbl-x1275/igt@i915_selftest@live_gem_contexts.html
> 
>   * igt@kms_chamelium@hdmi-hpd-fast:
>     - fi-kbl-7500u:       [FAIL][16] ([fdo#111407]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-kbl-7500u/igt@kms_chamelium@hdmi-hpd-fast.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_parallel@contexts:
>     - fi-byt-j1900:       [TIMEOUT][18] ([fdo#112271] / [i915#1084]) -> [FAIL][19] ([i915#694])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7866/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/fi-byt-j1900/igt@gem_exec_parallel@contexts.html
> 
>   
>   [fdo#111407]: https://bugs.freedesktop.org/show_bug.cgi?id=111407
>   [fdo#112271]: https://bugs.freedesktop.org/show_bug.cgi?id=112271
>   [i915#1084]: https://gitlab.freedesktop.org/drm/intel/issues/1084
>   [i915#553]: https://gitlab.freedesktop.org/drm/intel/issues/553
>   [i915#694]: https://gitlab.freedesktop.org/drm/intel/issues/694
>   [i915#722]: https://gitlab.freedesktop.org/drm/intel/issues/722
>   [i915#725]: https://gitlab.freedesktop.org/drm/intel/issues/725
>   [i915#816]: https://gitlab.freedesktop.org/drm/intel/issues/816
>   [i915#943]: https://gitlab.freedesktop.org/drm/intel/issues/943
> 
> 
> Participating hosts (46 -> 45)
> ------------------------------
> 
>   Additional (6): fi-skl-6770hq fi-ilk-650 fi-icl-u3 fi-kbl-8809g fi-icl-dsi fi-bsw-nick 
>   Missing    (7): fi-ilk-m540 fi-hsw-4200u fi-bsw-cyan fi-bwr-2160 fi-ctg-p8600 fi-byt-clapper fi-bdw-samus 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7866 -> Patchwork_16408
> 
>   CI-20190529: 20190529
>   CI_DRM_7866: bd8251861a5c1ac11e3510355f503675a05d26e6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5417: 33cc93c8ba5daa0b7498f297a4f626844d895d06 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_16408: 69823ec347f2cb0a10a2d866488d511f0cd09c2a @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 69823ec347f2 drm/i915/tgl: Program MBUS_ABOX{1, 2}_CTL during display init
> 87fa15148708 drm/i915: Program MBUS with rmw during initialization
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16408/index.html

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
