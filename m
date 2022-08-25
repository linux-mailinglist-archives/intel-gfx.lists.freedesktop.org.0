Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D2E5A0ACA
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 09:54:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C882B10E056;
	Thu, 25 Aug 2022 07:54:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D19889F07
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 07:54:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661414049; x=1692950049;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LMxL3kveHX3YnRGJBQuZlevM9cpyy9hY2hLOoqCXlzc=;
 b=Dscqsj0dZK7jA9weRsS/QTQS2F4QfI1kaF4xNCHvD3HXGg7SfdGevQjG
 xz0pI3sSeKLGYR5EFmGfCp5e07r5s00JA9mVKeWtfQKjUMbOzeUjF3I76
 ls62H7y25DU9RqJZFFDpyEHHQwBtP6OgD6OzAQ4HlxoyfPOa4JN4GMcm1
 5AwMeqdY8zy2gO2KgraHhmLzTaxcZlFceQ5pgBVyeG7I8gtMS0A4WGAYB
 JLukyClBZ8F7wps64kdQlxhNXxVADKZCtwuiTReuv2xvoGgUohqcXU1UI
 h3rtViLQKGGOJbty+kspTkjJxi41UL6cNNMUCnWdyBJ2M3cf6fj2xDOAh w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="295454563"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="295454563"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:54:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="643159648"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2022 00:54:07 -0700
Date: Thu, 25 Aug 2022 10:54:48 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YwcqyKdjSdDZmx0c@intel.com>
References: <20220617160730.10981-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220617160730.10981-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement a bit of bw_state
 readout
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

On Fri, Jun 17, 2022 at 07:07:30PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We currently fail to reconstruct the bw related cdclk limits
> during readout, which triggers a  cdclk reclaculation during
> fastboot, which is then likely forces a full modeset anyway.
> Reconstruct some of the missing state so that we can skip
> the cdclk recomputation and thus have a higher chance for
> flicker free boot.

Problem is that intel_bw_min_cdclk is using intel_bw_dbuf_min_cdclk,
which in turns relies that bw_state->dbuf_bw was already calculated,
however this is calculated in intel_bw_calc_min_cdclk, which is called
from intel_cdclk_atomic_check.

So wondering will that work?

Stan

> 
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c      | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_display.c | 7 +++++--
>  2 files changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 79269d2c476b..30ffec63f9a3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -627,11 +627,14 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  		intel_bw_crtc_data_rate(crtc_state);
>  	bw_state->num_active_planes[crtc->pipe] =
>  		intel_bw_crtc_num_active_planes(crtc_state);
> +	bw_state->min_cdclk[crtc->pipe] =
> +		intel_bw_crtc_min_cdclk(crtc_state);
>  
> -	drm_dbg_kms(&i915->drm, "pipe %c data rate %u num active planes %u\n",
> -		    pipe_name(crtc->pipe),
> +	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] data rate %u num active planes %u min cdclk %d kHz\n",
> +		    crtc->base.base.id, crtc->base.name,
>  		    bw_state->data_rate[crtc->pipe],
> -		    bw_state->num_active_planes[crtc->pipe]);
> +		    bw_state->num_active_planes[crtc->pipe],
> +		    bw_state->min_cdclk[crtc->pipe]);
>  }
>  
>  static unsigned int intel_bw_num_active_planes(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 90bd26431e31..b17b9493c68f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2498,6 +2498,7 @@ static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
>  
>  	bw_state->data_rate[pipe] = 0;
>  	bw_state->num_active_planes[pipe] = 0;
> +	bw_state->min_cdclk[pipe] = 0;
>  }
>  
>  /*
> @@ -9310,6 +9311,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
>  	struct intel_dbuf_state *dbuf_state =
>  		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> +	struct intel_bw_state *bw_state =
> +		to_intel_bw_state(dev_priv->bw_obj.state);
>  	enum pipe pipe;
>  	struct intel_crtc *crtc;
>  	struct intel_encoder *encoder;
> @@ -9425,8 +9428,6 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  	drm_connector_list_iter_end(&conn_iter);
>  
>  	for_each_intel_crtc(dev, crtc) {
> -		struct intel_bw_state *bw_state =
> -			to_intel_bw_state(dev_priv->bw_obj.state);
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
>  		struct intel_plane *plane;
> @@ -9490,6 +9491,8 @@ static void intel_modeset_readout_hw_state(struct drm_device *dev)
>  
>  		intel_bw_crtc_update(bw_state, crtc_state);
>  	}
> +
> +	cdclk_state->bw_min_cdclk = intel_bw_min_cdclk(dev_priv, bw_state);
>  }
>  
>  static void
> -- 
> 2.35.1
> 
