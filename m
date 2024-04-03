Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D7C8896E81
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 13:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06226112679;
	Wed,  3 Apr 2024 11:52:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i8q5vInk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E68C5112679;
 Wed,  3 Apr 2024 11:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712145157; x=1743681157;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=GWF+9Fbt4sEI+OEAXyvQY90f2o6zqyD8nL7zjtJ4FnQ=;
 b=i8q5vInk9YlO7ACUYLKdLc/GKZv9LH2rNw0S+HXV/6lKpttSSTshrgGy
 YzQVVYRupDIemJLpysNv4Yer/ITeczbV3nLy+O1r/I7E4fWDVbHkpj4km
 +V/yN0tLfbUidKPzijqqqPkCuuje5DkEJvxOzkHp5wmp7hXr93kKkTDxN
 foPGTeghmFRNM646ShdUzIG+FlYWU2slsqlQDzYJLjoDkPD8M6jW0875s
 4U/W26XmlbchhgDrthRLERmu7OFQP2oQHJTzOCdUwLSvgp6YuK6GSzdey
 /KFjTEailosI+tf7MEsG+wg89eC1fG6ePQOy+RzPcw2NY96lfdvUHNNnd w==;
X-CSE-ConnectionGUID: 8WBhILgFSQuVKZF6AMVF4A==
X-CSE-MsgGUID: KtLwUsjDQNSZObFNEPdbKQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="11145930"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="11145930"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:52:36 -0700
X-CSE-ConnectionGUID: vZhYu113QBOFhg7rE7EjKA==
X-CSE-MsgGUID: wVKNjkeaQ/GHie2KJKUugw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18997459"
Received: from melsaid-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.41.235])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 04:52:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>, Clint Taylor <clinton.a.taylor@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Subject: Re: [PATCH v2 15/25] drm/xe/display: Lane reversal requires writes
 to both context lanes
In-Reply-To: <20240403112253.1432390-16-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-16-balasubramani.vivekanandan@intel.com>
Date: Wed, 03 Apr 2024 14:52:30 +0300
Message-ID: <877cheek8x.fsf@intel.com>
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

On Wed, 03 Apr 2024, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
>
> Write both CX0 Lanes for Context Toggle for all except TC pin assignment D.

Seems like a fix that should be the first patch in the series, no?

> BSPEC: 64539

The spelling is "Bspec".

> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 20035be015c3..cbcb6651dfed 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2558,7 +2558,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  {
>  	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
>  	bool dp = false;
> -	int lane = crtc_state->lane_count > 2 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
> +	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
>  	u32 clock = crtc_state->port_clock;
>  	bool cntx;
>  	int i;
> @@ -2634,19 +2634,19 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	}
>  
>  	/* 4. Program custom width to match the link protocol */
> -	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_WIDTH,
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
>  		      PHY_C20_CUSTOM_WIDTH_MASK,
>  		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(clock, dp)),
>  		      MB_WRITE_COMMITTED);
>  
>  	/* 5. For DP or 6. For HDMI */
>  	if (dp) {
> -		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
>  			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(clock)),
>  			      MB_WRITE_COMMITTED);
>  	} else {
> -		intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  			      BIT(7) | PHY_C20_CUSTOM_SERDES_MASK,
>  			      is_hdmi_frl(clock) ? BIT(7) : 0,
>  			      MB_WRITE_COMMITTED);
> @@ -2660,7 +2660,7 @@ static void intel_c20_pll_program(struct drm_i915_private *i915,
>  	 * 7. Write Vendor specific registers to toggle context setting to load
>  	 * the updated programming toggle context bit
>  	 */
> -	intel_cx0_rmw(encoder, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
>  		      BIT(0), cntx ? 0 : 1, MB_WRITE_COMMITTED);
>  }

-- 
Jani Nikula, Intel
