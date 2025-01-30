Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C81A22CB8
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBF310E945;
	Thu, 30 Jan 2025 11:52:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c8cy0uJi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C32E910E944;
 Thu, 30 Jan 2025 11:52:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738237939; x=1769773939;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=mj0fp2Et23POhIH+8s+Ac0foKrXJCCWRuzeGuSqKI5I=;
 b=c8cy0uJiBOUZ2ShmmcMCfX8UC5nKOzWy8tEBYNPLfuZxA6CAq7wqgQ+a
 harF/Yq34hRwWmaq+qjlKZdU1d4booOsbyH1C1yT/wOd0a7kpOkd+B8q+
 esIA0t3kLtzw9KvQiEVI3GtXrpP2ZoG2A2MhkslUgKAl57+NKP8I8lL9P
 XkzH98c7MSAczBokOeQXOd87FzXUoQ1VmbBAStKpNxqQYkUDBA8t/vlmh
 huJ54F9Zu7HdsS/vhywxpjluKMEF4krjLz5F8RuO65MUUZEmibFA2yxXo
 f1/EZT/3jR7AFt4bHIHsAOUfoPmb9Ri9+6R01xP4M+Oy8wtUkwsIdPCrF Q==;
X-CSE-ConnectionGUID: wt2CKArXTm6kBL2e0LVqDw==
X-CSE-MsgGUID: Z2155gtLSnmmycvg8yPwSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="26380924"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="26380924"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:52:19 -0800
X-CSE-ConnectionGUID: hTiBSe+GRmKdrlrHdL25iw==
X-CSE-MsgGUID: xFtbneiMRt+dct1tXhzrTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113310842"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:52:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 03/17] drm/i915/ddi: Make all the PORT_WIDTH macros work
 the same way
In-Reply-To: <20250129200221.2508101-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-4-imre.deak@intel.com>
Date: Thu, 30 Jan 2025 13:52:14 +0200
Message-ID: <878qqs8qoh.fsf@intel.com>
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

On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> Make the PORT_WIDTH macro of the XELPDP_PORT_CTL1 register work the same
> way as those used for the DDI_BUF_CTL and the TRANS_DDI_FUNC_CTL
> registers: accept a width parameter and convert it to the given
> register's encoding.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  3 ++-
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 22 ++-----------------
>  2 files changed, 4 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 4a3cf08007e31..a24531656aa89 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -110,7 +110,8 @@
>  #define   XELPDP_TCSS_POWER_REQUEST			REG_BIT(5)
>  #define   XELPDP_TCSS_POWER_STATE			REG_BIT(4)
>  #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
> -#define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
> +#define   XELPDP_PORT_WIDTH(width)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, \
> +								       (width) == 3 ? 4 : (width) - 1)
>  
>  #define _XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 36e7dde422d37..76e8296cb134b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2525,23 +2525,6 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
>  		     OVERLAP_PIXELS_MASK, dss1);
>  }
>  
> -static u8 mtl_get_port_width(u8 lane_count)
> -{
> -	switch (lane_count) {
> -	case 1:
> -		return 0;
> -	case 2:
> -		return 1;
> -	case 3:
> -		return 4;
> -	case 4:
> -		return 3;
> -	default:
> -		MISSING_CASE(lane_count);
> -		return 4;
> -	}
> -}
> -
>  static void
>  mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  {
> @@ -2575,7 +2558,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	u32 val = 0;
>  
> -	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
> +	val |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
>  
>  	if (intel_dp_is_uhbr(crtc_state))
>  		val |= XELPDP_PORT_BUF_PORT_DATA_40BIT;
> @@ -3490,10 +3473,9 @@ static void intel_ddi_enable_hdmi(struct intel_atomic_state *state,
>  		buf_ctl |= DDI_A_4_LANES;
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		u8  lane_count = mtl_get_port_width(crtc_state->lane_count);
>  		u32 port_buf = 0;
>  
> -		port_buf |= XELPDP_PORT_WIDTH(lane_count);
> +		port_buf |= XELPDP_PORT_WIDTH(crtc_state->lane_count);
>  
>  		if (dig_port->lane_reversal)
>  			port_buf |= XELPDP_PORT_REVERSAL;

-- 
Jani Nikula, Intel
