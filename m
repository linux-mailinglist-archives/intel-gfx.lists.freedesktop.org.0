Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F562BAFBEC
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 10:56:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F38D10E71A;
	Wed,  1 Oct 2025 08:56:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fSKyvrDT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EC5510E71A;
 Wed,  1 Oct 2025 08:56:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759308966; x=1790844966;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=V6ernu69ur1BZHLpSCcqxEo4tZK8pXQs0RNRSbgGVP0=;
 b=fSKyvrDTaXjh6ADXaxa87WFL01myJ+nlW0mulZSuRlEgafrCN2pCzuLk
 5dyv3YeZHeAVn433tHWwMvPDc/O3jSq4XXG53mzsT7R7VA4h86XgS6zx1
 nf90+t7m5XmcNJ3tex+m2JomuTs8orBHKFLcyXIyWgU1i6cSkYuZ/W20Z
 PFtQyJL8XGmcPzPV5iGTviKX+zj3D+aj+BcljrwEf818d/gNLQf0xIrDc
 MeGN1lATgDLaAb9idgJo3pPxmeCPIykqEGSpaxy6eYWX4WJueaZblg9dR
 INNt6eZFQJo8HynbBYwYG+wK4OOF01fwvYrDW4DcTssqHbcttZrkpftuG A==;
X-CSE-ConnectionGUID: e+5oWb9qRR+pApzn9ec0Lw==
X-CSE-MsgGUID: /Y9m4aZuRN+z9aOIDaHmEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61745939"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="61745939"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:56:06 -0700
X-CSE-ConnectionGUID: js1Du8hwTrKtCdxCSFxs8w==
X-CSE-MsgGUID: zIFSBwrtSN6HO6gpELNydg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179151852"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 01:56:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>, Mika Kahola <mika.kahola@intel.com>
Subject: Re: [RFC PATCH 09/39] drm/i915/display: Factor out C10 msgbus
 access start/end helpers
In-Reply-To: <20251001082839.2585559-10-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-10-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 11:55:57 +0300
Message-ID: <704c4d47e164f0817742da79ba9388f1cc9b7ef5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> Factor out functions to begin and complete C10 PHY programming
> sequences to make the code more concise.

access_begin and update_config don't sound like a matching pair,
though. If you're reading code and see "access begin", I think you'd
naturally expect to see a corresponding "access
end/complete/commit/something", instead of "update config".

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 62 +++++++++++---------
>  1 file changed, 35 insertions(+), 27 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a74c1be225ac..9b38c7b4f0a7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -449,6 +449,31 @@ static u8 intel_c10_get_tx_term_ctl(const struct intel_crtc_state *crtc_state)
>  	}
>  }
>  
> +static void intel_c10_msgbus_access_begin(struct intel_encoder *encoder,
> +					  u8 lane_mask)
> +{
> +	if (!intel_encoder_is_c10phy(encoder))
> +		return;
> +
> +	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
> +		      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +}
> +
> +static void intel_c10_msgbus_update_config(struct intel_encoder *encoder,
> +					   u8 lane_mask, bool master_lane)
> +{
> +	u8 val = C10_VDR_CTRL_UPDATE_CFG;
> +
> +	if (!intel_encoder_is_c10phy(encoder))
> +		return;
> +
> +	if (master_lane)
> +		val |= C10_VDR_CTRL_MASTER_LANE;
> +
> +	intel_cx0_rmw(encoder, lane_mask, PHY_C10_VDR_CONTROL(1),
> +		      0, val, MB_WRITE_COMMITTED);
> +}
> +
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state)
>  {
> @@ -472,9 +497,9 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  		return;
>  	}
>  
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
> +
>  	if (intel_encoder_is_c10phy(encoder)) {
> -		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
> -			      0, C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
>  		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CMN(3),
>  			      C10_CMN3_TXVBOOST_MASK,
>  			      C10_CMN3_TXVBOOST(intel_c10_get_tx_vboost_lvl(crtc_state)),
> @@ -513,9 +538,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  		      0, PHY_C10_VDR_OVRD_TX1 | PHY_C10_VDR_OVRD_TX2,
>  		      MB_WRITE_COMMITTED);
>  
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1),
> -			      0, C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_update_config(encoder, owned_lane_mask, false);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
> @@ -2119,9 +2142,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  	 * According to C10 VDR Register programming Sequence we need
>  	 * to do this to read PHY internal registers from MsgBus.
>  	 */
> -	intel_cx0_rmw(encoder, lane, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, lane);
>  
>  	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
>  		pll_state->pll[i] = intel_cx0_read(encoder, lane, PHY_C10_VDR_PLL(i));
> @@ -2140,9 +2161,7 @@ static void intel_c10_pll_program(struct intel_display *display,
>  {
>  	int i;
>  
> -	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, INTEL_CX0_BOTH_LANES);
>  
>  	/* Program the pll values only for the master lane */
>  	for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> @@ -2157,9 +2176,8 @@ static void intel_c10_pll_program(struct intel_display *display,
>  	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CUSTOM_WIDTH,
>  		      C10_VDR_CUSTOM_WIDTH_MASK, C10_VDR_CUSTOM_WIDTH_8_10,
>  		      MB_WRITE_COMMITTED);
> -	intel_cx0_rmw(encoder, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG,
> -		      MB_WRITE_COMMITTED);
> +
> +	intel_c10_msgbus_update_config(encoder, INTEL_CX0_LANE0, true);
>  }
>  
>  static void intel_c10pll_dump_hw_state(struct intel_display *display,
> @@ -2959,11 +2977,7 @@ static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_c
>  	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>  	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
>  
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> -			      PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_MSGBUS_ACCESS,
> -			      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
>  
>  	if (lane_reversal)
>  		disables = REG_GENMASK8(3, 0) >> lane_count;
> @@ -2988,11 +3002,7 @@ static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, int lane_c
>  			      MB_WRITE_COMMITTED);
>  	}
>  
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask,
> -			      PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_UPDATE_CFG,
> -			      MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_update_config(encoder, owned_lane_mask, false);
>  }
>  
>  static u32 intel_cx0_get_pclk_pll_request(u8 lane_mask)
> @@ -3260,9 +3270,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
>  
>  	wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
> -	if (intel_encoder_is_c10phy(encoder))
> -		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C10_VDR_CONTROL(1), 0,
> -			      C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> +	intel_c10_msgbus_access_begin(encoder, owned_lane_mask);
>  
>  	for (i = 0; i < 4; i++) {
>  		int tx = i % 2 + 1;

-- 
Jani Nikula, Intel
