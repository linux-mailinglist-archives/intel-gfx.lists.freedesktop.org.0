Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B3E86B80B
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 20:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D96710E073;
	Wed, 28 Feb 2024 19:22:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aW0IAei2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46FE610E073
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 19:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709148136; x=1740684136;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=yfVx8xVCmwxqOiBAXDn0E0GtJRffgsuqh7uZQ03+BQk=;
 b=aW0IAei2/6taR0ZOop7MbLI6YgieLLTE2Eu7UeIWyi+bNmGYLk++OgS5
 KX+89PVWAgdEBPr+I+B+XY0O646Ftoso96JoOAtFYrw/2aPuVmhSQY4uG
 9ykPLht4CJcV7F944L/FN0PI3lIumwDz9/VRrch3e+f9WjxwI1Z+LtdYg
 BEFTQOekK0yxQ28Nuq8RGdj3AW1EvKSGN1NauiiL8VKdFUIhi1bIISsHn
 LKBuOs8AW0e/ck+iDgyBka3R/4w0bCKtQUqD6iRM17U4Dgve0zGUP8EJC
 zWMRQJM0qG3mN0qvLhFm2/3hMzdecB5XWk6+TVIwSc1bcNgJCNEk0Avai g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="3493552"
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; 
   d="scan'208";a="3493552"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 11:22:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,191,1705392000"; d="scan'208";a="12079316"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 11:22:14 -0800
Date: Wed, 28 Feb 2024 21:22:37 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Subject: Re: [PATCH 1/2] drm/i915: Don't explode when the dig port we don't
 have an AUX CH
Message-ID: <Zd+H/T7u05uVSXaK@ideak-desk.fi.intel.com>
References: <20240223203216.15210-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240223203216.15210-1-ville.syrjala@linux.intel.com>
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

On Fri, Feb 23, 2024 at 10:32:15PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The icl+ power well code currently assumes that every AUX power
> well maps to an encoder which is using said power well. That is
> by no menas guaranteed as we:
> - only register encoders for ports declared in the VBT
> - combo PHY HDMI-only encoder no longer get an AUX CH since
>   commit 9856308c94ca ("drm/i915: Only populate aux_ch if really needed")
> 
> However we have places such as intel_power_domains_sanitize_state()
> that blindly traverse all the possible power wells. So these bits
> of code may very well encounbter an aux power well with no associated
> encoder.
> 
> In this particular case the BIOS seems to have left one AUX power
> well enabled even though we're dealing with a HDMI only encoder
> on a combo PHY. We then proceed to turn off said power well and
> explode when we can't find a matching encoder. As a short term fix
> we should be able to just skip the PHY related parts of the power
> well programming since we know this situation can only happen with
> combo PHYs.
> 
> Another option might be to go back to always picking an AUX CH for
> all encoders. However I'm a bit wary about that since we might in
> theory end up conflicting with the VBT AUX CH assignment. Also
> that wouldn't help with encoders not declared in the VBT, should
> we ever need to poke the corresponding power wells.
> 
> Longer term we need to figure out what the actual relationship
> is between the PHY vs. AUX CH vs. AUX power well. Currently this
> is entirely unclear.

This is unspecified, so the only way would be to test an actual platform
with an alternative AUX CH VBT setting (on a DDI platform). My current
assumption is that this alternative AUX CH determines:

- The AUX power well to be enabled for an AUX transfer
- The AUX CH data/ctl registers to be used for an AUX transfer

Otoh, for the (overloaded) power control for the main lane functionality
it is not the alternative AUX CH power well, rather the given DDIs
direct mapped/own AUX CH power well what would be required. The driver
doesn't make a distinction in this now, since it's unspecified. I think
cross connecting AUX CHs wouldn't really work on DDI platforms for this
reason (at least on TC DDIs/PHYs/AUX CHs).

For the PHY workarounds which are part of the AUX power well programming
sequence, it is the PHY connected to the given DDI (so not affected by
any alternative AUX CH setting), which needs to be programmed. As above
this is also unspeficied, so just my assumption.

> Cc: stable@vger.kernel.org
> Fixes: 9856308c94ca ("drm/i915: Only populate aux_ch if really needed")
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10184
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_power_well.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 47cd6bb04366..06900ff307b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -246,7 +246,14 @@ static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
>  	enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
>  	struct intel_digital_port *dig_port = aux_ch_to_digital_port(i915, aux_ch);
>  
> -	return intel_port_to_phy(i915, dig_port->base.port);
> +	/*
> +	 * FIXME should we care about the (VBT defined) dig_port->aux_ch
> +	 * relationship or should this be purely defined by the hardware layout?
> +	 * Currently if the port doesn't appear in the VBT, or if it's declared
> +	 * as HDMI-only and routed to a combo PHY, the encoder either won't be
> +	 * present at all or it will not have an aux_ch assigned.
> +	 */
> +	return dig_port ? intel_port_to_phy(i915, dig_port->base.port) : PHY_NONE;

Yes, if it's not known which PHY is used in connection with an AUX CH
(which in theory could be remapped via VBT), then the WA can't be
applied either; so on both patches:
Reviewed-by: Imre Deak <imre.deak@intel.com>

>  }
>  
>  static void hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
> @@ -414,7 +421,8 @@ icl_combo_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  
>  	intel_de_rmw(dev_priv, regs->driver, 0, HSW_PWR_WELL_CTL_REQ(pw_idx));
>  
> -	if (DISPLAY_VER(dev_priv) < 12)
> +	/* FIXME this is a mess */
> +	if (phy != PHY_NONE)
>  		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
>  			     0, ICL_LANE_ENABLE_AUX);
>  
> @@ -437,7 +445,10 @@ icl_combo_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  
>  	drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
>  
> -	intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy), ICL_LANE_ENABLE_AUX, 0);
> +	/* FIXME this is a mess */
> +	if (phy != PHY_NONE)
> +		intel_de_rmw(dev_priv, ICL_PORT_CL_DW12(phy),
> +			     ICL_LANE_ENABLE_AUX, 0);
>  
>  	intel_de_rmw(dev_priv, regs->driver, HSW_PWR_WELL_CTL_REQ(pw_idx), 0);
>  
> -- 
> 2.43.0
> 
