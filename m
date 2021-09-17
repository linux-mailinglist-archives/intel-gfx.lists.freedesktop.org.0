Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54D5940EF55
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 04:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 931F66EB2B;
	Fri, 17 Sep 2021 02:34:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C7D6EB2C
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 02:34:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="219519568"
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="219519568"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 19:33:54 -0700
X-IronPort-AV: E=Sophos;i="5.85,299,1624345200"; d="scan'208";a="482920982"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 19:33:53 -0700
Date: Thu, 16 Sep 2021 19:33:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 damian.kijanczuk@intel.com
Message-ID: <20210917023352.GJ3389343@mdroper-desk1.amr.corp.intel.com>
References: <20210916062736.1733587-1-ayaz.siddiqui@intel.com>
 <163182810423.8837.14698387254326331167@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163182810423.8837.14698387254326331167@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Add_=22intel=5F=22_as_prefix_in_set=5Fmocs=5Findex?=
 =?utf-8?b?KCkgKHJldjIp?=
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

On Thu, Sep 16, 2021 at 09:35:04PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/gt: Add "intel_" as prefix in set_mocs_index() (rev2)
> URL   : https://patchwork.freedesktop.org/series/94721/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10599 -> Patchwork_21077
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21077 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21077, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21077:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload:
>     - fi-icl-y:           [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-icl-y/igt@i915_module_load@reload.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-icl-y/igt@i915_module_load@reload.html

Different test, but this seems to be the same panic seen in
https://gitlab.freedesktop.org/drm/intel/-/issues/4130 due to a page
fault in azx_interrupt() (from the snd_hda_codec driver).


Matt

> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@i915_module_load@reload:
>     - {fi-ehl-2}:         [INCOMPLETE][3] ([i915#4136]) -> [INCOMPLETE][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-ehl-2/igt@i915_module_load@reload.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-ehl-2/igt@i915_module_load@reload.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21077 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_basic@cs-sdma:
>     - fi-kbl-7500u:       NOTRUN -> [SKIP][5] ([fdo#109271]) +17 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-kbl-7500u/igt@amdgpu/amd_basic@cs-sdma.html
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-cfl-guc:         [PASS][6] -> [INCOMPLETE][7] ([i915#4130])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@i915_module_load@reload:
>     - fi-skl-6700k2:      [PASS][8] -> [INCOMPLETE][9] ([i915#4130])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-skl-6700k2/igt@i915_module_load@reload.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-skl-6700k2/igt@i915_module_load@reload.html
> 
>   * igt@runner@aborted:
>     - fi-kbl-soraka:      NOTRUN -> [FAIL][10] ([i915#2426] / [i915#3363])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-kbl-soraka/igt@runner@aborted.html
>     - fi-skl-6700k2:      NOTRUN -> [FAIL][11] ([i915#2426] / [i915#3363])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-skl-6700k2/igt@runner@aborted.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_module_load@reload:
>     - fi-kbl-7500u:       [INCOMPLETE][12] ([i915#4130] / [i915#4136]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-7500u/igt@i915_module_load@reload.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-kbl-7500u/igt@i915_module_load@reload.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_module_load@reload:
>     - fi-cml-u2:          [INCOMPLETE][14] ([i915#4130] / [i915#4136]) -> [INCOMPLETE][15] ([i915#4130])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-cml-u2/igt@i915_module_load@reload.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-cml-u2/igt@i915_module_load@reload.html
>     - fi-kbl-soraka:      [INCOMPLETE][16] -> [INCOMPLETE][17] ([i915#4130])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10599/fi-kbl-soraka/igt@i915_module_load@reload.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/fi-kbl-soraka/igt@i915_module_load@reload.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
>   [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
>   [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#4130]: https://gitlab.freedesktop.org/drm/intel/issues/4130
>   [i915#4136]: https://gitlab.freedesktop.org/drm/intel/issues/4136
> 
> 
> Participating hosts (38 -> 35)
> ------------------------------
> 
>   Missing    (3): fi-bdw-samus fi-bsw-cyan bat-dg1-6 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10599 -> Patchwork_21077
> 
>   CI-20190529: 20190529
>   CI_DRM_10599: 7517e1f3124126ca9f24627f9494330d155e5ff6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6211: 7b275b3eb17ddf6e7c5b7b9ba359b7f5345a5311 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_21077: 09f1c5e7cc42089c657204d67f37e60b0375a6c9 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 09f1c5e7cc42 drm/i915/gt: Add "intel_" as prefix in set_mocs_index()
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21077/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
