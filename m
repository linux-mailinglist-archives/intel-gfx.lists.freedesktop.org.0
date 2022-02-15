Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A69E04B6DEF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Feb 2022 14:46:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3134610E50C;
	Tue, 15 Feb 2022 13:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E00210E516
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Feb 2022 13:46:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644932811; x=1676468811;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Y9XsxDnZUqJau/Yinu8PIL5E+ljL0YMK0WBKyKfP/vU=;
 b=mbDGaEo/s/4xlWYUCtJpI61ZdfRY1Iu1LmaeC8WNKJEmegDijPLioE12
 R467VyRZIUhxHgMx9EvGWj+P3+PwlfReMkGVv8/uGssTRdZhcQfAh2N/i
 ++TgYzBZMYsOCknUITI19WXikddijAb6nUw7nfWvkufmdzBYROy3tvpil
 +4CsplkoyHBN5WpI9wrbUzOE4MaJxY5uX6sIe5eUpCpdPo+H/ORW+KuUt
 whZWY82ha9/rFhxKNltmY4JVNYG0A50Kl1u/ZpCZpZpVdsT7mgD63DmcL
 Vf6ggmP+OUd/OHaxD4OIX45/Y9yghzj4ib6z1aI8Lk53eO+PflWwlDIJ6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="274927106"
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="274927106"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:46:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,370,1635231600"; d="scan'208";a="486181162"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 05:46:48 -0800
Date: Tue, 15 Feb 2022 15:47:02 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20220215134702.GA16567@intel.com>
References: <20220210185223.95399-1-jose.souza@intel.com>
 <20220210185223.95399-2-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220210185223.95399-2-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Implement
 Wa_16013835468
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

On Thu, Feb 10, 2022 at 10:52:23AM -0800, José Roberto de Souza wrote:
> PSR2 workaround required when mode has delayed vblank.
> 
> BSpec: 52890
> BSpec: 49421
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>


I think we better implement it in a more generic way.
BSpec 71580 formulates this workaround more precisely:

"
If any low power watermark is disabled because the package C state 
has too much latency for the size of Vblank and PSR1 or PSR2 is enabled, 
set the register bit for this pipe (listing below) to 1 to disable a 
PSR optimization to override to the maximum watermark. 
Clear the bit if the size of Vblank does not require low power watermarks to be disabled 
or PSR* is disabled."


Pipe A 0x46430 bit 23

Pipe B 0x46430 bit 24

Pipe C 0x46430 bit 25

Pipe D 0x46430 bit 31


TRANS_SET_CONTEXT_LATENCY is used to delay the vblank"


Almost we must ensure that one:

Vblank time >= MAX(framestart delay + package C state latency + watermark 0 time + pipe scaler pre-fill time + DSC pre-fill time, 
                   PSR2 vblank time, SDP vblank time)

Line time >= PSR2 line time

I'm currently working on the latter one. I have suggestion that one I finish 
with calculations required for this formula, I can provide some api for this
patch in order to check if PSR can be enabled and workaround has to be applied.

Stan


> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 40 ++++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h          | 13 +++++---
>  2 files changed, 46 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 72bd8d3261e0c..2e0b092f4b6be 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1063,7 +1063,23 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
>  	intel_dp->psr.active = true;
>  }
>  
> -static void intel_psr_enable_source(struct intel_dp *intel_dp)
> +static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
> +{
> +	switch (intel_dp->psr.pipe) {
> +	case PIPE_A:
> +		return LATENCY_REPORTING_REMOVED_PIPE_A;
> +	case PIPE_B:
> +		return LATENCY_REPORTING_REMOVED_PIPE_B;
> +	case PIPE_C:
> +		return LATENCY_REPORTING_REMOVED_PIPE_C;
> +	default:
> +		MISSING_CASE(intel_dp->psr.pipe);
> +		return 0;
> +	}
> +}
> +
> +static void intel_psr_enable_source(struct intel_dp *intel_dp,
> +				    const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> @@ -1133,6 +1149,20 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
>  		if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> +
> +		/* Wa_16013835468:tgl[b0+], dg1 */
> +		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> +		    IS_DG1(dev_priv)) {
> +			u16 vtotal, vblank;
> +
> +			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
> +				 crtc_state->uapi.adjusted_mode.crtc_vdisplay;
> +			vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
> +				 crtc_state->uapi.adjusted_mode.crtc_vblank_start;
> +			if (vblank > vtotal)
> +				intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> +					     wa_16013835468_bit_get(intel_dp));
> +		}
>  	}
>  }
>  
> @@ -1198,7 +1228,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>  	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
>  	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
>  	intel_psr_enable_sink(intel_dp);
> -	intel_psr_enable_source(intel_dp);
> +	intel_psr_enable_source(intel_dp, crtc_state);
>  	intel_dp->psr.enabled = true;
>  	intel_dp->psr.paused = false;
>  
> @@ -1297,6 +1327,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  		if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> +
> +		/* Wa_16013835468:tgl[b0+], dg1 */
> +		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
> +		    IS_DG1(dev_priv))
> +			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
> +				     wa_16013835468_bit_get(intel_dp), 0);
>  	}
>  
>  	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 87c92314ee269..1cd4056400b63 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6040,11 +6040,14 @@
>  #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
>  #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
>  
> -#define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
> -#define   SKL_SELECT_ALTERNATE_DC_EXIT	REG_BIT(30)
> -#define   ICL_DELAY_PMRSP		REG_BIT(22)
> -#define   DISABLE_FLR_SRC		REG_BIT(15)
> -#define   MASK_WAKEMEM			REG_BIT(13)
> +#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
> +#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> +#define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
> +#define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
> +#define   LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
> +#define   ICL_DELAY_PMRSP			REG_BIT(22)
> +#define   DISABLE_FLR_SRC			REG_BIT(15)
> +#define   MASK_WAKEMEM				REG_BIT(13)
>  
>  #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
>  #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
> -- 
> 2.35.1
> 
