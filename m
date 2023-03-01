Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAB96A6FE1
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 16:38:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7212410E0D6;
	Wed,  1 Mar 2023 15:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3246610E0D6
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 15:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677685124; x=1709221124;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bqBvF88UuAnIyTNFxyVHy8IHR7fDjAkGO3i1PbdF1WQ=;
 b=VAtpO4k29uLVrJSpXhZARM3VbMNvt8WFiKRLEkXRYzk4sr67uhmHa1eI
 cDbN6sh3vbFyQziGsqfcTdfEZGPeFdkI0rirQiviYPTLWWXPUuPBLYQTI
 7eYxXjyOpWsYJM+6m6Z4qzEPggRenejLopGqmSkMjkM1s2WtHViSL5R/7
 sGtg4FTLxJArP6lMBMQ2Zb10LT9DCo0O5NnpV0utw2oDhllc678CVz7aQ
 zvRYFB36mKj4onmk5zMClX2ZT2ynimqZQUbWX1FjmrZqFW5mn1iwsYURY
 Pda3RSx4gSSrsUOMCUQrJkbMHmEvYGp4a4VY0fZkg1L0GbH9eBOR0cfNQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="331917099"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="331917099"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 07:38:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="674598474"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="674598474"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 01 Mar 2023 07:38:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Mar 2023 17:38:39 +0200
Date: Wed, 1 Mar 2023 17:38:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y/9xf6SkV1fG4JSA@intel.com>
References: <20230301151409.1581574-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230301151409.1581574-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix DSS CTL register offsets
 for TGL+
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 01, 2023 at 05:14:09PM +0200, Jani Nikula wrote:
> On TGL+ the DSS control registers are at different offsets, and there's
> one per pipe. Fix the offsets to fix dual link DSI for TGL+.
> 
> There would be helpers for this in the DSC code, but just do the quick
> fix now for DSI. Long term, we should probably move all the DSS handling
> into intel_vdsc.c, so exporting the helpers seems counter-productive.

I'm not entirely happy with intel_vdsc.c since it handles
both the hardware VDSC block (which includes DSS, and so
also uncompressed joiner and MSO), and also some actual
DSC calculations/etc. Might be nice to have a cleaner
split of some sort.

That also reminds me that MSO+dsc/joiner is probably going
to fail miserably given that neither side knows about the
other and both poke the DSS registers.

> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8232
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index b5316715bb3b..5a17ab3f0d1a 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -277,9 +277,21 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
> +	i915_reg_t dss_ctl1_reg, dss_ctl2_reg;
>  	u32 dss_ctl1;
>  
> -	dss_ctl1 = intel_de_read(dev_priv, DSS_CTL1);
> +	/* FIXME: Move all DSS handling to intel_vdsc.c */
> +	if (DISPLAY_VER(dev_priv) >= 12) {
> +		struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
> +
> +		dss_ctl1_reg = ICL_PIPE_DSS_CTL1(crtc->pipe);
> +		dss_ctl2_reg = ICL_PIPE_DSS_CTL2(crtc->pipe);
> +	} else {
> +		dss_ctl1_reg = DSS_CTL1;
> +		dss_ctl2_reg = DSS_CTL2;
> +	}
> +
> +	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg);

Side note: should get rid of this rmw to make sure the thing
fully configuerd the way we want...

Anyways, this seems fine for now:
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	dss_ctl1 |= SPLITTER_ENABLE;
>  	dss_ctl1 &= ~OVERLAP_PIXELS_MASK;
>  	dss_ctl1 |= OVERLAP_PIXELS(intel_dsi->pixel_overlap);
> @@ -299,14 +311,14 @@ static void configure_dual_link_mode(struct intel_encoder *encoder,
>  
>  		dss_ctl1 &= ~LEFT_DL_BUF_TARGET_DEPTH_MASK;
>  		dss_ctl1 |= LEFT_DL_BUF_TARGET_DEPTH(dl_buffer_depth);
> -		intel_de_rmw(dev_priv, DSS_CTL2, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
> +		intel_de_rmw(dev_priv, dss_ctl2_reg, RIGHT_DL_BUF_TARGET_DEPTH_MASK,
>  			     RIGHT_DL_BUF_TARGET_DEPTH(dl_buffer_depth));
>  	} else {
>  		/* Interleave */
>  		dss_ctl1 |= DUAL_LINK_MODE_INTERLEAVE;
>  	}
>  
> -	intel_de_write(dev_priv, DSS_CTL1, dss_ctl1);
> +	intel_de_write(dev_priv, dss_ctl1_reg, dss_ctl1);
>  }
>  
>  /* aka DSI 8X clock */
> -- 
> 2.39.1

-- 
Ville Syrjälä
Intel
