Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C89996650
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 12:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E18410E29A;
	Wed,  9 Oct 2024 10:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gTPV3Mvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE08610E294;
 Wed,  9 Oct 2024 10:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728468009; x=1760004009;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Om9Kv7He6GsHkkGHMn1iGDJA6woO56EzTCl69qY0Zck=;
 b=gTPV3MvucmPCgx3UGkhz+zeKJt4WPdg2otqoV3Kf1hZ1BYcK54VEauv7
 Pcxoinmx3XTc36AqvxDU+RaFOekLpvfK7lU0RjLb8Vcz1QTD0SBexazEA
 7709NO6bPVMiBNTpTIHawRk8X67cR6eIq2za/p/YsNCebnXdsCjBMKdyB
 Y/w24CA+LS7VVDOXVVEE/hJ+e6fZ6243iqIkjvHf53+5hyHB9JX0LTdfx
 +dk3cLs6woYB/qbrss+ef6Z2ICIALxZyF4+DvnpzsYSM1YScT1MB83NM1
 aZCIxRa05qGOPokoRrWpjgRVLB1w+E9kNtFXTWSDCRHJxya1n0Vlad2me Q==;
X-CSE-ConnectionGUID: jEpYujZRTQu0pILXInXvOg==
X-CSE-MsgGUID: D/23ce2eS+CXwp3JUibK+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="39113420"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="39113420"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:00:09 -0700
X-CSE-ConnectionGUID: 4Kxmn6ZiTS6otWe6mek/Wg==
X-CSE-MsgGUID: Ih8IqrQxSy2N8DOEPcGf7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="75791418"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 03:00:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dp_mst: Fix dsc mst bw overhead calculation
In-Reply-To: <20241009054050.1796088-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009054050.1796088-1-suraj.kandpal@intel.com>
Date: Wed, 09 Oct 2024 13:00:03 +0300
Message-ID: <87v7y1a95o.fsf@intel.com>
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

On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Fix the DSC flag assignment based on the dsc_slice_count returned
> to avoid divide by zero error.
>
> Fixes: 4e0837a8d00a ("drm/i915/dp_mst: Account for FEC and DSC overhead during BW allocation")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 4765bda154c1..bacd294d6bb6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -105,11 +105,16 @@ static int intel_dp_mst_bw_overhead(const struct intel_crtc_state *crtc_state,
>  	if (dsc) {
>  		int num_joined_pipes = intel_crtc_num_joined_pipes(crtc_state);
>  
> -		flags |= DRM_DP_BW_OVERHEAD_DSC;
>  		dsc_slice_count = intel_dp_dsc_get_slice_count(connector,
>  							       adjusted_mode->clock,
>  							       adjusted_mode->hdisplay,
>  							       num_joined_pipes);
> +		/*
> +		 * Try with dsc only if dsc_slice_count has a sane value i.e value is no
> +		 * 0
> +		 */
> +		if (dsc_slice_count)
> +			flags |= DRM_DP_BW_OVERHEAD_DSC;

Do you think that's enough to handle the error?!

BR,
Jani.

>  	}
>  
>  	overhead = drm_dp_bw_overhead(crtc_state->lane_count,

-- 
Jani Nikula, Intel
