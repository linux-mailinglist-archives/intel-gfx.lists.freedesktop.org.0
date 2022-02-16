Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4624B84F7
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 10:54:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AD9E10E61E;
	Wed, 16 Feb 2022 09:54:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9780810E661
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 09:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645005247; x=1676541247;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FKzh5eNlMO2JWH/4cp/2ZROGUF/7gDTwfvzT6qgKIsY=;
 b=TQ5tDCy5QrzMnb1uI2BcwJVtdhD+g2aqPr6VhKRCO7xpr1pL+94YZvoD
 z5+0hF3ygNju9BDsNo4uXaWgNiP3x14E1sNbvYPrvU8vv3yVTpFCxRYKI
 p5nbeK4vbkbEyHBj9ANMVreAr5p7nUMJTbfO6rPZYI4LefUx97NH+aoQs
 kZLMi6ImOyLncRDEtERKAynoy+eOMnOoKg8QF0QoZQS7A7JbQfoDvogXZ
 Rkq7IrrTx9m0kgYgUxZGAPu1UINz407fDqpJkYIMW4RED+NUhWjQ7U3JK
 0XR5P+0y6CF5J6wzzlwIvTqlyMSjL138KCHVdIuLIwVhzFUrFpbHvP5Vc Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10259"; a="336998684"
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="336998684"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:54:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,373,1635231600"; d="scan'208";a="486850299"
Received: from rbilei-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.113])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 01:54:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220211090629.15555-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220211090629.15555-1-ville.syrjala@linux.intel.com>
 <20220211090629.15555-6-ville.syrjala@linux.intel.com>
Date: Wed, 16 Feb 2022 11:54:00 +0200
Message-ID: <87y22b3znr.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915: Remove gen6_check_mch_setup()
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

On Fri, 11 Feb 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> snb_wm_latency_quirk() already boosts up the latency values
> so the extra warning about the SSKPD value being insufficient
> is now redundant. Drop it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I just might not understand what's going on...

...but snb_wm_latency_quirk() is only called for display 6, not for ivb
where the check is also removed?

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 15 ---------------
>  1 file changed, 15 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 0fa3dce9bd54..34e46a9b8300 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7432,17 +7432,6 @@ static void cpt_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	}
>  }
>=20=20
> -static void gen6_check_mch_setup(struct drm_i915_private *dev_priv)
> -{
> -	u32 tmp;
> -
> -	tmp =3D intel_uncore_read(&dev_priv->uncore, MCH_SSKPD);
> -	if ((tmp & MCH_SSKPD_WM0_MASK) !=3D MCH_SSKPD_WM0_VAL)
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "Wrong MCH_SSKPD value: 0x%08x This can cause underruns.\n",
> -			    tmp);
> -}
> -
>  static void gen6_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	u32 dspclk_gate =3D ILK_VRHUNIT_CLOCK_GATE_DISABLE;
> @@ -7500,8 +7489,6 @@ static void gen6_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	g4x_disable_trickle_feed(dev_priv);
>=20=20
>  	cpt_init_clock_gating(dev_priv);
> -
> -	gen6_check_mch_setup(dev_priv);
>  }
>=20=20
>  static void lpt_init_clock_gating(struct drm_i915_private *dev_priv)
> @@ -7853,8 +7840,6 @@ static void ivb_init_clock_gating(struct drm_i915_p=
rivate *dev_priv)
>=20=20
>  	if (!HAS_PCH_NOP(dev_priv))
>  		cpt_init_clock_gating(dev_priv);
> -
> -	gen6_check_mch_setup(dev_priv);
>  }
>=20=20
>  static void vlv_init_clock_gating(struct drm_i915_private *dev_priv)

--=20
Jani Nikula, Intel Open Source Graphics Center
