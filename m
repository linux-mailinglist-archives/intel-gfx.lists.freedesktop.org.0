Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B64320F8E9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 17:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 685F26E422;
	Tue, 30 Jun 2020 15:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5764B6E422
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 15:54:27 +0000 (UTC)
IronPort-SDR: EfGLXaBvpte2PTyKgf4K1GqT3ipk1QI3Vam7XqvSIl6wr9YK0HPtuT3cCByRn1y8iYSPr7GqQN
 Fxm8enMWCfcA==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="145350610"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="145350610"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 08:54:26 -0700
IronPort-SDR: kuLXuowbHydwNphH6NFRWfJGLuNjixPG0Ykzn5xp2hWP8jfx0UJ1WKqZxTNMpNo5p30scZoQxG
 De17htiUrAjA==
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="454654919"
Received: from rgrotewx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.12])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 08:54:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200625001120.22810-2-lucas.demarchi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-2-lucas.demarchi@intel.com>
Date: Tue, 30 Jun 2020 18:54:21 +0300
Message-ID: <871rlwmtw2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 1/6] drm/i915: move ICL port F hack to
 intel_bios
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> Move the check for port F to intel_bios.c and just make intel_ddi_init()
> call it. This will allow the output initialization of ICL to be like
> platforms after it, allowing us to make it generic.
>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    | 23 +++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_display.c | 10 +--------
>  2 files changed, 18 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 6593e2c38043..9d42ea3721cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1668,16 +1668,27 @@ static enum port dvo_port_to_port(struct drm_i915_private *dev_priv,
>  		[PORT_E] = { DVO_PORT_HDMID, DVO_PORT_DPD, -1 },
>  	};
>  
> -	if (IS_ROCKETLAKE(dev_priv))
> +	if (IS_ROCKETLAKE(dev_priv)) {
>  		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
>  					  ARRAY_SIZE(rkl_port_mapping[0]),
>  					  rkl_port_mapping,
>  					  dvo_port);
> -	else
> -		return __dvo_port_to_port(ARRAY_SIZE(port_mapping),
> -					  ARRAY_SIZE(port_mapping[0]),
> -					  port_mapping,
> -					  dvo_port);
> +	} else {
> +		enum port port = __dvo_port_to_port(ARRAY_SIZE(port_mapping),
> +						    ARRAY_SIZE(port_mapping[0]),
> +						    port_mapping,
> +						    dvo_port);
> +
> +		/*
> +		 * On some ICL SKUs port F is not present. Work around broken
> +		 * VBTs by allowing port F only on select SKUs.
> +		 */
> +		if (port == PORT_F && IS_ICELAKE(dev_priv) &&
> +		    !IS_ICL_WITH_PORT_F(dev_priv))

I'd perhaps add a debug message here, but either way,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +			return PORT_NONE;
> +
> +		return port;
> +	}
>  }
>  
>  static void parse_ddi_port(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a11bb675f9b3..49772c82a299 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -16842,15 +16842,7 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
>  		intel_ddi_init(dev_priv, PORT_C);
>  		intel_ddi_init(dev_priv, PORT_D);
>  		intel_ddi_init(dev_priv, PORT_E);
> -		/*
> -		 * On some ICL SKUs port F is not present. No strap bits for
> -		 * this, so rely on VBT.
> -		 * Work around broken VBTs on SKUs known to have no port F.
> -		 */
> -		if (IS_ICL_WITH_PORT_F(dev_priv) &&
> -		    intel_bios_is_port_present(dev_priv, PORT_F))
> -			intel_ddi_init(dev_priv, PORT_F);
> -
> +		intel_ddi_init(dev_priv, PORT_F);
>  		icl_dsi_init(dev_priv);
>  	} else if (IS_GEN9_LP(dev_priv)) {
>  		/*

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
