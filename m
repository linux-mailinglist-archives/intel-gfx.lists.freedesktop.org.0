Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 965351A87B6
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 19:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E832F6E4FB;
	Tue, 14 Apr 2020 17:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A4EF6E508
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 17:40:49 +0000 (UTC)
IronPort-SDR: C3qAcetJUD5iRG/fFqPKFA+nZSL2NCz22gcpycw/k+UWcUn5CzGUXlwQsoV+exkL3J/YhmVk8K
 39UdP2qci9cw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:40:48 -0700
IronPort-SDR: gmNDU3ngO2epDL63PJKf7WLx63L0m2cVO1Xbxwnao3h+jOLZFs5XTogi6+3prYIox5tpl1gg/4
 6zfNQmvjighQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="270950035"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 14 Apr 2020 10:40:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Apr 2020 20:40:44 +0300
Date: Tue, 14 Apr 2020 20:40:44 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200414174044.GF6112@intel.com>
References: <20200409154730.18568-1-stanislav.lisovskiy@intel.com>
 <20200409154730.18568-5-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409154730.18568-5-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v22 04/13] drm/i915: Add
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

On Thu, Apr 09, 2020 at 06:47:21PM +0300, Stanislav Lisovskiy wrote:
> Add correspondent helpers to be able to get old/new bandwidth
> global state object.
> =

> v2: - Fixed typo in function call
> v3: - Changed new functions naming to use convention proposed
>       by Jani Nikula, i.e intel_bw_* in intel_bw.c file.
> v4: - Change function naming back to intel_atomic* pattern,
>       was decided to rename in a separate patch series.
> v5: - Fix function naming to match existing practices(Ville)
> v6: - Removed spurious whitespace
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 28 ++++++++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 ++++++++
>  2 files changed, 36 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i9=
15/display/intel_bw.c
> index 88f367eb28ea..96f86cfa91d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -375,7 +375,33 @@ static unsigned int intel_bw_data_rate(struct drm_i9=
15_private *dev_priv,
>  	return data_rate;
>  }
>  =

> -static struct intel_bw_state *
> +struct intel_bw_state *
> +intel_atomic_get_old_bw_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state =3D intel_atomic_get_old_global_obj_state(state, &dev_priv->bw=
_obj);
> +	if (!bw_state)
> +		return NULL;

This check isn't actually needed. I think in all the other cases we just
get_new_state()
{
	return to_foo_state(get_new_state());
}

See eg. intel_atomic_get_new_{crtc,plane}_state()

Would be nice to be consistent.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


> +
> +	return to_intel_bw_state(bw_state);
> +}
> +
> +struct intel_bw_state *
> +intel_atomic_get_new_bw_state(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_global_state *bw_state;
> +
> +	bw_state =3D intel_atomic_get_new_global_obj_state(state, &dev_priv->bw=
_obj);
> +	if (!bw_state)
> +		return NULL;
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
> index a8aa7624c5aa..ac004d6f4276 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -24,6 +24,15 @@ struct intel_bw_state {
>  =

>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, ba=
se)
>  =

> +struct intel_bw_state *
> +intel_atomic_get_old_bw_state(struct intel_atomic_state *state);
> +
> +struct intel_bw_state *
> +intel_atomic_get_new_bw_state(struct intel_atomic_state *state);
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
