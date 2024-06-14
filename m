Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0F1908B09
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 13:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8865C10E1F5;
	Fri, 14 Jun 2024 11:47:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TrcrqpB1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7957E10E1F5;
 Fri, 14 Jun 2024 11:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718365663; x=1749901663;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H5Mi9qgCcNghlWVdIuPQa0XYTZLsFWWz5WzkZftH35c=;
 b=TrcrqpB1mkEz8ffdu2/V4XugRC0CA/qhmpg2aoh2qgecpB7iimF0Y9PV
 IeZ8ku+8FS0SCwsZWAZCLzbRoSjZgSltiSbWkAjU8Q8Z6IrR9w1IHRZmo
 8f4TNA1iDKnotUR6pyYWu63Iepdn+ody+CvAyVmsa1pAe03c7eupYIdFi
 iJuKO37+1VIHeS1xgktlZkBrvEQtkF/i763+J4Hy8ccv/4IIygIyquLCJ
 YFW4II888NJZdDY+WUTMp10HHTD+HFRgrTwbTf6T/O7U5oJRDwscI56i9
 ujuEIdVzfpHrFiv0aIrltrw5hT7dyNrJUFp/5weTL/4J4zddzMn4IrF0j w==;
X-CSE-ConnectionGUID: 37ZV/rfvQW2yVrmEVX5NTA==
X-CSE-MsgGUID: X5QncHH7RfKh5aMxONU+Dw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="18167650"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="18167650"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 04:47:42 -0700
X-CSE-ConnectionGUID: XZTag3ZUS8SqluDD8i2kvg==
X-CSE-MsgGUID: pLj36tJ2RmaCGLftl292HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40444148"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 14 Jun 2024 04:47:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 Jun 2024 14:47:38 +0300
Date: Fri, 14 Jun 2024 14:47:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 2/2] drm/i915/dsc: don't mess up splitter state in
 joiner or dsc config
Message-ID: <Zmwt2l3SFaE1icV8@intel.com>
References: <cover.1718360103.git.jani.nikula@intel.com>
 <aea210a824084a0644de5a546e7ecb6dfc6bdef9.1718360103.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aea210a824084a0644de5a546e7ecb6dfc6bdef9.1718360103.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
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

On Fri, Jun 14, 2024 at 01:16:04PM +0300, Jani Nikula wrote:
> The driver handles splitter (for MSO) and joiner/dsc configuration in
> different places. Avoid messing up the splitter hardware state when
> enabling/disabling joiner or dsc. It should not be possible to enable
> both joiner and splitter at the same time, but add more clarity to the
> register use overall.
> 
> Note: We should probably handle splitter for MSO as well as dual-link
> DSI in intel_vdsc.c. Also, we have intel_uncompressed_joiner_enable()
> but no corresponding disable.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c       |  5 ++---
>  drivers/gpu/drm/i915/display/intel_vdsc.c      | 12 +++++++++---
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h |  1 +
>  3 files changed, 12 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bb13a3ca8c7c..49509a6599fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2417,9 +2417,8 @@ static void intel_ddi_mso_configure(const struct intel_crtc_state *crtc_state)
>  			dss1 |= SPLITTER_CONFIGURATION_4_SEGMENT;
>  	}
>  
> -	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe),
> -		     SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK |
> -		     OVERLAP_PIXELS_MASK, dss1);
> +	/* Only touch the splitter */
> +	intel_de_rmw(i915, ICL_PIPE_DSS_CTL1(pipe), SPLITTER_STATE, dss1);
>  }
>  
>  static u8 mtl_get_port_width(u8 lane_count)
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index b9687b7692b8..a8671d3f1d41 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -766,7 +766,9 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>  		else
>  			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
>  
> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> +		/* Avoid touching the splitter */
> +		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
> +			     ~SPLITTER_STATE, dss_ctl1_val);
>  	}
>  }
>  
> @@ -793,7 +795,9 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>  		if (!intel_crtc_is_joiner_secondary(crtc_state))
>  			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>  	}
> -	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
> +	/* Avoid touching the splitter */
> +	intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
> +		     ~SPLITTER_STATE, dss_ctl1_val);
>  	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
>  }
>  
> @@ -805,7 +809,9 @@ void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
>  	/* Disable only if either of them is enabled */
>  	if (old_crtc_state->dsc.compression_enable ||
>  	    old_crtc_state->joiner_pipes) {
> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
> +		/* Avoid touching the splitter */
> +		intel_de_rmw(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder),
> +			     ~SPLITTER_STATE, 0);
>  		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
>  	}
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index f921ad67b587..3734cd96f55e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -37,6 +37,7 @@
>  #define  SPLITTER_CONFIGURATION_MASK		REG_GENMASK(26, 25)
>  #define  SPLITTER_CONFIGURATION_2_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 0)
>  #define  SPLITTER_CONFIGURATION_4_SEGMENT	REG_FIELD_PREP(SPLITTER_CONFIGURATION_MASK, 1)
> +#define  SPLITTER_STATE				(SPLITTER_ENABLE | SPLITTER_CONFIGURATION_MASK | OVERLAP_PIXELS_MASK)

Not a big fan of this. I'd rather explicicitly list the bits
we actually want to modify in each call site.

Also not a big fan of the rmws. I think in the future we might be
able to adjust some DSC stuff via fastsets, and that means no rmws
because we then want to do it via DSB. But not sure if the DSS
registers specifically would be involved in that, and I guess we
already had some rmws in there so it'll require work anyway. So
no hard objection to using rmw for now.

>  #define  UNCOMPRESSED_JOINER_PRIMARY		(1 << 21)
>  #define  UNCOMPRESSED_JOINER_SECONDARY		(1 << 20)
>  
> -- 
> 2.39.2

-- 
Ville Syrjälä
Intel
