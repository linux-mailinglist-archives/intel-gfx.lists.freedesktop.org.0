Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8BF181D34
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2020 17:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A40C6E9B0;
	Wed, 11 Mar 2020 16:09:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EA6B6E9B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Mar 2020 16:08:59 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Mar 2020 09:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,541,1574150400"; d="scan'208";a="234751858"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 11 Mar 2020 09:08:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Mar 2020 18:08:54 +0200
Date: Wed, 11 Mar 2020 18:08:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200311160854.GB13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-4-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309161204.17792-4-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v19 3/8] drm/i915: Add intel_bw_get_*_state
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

On Mon, Mar 09, 2020 at 06:11:59PM +0200, Stanislav Lisovskiy wrote:
> Add correspondent helpers to be able to get old/new bandwidth
> global state object.
> =

> v2: - Fixed typo in function call
> v3: - Changed new functions naming to use convention proposed
>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.

Still nak on the rename.

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
