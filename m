Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED3940FC79
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 17:33:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEAD56ED95;
	Fri, 17 Sep 2021 15:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BAB6ED95
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 15:33:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="245215309"
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="245215309"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 08:33:33 -0700
X-IronPort-AV: E=Sophos;i="5.85,301,1624345200"; d="scan'208";a="546463491"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 08:33:32 -0700
Date: Fri, 17 Sep 2021 18:34:22 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210917153422.GB1224@intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
 <20210514125751.17075-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210514125751.17075-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Fix HPLL watermark readout
 for g4x
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

On Fri, May 14, 2021 at 03:57:42PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If HPLL watermarks are already enabled, let's not mark them as
> disabled by forgetting to bump 'level' before we call
> g4x_raw_plane_wm_set().
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 661bc6fdf38c..990ee5a590d3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6468,7 +6468,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		for_each_plane_id_on_crtc(crtc, plane_id)
>  			raw->plane[plane_id] = active->wm.plane[plane_id];
>  
> -		if (++level > max_level)
> +		level = G4X_WM_LEVEL_SR;
> +		if (level > max_level)

Do I understand correctly that its basically identical to what
was before, so this is done here just for it to look more explicit?

I.e we had for example max_level G4X_WM_LEVEL_SR and level G4X_WM_LEVEL_NORMAL
, after ++level it will anyway become G4X_WM_LEVEL_SR and same for next one.


>  			goto out;
>  
>  		raw = &crtc_state->wm.g4x.raw[level];
> @@ -6477,7 +6478,8 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		raw->plane[PLANE_SPRITE0] = 0;
>  		raw->fbc = active->sr.fbc;
>  
> -		if (++level > max_level)
> +		level = G4X_WM_LEVEL_HPLL;
> +		if (level > max_level)
>  			goto out;
>  
>  		raw = &crtc_state->wm.g4x.raw[level];
> @@ -6486,6 +6488,7 @@ void g4x_wm_get_hw_state(struct drm_i915_private *dev_priv)
>  		raw->plane[PLANE_SPRITE0] = 0;
>  		raw->fbc = active->hpll.fbc;
>  
> +		level++;

Hi Ville,

So if we reached here, it means level = G4X_WM_LEVEL_HPLL, which is 
the max wm level defined, why are we then incrementing it even more?

the g4x_raw_plane_wm_set will be using that value as a level:

for (; level < intel_wm_num_levels(dev_priv); level++) {
	struct g4x_pipe_wm *raw = &crtc_state->wm.g4x.raw[level];

	dirty |= raw->plane[plane_id] != value;
	raw->plane[plane_id] = value;
}

however level then will be equal to NUM_G4X_WM_LEVELS, which is actually
an illegal value, or is that an expected behaviour?

Just trying to understand, whats happening here, before stamping an r-b :)

Stan


>  	out:
>  		for_each_plane_id_on_crtc(crtc, plane_id)
>  			g4x_raw_plane_wm_set(crtc_state, level,
> -- 
> 2.26.3
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
