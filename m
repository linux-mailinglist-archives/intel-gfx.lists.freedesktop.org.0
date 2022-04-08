Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719874F97B4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 16:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A397710E88B;
	Fri,  8 Apr 2022 14:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D8C310E88B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Apr 2022 14:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649426985; x=1680962985;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mPNvSW5MgSrmiPeHRXX9UkKfnk+8rNNmMuj/bhcA5Ac=;
 b=PQh7YxYsrjCWaSJGUnXPkNRAu6HH9OEtqgQpgvldsWphQK9UePeBzP8D
 iocGNKcIJUAGOs4wJNngelDeK+BTI/NxftRuBkFY9eFHbihecCVhON0BW
 hyJDf/+ft1Sc8jUpUz9pEVO5lzMlV49Ww4qyNonXOHaymtI+/V+IyBAhn
 gWolA07AJPkLyjEOn2clcqbBUH/9Ympm5g7Ap1pyjWjSZjHuSC5rGiAY3
 jFN2GRnkrw2Wle24z8zOYilrayOcEEtsaZYtM4clBYOdaGalEzQdIcahj
 nQTrNHy6pjnYmXRiQMX3k7euQD0IiF8hqG/YP+K+XjwiGWsyOUceWAYvq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="259198620"
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="259198620"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2022 07:09:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,245,1643702400"; d="scan'208";a="571499267"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by orsmga008.jf.intel.com with SMTP; 08 Apr 2022 07:09:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Apr 2022 17:09:41 +0300
Date: Fri, 8 Apr 2022 17:09:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YlBCJRD8bMOWL/KI@intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
 <20220405173410.11436-13-ville.syrjala@linux.intel.com>
 <87czhs4xl4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87czhs4xl4.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 12/22] drm/i915/bios: Split VBT parsing
 to global vs. panel specific parts
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

On Thu, Apr 07, 2022 at 08:23:03PM +0300, Jani Nikula wrote:
> On Tue, 05 Apr 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Parsing the panel specific data from VBT is currently happening
> > too early. Split the whole thing into global vs. panel specific
> > parts so that we can start doing the panel specific parsing at
> > a later time.
> 
> Might want to mention panel_type here somewhere, that's basically the
> split, right?

Yep. I'll try to clarify the commit msg a bit.

> 
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_bios.c    | 50 +++++++++++++-------
> >  drivers/gpu/drm/i915/display/intel_bios.h    |  1 +
> >  drivers/gpu/drm/i915/display/intel_display.c |  1 +
> >  3 files changed, 35 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> > index 1a7f1aa79827..da2b1932e10d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.c
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> > @@ -723,6 +723,9 @@ parse_generic_dtd(struct drm_i915_private *i915)
> >  	struct drm_display_mode *panel_fixed_mode;
> >  	int num_dtd;
> >  
> > +	if (i915->vbt.lfp_lvds_vbt_mode)
> > +		return;
> > +
> >  	generic_dtd = find_section(i915, BDB_GENERIC_DTD);
> >  	if (!generic_dtd)
> >  		return;
> > @@ -891,6 +894,9 @@ parse_sdvo_panel_data(struct drm_i915_private *i915)
> >  	struct drm_display_mode *panel_fixed_mode;
> >  	int index;
> >  
> > +	if (i915->vbt.sdvo_lvds_vbt_mode)
> > +		return;
> > +
> >  	index = i915->params.vbt_sdvo_panel_type;
> >  	if (index == -2) {
> >  		drm_dbg_kms(&i915->drm,
> > @@ -1419,6 +1425,9 @@ parse_mipi_config(struct drm_i915_private *i915)
> >  	int panel_type = i915->vbt.panel_type;
> >  	enum port port;
> >  
> > +	if (i915->vbt.dsi.config)
> > +		return;
> > +
> >  	/* parse MIPI blocks only if LFP type is MIPI */
> >  	if (!intel_bios_is_dsi_present(i915, &port))
> >  		return;
> > @@ -1739,6 +1748,9 @@ parse_mipi_sequence(struct drm_i915_private *i915)
> >  	u8 *data;
> >  	int index = 0;
> >  
> > +	if (i915->vbt.dsi.data)
> > +		return;
> > +
> 
> All of the above checks to (presumably) allow calling
> intel_bios_init_panel() multiple times feel a bit out of place here. At
> the very least need a mention in the commit message.

I can split that out for clarity. I didn't have these originally but
given the current reliance on the i915->vbt singleton I got a bit
scared what would happen on some weird machines with multiple panels.
IIRC some kind of native LVDS + SDVO LVDS machines may have existed
at some point.

Plenty of refactoring left here to split the parsed data to proper
per-panel things...

> 
> Regardless,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  	/* Only our generic panel driver uses the sequence block. */
> >  	if (i915->vbt.dsi.panel_id != MIPI_DSI_GENERIC_PANEL_ID)
> >  		return;
> > @@ -2878,6 +2890,27 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  	/* Grab useful general definitions */
> >  	parse_general_features(i915);
> >  	parse_general_definitions(i915);
> > +	parse_driver_features(i915);
> > +
> > +	/* Depends on child device list */
> > +	parse_compression_parameters(i915);
> > +
> > +out:
> > +	if (!vbt) {
> > +		drm_info(&i915->drm,
> > +			 "Failed to find VBIOS tables (VBT)\n");
> > +		init_vbt_missing_defaults(i915);
> > +	}
> > +
> > +	/* Further processing on pre-parsed or generated child device data */
> > +	parse_sdvo_device_mapping(i915);
> > +	parse_ddi_ports(i915);
> > +
> > +	kfree(oprom_vbt);
> > +}
> > +
> > +void intel_bios_init_panel(struct drm_i915_private *i915)
> > +{
> >  	parse_panel_options(i915);
> >  	/*
> >  	 * Older VBTs provided DTD information for internal displays through
> > @@ -2892,29 +2925,12 @@ void intel_bios_init(struct drm_i915_private *i915)
> >  	parse_lfp_data(i915);
> >  	parse_lfp_backlight(i915);
> >  	parse_sdvo_panel_data(i915);
> > -	parse_driver_features(i915);
> >  	parse_panel_driver_features(i915);
> >  	parse_power_conservation_features(i915);
> >  	parse_edp(i915);
> >  	parse_psr(i915);
> >  	parse_mipi_config(i915);
> >  	parse_mipi_sequence(i915);
> > -
> > -	/* Depends on child device list */
> > -	parse_compression_parameters(i915);
> > -
> > -out:
> > -	if (!vbt) {
> > -		drm_info(&i915->drm,
> > -			 "Failed to find VBIOS tables (VBT)\n");
> > -		init_vbt_missing_defaults(i915);
> > -	}
> > -
> > -	/* Further processing on pre-parsed or generated child device data */
> > -	parse_sdvo_device_mapping(i915);
> > -	parse_ddi_ports(i915);
> > -
> > -	kfree(oprom_vbt);
> >  }
> >  
> >  /**
> > diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> > index 4709c4d29805..c744d75fa435 100644
> > --- a/drivers/gpu/drm/i915/display/intel_bios.h
> > +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> > @@ -230,6 +230,7 @@ struct mipi_pps_data {
> >  } __packed;
> >  
> >  void intel_bios_init(struct drm_i915_private *dev_priv);
> > +void intel_bios_init_panel(struct drm_i915_private *dev_priv);
> >  void intel_bios_driver_remove(struct drm_i915_private *dev_priv);
> >  bool intel_bios_is_valid_vbt(const void *buf, size_t size);
> >  bool intel_bios_is_tv_present(struct drm_i915_private *dev_priv);
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index eee185ed41c3..4ece4e7d0296 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -9650,6 +9650,7 @@ int intel_modeset_init_noirq(struct drm_i915_private *i915)
> >  	}
> >  
> >  	intel_bios_init(i915);
> > +	intel_bios_init_panel(i915);
> >  
> >  	ret = intel_vga_register(i915);
> >  	if (ret)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Ville Syrjälä
Intel
