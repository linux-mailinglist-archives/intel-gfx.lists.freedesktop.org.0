Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5EF5C00D5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 17:12:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9502010E7A6;
	Wed, 21 Sep 2022 15:12:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4914810E7A6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Sep 2022 15:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663773171; x=1695309171;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0N0CF/BbKROBodK0M/dBYBsQ4LMfsaDZMzy7qHEMB6M=;
 b=Tvo3FO7mtZ1vJKVVrv9A7KQ6Aww3mqI+D5OOHeMdzcJNwVcHlVJBdRnK
 NQv6/eJasZq+78V+dD9ofO95TJMeJ7X/OwwRPASYfkHJohz/Ica3JroHa
 rzg6URSHYJ8e+ebhYnLJ0m2ucR3oyPurKd7SOAFG+bBc4lk+LcInG7VEl
 ozJZmC3xPoB6UCioggx7BwS0In/Mru8z0W/szh9r1r8vi8q5ImAAE1mEc
 mH3bWsk5c9OQF1u8of3z7mf0DZsbUM4+ZA/Sb3Ps0NGY6eTlVXG4mSaiu
 Yg/oNKr3WBjp8B6IFxWrcrtvq7OI4Ely+bm1no1gETt0/PaLa8s38wXIz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10477"; a="326342861"
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="326342861"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:12:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,333,1654585200"; d="scan'208";a="708490008"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2022 08:12:49 -0700
Date: Wed, 21 Sep 2022 18:13:42 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <YysqJo9H1eOg9B7f@intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
 <20220622155452.32587-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220622155452.32587-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/9] drm/i915: Simplify up vlv watermark
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

On Wed, Jun 22, 2022 at 06:54:47PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We can simplify the vlv watermark sanitation by reusing the
> second half of vlv_compute_pipe_wm() to convert the sanitized
> raw watermarks into the proper form to be used as the
> optimal/intermediate watermarks.
> 
> Also to be consistent with normal watermark computation the sanitized
> watermarks should be all 0 for any disabled plane. Previously we
> zeroed out the watermarks only up to the level (ie. PM2/5/DVDFS)
> that was enabled.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 15 ++++++---------
>  1 file changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 556fcdfb75f1..45ec00e2e3c4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7100,30 +7100,27 @@ void vlv_wm_sanitize(struct drm_i915_private *dev_priv)
>  			to_intel_crtc_state(crtc->base.state);
>  		struct intel_plane_state *plane_state =
>  			to_intel_plane_state(plane->base.state);
> -		struct vlv_wm_state *wm_state = &crtc_state->wm.vlv.optimal;
> -		const struct vlv_fifo_state *fifo_state =
> -			&crtc_state->wm.vlv.fifo_state;
>  		enum plane_id plane_id = plane->id;
> -		int level;
> +		int level, num_levels = intel_wm_num_levels(dev_priv);
>  
>  		if (plane_state->uapi.visible)
>  			continue;
>  
> -		for (level = 0; level < wm_state->num_levels; level++) {
> +		for (level = 0; level < num_levels; level++) {
>  			struct g4x_pipe_wm *raw =
>  				&crtc_state->wm.vlv.raw[level];
>  
>  			raw->plane[plane_id] = 0;
> -
> -			wm_state->wm[level].plane[plane_id] =
> -				vlv_invert_wm_value(raw->plane[plane_id],
> -						    fifo_state->plane[plane_id]);
>  		}
>  	}
>  
>  	for_each_intel_crtc(&dev_priv->drm, crtc) {
>  		struct intel_crtc_state *crtc_state =
>  			to_intel_crtc_state(crtc->base.state);
> +		int ret;
> +
> +		ret = _vlv_compute_pipe_wm(crtc_state);
> +		drm_WARN_ON(&dev_priv->drm, ret);
>  
>  		crtc_state->wm.vlv.intermediate =
>  			crtc_state->wm.vlv.optimal;
> -- 
> 2.35.1
> 
