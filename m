Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A35164A58CE
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Feb 2022 09:52:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5038010ECD3;
	Tue,  1 Feb 2022 08:52:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F239910ECD3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Feb 2022 08:52:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643705556; x=1675241556;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=AS/c2+YIGtE/oTTBwPiS+8NW71y0zHzFfmwZsKDf+PE=;
 b=cw22M/2SZdKrqaeqYjn0JDE+etRhwIMOa2gB89yoVKpwWszW9Wvw5ur9
 RN/cd/GVXTWWv02mZs13fE0v+kymfbQ+w/2GtR5rSVxbXp8FbR4qKTqZI
 anRXgc6xX/ZroIXwqcRQqoCQmlPm1Z1uaxesROjEUbuIckqG9tpzz5+ur
 Eovt8Ziam10EComsQhWqygJlj74UoZA7Gif6xnIZlFvV99P9lItY0D5qR
 34Iujzy5M86lXVdKbcjnWq/43Vmhdsx3VNjObgZs26uLHxLdzlCtrDhGb
 kQdChbP79pVGYeXGOl96CCZ3iqU0JB3yqUrrZSP5KiD2dzWCH/C7/CmkP g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10244"; a="247417394"
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="247417394"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 00:52:35 -0800
X-IronPort-AV: E=Sophos;i="5.88,333,1635231600"; d="scan'208";a="537721514"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2022 00:52:33 -0800
Date: Tue, 1 Feb 2022 10:52:39 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220201085239.GA9569@intel.com>
References: <20220118092354.11631-1-ville.syrjala@linux.intel.com>
 <20220118092354.11631-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118092354.11631-12-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 11/15] drm/i915: Nuke
 intel_bw_calc_min_cdclk()
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

On Tue, Jan 18, 2022 at 11:23:50AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> intel_bw_calc_min_cdclk() is entirely pointless. All it manages to do is
> somehow conflate the per-pipe min cdclk with dbuf min cdclk. There is no
> (at least documented) dbuf min cdclk limit on pre-skl so let's just get
> rid of all this confusion.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

I think we constantly have a bit contradictional attitude towards such situation.
From one perspective you can say, that those kind of "leagcy" callbacks are
pointless, from the other hand one might say. that we need to have a unified
approach for all platforms and I think we got, some legacy handlers for old
platforms for similar purpose as well.
I'm fine with both approaches, however for example when I was submitting
that patch, I was asked by reviewer to add this kind of legacy callback, so that we have
a "uniform" approach.
We just then need to have some standard agreement on those, which doesn't
depend on today's cosmic radiation levels :)

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_bw.c    | 49 ++--------------------
>  drivers/gpu/drm/i915/display/intel_bw.h    |  1 -
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 31 +-------------
>  3 files changed, 5 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 93feab671c29..a3f169686f14 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -715,7 +715,7 @@ static void skl_crtc_calc_dbuf_bw(struct intel_bw_state *bw_state,
>  	}
>  }
>  
> -int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
> +int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_bw_state *new_bw_state = NULL;
> @@ -726,6 +726,9 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  	enum pipe pipe;
>  	int i;
>  
> +	if (DISPLAY_VER(dev_priv) < 9)
> +		return 0;
> +
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		new_bw_state = intel_atomic_get_bw_state(state);
>  		if (IS_ERR(new_bw_state))
> @@ -770,50 +773,6 @@ int skl_bw_calc_min_cdclk(struct intel_atomic_state *state)
>  	return 0;
>  }
>  
> -int intel_bw_calc_min_cdclk(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	struct intel_bw_state *new_bw_state = NULL;
> -	struct intel_bw_state *old_bw_state = NULL;
> -	const struct intel_crtc_state *crtc_state;
> -	struct intel_crtc *crtc;
> -	int min_cdclk = 0;
> -	enum pipe pipe;
> -	int i;
> -
> -	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
> -		new_bw_state = intel_atomic_get_bw_state(state);
> -		if (IS_ERR(new_bw_state))
> -			return PTR_ERR(new_bw_state);
> -
> -		old_bw_state = intel_atomic_get_old_bw_state(state);
> -	}
> -
> -	if (!old_bw_state)
> -		return 0;
> -
> -	for_each_pipe(dev_priv, pipe) {
> -		struct intel_cdclk_state *cdclk_state;
> -
> -		cdclk_state = intel_atomic_get_new_cdclk_state(state);
> -		if (!cdclk_state)
> -			return 0;
> -
> -		min_cdclk = max(cdclk_state->min_cdclk[pipe], min_cdclk);
> -	}
> -
> -	new_bw_state->min_cdclk = min_cdclk;
> -
> -	if (new_bw_state->min_cdclk != old_bw_state->min_cdclk) {
> -		int ret = intel_atomic_lock_global_state(&new_bw_state->base);
> -
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
>  int intel_bw_atomic_check(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index 46c6eecbd917..57eb755d298a 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -65,6 +65,5 @@ void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  				  u32 points_mask);
>  int intel_bw_calc_min_cdclk(struct intel_atomic_state *state);
> -int skl_bw_calc_min_cdclk(struct intel_atomic_state *state);
>  
>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 7e20967307df..078dc6e1ee34 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -70,7 +70,6 @@ struct intel_cdclk_funcs {
>  	void (*set_cdclk)(struct drm_i915_private *i915,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe);
> -	int (*bw_calc_min_cdclk)(struct intel_atomic_state *state);
>  	int (*modeset_calc_cdclk)(struct intel_cdclk_state *state);
>  	u8 (*calc_voltage_level)(int cdclk);
>  };
> @@ -81,12 +80,6 @@ void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>  	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
>  }
>  
> -static int intel_cdclk_bw_calc_min_cdclk(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> -	return dev_priv->cdclk_funcs->bw_calc_min_cdclk(state);
> -}
> -
>  static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *cdclk_config,
>  				  enum pipe pipe)
> @@ -2680,7 +2673,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
>  	    old_cdclk_state->force_min_cdclk != new_cdclk_state->force_min_cdclk)
>  		*need_cdclk_calc = true;
>  
> -	ret = intel_cdclk_bw_calc_min_cdclk(state);
> +	ret = intel_bw_calc_min_cdclk(state);
>  	if (ret)
>  		return ret;
>  
> @@ -3069,7 +3062,6 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> -	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
>  	.calc_voltage_level = tgl_calc_voltage_level,
>  };
> @@ -3077,7 +3069,6 @@ static const struct intel_cdclk_funcs tgl_cdclk_funcs = {
>  static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> -	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
>  	.calc_voltage_level = ehl_calc_voltage_level,
>  };
> @@ -3085,7 +3076,6 @@ static const struct intel_cdclk_funcs ehl_cdclk_funcs = {
>  static const struct intel_cdclk_funcs icl_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> -	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
>  	.calc_voltage_level = icl_calc_voltage_level,
>  };
> @@ -3093,7 +3083,6 @@ static const struct intel_cdclk_funcs icl_cdclk_funcs = {
>  static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
>  	.get_cdclk = bxt_get_cdclk,
>  	.set_cdclk = bxt_set_cdclk,
> -	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = bxt_modeset_calc_cdclk,
>  	.calc_voltage_level = bxt_calc_voltage_level,
>  };
> @@ -3101,53 +3090,45 @@ static const struct intel_cdclk_funcs bxt_cdclk_funcs = {
>  static const struct intel_cdclk_funcs skl_cdclk_funcs = {
>  	.get_cdclk = skl_get_cdclk,
>  	.set_cdclk = skl_set_cdclk,
> -	.bw_calc_min_cdclk = skl_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = skl_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs bdw_cdclk_funcs = {
>  	.get_cdclk = bdw_get_cdclk,
>  	.set_cdclk = bdw_set_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = bdw_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs chv_cdclk_funcs = {
>  	.get_cdclk = vlv_get_cdclk,
>  	.set_cdclk = chv_set_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs vlv_cdclk_funcs = {
>  	.get_cdclk = vlv_get_cdclk,
>  	.set_cdclk = vlv_set_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = vlv_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs hsw_cdclk_funcs = {
>  	.get_cdclk = hsw_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  /* SNB, IVB, 965G, 945G */
>  static const struct intel_cdclk_funcs fixed_400mhz_cdclk_funcs = {
>  	.get_cdclk = fixed_400mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs ilk_cdclk_funcs = {
>  	.get_cdclk = fixed_450mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
>  	.get_cdclk = gm45_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
> @@ -3155,7 +3136,6 @@ static const struct intel_cdclk_funcs gm45_cdclk_funcs = {
>  
>  static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
>  	.get_cdclk = i965gm_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
> @@ -3163,19 +3143,16 @@ static const struct intel_cdclk_funcs i965gm_cdclk_funcs = {
>  
>  static const struct intel_cdclk_funcs pnv_cdclk_funcs = {
>  	.get_cdclk = pnv_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs g33_cdclk_funcs = {
>  	.get_cdclk = g33_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
>  	.get_cdclk = i945gm_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
> @@ -3183,37 +3160,31 @@ static const struct intel_cdclk_funcs i945gm_cdclk_funcs = {
>  
>  static const struct intel_cdclk_funcs i915gm_cdclk_funcs = {
>  	.get_cdclk = i915gm_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i915g_cdclk_funcs = {
>  	.get_cdclk = fixed_333mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i865g_cdclk_funcs = {
>  	.get_cdclk = fixed_266mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i85x_cdclk_funcs = {
>  	.get_cdclk = i85x_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i845g_cdclk_funcs = {
>  	.get_cdclk = fixed_200mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
>  static const struct intel_cdclk_funcs i830_cdclk_funcs = {
>  	.get_cdclk = fixed_133mhz_get_cdclk,
> -	.bw_calc_min_cdclk = intel_bw_calc_min_cdclk,
>  	.modeset_calc_cdclk = fixed_modeset_calc_cdclk,
>  };
>  
> -- 
> 2.32.0
> 
