Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6C85E6DD
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Feb 2024 20:05:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6746B10E6F3;
	Wed, 21 Feb 2024 19:05:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FOEI/d8S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A28510E041
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Feb 2024 19:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708542311; x=1740078311;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HglhFovyH1y4y32m8i8Q22zqYu8abSMc314diXxdpBE=;
 b=FOEI/d8SgHBIYNANwm/nbzZI6aigk1/5lF740f5aPElnElUhQUHfJF8L
 lqFPSUAit3P6l8U0RDyC3fwDkXZMgqOfnjDmVb41HAkl9sL0gH2+xTxzS
 3L+7VrowK3CzRjOntf6hBYUwVSubWN1LekjhxA+YD6GlG624/JTxpM9N3
 wBCIujbHj6kar8cLASdadN6kjTkBK8OMfeGa960D1KYq4/+P7XReNz+lw
 lw5ShQDS33AHEa2GMRXcqfV+N+kTbOPkKd+0L9GhUMptBEK+aYGcaKkl6
 ZmyfuqU3qyZkCfHSpN3sE/CaRI1je1L4Pg7QwUudriKPAE23psbFciamW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="2597940"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; 
   d="scan'208";a="2597940"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2024 11:05:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827395312"
X-IronPort-AV: E=Sophos;i="6.06,176,1705392000"; d="scan'208";a="827395312"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 21 Feb 2024 11:05:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Feb 2024 21:05:00 +0200
Date: Wed, 21 Feb 2024 21:05:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/display: Add aux function pointer for fast
 wake sync pulse count
Message-ID: <ZdZJXAHHM24CYXmW@intel.com>
References: <20240221075322.2764209-1-jouni.hogander@intel.com>
 <20240221075322.2764209-2-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240221075322.2764209-2-jouni.hogander@intel.com>
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

On Wed, Feb 21, 2024 at 09:53:20AM +0200, Jouni Högander wrote:
> ALPM AUX-Wake fast wake sync pulse count is needed by PSR to calculate IO
> wake and fast wake lines.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_dp_aux.c        | 12 +++++++-----
>  2 files changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 0d4012097db1..1231d374aeec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1798,6 +1798,12 @@ struct intel_dp {
>  	u32 (*get_aux_send_ctl)(struct intel_dp *dp, int send_bytes,
>  				u32 aux_clock_divider);
>  
> +	/*
> +	 * This function returns the number of fast wake sync pulses. It is
> +	 * needed by PSR code to calculate needed fast wake and io wake lines.
> +	 */
> +	u8 (*get_aux_fw_sync_len)(void);

We have just the one function so I don't really see the 
point of having this function pointer.

> +
>  	i915_reg_t (*aux_ch_ctl_reg)(struct intel_dp *dp);
>  	i915_reg_t (*aux_ch_data_reg)(struct intel_dp *dp, int index);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 4f4a0e3b3114..fad39b2e3022 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -143,10 +143,10 @@ static int intel_dp_aux_sync_len(void)
>  	return precharge + preamble;
>  }
>  
> -static int intel_dp_aux_fw_sync_len(void)
> +static u8 intel_dp_aux_fw_sync_len(void)
>  {
> -	int precharge = 10; /* 10-16 */
> -	int preamble = 8;
> +	u8 precharge = 10; /* 10-16 */
> +	u8 preamble = 8;
>  
>  	return precharge + preamble;
>  }
> @@ -793,10 +793,12 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	else
>  		intel_dp->get_aux_clock_divider = g4x_get_aux_clock_divider;
>  
> -	if (DISPLAY_VER(i915) >= 9)
> +	if (DISPLAY_VER(i915) >= 9) {
>  		intel_dp->get_aux_send_ctl = skl_get_aux_send_ctl;
> -	else
> +		intel_dp->get_aux_fw_sync_len = intel_dp_aux_fw_sync_len;
> +	} else {
>  		intel_dp->get_aux_send_ctl = g4x_get_aux_send_ctl;
> +	}
>  
>  	intel_dp->aux.drm_dev = &i915->drm;
>  	drm_dp_aux_init(&intel_dp->aux);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
