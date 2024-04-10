Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0564289FCD9
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 18:30:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D7C113402;
	Wed, 10 Apr 2024 16:30:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WqozjyT8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62114113402
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Apr 2024 16:30:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712766608; x=1744302608;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=/6FwY6ZrzK/XBl8U8If27s11QNZ91als9S986wH5P3k=;
 b=WqozjyT8fHDRK7Z9GjemGaW75zRcKyQxR+6TMOg2oW0jcTzUUikadQO1
 gWXFm5Lzv5cBHVLWJIY5QM7J+MHRsi1CL6x3VcyDZeq+bHguKyYoJ+UAR
 ayS/NKuMW1vP2cIRDx1XDkdrpqNXJU1TkCsjglBZF4uswfbH6hGvmzEh7
 GLmFKEpmVjHURpOJoMzQm5B+Aypg6VDltD+QMiYjUiQ71rR7nm3Y72D/d
 Znnt91ft9eBznERyOLK8YqyP4mLtmwADAdOpySGtw0LAQwYlVqa4is3rw
 fL0nqOGC/PFNlfdgEfaES5rWxcZBJTZ1f8Bi3DSCYJsoIat1kmuQcNq8W w==;
X-CSE-ConnectionGUID: YTI6dh8DQoOVzwanPtXEHA==
X-CSE-MsgGUID: OXf7dPzWQZS9vm1R+TugWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8016647"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8016647"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:30:07 -0700
X-CSE-ConnectionGUID: Dfnv8v8gTDeakIDYGjVJIA==
X-CSE-MsgGUID: R9XIg877TpCEe6sWsAAGdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="25131797"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 09:30:06 -0700
Date: Wed, 10 Apr 2024 19:30:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ankit K Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: =?utf-8?B?4pyTIEZpLkNJLkJBVDogc3VjY2Vz?= =?utf-8?Q?s?= for
 drm/i915/dp: Add jitter WAs for MST/FEC/DSC links
Message-ID: <Zha+rxqK98ppibIY@ideak-desk.fi.intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <170655375914.806672.1319438269388720488@5338d5abeb45>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <170655375914.806672.1319438269388720488@5338d5abeb45>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 29, 2024 at 06:42:39PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dp: Add jitter WAs for MST/FEC/DSC links
> URL   : https://patchwork.freedesktop.org/series/129277/
> State : success

Patchset is pushed to drm-intel-next, fixing the WA code comment in
patch 4, thanks for the review.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14192 -> Patchwork_129277v1
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html
> 
> Participating hosts (37 -> 35)
> ------------------------------
> 
>   Missing    (2): bat-mtlp-8 fi-snb-2520m 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_129277v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_hangman@error-state-basic:
>     - bat-mtlp-6:         [PASS][1] -> [ABORT][2] ([i915#9414])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-mtlp-6/igt@i915_hangman@error-state-basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-nick:        [ABORT][3] ([i915#7911]) -> [PASS][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/fi-bsw-nick/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - {bat-adls-6}:       [DMESG-WARN][5] ([i915#5591]) -> [PASS][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14192/bat-adls-6/igt@i915_selftest@live@hangcheck.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/bat-adls-6/igt@i915_selftest@live@hangcheck.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
>   [i915#9414]: https://gitlab.freedesktop.org/drm/intel/issues/9414
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_14192 -> Patchwork_129277v1
> 
>   CI-20190529: 20190529
>   CI_DRM_14192: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7698: af750f5e7eaad98d40d8c924eb5f05e99d3c668b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_129277v1: f4c0dac89bd3cd02a1afe5e7a91ed4bf8de4afc6 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 684e00785693 drm/i915/mtl: Add DP FEC BS jitter WA
> 4710e5a9e439 drm/i915/mtl+: Disable DP/DSC SF insertion at EOL WA
> f5853ef36adf drm/i915/adlp+: Add DSC early pixel count scaling WA (Wa_1409098942)
> 58b3ea4c8782 drm/i915/adlp: Add DP MST DPT/DPTP alignment WA (Wa_14014143976)
> a8501371285d drm/i915/adlp: Add MST short HBlank WA (Wa_14014143976)
> b689adcd3028 drm/i915/adlp: Add MST FEC BS jitter WA (Wa_14013163432)
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_129277v1/index.html
