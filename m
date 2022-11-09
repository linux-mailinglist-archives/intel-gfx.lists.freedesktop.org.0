Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B0D622881
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:29:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5580010E548;
	Wed,  9 Nov 2022 10:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FE6510E541
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:29:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667989788; x=1699525788;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+JssAKQGNVOyCACE9Vj7NJ9PojVvRdsUoh094beHYMQ=;
 b=koHAg46qQo8tJBUYfSN63xgtBt9uxwm8EnW5SB+yIkWQOZ1ilMxWiuyv
 qmIrfmcDHuuED382/Z4I8qV/c2WvUw/YEi4LKKQhyTal23hwxb02QZt9Z
 nLIpv3fu5bsFRlQRnlJ8R0vCFtjue6gfpeWEqa8LS06U1I2FijB/ueGM6
 UR1m9D0TmeDj3ns2XYMFZiJHqEqqEvVG+WyP3y+9QnHXai2dfM0kClhOL
 NX0g1FsvlzKxKGqIwHtslxC0sQbf1MoL/y0+/cR8RjjqiBQGZS2Gtwynm
 1dz8BFM0upIIUQKTQg92lVBiU89+qeykq5y1yrcYn9OlExk+9SqRAKvMw Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="298465124"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="298465124"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:29:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="742345356"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="742345356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 09 Nov 2022 02:29:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 12:29:43 +0200
Date: Wed, 9 Nov 2022 12:29:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y2uBF56Fe+VZ9K9X@intel.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-2-animesh.manna@intel.com>
 <Y2t80/UUH/EwhrLa@intel.com> <87wn8477bc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87wn8477bc.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pps: Enable 2nd pps for dual
 EDP scenario
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

On Wed, Nov 09, 2022 at 12:25:59PM +0200, Jani Nikula wrote:
> On Wed, 09 Nov 2022, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Wed, Nov 09, 2022 at 02:48:21AM +0530, Animesh Manna wrote:
> >> >From display gen12 onwards to support dual EDP two instances of pps added.
> >> Currently backlight controller and pps instance can be mapped together
> >> for a specific panel. Extended support for gen12 for dual EDP usage.
> >> 
> >> v1: Iniital revision
> >> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
> >> 
> >> Cc: Jani Nikula <jani.nikula@intel.com>
> >> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> Cc: Uma Shankar <uma.shankar@intel.com>
> >> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
> >>  drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
> >>  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
> >>  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
> >>  4 files changed, 14 insertions(+), 11 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index c2987f2c2b2e..fca44be9bab8 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct drm_i915_private *i915,
> >>  	return 0;
> >>  }
> >>  
> >> -enum panel_type {
> >> -	PANEL_TYPE_OPREGION,
> >> -	PANEL_TYPE_VBT,
> >> -	PANEL_TYPE_PNPID,
> >> -	PANEL_TYPE_FALLBACK,
> >> -};
> >> -
> >>  static int get_panel_type(struct drm_i915_private *i915,
> >>  			  const struct intel_bios_encoder_data *devdata,
> >>  			  const struct edid *edid)
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> >> index e375405a7828..da01b13260ae 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> >> @@ -231,6 +231,13 @@ struct mipi_pps_data {
> >>  	u16 panel_power_cycle_delay;
> >>  } __packed;
> >>  
> >> +enum panel_type {
> >> +	PANEL_TYPE_OPREGION,
> >> +	PANEL_TYPE_VBT,
> >> +	PANEL_TYPE_PNPID,
> >> +	PANEL_TYPE_FALLBACK,
> >> +};
> >> +
> >>  void intel_bios_init(struct drm_i915_private *dev_priv);
> >>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
> >>  			   struct intel_panel *panel,
> >> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> >> index 7400d6b4c587..08ece347f7cb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> >> @@ -5254,6 +5254,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >>  		return false;
> >>  	}
> >>  
> >> +	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> >> +			      encoder->devdata, NULL);
> >> +
> >>  	intel_pps_init(intel_dp);
> >>  
> >>  	/* Cache DPCD and EDID for edp. */
> >> @@ -5288,9 +5291,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
> >>  		edid = ERR_PTR(-ENOENT);
> >>  	}
> >>  	intel_connector->edid = edid;
> >> -
> >> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> >> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> >> +	if (intel_connector->panel.vbt.panel_type == PANEL_TYPE_FALLBACK)
> >
> > vbt.panel_type does _not_ contain enum panel_type (a bit of an 
> > unfortunate name selection by me there I guess).
> >
> >> +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
> >> +				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> >
> > I suspect just calling this twice might leak all kinds of stuff.
> 
> Yeah, what's up with this, this is some old version that was fixed way
> back too. I thought this was good to go:
> 
> https://lore.kernel.org/r/20221018083921.23239-2-animesh.manna@intel.com

That look broken in exactly the same way wrt. enum panel_type.

> 
> >
> >>  
> >>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
> >>  
> >> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> >> index 3949fb449353..0975e49f8d03 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> >> @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
> >>  	intel_dp->pps.initializing = true;
> >>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
> >>  
> >> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> >> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
> >>  		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
> >>  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
> >>  		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
> >> -- 
> >> 2.29.0
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
