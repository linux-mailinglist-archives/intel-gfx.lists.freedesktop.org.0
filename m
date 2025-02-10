Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2985A2F6E4
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 19:24:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D68610E5E7;
	Mon, 10 Feb 2025 18:24:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H1qu83U0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3576510E5E7;
 Mon, 10 Feb 2025 18:24:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739211843; x=1770747843;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=ssCUX2dIt3G7B/jhbUuUIdPpgcOWurdzZt80V5GcJlU=;
 b=H1qu83U0dv60XWZ3LLX3O7fayOZqnipluXeFFhfLYB1ITrCZW/gx3jDX
 P1yZKs4vOIgvd1Uj09PSIwLyGUw6qE7UPEFMwJol8xdTQXU+deoEGbGjY
 I/hVmXafHgFM84eG1mgNYO50EZX7tfFPT579Zl1XiE26YslHbhafzPrkZ
 G5J5lW/nCFY3oA5uW5vkihdhVkdGWJ/Oo53LHArFhc+YEPgHJ3PqxVDMV
 km2zV18h1tANYH4kODHm/9ir377LnkJcxzKVJSQL/apnamaWAgHbnYinM
 16LZPIVnZvuQ/RpwyETr2K/+7+JMkUIQWjH4fgVHgQkZhBvJqUQ9Vikf5 g==;
X-CSE-ConnectionGUID: uqveUhxAQpqIUIjx3WK28g==
X-CSE-MsgGUID: ZEROEGloTmG+RiH5pMVV8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43569098"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="43569098"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:24:03 -0800
X-CSE-ConnectionGUID: 4t9TbTNLShuyYxUHmrs9Wg==
X-CSE-MsgGUID: hPKUe/mlTkS+rFzIvkkYfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112782956"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 10:24:01 -0800
Date: Mon, 10 Feb 2025 20:25:00 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 12/17] drm/i915/ddi: Configure/enable a port in
 DDI_BUF_CTL via read-modify-write
Message-ID: <Z6pEfGyXnoVtNqDv@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-13-imre.deak@intel.com>
 <87v7th3byd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v7th3byd.fsf@intel.com>
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

On Mon, Feb 10, 2025 at 08:13:14PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > The various flags in DDI_BUF_CTL must be programmed at different places
> > during a modeset. The expected value of the register at any moment is
> > cached in the intel_dp::DP variable and the whole register is written
> > using this variable. A simpler way would be not maintaining the cached
> > value of the register at all and update only specific fields in the
> > register via read-modify-write. Some places - like D2D link enabling or
> > the port disabling - use RMW already.
> >
> > Based on the above update the register via RMW during the port
> > configuration / enabling as well. After all the places updating
> > DDI_BUF_CTL are changed - probably the voltage-swing/pre-emphasis level
> > setting is the only one remaining - tracking the register value in
> > intel_dp:DP could be removed.
> >
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++++++++++++++++++++-
> >  1 file changed, 22 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index ddb182550ad0f..64c42505f2ad6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -359,6 +359,10 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> >  
> >  	if (IS_ALDERLAKE_P(i915) && intel_encoder_is_tc(encoder)) {
> >  		intel_dp->DP |= ddi_buf_phy_link_rate(crtc_state->port_clock);
> > +		/*
> > +		 * TODO: remove the following once DDI_BUF_CTL is updated via
> > +		 * an RMW everywhere.
> > +		 */
> >  		if (!intel_tc_port_in_tbt_alt_mode(dig_port))
> >  			intel_dp->DP |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> >  	}
> > @@ -370,6 +374,22 @@ static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
> >  	}
> >  }
> >  
> > +static u32 intel_ddi_buf_ctl_config_mask(struct intel_encoder *encoder)
> > +{
> > +	struct intel_display *display = to_intel_display(encoder);
> > +	u32 mask = DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES |
> > +		   DDI_PORT_WIDTH_MASK;
> 
> The caller only sets DDI_PORT_WIDTH() for display >= 14.

It does get set everywhere. For HDMI on display < 14 it's set to 0
(ignored by the HW), on display >= 14 it's set to the actual port width.

> > +
> > +	if (DISPLAY_VER(display) >= 14)
> > +		mask |= DDI_BUF_PORT_DATA_MASK;
> 
> But doesn't touch this?

It's always set on display >= 14.

> 
> > +	if (display->platform.alderlake_p)
> > +		mask |= DDI_BUF_PHY_LINK_RATE_MASK;
> 
> DDI_BUF_CTL_TC_PHY_OWNERSHIP?

This shouldn't be changed during configuring and enabling the port.

> > +	if (IS_DISPLAY_VER(display, 11, 13))
> > +		mask |= DDI_BUF_LANE_STAGGER_DELAY_MASK;
> > +
> > +	return mask;
> > +}
> 
> I don't know, this patch is incredibly hard to follow.
> 
> BR,
> Jani.
> 
> 
> > +
> >  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
> >  				 enum port port)
> >  {
> > @@ -3062,7 +3082,8 @@ static void intel_enable_ddi_buf(struct intel_encoder *encoder, u32 buf_ctl)
> >  	struct intel_display *display = to_intel_display(encoder);
> >  	enum port port = encoder->port;
> >  
> > -	intel_de_write(display, DDI_BUF_CTL(port), buf_ctl | DDI_BUF_CTL_ENABLE);
> > +	intel_de_rmw(display, DDI_BUF_CTL(port),
> > +		     intel_ddi_buf_ctl_config_mask(encoder), buf_ctl | DDI_BUF_CTL_ENABLE);
> >  	intel_de_posting_read(display, DDI_BUF_CTL(port));
> >  
> >  	intel_wait_ddi_buf_active(encoder);
> 
> -- 
> Jani Nikula, Intel
