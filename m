Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C0D416517
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 20:16:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3218A6ED9C;
	Thu, 23 Sep 2021 18:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C286ED9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 18:16:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="211154261"
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="211154261"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 11:16:01 -0700
X-IronPort-AV: E=Sophos;i="5.85,317,1624345200"; d="scan'208";a="614130620"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2021 11:16:00 -0700
Date: Thu, 23 Sep 2021 21:16:51 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210923181651.GA12747@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Split g4x_compute_pipe_wm()
 into two
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

On Fri, May 14, 2021 at 03:57:43PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Split g4x_compute_pipe_wm() into two halves. The first half computes
> the new raw watermarks, and the second half munges those up into real
> watermarks for the particular pipe.
> 
> We can reuse the second half for watermark sanitation as well.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 52 +++++++++++++++++++--------------
>  1 file changed, 30 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 990ee5a590d3..59a22e1ee5bf 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -1366,34 +1366,14 @@ static bool g4x_compute_fbc_en(const struct g4x_wm_state *wm_state,
>  	return true;
>  }
>  
> -static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
> +static int _g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct intel_atomic_state *state =
> -		to_intel_atomic_state(crtc_state->uapi.state);
>  	struct g4x_wm_state *wm_state = &crtc_state->wm.g4x.optimal;
>  	u8 active_planes = crtc_state->active_planes & ~BIT(PLANE_CURSOR);
>  	const struct g4x_pipe_wm *raw;
> -	const struct intel_plane_state *old_plane_state;
> -	const struct intel_plane_state *new_plane_state;
> -	struct intel_plane *plane;
>  	enum plane_id plane_id;
> -	int i, level;
> -	unsigned int dirty = 0;
> -
> -	for_each_oldnew_intel_plane_in_state(state, plane,
> -					     old_plane_state,
> -					     new_plane_state, i) {
> -		if (new_plane_state->hw.crtc != &crtc->base &&
> -		    old_plane_state->hw.crtc != &crtc->base)
> -			continue;
> -
> -		if (g4x_raw_plane_wm_compute(crtc_state, new_plane_state))
> -			dirty |= BIT(plane->id);
> -	}
> -
> -	if (!dirty)
> -		return 0;
> +	int level;
>  
>  	level = G4X_WM_LEVEL_NORMAL;
>  	if (!g4x_raw_crtc_wm_is_valid(crtc_state, level))
> @@ -1446,6 +1426,34 @@ static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
>  	return 0;
>  }
>  
> +static int g4x_compute_pipe_wm(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	struct intel_atomic_state *state =
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	const struct intel_plane_state *old_plane_state;
> +	const struct intel_plane_state *new_plane_state;
> +	struct intel_plane *plane;
> +	unsigned int dirty = 0;
> +	int i;
> +
> +	for_each_oldnew_intel_plane_in_state(state, plane,
> +					     old_plane_state,
> +					     new_plane_state, i) {
> +		if (new_plane_state->hw.crtc != &crtc->base &&
> +		    old_plane_state->hw.crtc != &crtc->base)
> +			continue;
> +
> +		if (g4x_raw_plane_wm_compute(crtc_state, new_plane_state))
> +			dirty |= BIT(plane->id);
> +	}
> +
> +	if (!dirty)
> +		return 0;
> +
> +	return _g4x_compute_pipe_wm(crtc_state);
> +}
> +

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  static int g4x_compute_intermediate_wm(struct intel_crtc_state *new_crtc_state)
>  {
>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
