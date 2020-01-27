Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CF914A724
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 16:25:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 887DB6EBE9;
	Mon, 27 Jan 2020 15:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32F0D6EBED
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 15:25:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:21:54 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="231497078"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 07:21:53 -0800
Date: Mon, 27 Jan 2020 17:21:43 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200127152143.GC2730@ideak-desk.fi.intel.com>
References: <20200120174728.21095-1-ville.syrjala@linux.intel.com>
 <20200120174728.21095-16-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200120174728.21095-16-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 14/17] drm/i915: Convert bandwidth state to
 global state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 20, 2020 at 07:47:25PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Now that we have the more formal global state thing let's
> use if for memory bandwidth tracking. No real difference
> to the current private object usage since we already
> tried to avoid taking the single serializing lock needlessly.
> But since we're going to roll the global state out to more
> things probably a good idea to unify the approaches a bit.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c      | 31 +++++++++-----------
>  drivers/gpu/drm/i915/display/intel_bw.h      |  4 +--
>  drivers/gpu/drm/i915/display/intel_display.c |  2 --
>  drivers/gpu/drm/i915/i915_drv.h              |  2 +-
>  4 files changed, 17 insertions(+), 22 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index b228671d5a5d..316abcf3e6a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -374,10 +374,9 @@ static struct intel_bw_state *
>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct drm_private_state *bw_state;
> +	struct intel_global_state *bw_state;
>  =

> -	bw_state =3D drm_atomic_get_private_obj_state(&state->base,
> -						    &dev_priv->bw_obj);
> +	bw_state =3D intel_atomic_get_global_obj_state(state, &dev_priv->bw_obj=
);
>  	if (IS_ERR(bw_state))
>  		return ERR_CAST(bw_state);
>  =

> @@ -392,7 +391,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *=
state)
>  	unsigned int data_rate, max_data_rate;
>  	unsigned int num_active_planes;
>  	struct intel_crtc *crtc;
> -	int i;
> +	int i, ret;
>  =

>  	/* FIXME earlier gens need some checks too */
>  	if (INTEL_GEN(dev_priv) < 11)
> @@ -433,6 +432,10 @@ int intel_bw_atomic_check(struct intel_atomic_state =
*state)
>  	if (!bw_state)
>  		return 0;
>  =

> +	ret =3D intel_atomic_lock_global_state(&bw_state->base);
> +	if (ret)
> +		return ret;
> +

So getting the state already read locked it and the above will write
lock it. For clarity the above func could be named accordingly. Either
way:

Reviewed-by: Imre Deak <imre.deak@intel.com>

>  	data_rate =3D intel_bw_data_rate(dev_priv, bw_state);
>  	num_active_planes =3D intel_bw_num_active_planes(dev_priv, bw_state);
>  =

> @@ -449,7 +452,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *=
state)
>  	return 0;
>  }
>  =

> -static struct drm_private_state *intel_bw_duplicate_state(struct drm_pri=
vate_obj *obj)
> +static struct intel_global_state *
> +intel_bw_duplicate_state(struct intel_global_obj *obj)
>  {
>  	struct intel_bw_state *state;
>  =

> @@ -457,18 +461,16 @@ static struct drm_private_state *intel_bw_duplicate=
_state(struct drm_private_obj
>  	if (!state)
>  		return NULL;
>  =

> -	__drm_atomic_helper_private_obj_duplicate_state(obj, &state->base);
> -
>  	return &state->base;
>  }
>  =

> -static void intel_bw_destroy_state(struct drm_private_obj *obj,
> -				   struct drm_private_state *state)
> +static void intel_bw_destroy_state(struct intel_global_obj *obj,
> +				   struct intel_global_state *state)
>  {
>  	kfree(state);
>  }
>  =

> -static const struct drm_private_state_funcs intel_bw_funcs =3D {
> +static const struct intel_global_state_funcs intel_bw_funcs =3D {
>  	.atomic_duplicate_state =3D intel_bw_duplicate_state,
>  	.atomic_destroy_state =3D intel_bw_destroy_state,
>  };
> @@ -481,13 +483,8 @@ int intel_bw_init(struct drm_i915_private *dev_priv)
>  	if (!state)
>  		return -ENOMEM;
>  =

> -	drm_atomic_private_obj_init(&dev_priv->drm, &dev_priv->bw_obj,
> -				    &state->base, &intel_bw_funcs);
> +	intel_atomic_global_obj_init(dev_priv, &dev_priv->bw_obj,
> +				     &state->base, &intel_bw_funcs);
>  =

>  	return 0;
>  }
> -
> -void intel_bw_cleanup(struct drm_i915_private *dev_priv)
> -{
> -	drm_atomic_private_obj_fini(&dev_priv->bw_obj);
> -}
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index 20b9ad241802..a8aa7624c5aa 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -9,13 +9,14 @@
>  #include <drm/drm_atomic.h>
>  =

>  #include "intel_display.h"
> +#include "intel_global_state.h"
>  =

>  struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc_state;
>  =

>  struct intel_bw_state {
> -	struct drm_private_state base;
> +	struct intel_global_state base;
>  =

>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
> @@ -25,7 +26,6 @@ struct intel_bw_state {
>  =

>  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
>  int intel_bw_init(struct drm_i915_private *dev_priv);
> -void intel_bw_cleanup(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
>  void intel_bw_crtc_update(struct intel_bw_state *bw_state,
>  			  const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 70eb6eaab095..f5396c5c00c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -18566,8 +18566,6 @@ void intel_modeset_driver_remove(struct drm_i915_=
private *i915)
>  =

>  	intel_gmbus_teardown(i915);
>  =

> -	intel_bw_cleanup(i915);
> -
>  	destroy_workqueue(i915->flip_wq);
>  	destroy_workqueue(i915->modeset_wq);
>  =

> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index b558e68b4dbd..63cda89a4e62 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1251,7 +1251,7 @@ struct drm_i915_private {
>  		u8 num_planes;
>  	} max_bw[6];
>  =

> -	struct drm_private_obj bw_obj;
> +	struct intel_global_obj bw_obj;
>  =

>  	struct intel_runtime_pm runtime_pm;
>  =

> -- =

> 2.24.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
