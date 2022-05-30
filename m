Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD09537B4E
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 15:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5723210E7E9;
	Mon, 30 May 2022 13:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26E8610E7E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 13:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653916951; x=1685452951;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=dKFnjSlgs7RqIKV86982zHkyhO6nFpbHEn7TZKoL1jo=;
 b=XX2JbeTkOKl0XHvt4KmEG5V32a7y+JaeFJVvr7M4gHPULl+CqhyKa3Km
 hEzIRaqId6+Dv736HShR430J7yHsX2jDqcZs/QH/hP40A0p+U2RyhbP/0
 lgTosXWX0T20IXis2DzFG2oRa1Sv16I1nI3kGVQs5lvu+dCOtFTQZt6pl
 AVOW20hXDCYvqgWKviEPPobr+2Tze2lHJnH5O76WRJFDK7aA0xKcX9dBr
 h8oc++Jq6uVxSldgTGqkisrbAilBo0beOvnwKvxnWi62JYgMKt6R303dx
 fQkTnICMj+GuLVus663cmuMVjuFYwdcvkamGYa3dXwwPBVCaJ5C9Ngd3q Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="335648398"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="335648398"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:22:30 -0700
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="575935800"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:22:29 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220527204949.2264-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-7-ville.syrjala@linux.intel.com>
Date: Mon, 30 May 2022 16:22:26 +0300
Message-ID: <87a6azrw8d.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Treat DMRRS as static DRRS
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

On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Some machines declare DRRS type =3D seamless, DRRS =3D no, DMRRS =3D yes.
> I *think* DMRRS stands for "dynamcic media refresh rate", and
> I suspect the way it's meant to work is that it lets the driver
> switch refresh rates to match the frame rate for media playback.
> Obviously for us all that kind of policy stuff is entirely up to
> userspace, so the only thing we may do is make the extra refresh
> rate(s) available.
>
> So let's treat this case as just static DRRS for now. In the
> future We might want to differentiate the "seamless w/ downclocking"
> vs. "seamless w/o downclocking" cases so that we could do seamless
> refresh rate changes for systems that only claim to support DMRRS.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++----
>  1 file changed, 20 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index 0774238e429b..c42b9e7d0dce 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1279,8 +1279,16 @@ parse_panel_driver_features(struct drm_i915_privat=
e *i915,
>  		 * static DRRS is 0 and DRRS not supported is represented by
>  		 * driver->drrs_enabled=3Dfalse
>  		 */
> -		if (!driver->drrs_enabled)
> -			panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
> +		if (!driver->drrs_enabled && panel->vbt.drrs_type !=3D DRRS_TYPE_NONE)=
 {
> +			/*
> +			 * FIXME Should DMRRS perhaps be treated as seamless
> +			 * but without the automatic downclocking?
> +			 */
> +			if (driver->dmrrs_enabled)
> +				panel->vbt.drrs_type =3D DRRS_TYPE_STATIC;
> +			else
> +				panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
> +		}
>=20=20
>  		panel->vbt.psr.enable =3D driver->psr_enabled;
>  	}
> @@ -1310,8 +1318,16 @@ parse_power_conservation_features(struct drm_i915_=
private *i915,
>  	 * static DRRS is 0 and DRRS not supported is represented by
>  	 * power->drrs & BIT(panel_type)=3Dfalse
>  	 */
> -	if (!(power->drrs & BIT(panel_type)))
> -		panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
> +	if (!(power->drrs & BIT(panel_type)) && panel->vbt.drrs_type !=3D DRRS_=
TYPE_NONE) {
> +		/*
> +		 * FIXME Should DMRRS perhaps be treated as seamless
> +		 * but without the automatic downclocking?
> +		 */
> +		if (power->dmrrs & BIT(panel_type))
> +			panel->vbt.drrs_type =3D DRRS_TYPE_STATIC;
> +		else
> +			panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
> +	}
>=20=20
>  	if (i915->vbt.version >=3D 232)
>  		panel->vbt.edp.hobl =3D power->hobl & BIT(panel_type);

--=20
Jani Nikula, Intel Open Source Graphics Center
