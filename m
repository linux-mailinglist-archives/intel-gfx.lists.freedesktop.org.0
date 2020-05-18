Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5771D7A4B
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 15:46:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32A876E19B;
	Mon, 18 May 2020 13:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 290D36E19B
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 13:46:27 +0000 (UTC)
IronPort-SDR: Ir9ZXH5dS2voeeI4iZUW1cDtl4+KIHKxeJCtIbajJCih7Tx9KtOxAOqdnnwBooVaUJMNj4yIu3
 YHOZyo4Mb6eg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:46:26 -0700
IronPort-SDR: ulkTxyPximFi+eDxk83JvuZyNAsm4RhLfivKAXdfI6DNhiHP7aqri7/RAvBdSFlpMPMZCykYBd
 PaEvwi/6ehMA==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="439223042"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 06:46:25 -0700
Date: Mon, 18 May 2020 16:42:21 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200518134221.GA12920@intel.com>
References: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/4] Revert "drm/i915: Clean up dbuf debugs
 during .atomic_check()"
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

On Mon, May 18, 2020 at 03:23:00PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Dbuf slice tracking busted across runtime PM. Back to the
> drawing board.
> =

> This reverts commit 70b1a26f299c729cc1a5099374cc02568b05ec7d.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 26 +++++++-------------------
>  1 file changed, 7 insertions(+), 19 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index a21e36ed1a77..d40d22eb65da 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4105,6 +4105,10 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	 */
>  	dbuf_slice_mask =3D skl_compute_dbuf_slices(crtc_state, active_pipes);
>  =

> +	DRM_DEBUG_KMS("DBuf slice mask %x pipe %c active pipes %x\n",
> +		      dbuf_slice_mask,
> +		      pipe_name(for_pipe), active_pipes);
> +

Just wanted to say as a joke that if I would be adding those, you
would say that those are redundant debugs.. and then figured out
that those were mine initially :)

Ok - back to the drawing board!

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  	/*
>  	 * Figure out at which DBuf slice we start, i.e if we start at Dbuf S2
>  	 * and slice size is 1024, the offset would be 1024
> @@ -4187,10 +4191,8 @@ skl_ddb_get_pipe_allocation_limits(struct drm_i915=
_private *dev_priv,
>  	alloc->start =3D offset + start;
>  	alloc->end =3D offset + end;
>  =

> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[CRTC:%d:%s] dbuf slices 0x%x, ddb (%d - %d), active pipes 0x%x\n=
",
> -		    for_crtc->base.id, for_crtc->name,
> -		    dbuf_slice_mask, alloc->start, alloc->end, active_pipes);
> +	DRM_DEBUG_KMS("Pipe %d ddb %d-%d\n", for_pipe,
> +		      alloc->start, alloc->end);
>  =

>  	return 0;
>  }
> @@ -5704,10 +5706,7 @@ skl_ddb_add_affected_planes(const struct intel_crt=
c_state *old_crtc_state,
>  static int
>  skl_compute_ddb(struct intel_atomic_state *state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *old_dbuf_state;
> -	const struct intel_dbuf_state *new_dbuf_state;
> -	const struct intel_crtc_state *old_crtc_state;
> +	struct intel_crtc_state *old_crtc_state;
>  	struct intel_crtc_state *new_crtc_state;
>  	struct intel_crtc *crtc;
>  	int ret, i;
> @@ -5724,17 +5723,6 @@ skl_compute_ddb(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  =

> -	old_dbuf_state =3D intel_atomic_get_old_dbuf_state(state);
> -	new_dbuf_state =3D intel_atomic_get_new_dbuf_state(state);
> -
> -	if (new_dbuf_state &&
> -	    new_dbuf_state->enabled_slices !=3D old_dbuf_state->enabled_slices)
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Enabled dbuf slices 0x%x -> 0x%x (out of %d dbuf slices)\n",
> -			    old_dbuf_state->enabled_slices,
> -			    new_dbuf_state->enabled_slices,
> -			    INTEL_INFO(dev_priv)->num_supported_dbuf_slices);
> -
>  	return 0;
>  }
>  =

> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
