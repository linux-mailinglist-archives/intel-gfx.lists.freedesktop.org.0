Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 958FD17229B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 16:54:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 641AB6E91D;
	Thu, 27 Feb 2020 15:53:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17926E91D
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 15:53:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 07:53:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="350710829"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 27 Feb 2020 07:53:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 27 Feb 2020 17:53:53 +0200
Date: Thu, 27 Feb 2020 17:53:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200227155353.GQ13686@intel.com>
References: <20200224153240.9047-1-stanislav.lisovskiy@intel.com>
 <20200224153240.9047-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224153240.9047-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v18 3/8] drm/i915: Add intel_bw_get_*_state
 helpers
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

On Mon, Feb 24, 2020 at 05:32:35PM +0200, Stanislav Lisovskiy wrote:
> Add correspondent helpers to be able to get old/new bandwidth
> global state object.
> =

> v2: - Fixed typo in function call
> v3: - Changed new functions naming to use convention proposed
>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.

And now they no longer match the naming pattern used by all the
other simialr functions.

> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 33 ++++++++++++++++++++++---
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++++
>  2 files changed, 39 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 58b264bc318d..bdad7476dc7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -374,8 +374,35 @@ static unsigned int intel_bw_data_rate(struct drm_i9=
15_private *dev_priv,
>  	return data_rate;
>  }
>  =

> -static struct intel_bw_state *
> -intel_atomic_get_bw_state(struct intel_atomic_state *state)
> +struct intel_bw_state *
> +intel_bw_get_old_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_priv->bw=
_obj);
> +	if (IS_ERR(bw_state))
> +		return ERR_CAST(bw_state);
> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_bw_get_new_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_priv->bw=
_obj);
> +
> +	if (IS_ERR(bw_state))
> +		return ERR_CAST(bw_state);
> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_bw_get_state(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_global_state *bw_state;
> @@ -420,7 +447,7 @@ int intel_bw_atomic_check(struct intel_atomic_state *=
state)
>  		    old_active_planes =3D=3D new_active_planes)
>  			continue;
>  =

> -		bw_state  =3D intel_atomic_get_bw_state(state);
> +		bw_state  =3D intel_bw_get_state(state);
>  		if (IS_ERR(bw_state))
>  			return PTR_ERR(bw_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index a8aa7624c5aa..b5f61463922f 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,15 @@ struct intel_bw_state {
>  =

>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
>  =

> +struct intel_bw_state *
> +intel_bw_get_old_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_bw_get_new_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_bw_get_state(struct intel_atomic_state *state);
> +
>  void intel_bw_init_hw(struct drm_i915_private *dev_priv);
>  int intel_bw_init(struct drm_i915_private *dev_priv);
>  int intel_bw_atomic_check(struct intel_atomic_state *state);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
