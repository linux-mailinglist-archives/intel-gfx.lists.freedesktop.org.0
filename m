Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B95C341B9D
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 12:39:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DEBC6E9ED;
	Fri, 19 Mar 2021 11:39:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 777396E9ED
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Mar 2021 11:38:58 +0000 (UTC)
IronPort-SDR: bSCsPpNlaXUXFVWHDSkxADuIrPta7xFm9cDPwEgYtxRNg7W107JjT/Crm+gdt5WLG50wtYPUpw
 EGXIdeGX2jUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="274946466"
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="274946466"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 04:38:57 -0700
IronPort-SDR: wxfqP5pyOjYBEddLS7T1KMv7Xm65E3mSOt68ZFarICH9MdEWZ3Kjgjc1jg6bOiw7vhOgmWW6xa
 OOc8jQwXD66w==
X-IronPort-AV: E=Sophos;i="5.81,261,1610438400"; d="scan'208";a="413478452"
Received: from koehlcla-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 04:38:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210213190511.1017088-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210213190511.1017088-1-lucas.demarchi@intel.com>
 <20210213190511.1017088-2-lucas.demarchi@intel.com>
Date: Fri, 19 Mar 2021 13:38:51 +0200
Message-ID: <87k0q374qc.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: move vbt check to
 intel_ddi_init()
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

On Sat, 13 Feb 2021, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On intel_ddi_init() we already check VBT if the port supports HDMI/DP
> and bail out otherwise. Instad of checking if a single port is present
> using VBT in intel_display.c, move the stronger check to
> intel_ddi_init() and return early in case it's not supported.  There
> would be no way intel_bios_* would report support for hdmi/dp if the
> port isn't present so this should cause no regressions for other
> platforms.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  7 +++++++
>  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++--------
>  2 files changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3b97c0091812..1235be0ba5d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3972,6 +3972,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
>  	bool init_hdmi, init_dp;
>  	enum phy phy = intel_port_to_phy(dev_priv, port);
>  
> +	if (!intel_bios_is_port_present(dev_priv, port)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "VBT says port %c is not present, respect it\n",
> +			    port_name(port));
> +		return;
> +	}
> +

We now have this:

	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
	if (!devdata) {
		drm_dbg_kms(&dev_priv->drm,
			    "VBT says port %c is not present\n",
			    port_name(port));
		return;
	}

added in 45c0673aac97 ("drm/i915/bios: start using the
intel_bios_encoder_data directly").

With that, the below hunks are

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  	/*
>  	 * On platforms with HTI (aka HDPORT), if it's enabled at boot it may
>  	 * have taken over some of the PHYs and made them unavailable to the
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 23ec68498800..7aaf7a29d493 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -11904,13 +11904,13 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_E);
> +
>  		/*
> -		 * On some ICL SKUs port F is not present. No strap bits for
> -		 * this, so rely on VBT.
> -		 * Work around broken VBTs on SKUs known to have no port F.
> +		 * On some ICL SKUs port F is not present, but broken VBTs mark
> +		 * the port as present. Only try to initialize port F for the
> +		 * SKUs that may actually have it.
>  		 */
> -		if (IS_ICL_WITH_PORT_F(dev_priv) &&
> -		    intel_bios_is_port_present(dev_priv, PORT_F))
> +		if (IS_ICL_WITH_PORT_F(dev_priv))
>  			intel_ddi_init(dev_priv, PORT_F);
>  
>  		icl_dsi_init(dev_priv);
> @@ -11964,10 +11964,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		/*
>  		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
>  		 */
> -		if (IS_GEN9_BC(dev_priv) &&
> -		    intel_bios_is_port_present(dev_priv, PORT_E))
> +		if (IS_GEN9_BC(dev_priv))
>  			intel_ddi_init(dev_priv, PORT_E);
> -
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		int found;

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
