Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 251465BA8BF
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 10:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C86610E3CE;
	Fri, 16 Sep 2022 08:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D765E10E3C1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 08:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663318692; x=1694854692;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=quVYUdrbXa2Gesq90yxFXhOHY43fpi3JM7igEZvNK+g=;
 b=hanqHVeGr+KwYIn1lPYxRrxvzyKTsBNn2/LPW3SPRASuAWz9ADLYERXa
 D0PQZSBTfsipoTZnc+rS2IskwRzf5TGVPrXuX9/j0Q9Efnd4qdVH1k6ED
 Iy6+CMq6X2yhU5ZJqeSyinIWSI6bjn+2XZ+uwVR3qJSBuvN2LFjdXG3x8
 9l4cXeP6G/2yeYjrYzgIO8/XbXxCiVzVZPSUide5YrmHWtL0uf1oPFuPY
 9K6HnE8Q7uviEzoDh9cYQleTz7afKQZC9HN95KdORCeE5L+qCGpyGwWm8
 NQn6bCY9n3uEJsBZgt5cZmItx86E9Z4hQ5mC4LtT2kwdE8CF2yngkaDHI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="285989031"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="285989031"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 01:58:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="620022400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 16 Sep 2022 01:58:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 11:58:05 +0300
Date: Fri, 16 Sep 2022 11:58:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Animesh Manna <animesh.manna@intel.com>
Message-ID: <YyQ6nSbIvO2WxO2K@intel.com>
References: <20220916083102.18559-1-animesh.manna@intel.com>
 <20220916083102.18559-2-animesh.manna@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220916083102.18559-2-animesh.manna@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pps: Enable 2nd pps for dual
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

On Fri, Sep 16, 2022 at 02:01:02PM +0530, Animesh Manna wrote:
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
> index 28bdb936cd1f..5fd4c09dfa96 100644
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
> index c19e99ee06b6..6f7afa75ec4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5222,6 +5222,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> +	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +			      encoder->devdata, NULL);

We don't want to go for the fallback type here if we
the VBT wants us to use pnpid. Maybe we should just
remove the fallback type entirely? Or perhaps only
use it if the VBT panel type is entirely invalid?

> +
>  	intel_pps_init(intel_dp);
>  
>  	/* Cache DPCD and EDID for edp. */
> @@ -5255,9 +5258,9 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  		edid = ERR_PTR(-ENOENT);
>  	}
>  	intel_connector->edid = edid;
> -
> -	intel_bios_init_panel(dev_priv, &intel_connector->panel,
> -			      encoder->devdata, IS_ERR(edid) ? NULL : edid);
> +	if (intel_connector->panel.vbt.panel_type == PANEL_TYPE_FALLBACK)
> +		intel_bios_init_panel(dev_priv, &intel_connector->panel,
> +				      encoder->devdata, IS_ERR(edid) ? NULL : edid);
>  
>  	intel_panel_add_edid_fixed_modes(intel_connector,
>  					 intel_connector->panel.vbt.drrs_type != DRRS_TYPE_NONE,
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b972fa6ec00d..4b8413382c5d 100644
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
