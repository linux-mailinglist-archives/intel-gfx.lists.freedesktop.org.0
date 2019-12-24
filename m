Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA7F3129BEB
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:01:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03FE26E504;
	Tue, 24 Dec 2019 00:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83E96E504
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:00:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:00:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="418830007"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga006.fm.intel.com with ESMTP; 23 Dec 2019 16:00:48 -0800
Date: Mon, 23 Dec 2019 16:00:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191224000048.GV2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-6-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223195850.25997-6-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 5/9] drm/i915/display: move icl to
 description-based ddi init
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 11:58:46AM -0800, Lucas De Marchi wrote:
> By adding a hook that determines if a port is present, we are able to
> support Ice Lake in the new description-based DDI initialization.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 61 ++++++++++++++------
>  1 file changed, 42 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b3fb1e03cb0b..6b4d320ff92c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16224,9 +16224,28 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
>  struct intel_output {
>  	/* Initialize DSI if present */
>  	void (*dsi_init)(struct drm_i915_private *i915);
> +
> +	/*
> +	 * Check if port is present before trying to initialize; if not provided
> +	 * it's assumed the port is present (or we can't check and fail
> +	 * gracefully
> +	 */
> +	bool (*is_port_present)(struct drm_i915_private *i915,
> +				const struct intel_ddi_port_info *port_info);
> +
>  	struct intel_ddi_port_info ddi_ports[];
>  };
>  
> +static bool icl_is_port_present(struct drm_i915_private *i915,
> +				const struct intel_ddi_port_info *port_info)
> +{
> +	if (port_info->port != PORT_F)
> +		return true;
> +
> +	return IS_ICL_WITH_PORT_F(i915) &&
> +		intel_bios_is_port_present(i915, PORT_F);
> +}
> +
>  static const struct intel_output tgl_output = {
>  	.dsi_init = icl_dsi_init,
>  	.ddi_ports = {
> @@ -16242,6 +16261,20 @@ static const struct intel_output tgl_output = {
>  	}
>  };
>  
> +static const struct intel_output icl_output = {
> +	.dsi_init = icl_dsi_init,
> +	.is_port_present = icl_is_port_present,
> +	.ddi_ports = {
> +		{ .port = PORT_A },
> +		{ .port = PORT_B },
> +		{ .port = PORT_C },
> +		{ .port = PORT_D },
> +		{ .port = PORT_E },
> +		{ .port = PORT_F },
> +		{ .port = PORT_NONE }
> +	}

As we add more platforms, I could see there being multiple reasons to
disqualify outputs that we mix and match across platforms (e.g.,
dedicated fuse + hw workaround + some new platform thing).  Maybe rather
than adding a per-platform detection funtion pointer at the top level,
we could add a detect_flags variable to .ddi_ports that indicates which
style(s) of detection should be applied?  Only if we satisfy the test
associated with each flag would the output get initialized.

But I might be overthinking this.  Up to you.


Matt

> +};
> +
>  static const struct intel_output ehl_output = {
>  	.dsi_init = icl_dsi_init,
>  	.ddi_ports = {
> @@ -16276,12 +16309,19 @@ static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
>  		output = &tgl_output;
>  	else if (IS_ELKHARTLAKE(i915))
>  		output = &ehl_output;
> +	else if (IS_GEN(i915, 11))
> +		output = &icl_output;
>  	else if (IS_GEN9_LP(i915))
>  		output = &gen9lp_output;
>  
>  	for (port_info = output->ddi_ports;
> -	     port_info->port != PORT_NONE; port_info++)
> +	     port_info->port != PORT_NONE; port_info++) {
> +		if (output->is_port_present &&
> +		    !output->is_port_present(i915, port_info))
> +			continue;
> +
>  		intel_ddi_init(i915, port_info->port);
> +	}
>  
>  	if (output->dsi_init)
>  		output->dsi_init(i915);
> @@ -16297,25 +16337,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
>  		return;
>  
> -	if (INTEL_GEN(dev_priv) >= 12 || IS_ELKHARTLAKE(dev_priv) ||
> -	    IS_GEN9_LP(dev_priv)) {
> +	if (INTEL_GEN(dev_priv) >= 11 || IS_GEN9_LP(dev_priv)) {
>  		setup_ddi_outputs_desc(dev_priv);
> -	} else if (IS_GEN(dev_priv, 11)) {
> -		intel_ddi_init(dev_priv, PORT_A);
> -		intel_ddi_init(dev_priv, PORT_B);
> -		intel_ddi_init(dev_priv, PORT_C);
> -		intel_ddi_init(dev_priv, PORT_D);
> -		intel_ddi_init(dev_priv, PORT_E);
> -		/*
> -		 * On some ICL SKUs port F is not present. No strap bits for
> -		 * this, so rely on VBT.
> -		 * Work around broken VBTs on SKUs known to have no port F.
> -		 */
> -		if (IS_ICL_WITH_PORT_F(dev_priv) &&
> -		    intel_bios_is_port_present(dev_priv, PORT_F))
> -			intel_ddi_init(dev_priv, PORT_F);
> -
> -		icl_dsi_init(dev_priv);
>  	} else if (HAS_DDI(dev_priv)) {
>  		int found;
>  
> -- 
> 2.24.0
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
