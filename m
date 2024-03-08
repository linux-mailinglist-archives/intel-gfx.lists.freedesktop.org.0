Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D39876676
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 15:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CB7C10E77A;
	Fri,  8 Mar 2024 14:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="igYFQ02o";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A985510E77A
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 14:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709908725; x=1741444725;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CyVIZ8Y3FdOzxIv7/t8vduPApUvU4TqkxRTYs8UzNOU=;
 b=igYFQ02oQtN/XnR2WvNTlD5Gy+Z333ONRy39w5sjQILRr88Dp7M4YJ5b
 bq+VP1tBus4lmtQxPLOttOrFC/2ZBNr6sHb/80GZ4qYC1r6mLkRP43MQt
 h7Ag+8Nmn3IBFKSoImxGFX7xcUAWoJmtrCYQhxVPWl0SioLV0IZzz/jOr
 E8EBOZ/RO5k1FHCnPzQrls2FAygQKZvrJEsH7qr8LSHmQc1QYGnazhvyu
 P+GxjbNz5E6L4HqIa9VNk0LoZtkoVSOb3BCGHEO06/BV8guVorDlurIEQ
 T5eYDKUU/gdg1WStXGJkr42/6/MkHiYogffhISg2dKGWS/egQrAtffCAw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4554370"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4554370"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 06:38:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="827775232"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="827775232"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Mar 2024 06:38:42 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Mar 2024 16:38:41 +0200
Date: Fri, 8 Mar 2024 16:38:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 3/5] drm/i915/psr: Calculate IO wake and fast wake
 lines for DISPLAY_VER < 12
Message-ID: <Zesi8WFO1E08r_rb@intel.com>
References: <20240308110039.3900838-1-jouni.hogander@intel.com>
 <20240308110039.3900838-4-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240308110039.3900838-4-jouni.hogander@intel.com>
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

On Fri, Mar 08, 2024 at 01:00:37PM +0200, Jouni Högander wrote:
> Bspec mentions 50 us for IO wake time and 32 us for fast wake time. 32 us
> is most probably wrong as it doesn't meet the specification as fast wake
> time is calculated in Bspec like this:
> 
> 10..16 us (precharge) + 8 us (preamble) + 4 us (phy_wake) + 20 us
> (tfw_exit_latency)
> 
> Instead of using these constants calculate IO wake and fast wake for
> DISPLAY_VER < 12 as well.
> 
> v3:
>   - do not handle < 9 separately
>   - add own helper for skl and tgl io buffer wake times
> v2:
>   - initialize io/fast_wake_time for display version < 9
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 46 ++++++++++++++++--------
>  1 file changed, 31 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7736bdcad82d..747761efa4be 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1150,36 +1150,52 @@ static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static int io_buffer_wake_time(void)
> +/*
> + * IO wake time for DISPLAY_VER < 12 is not directly mentioned in Bspec. There
> + * are 50 us io wake time and 32 us fast wake time. Clearly preharge pulses are
> + * not (improperly) included in 32 us fast wake time. 50 us - 32 us = 18 us.
> + */
> +static int skl_io_buffer_wake_time(void)
> +{
> +	return 18;
> +}
> +
> +static int tgl_io_buffer_wake_time(void)
>  {
>  	return 10;
>  }
>  
> +static int io_buffer_wake_time(const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (DISPLAY_VER(i915) >= 12)
> +		return tgl_io_buffer_wake_time();
> +	else
> +		return skl_io_buffer_wake_time();
> +}
> +
>  static bool _compute_alpm_params(struct intel_dp *intel_dp,
>  				 struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int io_wake_lines, io_wake_time, fast_wake_lines, fast_wake_time;
> +	int tfw_exit_latency = 20; /* eDP spec */
> +	int phy_wake = 4;	   /* eDP spec */
> +	int preamble = 8;	   /* eDP spec */
> +	int precharge = intel_dp_aux_fw_sync_len() - preamble;
>  	u8 max_wake_lines;
>  
> -	if (DISPLAY_VER(i915) >= 12) {
> -		int tfw_exit_latency = 20; /* eDP spec */
> -		int phy_wake = 4;	   /* eDP spec */
> -		int preamble = 8;	   /* eDP spec */
> -		int precharge = intel_dp_aux_fw_sync_len() - preamble;
> -
> -		io_wake_time = max(precharge, io_buffer_wake_time()) + preamble +
> -			phy_wake + tfw_exit_latency;
> -		fast_wake_time = precharge + preamble + phy_wake +
> -			tfw_exit_latency;
> +	io_wake_time = max(precharge, io_buffer_wake_time(crtc_state)) +
> +		preamble + phy_wake + tfw_exit_latency;
> +	fast_wake_time = precharge + preamble + phy_wake +
> +		tfw_exit_latency;
>  
> +	if (DISPLAY_VER(i915) >= 12)
>  		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
>  		max_wake_lines = 12;
> -	} else {
> -		io_wake_time = 50;
> -		fast_wake_time = 32;
> +	else
>  		max_wake_lines = 8;
> -	}
>  
>  	io_wake_lines = intel_usecs_to_scanlines(
>  		&crtc_state->hw.adjusted_mode, io_wake_time);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
