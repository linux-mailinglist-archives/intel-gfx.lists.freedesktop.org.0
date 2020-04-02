Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 524AD19C6FE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 18:21:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB3186EAC1;
	Thu,  2 Apr 2020 16:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A4516EAC1
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 16:21:07 +0000 (UTC)
IronPort-SDR: mzsxUU90371jmMvRxxziv4qvw1l5kqyQNTueCvMer76RtvcgN6K03EHboB/q5lvMJz1oOFokXl
 2X7eWa3Iw2IQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 09:21:06 -0700
IronPort-SDR: OsOCbHNMAY2e75tDg5cAShKr/pxBjpfTS4oK6JgtNMrNz9wUxNEEu97Jr0OFwX298NGr24mhNr
 OCZAr5W3NJ7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="240870035"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 02 Apr 2020 09:21:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 19:20:59 +0300
Date: Thu, 2 Apr 2020 19:20:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402162059.GZ13686@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
 <20200326181005.11775-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326181005.11775-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 04/10] drm/i915: Add
 intel_atomic_get_bw_*_state helpers
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:09:59PM +0200, Stanislav Lisovskiy wrote:
> Add correspondent helpers to be able to get old/new bandwidth
> global state object.
> =

> v2: - Fixed typo in function call
> v3: - Changed new functions naming to use convention proposed
>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
> v4: - Change function naming back to intel_atomic* pattern,
>       was decided to rename in a separate patch series.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 29 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
>  2 files changed, 37 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 58b264bc318d..a8b2038db4d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -374,7 +374,34 @@ static unsigned int intel_bw_data_rate(struct drm_i9=
15_private *dev_priv,
>  	return data_rate;
>  }
>  =

> -static struct intel_bw_state *
> +struct intel_bw_state *
> +intel_atomic_get_bw_old_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_priv->bw=
_obj);
> +	if (IS_ERR(bw_state))
> +		return ERR_CAST(bw_state);

These can't return an error.

> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_atomic_get_bw_new_state(struct intel_atomic_state *state)
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
>  intel_atomic_get_bw_state(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index a8aa7624c5aa..fe6579c952f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,15 @@ struct intel_bw_state {
>  =

>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
>  =

> +struct intel_bw_state *
> +intel_atomic_get_bw_old_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_atomic_get_bw_new_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_atomic_get_bw_state(struct intel_atomic_state *state);
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
