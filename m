Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B211D3D9D
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 21:35:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF7606E3A4;
	Thu, 14 May 2020 19:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 447976E3A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 19:35:50 +0000 (UTC)
IronPort-SDR: BVOAlIdYqHh1mQmQcwc7+msXD5r+xaig02Oesg3I546DiBH+qNIMwMquVJUCL4v/Vb5fbZgM8I
 H0+7HXaxmIGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 12:35:49 -0700
IronPort-SDR: Q5kVLt9hdfpWu/4/htHQCuHfzepZTq5KZcku/NOjCsa7WlCQmWrhbY8MSnL57t8IPGsx1ImCx+
 qepPTH3Dhj1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,392,1583222400"; d="scan'208";a="341723577"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by orsmga001.jf.intel.com with ESMTP; 14 May 2020 12:35:49 -0700
Date: Thu, 14 May 2020 12:36:55 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200514193655.GA15561@intel.com>
References: <20200514152145.2449-1-stanislav.lisovskiy@intel.com>
 <20200514152145.2449-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200514152145.2449-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v8 2/7] drm/i915: Extract cdclk requirements
 checking to separate function
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 14, 2020 at 06:21:40PM +0300, Stanislav Lisovskiy wrote:
> In Gen11+ whenever we might exceed DBuf bandwidth we might need to
> recalculate CDCLK which DBuf bandwidth is scaled with.
> Total Dbuf bw used might change based on particular plane needs.
> 
> Thus to calculate if cdclk needs to be changed it is not enough
> anymore to check plane configuration and plane min cdclk, per DBuf
> bw can be calculated only after wm/ddb calculation is done and
> all required planes are added into the state. In order to keep
> all min_cdclk related checks in one place let's extract it into
> separate function, checking and modifying any_ms.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Separating the need_cdclk_calc setting into a new function intel_atomic_check_cdclk()
makes sense.

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 30 ++++++++++++++------
>  1 file changed, 22 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 005e324d0582..e93a553a344d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14572,8 +14572,7 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
>  		IS_IVYBRIDGE(dev_priv);
>  }
>  
> -static int intel_atomic_check_planes(struct intel_atomic_state *state,
> -				     bool *need_cdclk_calc)
> +static int intel_atomic_check_planes(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> @@ -14623,6 +14622,22 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state,
>  			return ret;
>  	}
>  
> +	return 0;
> +}
> +
> +static int intel_atomic_check_cdclk(struct intel_atomic_state *state,
> +				    bool *need_cdclk_calc)
> +{
> +	struct intel_cdclk_state *new_cdclk_state;
> +	int i;
> +	struct intel_plane_state *plane_state;
> +	struct intel_plane *plane;
> +	int ret;
> +
> +	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
> +	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> +		*need_cdclk_calc = true;
> +
>  	/*
>  	 * active_planes bitmask has been updated, and potentially
>  	 * affected planes are part of the state. We can now
> @@ -14685,7 +14700,6 @@ static int intel_atomic_check(struct drm_device *dev,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	struct intel_atomic_state *state = to_intel_atomic_state(_state);
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> -	struct intel_cdclk_state *new_cdclk_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
>  	bool any_ms = false;
> @@ -14796,14 +14810,10 @@ static int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>  
> -	ret = intel_atomic_check_planes(state, &any_ms);
> +	ret = intel_atomic_check_planes(state);
>  	if (ret)
>  		goto fail;
>  
> -	new_cdclk_state = intel_atomic_get_new_cdclk_state(state);
> -	if (new_cdclk_state && new_cdclk_state->force_min_cdclk_changed)
> -		any_ms = true;
> -
>  	/*
>  	 * distrust_bios_wm will force a full dbuf recomputation
>  	 * but the hardware state will only get updated accordingly
> @@ -14833,6 +14843,10 @@ static int intel_atomic_check(struct drm_device *dev,
>  	if (ret)
>  		goto fail;
>  
> +	ret = intel_atomic_check_cdclk(state, &any_ms);
> +	if (ret)
> +		goto fail;
> +
>  	if (any_ms) {
>  		ret = intel_modeset_calc_cdclk(state);
>  		if (ret)
> -- 
> 2.24.1.485.gad05a3d8e5
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
