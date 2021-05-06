Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F07A3759DF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 19:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D7C6E169;
	Thu,  6 May 2021 17:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C7B6E169
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 May 2021 17:58:19 +0000 (UTC)
IronPort-SDR: z2CJdppSdnZjhyyfkh6htQbRupnNmnVcGkOWs0yX7Gg2AzJ1rqYzg8f4F/9hZakvhkb1sSJajF
 flAtNZhcRJXA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="259821005"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="259821005"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 10:58:19 -0700
IronPort-SDR: 2O+i3mgj/VwIXqLdaoOk++enOGipCEhDF51A/HJCm6IAxAbJ14IH3NnUCgn4vA/rLqTtg309nn
 qkXux0h9ZymQ==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="532678122"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 10:58:17 -0700
Date: Thu, 6 May 2021 20:58:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210506175814.GB169895@ideak-desk.fi.intel.com>
References: <20210506161930.309688-1-imre.deak@intel.com>
 <162032060977.15691.7886974549144665505@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162032060977.15691.7886974549144665505@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl=5Fp=3A_Add_support_for_Display_Page_Tables_=28rev2=29?=
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

On Thu, May 06, 2021 at 05:03:29PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl_p: Add support for Display Page Tables (rev2)
> URL   : https://patchwork.freedesktop.org/series/89078/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10053 -> Patchwork_20077
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20077 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20077, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20077:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_chamelium@common-hpd-after-suspend:
>     - fi-kbl-7500u:       [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

Chamelium doesn't disconnect after deasserting manually its HPD signal
as expected. No idea how it would be related to the ADL_P specific
changes in this patchset. I found a few previous instances of the same
problem on the same machine:

https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10045/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20026/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20021/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5766/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html
https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_7697/fi-kbl-7500u/igt@kms_chamelium@common-hpd-after-suspend.html

Lakshmi, could we open a ticket for this?

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20077 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@amdgpu/amd_prime@amd-to-i915:
>     - fi-tgl-y:           NOTRUN -> [SKIP][3] ([fdo#109315] / [i915#2575])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-tgl-y/igt@amdgpu/amd_prime@amd-to-i915.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - fi-snb-2600:        [PASS][4] -> [INCOMPLETE][5] ([i915#2782])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10053/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/fi-snb-2600/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
>   [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
>   [i915#3180]: https://gitlab.freedesktop.org/drm/intel/issues/3180
>   [i915#3277]: https://gitlab.freedesktop.org/drm/intel/issues/3277
>   [i915#3283]: https://gitlab.freedesktop.org/drm/intel/issues/3283
> 
> 
> Participating hosts (44 -> 40)
> ------------------------------
> 
>   Missing    (4): fi-ctg-p8600 fi-ilk-m540 fi-bdw-samus fi-hsw-4200u 
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_10053 -> Patchwork_20077
> 
>   CI-20190529: 20190529
>   CI_DRM_10053: 3e000bbf311ad04f734843e1ba6396b28ba44399 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6080: 1c450c3d4df19cf1087b8ccff3b62cb51addacae @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_20077: e83dba92cd47bd2b5841fc8e7f66bbd7d376e7bd @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> e83dba92cd47 drm/i915/adl_p: Enable remapping to pad DPT FB strides to POT
> 6cc7df9cf93e drm/i915/adl_p: Require a minimum of 8 tiles stride for DPT FBs
> f86259ff5f81 drm/i915/adl_p: Disable support for 90/270 FB rotation
> c55b96cff231 drm/i915/adl_p: Add stride restriction when using DPT
> c14a9051e424 drm/i915/xelpd: Support 128k plane stride
> c248682ab7f3 drm/i915/xelpd: Fallback to plane stride limitations when using DPT
> 9c9b86ac6d1f drm/i915/xelpd: First stab at DPT support
> a35b4326f650 drm/i915/adl_p: ADL_P device info enabling
> a319d966c549 drm/i915/adl_p: Add PCI Devices IDs
> ff3b7dc8f685 drm/i915/xelpd: add XE_LPD display characteristics
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20077/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
