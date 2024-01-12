Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C0482C3DA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 17:42:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F09710E0AB;
	Fri, 12 Jan 2024 16:42:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE6310E0AB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 16:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705077739; x=1736613739;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=JgfMJnNumyajS4P3YPHaKHrOwuLQZK93TqMK/U91UUE=;
 b=J/8iTpCpNzbNnKwLhM7OugvS8Fq7RmWQxWsoMy7bL0tPFfCVu4g1M310
 91kN3uqj8LYs4RnkXilE89XVPraH4s0MN39xT87j1SqQ0GSvGr0kvk/S/
 LbPJCqS2XdVmXNqz7bn1ufaOscsV5y3xeumcXD5JkXMtsZa4K6Lk++vYX
 f7blKRh5FQR9OE62LDTTrS44nI+FwRAWl5SPa/1AyzOV0wfLcvxxtt3Rd
 C8EbZji54uCyk6XubOmYWFQ3ox49o5M8ElApqB+NCKLmXe6DQc4UrBUhR
 ZZsdQYLXI+a+y+1T8IHTunoau/7I8LuietnTuzctOaxtxBa+8x5dI8PQf Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="463500158"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="463500158"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 08:42:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="776043322"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="776043322"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2024 08:42:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jan 2024 18:42:15 +0200
Date: Fri, 12 Jan 2024 18:42:15 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/bigjoiner: Refactor bigjoiner state readout
Message-ID: <ZaFr58MjVk261ADO@intel.com>
References: <20240108120725.20057-1-stanislav.lisovskiy@intel.com>
 <20240108120725.20057-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240108120725.20057-3-stanislav.lisovskiy@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 08, 2024 at 02:07:24PM +0200, Stanislav Lisovskiy wrote:
> Don't call enabled_bigjoiner_pipes twice, lets just move
> intel_get_bigjoiner_config earlier, because it is anyway
> calling same function.
> Also cleanup hsw_enabled_transcoders from irrelevant bigjoiner code.

It's not irrelevant. The function is supposed to return the set of
enabled transcoders associated with the pipe. With this change the
function no longer does what it says on the tin.

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 927d124457b61..eec76ec167069 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3525,7 +3525,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	u8 panel_transcoder_mask = hsw_panel_transcoders(dev_priv);
>  	enum transcoder cpu_transcoder;
> -	u8 master_pipes, slave_pipes;
>  	u8 enabled_transcoders = 0;
>  
>  	/*
> @@ -3576,15 +3575,6 @@ static u8 hsw_enabled_transcoders(struct intel_crtc *crtc)
>  	if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
>  		enabled_transcoders |= BIT(cpu_transcoder);
>  
> -	/* bigjoiner slave -> consider the master pipe's transcoder as well */
> -	enabled_bigjoiner_pipes(dev_priv, &master_pipes, &slave_pipes);
> -	if (slave_pipes & BIT(crtc->pipe)) {
> -		cpu_transcoder = (enum transcoder)
> -			get_bigjoiner_master_pipe(crtc->pipe, master_pipes, slave_pipes);
> -		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> -			enabled_transcoders |= BIT(cpu_transcoder);
> -	}
> -
>  	return enabled_transcoders;
>  }
>  
> @@ -3631,6 +3621,15 @@ static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  	u32 tmp;
>  
>  	enabled_transcoders = hsw_enabled_transcoders(crtc);
> +
> +	/* bigjoiner slave -> consider the master pipe's transcoder as well */
> +	if (intel_crtc_is_bigjoiner_slave(pipe_config)) {
> +		unsigned long cpu_transcoder = (enum transcoder)
> +			bigjoiner_master_pipe(pipe_config);
> +		if (transcoder_ddi_func_is_enabled(dev_priv, cpu_transcoder))
> +			enabled_transcoders |= BIT(cpu_transcoder);
> +	}
> +
>  	if (!enabled_transcoders)
>  		return false;
>  
> @@ -3735,6 +3734,8 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  
>  	pipe_config->shared_dpll = NULL;
>  
> +	intel_bigjoiner_get_config(pipe_config);

So this is what avoids the "call it twice" part, but it also makes the
state potentially inconsistent as in all other cases we leave everything
zeroed if the transcoder is not enabled. So I'm not sure this is
entirely safe or whether we could end up with some weird state
mismatches due to the inconsistency.

Why do you think calling it twice is problematic? It's supposed to be 
idempotent (ignoring the actual register reads/etc.).

> +
>  	active = hsw_get_transcoder_state(crtc, pipe_config, &crtc->hw_readout_power_domains);
>  
>  	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> @@ -3746,7 +3747,6 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	if (!active)
>  		goto out;
>  
> -	intel_bigjoiner_get_config(pipe_config);
>  	intel_dsc_get_config(pipe_config);
>  
>  	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
