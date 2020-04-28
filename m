Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E8F1BB838
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 09:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DBD89E03;
	Tue, 28 Apr 2020 07:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DE1A89E03
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 07:55:53 +0000 (UTC)
IronPort-SDR: HEJtYfxUWPjuC1QQjRByUr2LdazJ4ya5GYls50NF/kspbufp+9z7jgDgo+b6jShCjWh2Vq1oOp
 rpXNaSPBANxg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 00:55:53 -0700
IronPort-SDR: UTA76bIZemBIuNeTXOiwJzBLDUwuAZInN05mFHkHatSnkxntZ86THgXbPDgEvFEehsLDxUMn/z
 U8IeWJbgNF2w==
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="432093268"
Received: from ctozerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.47.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 00:55:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200423181937.25176-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200423181937.25176-1-imre.deak@intel.com>
Date: Tue, 28 Apr 2020 10:55:49 +0300
Message-ID: <87r1w89h8a.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icl+: Prevent using non-TypeC AUX
 channels on TypeC ports
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

On Thu, 23 Apr 2020, Imre Deak <imre.deak@intel.com> wrote:
> Using an AUX channel which by default belongs to a non-TypeC PHY won't
> work on a TypeC PHY, since - as a side-effect besides providing an AUX
> channel - the AUX channel power well affects power manangement specific
> to the TypeC subsystem. Using a TypeC AUX channel on a non-TypeC PHY
> would probably also cause problems, so for simplicity prevent both.
>
> This fixes at least an ICL-Y machine in CI, which has a buggy VBT
> setting AUX-B as an alternative channel for port C.

Is it a production machine? Not happy about adding stuff for pre-pro
machines with buggy VBT. It'll bite us later. It always has.

Also, hate to see VBT code call into intel_display.c (intel_phy_is_tc).

BR,
Jani.


>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 84 +++++++++++++++--------
>  1 file changed, 57 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 839124647202..10d463723d12 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1538,11 +1538,38 @@ static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
>  	return PORT_NONE;
>  }
>  
> +static enum aux_ch
> +intel_bios_port_info_aux_ch(const struct ddi_vbt_port_info *info)
> +{
> +	switch (info->alternate_aux_channel) {
> +	case DP_AUX_A:
> +		return AUX_CH_A;
> +	case DP_AUX_B:
> +		return AUX_CH_B;
> +	case DP_AUX_C:
> +		return AUX_CH_C;
> +	case DP_AUX_D:
> +		return AUX_CH_D;
> +	case DP_AUX_E:
> +		return AUX_CH_E;
> +	case DP_AUX_F:
> +		return AUX_CH_F;
> +	case DP_AUX_G:
> +		return AUX_CH_G;
> +	default:
> +		MISSING_CASE(info->alternate_aux_channel);
> +		return AUX_CH_A;
> +	}
> +}
> +
>  static void sanitize_aux_ch(struct drm_i915_private *dev_priv,
>  			    enum port port)
>  {
>  	struct ddi_vbt_port_info *info = &dev_priv->vbt.ddi_port_info[port];
>  	enum port p;
> +	enum aux_ch aux_ch;
> +	bool aux_is_tc;
> +	bool phy_is_tc;
>  
>  	if (!info->alternate_aux_channel)
>  		return;
> @@ -1571,6 +1598,35 @@ static void sanitize_aux_ch(struct drm_i915_private *dev_priv,
>  
>  		info->supports_dp = false;
>  		info->alternate_aux_channel = 0;
> +
> +		return;
> +	}
> +
> +	aux_ch = intel_bios_port_info_aux_ch(info);
> +	/* The AUX CH -> default port is a 1:1 mapping. */
> +	aux_is_tc = intel_phy_is_tc(dev_priv,
> +				    intel_port_to_phy(dev_priv,
> +						      (enum port)aux_ch));
> +	phy_is_tc = intel_phy_is_tc(dev_priv,
> +				    intel_port_to_phy(dev_priv, port));
> +	if (aux_is_tc != phy_is_tc) {
> +		/*
> +		 * Using an AUX channel which by default belongs to a TypeC
> +		 * PHY can't be used for non-TypeC PHYs and vice-versa. The
> +		 * reason is that TypeC AUX power wells can only be enabled in
> +		 * the current TypeC mode of the PHY and have an effect on power
> +		 * management specific to the TypeC subsystem.
> +		 */
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Port %c on a %s PHY is trying to use the %s AUX CH %c, "
> +			    "disabling DP support on this port.\n",
> +			    port_name(port),
> +			    phy_is_tc ? "TypeC" : "non-TypeC",
> +			    aux_is_tc ? "TypeC" : "non-TypeC",
> +			    aux_ch_name(aux_ch));
> +
> +		info->supports_dp = false;
> +		info->alternate_aux_channel = 0;
>  	}
>  }
>  
> @@ -2595,33 +2651,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
>  		return aux_ch;
>  	}
>  
> -	switch (info->alternate_aux_channel) {
> -	case DP_AUX_A:
> -		aux_ch = AUX_CH_A;
> -		break;
> -	case DP_AUX_B:
> -		aux_ch = AUX_CH_B;
> -		break;
> -	case DP_AUX_C:
> -		aux_ch = AUX_CH_C;
> -		break;
> -	case DP_AUX_D:
> -		aux_ch = AUX_CH_D;
> -		break;
> -	case DP_AUX_E:
> -		aux_ch = AUX_CH_E;
> -		break;
> -	case DP_AUX_F:
> -		aux_ch = AUX_CH_F;
> -		break;
> -	case DP_AUX_G:
> -		aux_ch = AUX_CH_G;
> -		break;
> -	default:
> -		MISSING_CASE(info->alternate_aux_channel);
> -		aux_ch = AUX_CH_A;
> -		break;
> -	}
> +	aux_ch = intel_bios_port_info_aux_ch(info);
>  
>  	drm_dbg_kms(&dev_priv->drm, "using AUX %c for port %c (VBT)\n",
>  		    aux_ch_name(aux_ch), port_name(port));

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
