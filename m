Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E51C2B9E87
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 00:41:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 218A16E82C;
	Thu, 19 Nov 2020 23:41:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B686E82C
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 23:41:45 +0000 (UTC)
IronPort-SDR: 60BpuesYan+d3TIMVab5Ln3h8zo5sWhjpnZiPzXHOmK/zb+xN/N7K1xoKpNKipZjMHOwtt22gU
 RealAyhc63aQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="159154633"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="159154633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 15:41:44 -0800
IronPort-SDR: x+AROrM7GFKKt6fz+uw41CxwzuXBHQueqMbQwqxzDI+kL0eMh7XtC/EROum5WLzUYbhTbcD7Ok
 hNkxmct677pw==
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="533363787"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 15:41:44 -0800
Date: Thu, 19 Nov 2020 15:41:43 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201119234143.GW2099117@mdroper-desk1.amr.corp.intel.com>
References: <20201119232615.23231-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201119232615.23231-1-manasi.d.navare@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Do not call
 hsw_set_frame_start_delay for dsi
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 19, 2020 at 03:26:15PM -0800, Manasi Navare wrote:
> This should fix the boot oops for dsi
> 
> v2:
> * Fix indent (Manasi)
> v3:
> * Remove redundant condition (Matt Roper)
> 
> Fixes: 4e3cdb4535e7 ("drm/i915/dp: Master/Slave enable/disable sequence for bigjoiner")
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>

Looks like the right change; the old condition didn't make sense since
it would always be true.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1a0f00f37ca9..0038f14c8bfb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7211,12 +7211,10 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>  	if (INTEL_GEN(dev_priv) >= 9 || IS_BROADWELL(dev_priv))
>  		bdw_set_pipemisc(new_crtc_state);
>  
> -	if (!new_crtc_state->bigjoiner_slave || !transcoder_is_dsi(cpu_transcoder)) {
> -		if (!transcoder_is_dsi(cpu_transcoder))
> -			intel_set_transcoder_timings(new_crtc_state);
> +	if (!new_crtc_state->bigjoiner_slave && !transcoder_is_dsi(cpu_transcoder)) {
> +		intel_set_transcoder_timings(new_crtc_state);
>  
> -		if (cpu_transcoder != TRANSCODER_EDP &&
> -		    !transcoder_is_dsi(cpu_transcoder))
> +		if (cpu_transcoder != TRANSCODER_EDP)
>  			intel_de_write(dev_priv, PIPE_MULT(cpu_transcoder),
>  				       new_crtc_state->pixel_multiplier - 1);
>  
> -- 
> 2.19.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

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
