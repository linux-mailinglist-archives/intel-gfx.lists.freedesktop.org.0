Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD5A7D643B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 09:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1ABBB10E578;
	Wed, 25 Oct 2023 07:58:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DC1610E578
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 07:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698220722; x=1729756722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=5zANXtoXMBsckDG43hamMZBOqPuOB6XbeskijcwxE6M=;
 b=kgG6JfRH8v1I294B2Fem12uskxdI/dfgRtd2D2qA4m4pXDugUc66Vb1R
 VU7YYqeM1hMt96nkTLS5nKwgYH70URP5g3x3ocnOJ6ak21xeqAGlHZuhQ
 SVlDuu+NJLtSe3DdenKeilE+9EbnIpRMaGo5hg5exvEBQrMoVWSnZrniz
 mR/twR7UagCu5JK2t0RzzEstxHh9vNZ/L/ap/m4ezjy8GICZqu7Z8A8g0
 eoGO/MQBitr+iO4e9JvKuzbcmZsKQU3rpTaX80SuU3ijPYD3MOwdaDYJS
 CK0njHkSyiOAhhKEM2pCQNc+bGFaqrHxVce44fRzvXmxRZHE2ZtD9Qt+8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="473494540"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="473494540"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 00:58:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="793779906"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="793779906"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 00:58:40 -0700
Date: Wed, 25 Oct 2023 10:58:32 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZTjKejQUYX9Fm0JF@intel.com>
References: <20231024010925.3949910-1-imre.deak@intel.com>
 <20231024010925.3949910-18-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024010925.3949910-18-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH 17/29] drm/i915/dp: Rename
 intel_ddi_disable_fec_state() to intel_ddi_disable_fec()
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

On Tue, Oct 24, 2023 at 04:09:13AM +0300, Imre Deak wrote:
> Rename intel_ddi_disable_fec_state() to intel_ddi_disable_fec(), for
> symmetry with intel_ddi_enable_fec().
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 721a5f28be808..dac3b59758af7 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2234,8 +2234,8 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  		     0, DP_TP_CTL_FEC_ENABLE);
>  }
>  
> -static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,
> -					const struct intel_crtc_state *crtc_state)
> +static void intel_ddi_disable_fec(struct intel_encoder *encoder,
> +				  const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
> @@ -2868,8 +2868,7 @@ static void disable_ddi_buf(struct intel_encoder *encoder,
>  		intel_de_rmw(dev_priv, dp_tp_ctl_reg(encoder, crtc_state),
>  			     DP_TP_CTL_ENABLE, 0);
>  
> -	/* Disable FEC in DP Sink */
> -	intel_ddi_disable_fec_state(encoder, crtc_state);
> +	intel_ddi_disable_fec(encoder, crtc_state);
>  
>  	if (wait)
>  		intel_wait_ddi_buf_idle(dev_priv, port);
> @@ -2884,7 +2883,7 @@ static void intel_disable_ddi_buf(struct intel_encoder *encoder,
>  		mtl_disable_ddi_buf(encoder, crtc_state);
>  
>  		/* 3.f Disable DP_TP_CTL FEC Enable if it is needed */
> -		intel_ddi_disable_fec_state(encoder, crtc_state);
> +		intel_ddi_disable_fec(encoder, crtc_state);
>  	} else {
>  		disable_ddi_buf(encoder, crtc_state);
>  	}
> -- 
> 2.39.2
> 
