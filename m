Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2438622820
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 11:11:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF06610E543;
	Wed,  9 Nov 2022 10:11:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F30E10E03B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 10:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667988695; x=1699524695;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=YQkijC0O4YYIX+ELJWfGB3VThZ2iT2xVYRgJ4Iup2HU=;
 b=h8GTBACOWxmCz+t8M1n+CB7hi5wABP6LfZ6oHl060YmiMyT+PvH8rYT7
 2PMwWf3nVFmxiS5wp6I3sLEZDSdRWBaowmydfsgGqGVgh5Xq8U/hxRQsx
 h9V4M90lFBJOZVU9AvRf+sZG5EbLGS5SveFTamLOsMoXMunRWeYrNObP+
 CMeBH994QGkWNf3uOtSspaucq1iVI6/karduHBjVeMbbEFzKD5WPq/ycA
 oAn8ls4fSArUUGVoT42IO+Z7y4W15kKmiH/OderjkEl5+cMqtulHrWx1s
 wTS2cwtJL+rYlsz+WDKyF7OGM9P/DsWp9IQT/yyIjRHXFq9Nheg4VGt9i g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="312101985"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="312101985"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 02:11:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="742340660"
X-IronPort-AV: E=Sophos;i="5.96,150,1665471600"; d="scan'208";a="742340660"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 09 Nov 2022 02:11:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Nov 2022 12:11:31 +0200
Date: Wed, 9 Nov 2022 12:11:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <Y2t80/UUH/EwhrLa@intel.com>
References: <20221108211822.28048-1-animesh.manna@intel.com>
 <20221108211822.28048-2-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221108211822.28048-2-animesh.manna@intel.com>
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 09, 2022 at 02:48:21AM +0530, Animesh Manna wrote:
> >From display gen12 onwards to support dual EDP two instances of pps added.
> Currently backlight controller and pps instance can be mapped together
> for a specific panel. Extended support for gen12 for dual EDP usage.
> 
> v1: Iniital revision
> v2: Called intel_bios_panel_init w/o PNPID before intel_pps_init. [Jani]
> 
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 7 -------
>  drivers/gpu/drm/i915/display/intel_bios.h | 7 +++++++
>  drivers/gpu/drm/i915/display/intel_dp.c   | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_pps.c  | 2 +-
>  4 files changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index c2987f2c2b2e..fca44be9bab8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -706,13 +706,6 @@ static int fallback_get_panel_type(struct drm_i915_private *i915,
>  	return 0;
>  }
>  
> -enum panel_type {
> -	PANEL_TYPE_OPREGION,
> -	PANEL_TYPE_VBT,
> -	PANEL_TYPE_PNPID,
> -	PANEL_TYPE_FALLBACK,
> -};
> -
>  static int get_panel_type(struct drm_i915_private *i915,
>  			  const struct intel_bios_encoder_data *devdata,
>  			  const struct edid *edid)
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index e375405a7828..da01b13260ae 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -231,6 +231,13 @@ struct mipi_pps_data {
>  	u16 panel_power_cycle_delay;
>  } __packed;
>  
> +enum panel_type {
> +	PANEL_TYPE_OPREGION,
> +	PANEL_TYPE_VBT,
> +	PANEL_TYPE_PNPID,
> +	PANEL_TYPE_FALLBACK,
> +};
> +
>  void intel_bios_init(struct drm_i915_private *dev_priv);
>  void intel_bios_init_panel(struct drm_i915_private *dev_priv,
>  			   struct intel_panel *panel,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7400d6b4c587..08ece347f7cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5254,6 +5254,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +			      encoder->devdata, NULL);
> +
>  	intel_pps_init(intel_dp);
>  
>  	/* Cache DPCD and EDID for edp. */
> @@ -5288,9 +5291,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		edid = ERR_PTR(-ENOENT);
>  	}
>  	intel_connector->edid = edid;
> -
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> +	if (intel_connector->panel.vbt.panel_type == PANEL_TYPE_FALLBACK)

vbt.panel_type does _not_ contain enum panel_type (a bit of an 
unfortunate name selection by me there I guess).

> +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +				      encoder->devdata, IS_ERR(edid) ? NULL : edid);

I suspect just calling this twice might leak all kinds of stuff.

>  
>  	intel_panel_add_edid_fixed_modes(intel_connector, true);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 3949fb449353..0975e49f8d03 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1430,7 +1430,7 @@ void intel_pps_init(struct intel_dp *intel_dp)
>  	intel_dp->pps.initializing = true;
>  	INIT_DELAYED_WORK(&intel_dp->pps.panel_vdd_work, edp_panel_vdd_work);
>  
> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915))
> +	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915) || DISPLAY_VER(i915) >= 12)
>  		intel_dp->get_pps_idx = bxt_power_sequencer_idx;
>  	else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
>  		intel_dp->get_pps_idx = vlv_power_sequencer_pipe;
> -- 
> 2.29.0

-- 
Ville Syrjälä
Intel
