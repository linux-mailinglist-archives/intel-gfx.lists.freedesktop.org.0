Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA395C00CC
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:10:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D5910E471;
	Wed, 21 Sep 2022 15:10:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC78C10E471
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663773012; x=1695309012;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=E5tfpBzg3qWIMA+AQ8+/tB3P9SnVZlvJv8n9jeCfv9s=;
 b=eDyDW8PDicBTxqmbd2wlKZ1FUmTG4HeNas8LStg5ZMVQF5awB1UwI2iK
 DLnPXFvLAjZWGZyDdRpfWxBoiF07+WMlh4yoIs19TCKpCFHXqOAt18izu
 St8a7o0mH7vkfmxXM4/wu668c3oZ/XWnY4cD2q2TvopCNDWSdwCZUdAOO
 HftXJzHySMVWV7IF2Sb1tk0+htXU+PL0sEG9rQBYUXQerwVZZynnsg8UW
 rCeC2edMqTyp6Y6eYM+GmfPaBIst7g/S4AIHl+fvUT1u558qocXGjKv1g
 Ta4slOa1coCETPm0W3T6YLL/1sgFUfBKYEYtmN7PM0Mmkr6YOag9kKpUP A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="300868915"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="300868915"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:09:55 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="621722169"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:09:54 -0700
Date: Wed, 21 Sep 2022 18:10:47 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Yyspd5YOPEzlT+5V@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/9] drm/i915: Simplify up g4x watermark
 sanitation
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

On Wed, Jun 22, 2022 at 06:54:46PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We can simplify the g4x watermark sanitation by reusing the
> second half of g4x_compute_pipe_wm() to convert the sanitized
> raw watermarks into the proper form to be used as the
> optimal/intermediate watermarks.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 21 +++++++--------------
>  1 file changed, 7 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 4ea43fa73075..556fcdfb75f1 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6951,37 +6951,30 @@ void g4x_wm_sanitize(struct drm_i915_private *dev_priv)
>  			to_intel_crtc_state(crtc->base.state);
>  		struct intel_plane_state *plane_state =
>  			to_intel_plane_state(plane->base.state);
> -		struct g4x_wm_state *wm_state = &crtc_state->wm.g4x.optimal;
>  		enum plane_id plane_id = plane->id;
> -		int level;
> +		int level, num_levels = intel_wm_num_levels(dev_priv);
>  
>  		if (plane_state->uapi.visible)
>  			continue;
>  
> -		for (level = 0; level < 3; level++) {
> +		for (level = 0; level < num_levels; level++) {
>  			struct g4x_pipe_wm *raw =
>  				&crtc_state->wm.g4x.raw[level];
>  
>  			raw->plane[plane_id] = 0;
> -			wm_state->wm.plane[plane_id] = 0;
> -		}
>  
> -		if (plane_id == PLANE_PRIMARY) {
> -			for (level = 0; level < 3; level++) {
> -				struct g4x_pipe_wm *raw =
> -					&crtc_state->wm.g4x.raw[level];
> +			if (plane_id == PLANE_PRIMARY)
>  				raw->fbc = 0;
> -			}
> -
> -			wm_state->sr.fbc = 0;
> -			wm_state->hpll.fbc = 0;
> -			wm_state->fbc_en = false;
>  		}
>  	}
>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
> +		int ret;
> +
> +		ret = _g4x_compute_pipe_wm(crtc_state);
> +		drm_WARN_ON(&dev_priv->drm, ret);
>  
>  		crtc_state->wm.g4x.intermediate =
>  			crtc_state->wm.g4x.optimal;
> -- 
> 2.35.1
> 
