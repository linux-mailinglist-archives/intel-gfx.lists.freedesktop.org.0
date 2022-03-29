Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 813CD4EAA88
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 11:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9639A10E7CD;
	Tue, 29 Mar 2022 09:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A3B10E805
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 09:27:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648546062; x=1680082062;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lelF26weP0V6S5ZfH9Awvcqj579ggBQOyl9yCCkqDUc=;
 b=DQnt8rhf3kgqnqpaTfZJYydmutaVeDw/vZJME6FaARZFl16OlWaRDUmp
 CRh51LMwEFv5NxkqeEa2mtIrsYVdRtAAOvlyrUYHxcn+wW2SqJbt9qVmU
 Bjjg/gkkx05gZ7cPrgD5eFGLce7MRSqwUX4fFHP3/ijoBgG0jiP+mrfIJ
 6WgxV7i4vW9cxN+CfPnP35ec/Ku0ZDwzEFk+/7pU6XsPOuRJAUAKtzMmj
 CLYfEygnXzw2phyxRqXPBjdY90HKKADXuA9RGzIvgwhuGJhIikTptRh5A
 yKHVO2pV0kE/4uTwJyy48ymguWT4tixzry5pu7AZFpc+X7a2b6rovUx8U w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="259176630"
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="259176630"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:27:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,219,1643702400"; d="scan'208";a="502825586"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 02:27:40 -0700
Date: Tue, 29 Mar 2022 12:28:17 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220329092817.GA1336@intel.com>
References: <20220224165103.15682-1-ville.syrjala@linux.intel.com>
 <20220224165103.15682-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224165103.15682-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Remove locks around skl+
 scaler programming
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

On Thu, Feb 24, 2022 at 06:51:00PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> All the skl+ scaler registers are suitably confined to their own
> cachelines so we don't need the uncore.lock to globally serialize
> access to these registers. We actually already dropped some of this
> in commit 14ad15296d1f ("drm/i915: Make skl+ universal plane
> registers unlocked") as the plane scaler enabling/reconfiguration
> became lockless. So let's complete that and remove the rest of
> the locks from the scaler programming as well.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index c2e94118566b..ac67e9fbb713 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -412,7 +412,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  	int x = dst->x1;
>  	int y = dst->y1;
>  	int hscale, vscale;
> -	unsigned long irqflags;
>  	int id;
>  	u32 ps_ctrl;
>  
> @@ -434,8 +433,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  	ps_ctrl = skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
>  	ps_ctrl |=  PS_SCALER_EN | scaler_state->scalers[id].mode;
>  
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> -
>  	skl_scaler_setup_filter(dev_priv, pipe, id, 0,
>  				crtc_state->hw.scaling_filter);
>  
> @@ -449,8 +446,6 @@ void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  			  x << 16 | y);
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(pipe, id),
>  			  width << 16 | height);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  void
> @@ -519,15 +514,10 @@ static void skl_detach_scaler(struct intel_crtc *crtc, int id)
>  {
>  	struct drm_device *dev = crtc->base.dev;
>  	struct drm_i915_private *dev_priv = to_i915(dev);
> -	unsigned long irqflags;
> -
> -	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
>  
>  	intel_de_write_fw(dev_priv, SKL_PS_CTRL(crtc->pipe, id), 0);
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_POS(crtc->pipe, id), 0);
>  	intel_de_write_fw(dev_priv, SKL_PS_WIN_SZ(crtc->pipe, id), 0);
> -
> -	spin_unlock_irqrestore(&dev_priv->uncore.lock, irqflags);
>  }
>  
>  /*
> -- 
> 2.34.1
> 
