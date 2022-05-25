Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8252533B0B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 May 2022 12:57:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D07710F21B;
	Wed, 25 May 2022 10:57:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C53010F184
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 May 2022 10:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653476227; x=1685012227;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=eApOS/0khhSkiaG4h3TwShBPvwzjs4ntJLREazs0uNE=;
 b=VaMjlarhqmgdens0MkIFZ6r3dRkNlJLd18mf54u8yoDLh76AGamJeT6J
 HQl4O4B7EiaO7GN07T0SK4rn34nfJ1ZbSRPwLn7QTDlrlIR9y+Duo5jsy
 Zcn67/snuUJs/J2yuTD38+X4Lp2QAuOZOrU46exn7f4t+m7tIv8Q810e0
 F7f++gCw5PwF4d28XPFMCuTP1Tsae24k6R80OnLszz0yIoBrOniFHpL+L
 CWpOGGJmD1PumAR6I58Km+0m/9YW+EJ+YQBoLD397qZp5E3ZaFrqGQwLs
 XXYNHpOoE44nqOZwcVXHAkEuwdy/ThLqsogGAClJV6YlM+RbKDpuvL4P6 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10357"; a="336835123"
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="336835123"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:57:06 -0700
X-IronPort-AV: E=Sophos;i="5.91,250,1647327600"; d="scan'208";a="601846121"
Received: from mwardyn-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.149.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 May 2022 03:57:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220503182242.18797-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
 <20220503182242.18797-14-ville.syrjala@linux.intel.com>
Date: Wed, 25 May 2022 13:57:02 +0300
Message-ID: <878rqpvq0x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/26] drm/i915: Compute clocks earlier
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

On Tue, 03 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Do the DPLL computation before fastset checks. This should
> allow us to get rid of all that horrible fuzzy clock handling
> for fastsets. Who knows how many bugs there are caused by our
> state not actually matching what the hardware will generate.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 8d6cbfbaf20d..1a25addadc21 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2818,6 +2818,10 @@ static int intel_crtc_compute_config(struct intel_=
atomic_state *state,
>  		intel_atomic_get_new_crtc_state(state, crtc);
>  	int ret;
>=20=20
> +	ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> +	if (ret)
> +		return ret;
> +
>  	ret =3D intel_crtc_compute_pipe_src(crtc_state);
>  	if (ret)
>  		return ret;
> @@ -7783,10 +7787,6 @@ static int intel_atomic_check(struct drm_device *d=
ev,
>  		if (intel_crtc_needs_modeset(new_crtc_state)) {
>  			any_ms =3D true;
>=20=20
> -			ret =3D intel_dpll_crtc_compute_clock(state, crtc);
> -			if (ret)
> -				goto fail;
> -
>  			intel_release_shared_dplls(state, crtc);
>  			continue;
>  		}

--=20
Jani Nikula, Intel Open Source Graphics Center
