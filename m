Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 775586B2496
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 13:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D844B10E819;
	Thu,  9 Mar 2023 12:54:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B952D10E81D
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 12:54:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678366457; x=1709902457;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=NwS5AUDPMSef5sntDiA0KQk8g64yovzlBNUguGezux8=;
 b=RX+EsDw1Wh13dRlu/o/a0vWpVGVfGgBqSSvrdQa4ZgPLqsLpcZwfE9ou
 OLyxZfWKUsn0MtZwznq28cCv2Vp6u5AIzr6J+dswUD6dhbRaXE0xF7UT4
 rAlgXvMFRxw1XkT8ZNMHXXgpkSaT+RGYDD3qSnAeW2j3eTaE7pPe17H5n
 5XGGfy+ttDykdghTGUhn+TxxIU7VJ+tuUVv6V3C/FO9jpfZ1D+HTzlpHc
 yeJIYIj7J1BuYea9OkJm+Ce7q2HHZKeEV0cJjvTc3LkkgfnfDOSpIwVBa
 3bugqLvEsFbrnQrDUCSl/ZuJoqKwu+5tkeYmitAbNSXOxevmH1x65xn/R Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="337962768"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="337962768"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 04:54:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="801166586"
X-IronPort-AV: E=Sophos;i="5.98,246,1673942400"; d="scan'208";a="801166586"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga004.jf.intel.com with SMTP; 09 Mar 2023 04:54:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Mar 2023 14:54:12 +0200
Date: Thu, 9 Mar 2023 14:54:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZAnW9My9xCwblbKv@intel.com>
References: <20230227112030.5229-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230227112030.5229-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement UHBR bandwidth check
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 27, 2023 at 01:20:30PM +0200, Stanislav Lisovskiy wrote:
> According to spec, we should check if output_bpp * pixel_rate is less
> than DDI clock * 72, if UHBR is used.
> 
> v2: - s/pipe_config/crtc_state/ (Jani Nikula)
>     - Merged previous patch into that one, to remove empty function(Jani Nikula)
> 
> HSDES: 1406899791
> BSPEC: 49259
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 28 +++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a860cbc5dbea..d0e2e37cd758 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -45,6 +45,26 @@
>  #include "intel_hotplug.h"
>  #include "skl_scaler.h"
>  
> +static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> +					  const struct drm_display_mode *adjusted_mode,
> +					  struct intel_crtc_state *crtc_state)
> +{
> +	if (intel_dp_is_uhbr(crtc_state)) {
> +		int output_bpp = bpp;
> +		/* DisplayPort 2 128b/132b, bits per lane is always 32 */
> +		int symbol_clock = crtc_state->port_clock / 32;
> +
> +		if (output_bpp * adjusted_mode->crtc_clock >=
> +		    symbol_clock * 72) {
> +			drm_dbg_kms(&i915->drm, "UHBR check failed(required bw %d available %d)\n",
> +				    output_bpp * adjusted_mode->crtc_clock, symbol_clock * 72);
> +			return -EINVAL;
> +		}

You're still doing this for non-DSC as well. Did we get any
clarification whether that is correct or not?

> +	}
> +
> +	return 0;
> +}
> +
>  static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  						struct intel_crtc_state *crtc_state,
>  						int max_bpp,
> @@ -87,6 +107,10 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  
>  		drm_dbg_kms(&i915->drm, "Trying bpp %d\n", bpp);
>  
> +		ret = intel_dp_mst_check_constraints(i915, bpp, adjusted_mode, crtc_state);
> +		if (ret)
> +			continue;
> +
>  		slots = drm_dp_atomic_find_time_slots(state, &intel_dp->mst_mgr,
>  						      connector->port,
>  						      crtc_state->pbn);
> @@ -104,8 +128,8 @@ static int intel_dp_mst_find_vcpi_slots_for_bpp(struct intel_encoder *encoder,
>  		}
>  	}
>  
> -	/* Despite slots are non-zero, we still failed the atomic check */
> -	if (ret && slots >= 0)
> +	/* We failed to find a proper bpp/timeslots, return error */
> +	if (ret)
>  		slots = ret;
>  
>  	if (slots < 0) {
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
