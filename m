Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8829C6B21C3
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 11:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC8FC10E7DD;
	Thu,  9 Mar 2023 10:44:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D1910E7DD
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 10:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678358669; x=1709894669;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ochlJJmiFwkI6Q2YewY+vAWmxDmRKBLNrycI16OKeWM=;
 b=VkRa0UT7mDVNGXVF+jFZ7T6QXsD2+d3D8U477JNQEpzcl7wgU5RS/mJQ
 0IYfbg1gsGaeUaGlqb20EMypzrApBTrNATwMT10Np46A44z6v9+Ld/Goe
 hhmyHk3KwE9YlWkJOiWMfv/VGec2im8mHSXOY636Eu63bjcxZg+cbEctz
 iV/RIS2l1AUYZDQHlceCmdJsS4VcMAm0pQQXeeZN8afdYpcah+q+3dM6T
 2E2sHmJSm+12soIfYtyiZWva+eYeyqoaGhRpo47lGYSoq/CsimrNWWoUz
 UgZl0yov/o68+DNl47/8ppm4xzitSnp/pOQ8N8LB7mfoPF1tvcHbDB7cf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="401247627"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="401247627"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 02:44:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="677336939"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="677336939"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 02:44:27 -0800
Date: Thu, 9 Mar 2023 12:44:19 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZAm4gw1mgdzEgkiv@intel.com>
References: <20230223115509.3980226-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230223115509.3980226-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Don't roundup max bpp,
 while computing compressed bpp
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

On Thu, Feb 23, 2023 at 05:25:09PM +0530, Ankit Nautiyal wrote:
> While computing compressed bpp, maximum value of bits_per_pixel is
> calculated that can be supported with the given link configuration
> for a given mode. Avoid rounding up of this max bits_per_pixel.
> Also improve documentation for computing max bits_per_pixel.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b77bd4565864..51e9d0b2d8b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -716,9 +716,19 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	 * (LinkSymbolClock)* 8 * (TimeSlots / 64)
>  	 * for SST -> TimeSlots is 64(i.e all TimeSlots that are available)
>  	 * for MST -> TimeSlots has to be calculated, based on mode requirements
> +	 *
> +	 * Due to FEC overhead, the available bw is reduced to 97.2261%.
> +	 * To support the given mode:
> +	 * Bandwidth required should be <= Available link Bandwidth * FEC Overhead
> +	 * =>ModeClock * bits_per_pixel <= Available Link Bandwidth * FEC Overhead
> +	 * =>bits_per_pixel <= Available link Bandwidth * FEC Overhead / ModeClock
> +	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock) * 8 (TimeSlots / 64) /
> +	 *		       (ModeClock / FEC Overhead)
> +	 * =>bits_per_pixel <= (NumberOfLanes * LinkSymbolClock * TimeSlots) /
> +	 *		       (ModeClock / FEC Overhead * 8)
>  	 */
> -	bits_per_pixel = DIV_ROUND_UP((link_clock * lane_count) * timeslots,
> -				      intel_dp_mode_to_fec_clock(mode_clock) * 8);
> +	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
> +			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
>  
>  	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
>  				"total bw %u pixel clock %u\n",
> -- 
> 2.25.1
> 
