Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E18FD44AF17
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 14:57:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B906E45D;
	Tue,  9 Nov 2021 13:57:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7217E6E45D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 13:57:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="293278837"
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="293278837"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 05:57:33 -0800
X-IronPort-AV: E=Sophos;i="5.87,220,1631602800"; d="scan'208";a="503512373"
Received: from stkachen-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.251.216.106])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2021 05:57:32 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211109120428.15211-1-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211109120428.15211-1-vandita.kulkarni@intel.com>
Date: Tue, 09 Nov 2021 15:57:30 +0200
Message-ID: <877ddh5t4l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] Revert "drm/i915/tgl/dsi: Gate the ddi
 clocks after pll mapping"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 09 Nov 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> This reverts commit 991d9557b0c457fb92bc49ddde24a7d9ce6144a8.
> The Bspec was updated recently with the pll ungate sequence
> similar to that of icl dsi enable sequence.
> Hence reverting.
>
> Bspec:49187

Please add a space after : in the Bspec tag, and please add a Fixes: tag
while applying.

>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 10 ++--------
>  1 file changed, 2 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 2337c0b54586..edc38fbd2545 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -698,10 +698,7 @@ static void gen11_dsi_map_pll(struct intel_encoder *encoder,
>  	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
>  
>  	for_each_dsi_phy(phy, intel_dsi->phys) {
> -		if (DISPLAY_VER(dev_priv) >= 12)
> -			val |= ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> -		else
> -			val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
> +		val &= ~ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy);
>  	}
>  	intel_de_write(dev_priv, ICL_DPCLKA_CFGCR0, val);
>  
> @@ -1137,8 +1134,6 @@ static void
>  gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -
>  	/* step 4a: power up all lanes of the DDI used by DSI */
>  	gen11_dsi_power_up_lanes(encoder);
>  
> @@ -1164,8 +1159,7 @@ gen11_dsi_enable_port_and_phy(struct intel_encoder *encoder,
>  	gen11_dsi_configure_transcoder(encoder, crtc_state);
>  
>  	/* Step 4l: Gate DDI clocks */
> -	if (DISPLAY_VER(dev_priv) == 11)
> -		gen11_dsi_gate_clocks(encoder);
> +	gen11_dsi_gate_clocks(encoder);
>  }
>  
>  static void gen11_dsi_powerup_panel(struct intel_encoder *encoder)

-- 
Jani Nikula, Intel Open Source Graphics Center
