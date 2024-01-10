Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA27829D93
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 16:31:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A4310E5FA;
	Wed, 10 Jan 2024 15:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6A310E5FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jan 2024 15:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704900667; x=1736436667;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tBb7HAp0LY5MYDXolbHyfFAIgcxKnczQz5Jbdq62Rmk=;
 b=hV2C89hTJSGRkxbfD5iMkhYExc0QEkGVB5ka3FPrf59ubki3+m6/QQok
 P8kW8TGz2p8dGMZ8FPeREZWa8E36VGxDRNR2mHEufiCB48CgzNwZay33L
 As9guHezHmsyYncLhpo+tXREmNx7RsSuiDsvZQVR3proZK4hsO8O3PuDV
 YkY0LFPofGF+MIMWNPt0iOKD/Q4MGDtkoR1IJgVKpv6JoZzzWOQ4SX4m2
 vdBDyKoFazxm0mM9cSrIKLCCTKYZyf58YjAT+COR7VRoZP+f9GBK9D34F
 93Uh9q+h0GHWZW5PCGM5b/+h4DwpT90BFvYfxuVeJwyesDYs36V5S7ijK w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="398242781"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="398242781"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 07:31:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10948"; a="852600136"
X-IronPort-AV: E=Sophos;i="6.04,184,1695711600"; d="scan'208";a="852600136"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.246.0.51])
 ([10.246.0.51])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 07:31:05 -0800
Message-ID: <4e10ba50-3f14-4b94-becb-96ff2571d55f@intel.com>
Date: Wed, 10 Jan 2024 16:31:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/hdcp: Do intel_hdcp_component_init() much
 later during init
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
 <20231215110933.9188-2-ville.syrjala@linux.intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20231215110933.9188-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 15.12.2023 12:09, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_hdcp_component_init()->...->intel_hdcp_gsc_initialize_message()
> will allocate ggtt address space for some hdcp gsc message thing.
> That is currently being done way too early as we haven't even
> taken over the BIOS fb yet. So this has the potential of corrupting
> ggtt PTEs that need to be preserved until the the BIOS fb takover
> is done.
> 
> Only call intel_hdcp_component_init() once all the BIOS fb takeover,
> and full ggtt init (which currently also needs to reserve very
> specific ranges of ggtt, thus assuming that no one else has stolen
> them yet) is done.
> 
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   drivers/gpu/drm/i915/display/intel_display_driver.c | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index 62f7b10484be..b71338b4d793 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -319,8 +319,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>   	intel_display_driver_init_hw(i915);
>   	intel_dpll_update_ref_clks(i915);
>   
> -	intel_hdcp_component_init(i915);
> -
>   	if (i915->display.cdclk.max_cdclk_freq == 0)
>   		intel_update_max_cdclk(i915);
>   
> @@ -360,6 +358,13 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>   	if (!HAS_DISPLAY(i915))
>   		return 0;
>   
> +	/*
> +	 * This will bind stuff into ggtt, so it needs to be done after
> +	 * the BIOS fb takeover and whatever else magic ggtt reservations
> +	 * happen during gem/ggtt init.
> +	 */
> +	intel_hdcp_component_init(i915);
> +
>   	/*
>   	 * Force all active planes to recompute their states. So that on
>   	 * mode_setcrtc after probe, all the intel_plane_state variables

