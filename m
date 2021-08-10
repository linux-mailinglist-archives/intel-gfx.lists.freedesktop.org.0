Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 848793E7C8F
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Aug 2021 17:40:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8844E89F75;
	Tue, 10 Aug 2021 15:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FA8989F75
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 15:40:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="275964178"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="275964178"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 08:40:31 -0700
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="506183316"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 08:40:30 -0700
Date: Tue, 10 Aug 2021 20:52:32 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: lakshminarayana.vudum@intel.com
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210810152230.GA814@intel.com>
References: <20210810113112.31739-1-anshuman.gupta@intel.com>
 <162860384942.29683.15649135811749450065@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <162860384942.29683.15649135811749450065@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgVHdl?=
 =?utf-8?q?aked_Wa=5F14010685332_for_all_PCHs?=
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

On 2021-08-10 at 13:57:29 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Tweaked Wa_14010685332 for all PCHs
> URL   : https://patchwork.freedesktop.org/series/93548/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10464 -> Patchwork_20792
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20792 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20792, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20792:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - fi-rkl-guc:         NOTRUN -> [DMESG-WARN][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
	Hi Lakshmi ,
	Above CI BAT failure is a unrealted failure(not realted to display), it seems related to core power.
	could you plese create the issue and re-report the result.
	Thanks,
	Anshuman Gupta.	
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20792 that come from known issues:
> 
> ### CI changes ###
> 
> #### Issues hit ####
> 
>   * boot:
>     - fi-kbl-soraka:      [PASS][2] -> [FAIL][3] ([i915#3895])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/fi-kbl-soraka/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-kbl-soraka/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@prime_vgem@basic-userptr:
>     - fi-rkl-guc:         NOTRUN -> [SKIP][4] ([i915#3301])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-rkl-guc/igt@prime_vgem@basic-userptr.html
> 
>   * igt@prime_vgem@basic-write:
>     - fi-rkl-guc:         NOTRUN -> [SKIP][5] ([i915#3291]) +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-rkl-guc/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_pm_rps@basic-api:
>     - fi-rkl-guc:         [DMESG-WARN][6] ([i915#3925]) -> [PASS][7]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-rkl-guc/igt@i915_pm_rps@basic-api.html
> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - fi-rkl-guc:         [FAIL][8] ([i915#3925]) -> [FAIL][9] ([i915#1602])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10464/fi-rkl-guc/igt@runner@aborted.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/fi-rkl-guc/igt@runner@aborted.html
> 
>   
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3895]: https://gitlab.freedesktop.org/drm/intel/issues/3895
>   [i915#3925]: https://gitlab.freedesktop.org/drm/intel/issues/3925
> 
> 
> Participating hosts (37 -> 34)
> ------------------------------
> 
>   Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10464 -> Patchwork_20792
> 
>   CI-20190529: 20190529
>   CI_DRM_10464: 294a55f328023a4e36f46e5eb6c4859076efd850 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6165: df5d05d742275b049f6f3c852a86c4769966b126 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_20792: 0af364b9489343e7bf0eb498f34d70f67dd7551c @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 0af364b94893 drm/i915: Tweaked Wa_14010685332 for all PCHs
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20792/index.html
