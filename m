Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BC912D7D2
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2019 11:14:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC9856E1F7;
	Tue, 31 Dec 2019 10:14:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62906E202
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Dec 2019 10:14:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Dec 2019 02:14:39 -0800
X-IronPort-AV: E=Sophos;i="5.69,378,1571727600"; d="scan'208";a="213593860"
Received: from heer-mobl.ger.corp.intel.com (HELO localhost) ([10.252.51.86])
 by orsmga008-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Dec 2019 02:14:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191223195850.25997-6-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
 <20191223195850.25997-6-lucas.demarchi@intel.com>
Date: Tue, 31 Dec 2019 12:14:52 +0200
Message-ID: <87r20kls2r.fsf@intel.com>
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
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

You know, all of that is here because there were some boards with broken
VBTs claiming there was a port F on hardware that didn't have port
F. And now we're turning it into infrastructure for all platforms. :(

I actually preferred it when it was a localized hack for ICL. (Though I
said at the time we should not add hacks for VBTs because this shit
won't get fixed if we keep accommodating it.)

If we still need the port F hack, I think I'd rather move it to
intel_bios.c and skip port F description in VBT for platformsm that
don't have it. So we can rely on VBT info elsewhere.

Note that intel_ddi_init() will still check for VBT.

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

At this stage of the series it seems to me we could have a ports mask in
intel_device_info, and just loop over it using for_each_port_masked().

BR,
Jani.

> +	}
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

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
