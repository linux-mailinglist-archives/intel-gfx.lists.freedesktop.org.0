Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F87769423
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 13:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F3A10E260;
	Mon, 31 Jul 2023 11:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4381A10E260
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 11:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690801457; x=1722337457;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eyeK7l1oVbyKSvvy6nHweLgzoj89icxeESTQrhgYCis=;
 b=c09NRrhvxS+fE5S1LfK67kEWfLmnaF58JFlXd0C9ZttJsUdrmu3O0wOG
 rgtS+6O9P0+QwEr4Gi3fGWjLmmFpf5CtcvtWLb0zCHfoiQ6E0+kVbfFrt
 SE1ojUnSBRJkZ0Zbdx0oHPZv0UmbswK/iqcT1LowKvyVxl37OH1LA/cAD
 UQ6efYAjWEN4D9CN145MAO3HUYXDQIxQ1U89OxInSvBSLcjOXx3QXA/5k
 k6jPdMIbAzVWq/JHgyCjQXTw5YEf5/AOV1e+MMeHpFUS1H8IKFuPUCakJ
 /c+OFnCfdKsHISCG1RCJaQjpfPWrCWb2L6/shLTV2G5+wvb/G5txqYx5O w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="399935253"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="399935253"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 04:04:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="722027091"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="722027091"
Received: from naikshri-mobl7.ger.corp.intel.com (HELO localhost)
 ([10.252.36.230])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 04:04:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230725212716.3060259-3-gustavo.sousa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-3-gustavo.sousa@intel.com>
Date: Mon, 31 Jul 2023 14:04:12 +0300
Message-ID: <877cqgxryr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Simplify
 intel_cx0_program_phy_lane() with loop
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

On Tue, 25 Jul 2023, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> It is possible to generalize the "disable" value for the transmitters to
> be a bit mask based on the port width and the port reversal boolean,
> with a small exception for DP-alt mode with "x1" port width.
>
> Simplify the code by using such a mask and a for-loop instead of using
> switch-case statements.
>
> BSpec: 64539
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 79 +++++---------------
>  1 file changed, 20 insertions(+), 59 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b903ceb0b56a..f10ebdfd696a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2604,7 +2604,8 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
>  				       struct intel_encoder *encoder, int lane_count,
>  				       bool lane_reversal)
>  {
> -	u8 l0t1, l0t2, l1t1, l1t2;
> +	int i;
> +	u8 disables;
>  	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>  	enum port port = encoder->port;
>  
> @@ -2614,66 +2615,26 @@ static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
>  			      C10_VDR_CTRL_MSGBUS_ACCESS,
>  			      MB_WRITE_COMMITTED);
>  
> -	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
> -	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
> -	l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
> -	l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
> -	l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
> -
> -	l0t1 |= CONTROL2_DISABLE_SINGLE_TX;
> -	l0t2 |= CONTROL2_DISABLE_SINGLE_TX;
> -	l1t1 |= CONTROL2_DISABLE_SINGLE_TX;
> -	l1t2 |= CONTROL2_DISABLE_SINGLE_TX;
> -
> -	if (lane_reversal) {
> -		switch (lane_count) {
> -		case 4:
> -			l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			fallthrough;
> -		case 3:
> -			l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			fallthrough;
> -		case 2:
> -			l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			fallthrough;
> -		case 1:
> -			l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			break;
> -		default:
> -			MISSING_CASE(lane_count);
> -		}
> -	} else {
> -		switch (lane_count) {
> -		case 4:
> -			l1t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			fallthrough;
> -		case 3:
> -			l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			fallthrough;
> -		case 2:
> -			l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			break;
> -		case 1:
> -			if (dp_alt_mode)
> -				l0t2 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			else
> -				l0t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> -			break;
> -		default:
> -			MISSING_CASE(lane_count);
> -		}
> +	if (lane_reversal)
> +		disables = REG_GENMASK8(3, 0) >> lane_count;
> +	else
> +		disables = REG_GENMASK8(3, 0) << lane_count;
> +
> +	if (dp_alt_mode && lane_count == 1) {
> +		disables &= ~REG_GENMASK8(1, 0);
> +		disables |= REG_FIELD_PREP8(REG_GENMASK8(1, 0), 0x1);
>  	}
>  
> -	/* disable MLs */
> -	intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> -			l0t1, MB_WRITE_COMMITTED);
> -	intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> -			l0t2, MB_WRITE_COMMITTED);
> -	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> -			l1t1, MB_WRITE_COMMITTED);
> -	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
> -			l1t2, MB_WRITE_COMMITTED);
> +	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
> +	for (i = 0; i < 4; i++) {
> +		int tx = i % 2 + 1;
> +		u8 lane_mask = i / 2 == 0 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;

I'm just catching up on mails and quickly eyeballing stuff, but

	i / 2 == 0

looks suspect.

BR,
Jani.

> +
> +		intel_cx0_rmw(i915, port, lane_mask, PHY_CX0_TX_CONTROL(tx, 2),
> +			      CONTROL2_DISABLE_SINGLE_TX,
> +			      disables & BIT(i) ? CONTROL2_DISABLE_SINGLE_TX : 0,
> +			      MB_WRITE_COMMITTED);
> +	}
>  
>  	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
>  		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,

-- 
Jani Nikula, Intel Open Source Graphics Center
