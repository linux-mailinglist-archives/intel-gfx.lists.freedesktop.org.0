Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC5C546C36
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jun 2022 20:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C17B710FEAB;
	Fri, 10 Jun 2022 18:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3EB610FEAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jun 2022 18:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654885101; x=1686421101;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fwiSLilhM2dgCzLo28NV3kwRObc8U0aDyuhsZXKXj+w=;
 b=kZntLQ/MstCUe7wfmQckuB6jXrUAh1o8JHFGwmbiimb5/4AWCG7tsy9E
 nxF/lXckQ2G3W4DSCQYqFbwIRe+7+mbUh3na//frXYy6v05N+vflX4XGL
 8+QDeR2naMnSVWi3gPkEcsbw6zlgmQjVI/0unFCECq+bj9aUaMspArWpK
 fA6rODjgBNeoF45XYeHg1b4w9OEUPaYS5bI6Nj3cBD1uesOze72Dyy20d
 UpTu0h487hGFeu6eI0gL1x3rcXvjSIT61WUa47DzHJqgxXpdiIB/4focC
 Fj9Aeg8uVyqcgJhteW8cfUZ6cbwg9ql9dr3jiiNHpj8gGE+bl3QmV/WX1 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="339458177"
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="339458177"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 11:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,291,1647327600"; d="scan'208";a="671968198"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by FMSMGA003.fm.intel.com with SMTP; 10 Jun 2022 11:18:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jun 2022 21:18:18 +0300
Date: Fri, 10 Jun 2022 21:18:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YqOK6nSJQsrElNy2@intel.com>
References: <cover.1654870175.git.jani.nikula@intel.com>
 <34e0dd92b7f7e9076df1f01b542347e599ec6653.1654870175.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <34e0dd92b7f7e9076df1f01b542347e599ec6653.1654870175.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/bios: split ddi port parsing
 and debug printing
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

On Fri, Jun 10, 2022 at 05:10:27PM +0300, Jani Nikula wrote:
> Split ddi port parsing and debug printing to clarify the functional
> parts of parse_ddi_port(), which are quite small nowadays.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 65 +++++++++++++----------
>  1 file changed, 37 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 59d55a99bc2e..fb5f8a9f5ab5 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2561,33 +2561,13 @@ static bool is_port_valid(struct drm_i915_private *i915, enum port port)
>  	return true;
>  }
>  
> -static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> +static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
> +			   enum port port)
>  {
>  	struct drm_i915_private *i915 = devdata->i915;
>  	const struct child_device_config *child = &devdata->child;
>  	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
>  	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
> -	enum port port;
> -
> -	port = dvo_port_to_port(i915, child->dvo_port);
> -	if (port == PORT_NONE)
> -		return;
> -
> -	if (!is_port_valid(i915, port)) {
> -		drm_dbg_kms(&i915->drm,
> -			    "VBT reports port %c as supported, but that can't be true: skipping\n",
> -			    port_name(port));
> -		return;
> -	}
> -
> -	if (i915->vbt.ports[port]) {
> -		drm_dbg_kms(&i915->drm,
> -			    "More than one child device for port %c in VBT, using the first.\n",
> -			    port_name(port));
> -		return;
> -	}
> -
> -	sanitize_device_type(devdata, port);
>  
>  	is_dvi = intel_bios_encoder_supports_dvi(devdata);
>  	is_dp = intel_bios_encoder_supports_dp(devdata);
> @@ -2605,12 +2585,6 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  		    supports_typec_usb, supports_tbt,
>  		    devdata->dsc != NULL);
>  
> -	if (is_dvi)
> -		sanitize_ddc_pin(devdata, port);
> -
> -	if (is_dp)
> -		sanitize_aux_ch(devdata, port);
> -
>  	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
>  	if (hdmi_level_shift >= 0) {
>  		drm_dbg_kms(&i915->drm,
> @@ -2642,6 +2616,41 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %c VBT DP max link rate: %d\n",
>  			    port_name(port), dp_max_link_rate);
> +}
> +
> +static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
> +{
> +	struct drm_i915_private *i915 = devdata->i915;
> +	const struct child_device_config *child = &devdata->child;
> +	enum port port;
> +
> +	port = dvo_port_to_port(i915, child->dvo_port);
> +	if (port == PORT_NONE)
> +		return;
> +
> +	if (!is_port_valid(i915, port)) {
> +		drm_dbg_kms(&i915->drm,
> +			    "VBT reports port %c as supported, but that can't be true: skipping\n",
> +			    port_name(port));
> +		return;
> +	}
> +
> +	if (i915->vbt.ports[port]) {
> +		drm_dbg_kms(&i915->drm,
> +			    "More than one child device for port %c in VBT, using the first.\n",
> +			    port_name(port));
> +		return;
> +	}
> +
> +	sanitize_device_type(devdata, port);
> +
> +	print_ddi_port(devdata, port);

Maybe put the print to the end, in case we want to start printing
something about the ddc/aux stuff?

Series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> +
> +	if (intel_bios_encoder_supports_dvi(devdata))
> +		sanitize_ddc_pin(devdata, port);
> +
> +	if (intel_bios_encoder_supports_dp(devdata))
> +		sanitize_aux_ch(devdata, port);
>  
>  	i915->vbt.ports[port] = devdata;
>  }
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
