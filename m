Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C0E5E67B3
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Sep 2022 17:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7925410EC51;
	Thu, 22 Sep 2022 15:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F28C610EC46
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Sep 2022 15:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663862158; x=1695398158;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Hpdqc/X+ubcQJaF7eRPPB9JuEeXPj3FRZ0B3eS81L10=;
 b=aLMv/0TWOi1BLCpmpO/aQSU1OZ66ZAF/LzP+dnSxL2dGDKatziUJh0Ng
 q8af/XV/a+iRcWs/oZ9ZVOmNommVSn1/gI0jGFMHBjeeOstvstnznp9Wd
 uFOfVeiVJwGaCcNHEcBZRq9IXoJEOW7YGxEFOqARH9428CxJ1GJ6AqGQn
 Ssmik5wG/9aqqcAGvegytKxHRzSOxnPPC2aSSMQ8n8gG0VEMp3IYSLyyp
 KdJrAj0AyKTrPSRsBaBqYaUu3+875QzEzVoNUzYu5bBwKw5tWHRkeswVB
 892w817AJZvs//J9AF2VU/27OQPtFpDl1H6RuOszN/jf4NPVNccjfTYTf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="301750319"
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="301750319"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:55:57 -0700
X-IronPort-AV: E=Sophos;i="5.93,335,1654585200"; d="scan'208";a="650574282"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 08:55:55 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220921122343.13061-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220921122343.13061-1-ville.syrjala@linux.intel.com>
 <20220921122343.13061-5-ville.syrjala@linux.intel.com>
Date: Thu, 22 Sep 2022 18:55:37 +0300
Message-ID: <875yhf5rpi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Decouple I915_NUM_PLLS from
 PLL IDs
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

On Wed, 21 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop assuming the size of PLL ID based bitmask is restricted
> to I915_NUM_PLLS bits. This is the last thing coupling the
> two things together and thus artificially limiting PLL IDs.
>
> We could just pass any arbitrary (large enough) size to
> for_each_set_bit() and be done with it, but the WARN
> requiring the caller to not pass in a bogus bitmask seems
> potentially useful to keep around. So let's just calculate
> the full bitmask on the spot.
>
> And while at it let's assert that the PLL IDs will fit
> into the bitmask we use for them.
>
> TODO: could also get rid of I915_NUM_PLLS entirely and just
> dynamically allocate i915->shared_dplls[] and state->shared_dpll[].
> But that would involve error handling in the modeset init path. Uff.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 24 +++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.c
> index fb09029cc4aa..ee04b63d2696 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -315,6 +315,21 @@ void intel_disable_shared_dpll(const struct intel_cr=
tc_state *crtc_state)
>  	mutex_unlock(&dev_priv->display.dpll.lock);
>  }
>=20=20
> +static unsigned long
> +intel_dpll_mask_all(struct drm_i915_private *i915)
> +{
> +	unsigned long dpll_mask =3D 0;
> +	int i;
> +
> +	for (i =3D 0; i < i915->display.dpll.num_shared_dpll; i++) {
> +		struct intel_shared_dpll *pll =3D &i915->display.dpll.shared_dplls[i];
> +
> +		dpll_mask |=3D BIT(pll->info->id);
> +	}
> +
> +	return dpll_mask;
> +}
> +
>  static struct intel_shared_dpll *
>  intel_find_shared_dpll(struct intel_atomic_state *state,
>  		       const struct intel_crtc *crtc,
> @@ -322,15 +337,16 @@ intel_find_shared_dpll(struct intel_atomic_state *s=
tate,
>  		       unsigned long dpll_mask)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	unsigned long dpll_mask_all =3D intel_dpll_mask_all(dev_priv);
>  	struct intel_shared_dpll_state *shared_dpll;
>  	struct intel_shared_dpll *unused_pll =3D NULL;
>  	enum intel_dpll_id id;
>=20=20
>  	shared_dpll =3D intel_atomic_get_shared_dpll_state(&state->base);
>=20=20
> -	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~(BIT(I915_NUM_PLLS) - 1));
> +	drm_WARN_ON(&dev_priv->drm, dpll_mask & ~dpll_mask_all);
>=20=20
> -	for_each_set_bit(id, &dpll_mask, I915_NUM_PLLS) {
> +	for_each_set_bit(id, &dpll_mask, fls(dpll_mask_all)) {
>  		struct intel_shared_dpll *pll;
>  		int i;
>=20=20
> @@ -4234,6 +4250,10 @@ void intel_shared_dpll_init(struct drm_i915_privat=
e *dev_priv)
>  				i >=3D ARRAY_SIZE(dev_priv->display.dpll.shared_dplls)))
>  			break;

Would be nice to add

	unsigned long dpll_mask;

        drm_WARN_ON(&dev_priv->drm, dpll_mask & BIT(pll->info->id));

	dpll_mask |=3D BIT(pll->info->id);

to check for collisions.

>=20=20
> +		/* must fit into unsigned long bitmask on 32bit */
> +		if (drm_WARN_ON(&dev_priv->drm, dpll_info[i].id >=3D 32))

BITS_PER_TYPE(dpll_mask) instead of 32? Of course would only hit this
when actually running a 32-bit build.

Regardless,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +			break;
> +
>  		dev_priv->display.dpll.shared_dplls[i].info =3D &dpll_info[i];
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
