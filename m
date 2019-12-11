Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6385111BDDF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 21:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4F8C6E088;
	Wed, 11 Dec 2019 20:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBEBA6E088
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 20:31:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 12:24:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="225663912"
Received: from cataylo2-ubuntu18-10.jf.intel.com (HELO [10.7.199.54])
 ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 11 Dec 2019 12:24:08 -0800
To: intel-gfx@lists.freedesktop.org
References: <20191206071422.27138-1-lucas.demarchi@intel.com>
From: Clinton Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <01c2d44b-544c-656a-2d1c-61a799019f80@intel.com>
Date: Wed, 11 Dec 2019 12:24:07 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191206071422.27138-1-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/display: move clk off sanitize
 to its own function
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/5/19 11:14 PM, Lucas De Marchi wrote:
> This allows us to isolate reading and writing to the
> ICL_DPCLKA_CFGCR0 during the sanitize phase.
>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 57 +++++++++++++-----------
>   1 file changed, 32 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ebcc7302706b..3433b0bf4f44 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3003,11 +3003,40 @@ static void icl_unmap_plls_to_ports(struct intel_encoder *encoder)
>   	mutex_unlock(&dev_priv->dpll_lock);
>   }
>   
> +static void icl_sanitize_port_clk_off(struct drm_i915_private *dev_priv,
> +				      u32 port_mask, bool ddi_clk_needed)
> +{
> +	enum port port;
> +	u32 val;
> +
> +	val = I915_READ(ICL_DPCLKA_CFGCR0);
> +	for_each_port_masked(port, port_mask) {
> +		enum phy phy = intel_port_to_phy(dev_priv, port);
> +
> +		bool ddi_clk_ungated = !(val &
> +					 icl_dpclka_cfgcr0_clk_off(dev_priv,
> +								   phy));
> +
> +		if (ddi_clk_needed == ddi_clk_ungated)
> +			continue;
> +
> +		/*
> +		 * Punt on the case now where clock is gated, but it would
> +		 * be needed by the port. Something else is really broken then.
> +		 */
> +		if (WARN_ON(ddi_clk_needed))
> +			continue;
> +
> +		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
> +			 phy_name(port));
> +		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
> +		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
> +	}
> +}
> +
>   void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>   {
>   	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	u32 val;
> -	enum port port;
>   	u32 port_mask;
>   	bool ddi_clk_needed;
>   
> @@ -3056,29 +3085,7 @@ void icl_sanitize_encoder_pll_mapping(struct intel_encoder *encoder)
>   		ddi_clk_needed = false;
>   	}
>   
> -	val = I915_READ(ICL_DPCLKA_CFGCR0);
> -	for_each_port_masked(port, port_mask) {
> -		enum phy phy = intel_port_to_phy(dev_priv, port);
> -
> -		bool ddi_clk_ungated = !(val &
> -					 icl_dpclka_cfgcr0_clk_off(dev_priv,
> -								   phy));
> -
> -		if (ddi_clk_needed == ddi_clk_ungated)
> -			continue;
> -
> -		/*
> -		 * Punt on the case now where clock is gated, but it would
> -		 * be needed by the port. Something else is really broken then.
> -		 */
> -		if (WARN_ON(ddi_clk_needed))
> -			continue;
> -
> -		DRM_NOTE("PHY %c is disabled/in DSI mode with an ungated DDI clock, gate it\n",
> -			 phy_name(port));
> -		val |= icl_dpclka_cfgcr0_clk_off(dev_priv, phy);
> -		I915_WRITE(ICL_DPCLKA_CFGCR0, val);
> -	}
> +	icl_sanitize_port_clk_off(dev_priv, port_mask, ddi_clk_needed);
>   }
>   
>   static void intel_ddi_clk_select(struct intel_encoder *encoder,


No change to functionality.

Reviewed-by: Clint Taylor

-Clint


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
