Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DE52A950B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 12:13:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82E8D6E03F;
	Fri,  6 Nov 2020 11:13:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B5A6E03F
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 11:13:14 +0000 (UTC)
IronPort-SDR: exmqeCVX17Uv8Sb4wR9cUlmcn5LPYZi8h8d0XRAEAFpQzCeN6dj/0iJbzlxpF1zJSprhkKS9OF
 MQiswsledGyw==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="231160634"
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="231160634"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 03:13:14 -0800
IronPort-SDR: l9aDlDn82YBJZVS5ty8cjSR1fnIFLJZ3n6h9CKSogFJoq8540oxEpXGn1cDVOlshA8caulwPPG
 bwGFmqWMaAxw==
X-IronPort-AV: E=Sophos;i="5.77,456,1596524400"; d="scan'208";a="539803354"
Received: from unknown (HELO intel.com) ([10.237.72.91])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 03:13:13 -0800
Date: Fri, 6 Nov 2020 13:13:45 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201106111345.GA31774@intel.com>
References: <20201027203955.28032-1-ville.syrjala@linux.intel.com>
 <20201027203955.28032-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027203955.28032-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Move pipe ddb entries into
 the dbuf state
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 27, 2020 at 10:39:52PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> The dbuf state will be where we collect all the inter-pipe dbuf
> allocation stuff. Start by moving the actual per-pipe ddb entries
> there.
> =

> v2: Rebase
> =

> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++-------
>  .../drm/i915/display/intel_display_types.h    |  1 -
>  drivers/gpu/drm/i915/intel_pm.c               | 16 ++++++--------
>  drivers/gpu/drm/i915/intel_pm.h               |  4 ++++
>  4 files changed, 23 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index f41b6f8b5618..cb2f06fc1123 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15673,6 +15673,10 @@ static void intel_commit_modeset_enables(struct =
intel_atomic_state *state)
>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
> @@ -15687,7 +15691,7 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  =

>  		/* ignore allocations for crtc's that have been turned off. */
>  		if (!needs_modeset(new_crtc_state)) {
> -			entries[pipe] =3D old_crtc_state->wm.skl.ddb;
> +			entries[pipe] =3D old_dbuf_state->ddb[pipe];
>  			update_pipes |=3D BIT(pipe);
>  		} else {
>  			modeset_pipes |=3D BIT(pipe);
> @@ -15711,11 +15715,11 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  			if ((update_pipes & BIT(pipe)) =3D=3D 0)
>  				continue;
>  =

> -			if (skl_ddb_allocation_overlaps(&new_crtc_state->wm.skl.ddb,
> +			if (skl_ddb_allocation_overlaps(&new_dbuf_state->ddb[pipe],
>  							entries, I915_MAX_PIPES, pipe))
>  				continue;
>  =

> -			entries[pipe] =3D new_crtc_state->wm.skl.ddb;
> +			entries[pipe] =3D new_dbuf_state->ddb[pipe];
>  			update_pipes &=3D ~BIT(pipe);
>  =

>  			intel_update_crtc(state, crtc);
> @@ -15726,8 +15730,8 @@ static void skl_commit_modeset_enables(struct int=
el_atomic_state *state)
>  			 * then we need to wait for a vblank to pass for the
>  			 * new ddb allocation to take effect.
>  			 */
> -			if (!skl_ddb_entry_equal(&new_crtc_state->wm.skl.ddb,
> -						 &old_crtc_state->wm.skl.ddb) &&
> +			if (!skl_ddb_entry_equal(&new_dbuf_state->ddb[pipe],
> +						 &old_dbuf_state->ddb[pipe]) &&
>  			    (update_pipes | modeset_pipes))
>  				intel_wait_for_vblank(dev_priv, pipe);
>  		}
> @@ -15778,10 +15782,11 @@ static void skl_commit_modeset_enables(struct i=
ntel_atomic_state *state)
>  		if ((update_pipes & BIT(pipe)) =3D=3D 0)
>  			continue;
>  =

> -		drm_WARN_ON(&dev_priv->drm, skl_ddb_allocation_overlaps(&new_crtc_stat=
e->wm.skl.ddb,
> -									entries, I915_MAX_PIPES, pipe));
> +		drm_WARN_ON(&dev_priv->drm,
> +			    skl_ddb_allocation_overlaps(&new_dbuf_state->ddb[pipe],
> +							entries, I915_MAX_PIPES, pipe));
>  =

> -		entries[pipe] =3D new_crtc_state->wm.skl.ddb;
> +		entries[pipe] =3D new_dbuf_state->ddb[pipe];
>  		update_pipes &=3D ~BIT(pipe);
>  =

>  		intel_update_crtc(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index f6f0626649e0..a4b5c06a1181 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -757,7 +757,6 @@ struct intel_crtc_wm_state {
>  		struct {
>  			/* gen9+ only needs 1-step wm programming */
>  			struct skl_pipe_wm optimal;
> -			struct skl_ddb_entry ddb;
>  			struct skl_ddb_entry plane_ddb_y[I915_MAX_PLANES];
>  			struct skl_ddb_entry plane_ddb_uv[I915_MAX_PLANES];
>  		} skl;
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index e4917454ec07..2ec48d9522e8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4154,16 +4154,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	 * grab _all_ crtc locks, including the one we currently hold.
>  	 */
>  	if (old_dbuf_state->active_pipes =3D=3D new_dbuf_state->active_pipes &&
> -	    !dev_priv->wm.distrust_bios_wm) {
> -		/*
> -		 * alloc may be cleared by clear_intel_crtc_state,
> -		 * copy from old state to be sure
> -		 *
> -		 * FIXME get rid of this mess
> -		 */
> -		*alloc =3D to_intel_crtc_state(for_crtc->base.state)->wm.skl.ddb;
> +	    !dev_priv->wm.distrust_bios_wm)
>  		return 0;
> -	}
>  =

>  	/*
>  	 * Get allowed DBuf slices for correspondent pipe and platform.
> @@ -4790,7 +4782,11 @@ skl_allocate_pipe_ddb(struct intel_crtc_state *crt=
c_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct skl_ddb_entry *alloc =3D &crtc_state->wm.skl.ddb;
> +	struct intel_atomic_state *state =3D
> +		to_intel_atomic_state(crtc_state->uapi.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	struct skl_ddb_entry *alloc =3D &dbuf_state->ddb[crtc->pipe];
>  	u16 alloc_size, start =3D 0;
>  	u16 total[I915_MAX_PLANES] =3D {};
>  	u16 uv_total[I915_MAX_PLANES] =3D {};
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 00910bc01407..724204bb8442 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -9,8 +9,10 @@
>  #include <linux/types.h>
>  =

>  #include "display/intel_bw.h"
> +#include "display/intel_display.h"
>  #include "display/intel_global_state.h"
>  =

> +#include "i915_drv.h"
>  #include "i915_reg.h"
>  =

>  struct drm_device;
> @@ -68,6 +70,8 @@ bool intel_set_memory_cxsr(struct drm_i915_private *dev=
_priv, bool enable);
>  struct intel_dbuf_state {
>  	struct intel_global_state base;
>  =

> +	struct skl_ddb_entry ddb[I915_MAX_PIPES];
> +
>  	u8 enabled_slices;
>  	u8 active_pipes;
>  };
> -- =

> 2.26.2
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
