Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7EC643624
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 21:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 835DB10E29C;
	Mon,  5 Dec 2022 20:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFE7510E29C
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 20:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670273722; x=1701809722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h27tIgx3MpacHef+53f03uYO3K4tVcdemvz8BLKy6So=;
 b=VRTzFfaX/Yii2T9JC2mt582D6S43OPTh/i88mFJhNOeSrYdyUU8miqLZ
 lOeRvjRNWoHKdB/BN9Zw/3zHZ6VQwHDQEIwrw5Kk2Uo8bvtKbtfvJi/yz
 BeZfM5toi2uSS55yIkSWkWKD3vrJMnZ+FUjwLnW2/WuWOVVUyntW/k+E8
 3tWqRau7Nnl6qOwo3gK148XwOOGB0P7u4ZsLjLfMFm5UEQxfo1OaA12Tq
 reTec8s/q/6lLrTnY1Rc1Ux/mipQeNoHDG5qrzgN33OTTm7mzVAv+DfhC
 Pat30kNxAVBTZ6/JOEzSdPgaWuNtRV0AfvxllzkTrHdvjCiLPnpJ4tSMs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="380756587"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="380756587"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:55:22 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="974827529"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="974827529"
Received: from mdnavare-mobl1.jf.intel.com ([10.165.21.203])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 12:55:21 -0800
Date: Mon, 5 Dec 2022 12:55:33 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20221205205533.GB1209860@mdnavare-mobl1.jf.intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221202134412.21943-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/vrr: Be more careful with the
 bits in TRANS_VRR_CTL
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

On Fri, Dec 02, 2022 at 03:44:12PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> On mtl (at least) clearing the guardband bits in the same write
> as the enable bit gets cleared seems to cause an immediate FIFO
> underrun. Thus is seems that we need to first clear just the
> enable bit, then wait for the VRR live status to indicate the
> transcoder has exited VRR mode (this step is documented in Bspec
> as well), and finally we can clear out the rest of the TRANS_VRR_CTL
> for good measure.
> 
> I did this without any RMWs in case we want to toggle VRR on/off
> via DSB in the future, and as we know DSB can't read registers.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 40 +++++++++++++++---------
>  1 file changed, 25 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 753e7b211708..5ff6aed9575e 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -161,31 +161,36 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
>  
> -void intel_vrr_enable(struct intel_encoder *encoder,
> -		      const struct intel_crtc_state *crtc_state)
> +static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
>  {
> -	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -	u32 trans_vrr_ctl;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
>  
> -	if (!crtc_state->vrr.enable)
> -		return;
> -
> -	if (DISPLAY_VER(dev_priv) >= 13)
> -		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
> -			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
> +	if (DISPLAY_VER(i915) >= 13)
> +		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>  			XELPD_VRR_CTL_VRR_GUARDBAND(crtc_state->vrr.guardband);
>  	else
> -		trans_vrr_ctl = VRR_CTL_VRR_ENABLE |
> -			VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
> +		return VRR_CTL_IGN_MAX_SHIFT | VRR_CTL_FLIP_LINE_EN |
>  			VRR_CTL_PIPELINE_FULL(crtc_state->vrr.pipeline_full) |
>  			VRR_CTL_PIPELINE_FULL_OVERRIDE;
> +}
> +
> +void intel_vrr_enable(struct intel_encoder *encoder,
> +		      const struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!crtc_state->vrr.enable)
> +		return;
>  
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl);
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
>  	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), TRANS_PUSH_EN);
> +
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>  }
>  
>  void intel_vrr_send_push(const struct intel_crtc_state *crtc_state)
> @@ -222,8 +227,13 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +		       trans_vrr_ctl(old_crtc_state));
> +	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
> +				VRR_STATUS_VRR_EN_LIVE, 1000);
> +
>  	intel_de_write(dev_priv, TRANS_PUSH(cpu_transcoder), 0);
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
>  }
>  
>  void intel_vrr_get_config(struct intel_crtc *crtc,
> -- 
> 2.37.4
> 
