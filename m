Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF248C9A80
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:39:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 889FB10E366;
	Mon, 20 May 2024 09:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIHKkEPb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DD5C10E366
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716197955; x=1747733955;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=3BnCl3DU2I7glfDv6x2yYP9bMGoPRZjKS5PI3t0aEPo=;
 b=LIHKkEPbiGOkpj/olT4LJNr5aiPePSUQ6K4uJFnT2yeNg3hwOAako+Am
 smazhvrP5xi3QIH4Rh+UuRbzclluZR77+MF0RrDfgQR/prmCX83Dkb7SU
 XaNLY2fkpN2/C+aD3fp9iVZMTGPbAV4AM1X6lVLvg6jSVfWLPOXHKacKI
 N6pHBLLlljmX+1SPAXr3zNEorMKoV18Ui+sFGoI3/RwfKPir3oDN70jid
 kdvM3YfP1/f3HAq/taShe7O6a+wgYSQbUIAAoYfvTa6GSJKqdZC6+5P+0
 DGG4iXbnxfYkFFNRr1RlQ/EThXUe1rUdV7PEvja4S6qqHfMg0WhKWsdyd w==;
X-CSE-ConnectionGUID: wq1Eu/zkSXqIKcbrwNL1cQ==
X-CSE-MsgGUID: Hm++1l3nQoOh5eNuYfry/g==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12187199"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12187199"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:39:15 -0700
X-CSE-ConnectionGUID: adCpLvp+QZmiOVSsNmbiYw==
X-CSE-MsgGUID: PILxCOcEQdKW+AWt+XhLZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="32377852"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:39:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 05/13] drm/i915: Rename selective fetch plane registers
In-Reply-To: <20240516135622.3498-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-6-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 12:39:10 +0300
Message-ID: <87wmnou8jl.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename the selective fetch plane registers to match the spec.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr_regs.h      | 10 +++++-----
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 ++++++------
>  2 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/=
drm/i915/display/intel_psr_regs.h
> index 47e3a2e2977c..f0bd0a726d7a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -276,23 +276,23 @@
>  					    _SEL_FETCH_PLANE_BASE_A(plane))
>=20=20
>  #define _SEL_FETCH_PLANE_CTL_1_A		0x70890
> -#define PLANE_SEL_FETCH_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
> +#define SEL_FETCH_PLANE_CTL(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
>  					       _SEL_FETCH_PLANE_CTL_1_A - \
>  					       _SEL_FETCH_PLANE_BASE_1_A)
> -#define PLANE_SEL_FETCH_CTL_ENABLE		REG_BIT(31)
> +#define SEL_FETCH_PLANE_CTL_ENABLE		REG_BIT(31)
>=20=20
>  #define _SEL_FETCH_PLANE_POS_1_A		0x70894
> -#define PLANE_SEL_FETCH_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
> +#define SEL_FETCH_PLANE_POS(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pip=
e, plane) + \
>  					       _SEL_FETCH_PLANE_POS_1_A - \
>  					       _SEL_FETCH_PLANE_BASE_1_A)
>=20=20
>  #define _SEL_FETCH_PLANE_SIZE_1_A		0x70898
> -#define PLANE_SEL_FETCH_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pi=
pe, plane) + \
> +#define SEL_FETCH_PLANE_SIZE(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(pi=
pe, plane) + \
>  						_SEL_FETCH_PLANE_SIZE_1_A - \
>  						_SEL_FETCH_PLANE_BASE_1_A)
>=20=20
>  #define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089C
> -#define PLANE_SEL_FETCH_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(=
pipe, plane) + \
> +#define SEL_FETCH_PLANE_OFFSET(pipe, plane) _MMIO(_SEL_FETCH_PLANE_BASE(=
pipe, plane) + \
>  						  _SEL_FETCH_PLANE_OFFSET_1_A - \
>  						  _SEL_FETCH_PLANE_BASE_1_A)
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers=
/gpu/drm/i915/display/skl_universal_plane.c
> index d0bfee2ca643..6601baf18ae4 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -705,7 +705,7 @@ static void icl_plane_disable_sel_fetch_arm(struct in=
tel_plane *plane,
>  	if (!crtc_state->enable_psr2_sel_fetch)
>  		return;
>=20=20
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
> +	intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id), 0);
>  }
>=20=20
>  static void
> @@ -1304,7 +1304,7 @@ static void icl_plane_update_sel_fetch_noarm(struct=
 intel_plane *plane,
>=20=20
>  	val =3D (clip->y1 + plane_state->uapi.dst.y1) << 16;
>  	val |=3D plane_state->uapi.dst.x1;
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_POS(pipe, plane->id), val);
> +	intel_de_write_fw(i915, SEL_FETCH_PLANE_POS(pipe, plane->id), val);
>=20=20
>  	x =3D plane_state->view.color_plane[color_plane].x;
>=20=20
> @@ -1319,13 +1319,13 @@ static void icl_plane_update_sel_fetch_noarm(stru=
ct intel_plane *plane,
>=20=20
>  	val =3D y << 16 | x;
>=20=20
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
> +	intel_de_write_fw(i915, SEL_FETCH_PLANE_OFFSET(pipe, plane->id),
>  			  val);
>=20=20
>  	/* Sizes are 0 based */
>  	val =3D (drm_rect_height(clip) - 1) << 16;
>  	val |=3D (drm_rect_width(&plane_state->uapi.src) >> 16) - 1;
> -	intel_de_write_fw(i915, PLANE_SEL_FETCH_SIZE(pipe, plane->id), val);
> +	intel_de_write_fw(i915, SEL_FETCH_PLANE_SIZE(pipe, plane->id), val);
>  }
>=20=20
>  static void
> @@ -1414,8 +1414,8 @@ static void icl_plane_update_sel_fetch_arm(struct i=
ntel_plane *plane,
>  		return;
>=20=20
>  	if (drm_rect_height(&plane_state->psr2_sel_fetch_area) > 0)
> -		intel_de_write_fw(i915, PLANE_SEL_FETCH_CTL(pipe, plane->id),
> -				  PLANE_SEL_FETCH_CTL_ENABLE);
> +		intel_de_write_fw(i915, SEL_FETCH_PLANE_CTL(pipe, plane->id),
> +				  SEL_FETCH_PLANE_CTL_ENABLE);
>  	else
>  		icl_plane_disable_sel_fetch_arm(plane, crtc_state);
>  }

--=20
Jani Nikula, Intel
