Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6909B49398E
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 12:35:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B5CE10EA94;
	Wed, 19 Jan 2022 11:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF05910EA92
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 11:35:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642592134; x=1674128134;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=gRBI/qaGrsDgpdoFxb3EvIM14rasgy5BpsVLs4zzRfs=;
 b=cARPnvtGUgil/LpnpyTDhdjy77uShkngjzCXzV5nfhVfGe1laEi43bQa
 15C1AjpstvAD+/nAh0YQlKl53h0gxTut3aIQq90z+JyogjjGx1DIIWr3z
 sLCLNWS1EpjxxaLcvPJSAAhVQ152ihZpv1WE1WBL96lvf6ssWozyM11Ib
 K/GduvpmR0gnixzo+orBpC2KT244a4C/cxNTTX/j7VMCaZCwFwD6PRgQz
 GsF+e/mHP8D8V8gqKQ1LlvJ0PvtUHo2dBD11KE9b7CTljxKlRhJ8agkBW
 53zuSgnUmNQmtppMJiKT5OtJye9agSrunlKCi+gp4ECYOGs+HeiwedVQt A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="308386308"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="308386308"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 03:35:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="530602148"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga007.fm.intel.com with SMTP; 19 Jan 2022 03:35:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Jan 2022 13:35:31 +0200
Date: Wed, 19 Jan 2022 13:35:31 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <Yef3gyulE4xx0sxo@intel.com>
References: <20220118104839.6654-1-stanislav.lisovskiy@intel.com>
 <20220118104839.6654-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220118104839.6654-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Introduce do_async_flip flag
 to intel_plane_state
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

On Tue, Jan 18, 2022 at 12:48:37PM +0200, Stanislav Lisovskiy wrote:
> There might be various logical contructs when we might want
> to enable async flip, so lets calculate those and set this
> flag, so that there is no need in long conditions in other
> places.
> 
> v2: - Set do_async_flip flag to False, if no async flip needed.
>       Lets not rely that it will be 0-initialized, but set
>       explicitly, so that the logic is clear as well.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c       | 5 +++++
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index d1344e9c06de..87bad665a2c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -491,7 +491,7 @@ void intel_plane_update_arm(struct intel_plane *plane,
>  
>  	trace_intel_plane_update_arm(&plane->base, crtc);
>  
> -	if (crtc_state->uapi.async_flip && plane->async_flip)
> +	if (plane_state->do_async_flip)
>  		plane->async_flip(plane, crtc_state, plane_state, true);
>  	else
>  		plane->update_arm(plane, crtc_state, plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0964b2403e2d..f3ce29c42bc3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5027,6 +5027,11 @@ int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_crtc_stat
>  			 needs_scaling(new_plane_state))))
>  		new_crtc_state->disable_lp_wm = true;
>  
> +	if (new_crtc_state->uapi.async_flip && plane->async_flip)
> +		new_plane_state->do_async_flip = true;
> +	else
> +		new_plane_state->do_async_flip = false;

Clearing the flag should probably be in intel_plane_duplicate_state().

The decision to call intel_crtc_{enable,disable}_flip_done() should
also be based on do_async_flip, otherwise we're going to try to complete
the flip using two different mechanisms when we decide to do a sync flip
instead of an async flip.

Otherwise lgtm.

> +
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 41e3dd25a78f..6b107872ad39 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -634,6 +634,9 @@ struct intel_plane_state {
>  
>  	struct intel_fb_view view;
>  
> +	/* Indicates if async flip is required */
> +	bool do_async_flip;
> +
>  	/* Plane pxp decryption state */
>  	bool decrypt;
>  
> -- 
> 2.24.1.485.gad05a3d8e5

-- 
Ville Syrjälä
Intel
