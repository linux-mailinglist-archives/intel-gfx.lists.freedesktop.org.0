Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7E789F9EF
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Apr 2024 16:34:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E0F11268F;
	Wed, 10 Apr 2024 14:34:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Psk2KGsJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A887210F4BD;
 Wed, 10 Apr 2024 14:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712759658; x=1744295658;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rvfBAD4S2x5CC3+GVLIVclVjdLAkQ4OF4UWroW2Oj0E=;
 b=Psk2KGsJPZCVL6rX8kX8BWMRFBNnUwqqADVCymFefC/rzITlJVmom1gq
 pr52d6q1IStBR0he+9T6gk9+RTrp3GL0/91/xERBIL65AKpOTr7rxAKEA
 TqMLIaYQO9Lnhqp0cz6fDIotfNQCkbDfaGkHHEKiCgMZuRIYQ0cX8Dmoo
 It8lJYqHUHpFvmudNIZ0pYFM3WPEH1V8GdgqTjAhcCgAcTzv6EpSSs2Fm
 NprSZ4RTE7S277TAnYQlSoE91UKQVJT9zv2eDi7rDOCicP4CshaOQm6sv
 6HK1WPhxVrKHzwrixHM6MnYKf6Pfyr20Uqb0yQgC+6r7sfy/YRk2aGbgD Q==;
X-CSE-ConnectionGUID: N7Ovk85DS/+8lX+TJO3Czg==
X-CSE-MsgGUID: ZPN7o3vyRICmVAROHsNaig==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8693842"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; 
   d="scan'208";a="8693842"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2024 07:34:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="827793144"
X-IronPort-AV: E=Sophos;i="6.07,190,1708416000"; d="scan'208";a="827793144"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 10 Apr 2024 07:34:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Apr 2024 17:34:13 +0300
Date: Wed, 10 Apr 2024 17:34:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: I915-ci-infra@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?=
 =?utf-8?Q?e_for_drm=2Fi915?= =?utf-8?Q?=3A?= Bigjoiner modeset sequence
 redesign and MST support (rev4)
Message-ID: <ZhajZTW1jbSgfESc@intel.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
 <171268632967.1303388.3151469260451854582@8e613ede5ea5>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <171268632967.1303388.3151469260451854582@8e613ede5ea5>
X-Patchwork-Hint: comment
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

On Tue, Apr 09, 2024 at 06:12:09PM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Bigjoiner modeset sequence redesign and MST support (rev4)
> URL   : https://patchwork.freedesktop.org/series/131797/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_14550 -> Patchwork_131797v4
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_131797v4 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_131797v4, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v4/index.html
> 
> Participating hosts (36 -> 36)
> ------------------------------
> 
>   Additional (4): bat-kbl-2 bat-dg2-11 fi-kbl-8809g fi-bsw-n3050 
>   Missing    (4): bat-arls-4 bat-dg1-7 bat-atsm-1 bat-mtlp-8 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_131797v4:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@active:
>     - bat-jsl-1:          [PASS][1] -> [DMESG-FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_14550/bat-jsl-1/igt@i915_selftest@live@active.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_131797v4/bat-jsl-1/igt@i915_selftest@live@active.html

<6> [396.898275] i915: Running i915_active_live_selftests/live_active_wait
<3> [396.902316] i915 0000:00:02.0: [drm] *ERROR* live_active_wait i915_active not retired after waiting!
<3> [396.902334] i915 0000:00:02.0: [drm] *ERROR* live_active_wait active __live_active [i915]:__live_retire [i915]
<3> [396.903434] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	count: 0
<3> [396.903443] i915 0000:00:02.0: [drm] *ERROR* live_active_wait 	preallocated barriers? no
<3> [396.904085] i915/i915_active_live_selftests: live_active_wait failed with error -22

Looks very much unrelated to these changes. Please wave this one through.

-- 
Ville Syrjälä
Intel
