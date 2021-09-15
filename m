Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC5740C7C9
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 16:58:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ADC96E94F;
	Wed, 15 Sep 2021 14:58:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9F8E6E94F
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 14:58:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="222005446"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="222005446"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 07:58:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="482375757"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 15 Sep 2021 07:58:21 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Sep 2021 17:58:20 +0300
Date: Wed, 15 Sep 2021 17:58:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <YUIKDNuiNBPHKQ96@intel.com>
References: <20210914212507.177511-1-jose.souza@intel.com>
 <20210914212507.177511-3-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210914212507.177511-3-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 3/5] drm/i915/display: Workaround cursor
 left overs with PSR2 selective fetch enabled
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

On Tue, Sep 14, 2021 at 02:25:05PM -0700, José Roberto de Souza wrote:
> Not sure why but when moving the cursor fast it causes some artifacts
> of the cursor to be left in the cursor path, adding some pixels above
> the cursor to the damaged area fixes the issue, so leaving this as a
> workaround until proper fix is found.

Have you tried warping the cursor clear across the screen while
a partial update is already pending? I think it will go badly.

In fact I'm thinking the mailbox style legacy cursor updates are just
fundementally incompatible with partial updates since the cursor
can move outside of the already committed update region any time.
Ie. I suspect while the cursor is visible we simply can't do partial
updates.

> 
> This is reproducile on TGL and ADL-P.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 567c7ceef8dba..f8fa30e50e70c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1543,6 +1543,28 @@ static void intel_psr2_sel_fetch_pipe_alignment(const struct intel_crtc_state *c
>  		drm_warn(&dev_priv->drm, "Missing PSR2 sel fetch alignment with DSC\n");
>  }
>  
> +/*
> + * FIXME: Not sure why but when moving the cursor fast it causes some artifacts
> + * of the cursor to be left in the cursor path, adding some pixels above the
> + * cursor to the damaged area fixes the issue.
> + */
> +static void cursor_area_workaround(const struct intel_plane_state *new_plane_state,
> +				   struct drm_rect *damaged_area,
> +				   struct drm_rect *pipe_clip)
> +{
> +	const struct intel_plane *plane = to_intel_plane(new_plane_state->uapi.plane);
> +	int height;
> +
> +	if (plane->id != PLANE_CURSOR)
> +		return;
> +
> +	height = drm_rect_height(&new_plane_state->uapi.dst) / 2;
> +	damaged_area->y1 -=  height;
> +	damaged_area->y1 = max(damaged_area->y1, 0);
> +
> +	clip_area_update(pipe_clip, damaged_area);
> +}
> +
>  int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				struct intel_crtc *crtc)
>  {
> @@ -1611,6 +1633,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
>  				damaged_area.y2 = new_plane_state->uapi.dst.y2;
>  				clip_area_update(&pipe_clip, &damaged_area);
>  			}
> +
> +			cursor_area_workaround(new_plane_state, &damaged_area,
> +					       &pipe_clip);
>  			continue;
>  		} else if (new_plane_state->uapi.alpha != old_plane_state->uapi.alpha ||
>  			   (!num_clips &&
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
