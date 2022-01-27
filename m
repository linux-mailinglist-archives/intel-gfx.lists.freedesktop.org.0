Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B6549E054
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 12:12:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B550510EF99;
	Thu, 27 Jan 2022 11:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4361710EF99
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jan 2022 11:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643281918; x=1674817918;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=1LT+TsoA4EvXWVWWaqqBvN9wyoVx5NMYKsIRzmIwtoY=;
 b=BNRINYPbcgdpIN57ASEjl4d6GYfmMUXYeA4u+7ZLhhmAukPzgd2HtO9r
 02MXR78cWfHQWGCBwOZdp8XiRtsNw4pBTUDsDe+w2KfCrm6ZWzItNFWVf
 RDT4HSOOHBE7AS+oDi2zPydRwRuo7yDKeJrTVRH+5a6ub1vRVjZpa1Duf
 74FoZ8aQ+6pKhcnD8sc5lNCvNwqyG0W2S2r5fVdOmaOp3VlNmdgzt0frh
 56zImQV/A1vqZQ1NVuBJ1nLFiDajSc1+U1vSuXCdhWnrCVG2HGsjtYqQF
 K+ipcOjleZlerKedw/NZnzR2F5FJRh7LiLGjex1jhIUMZGV5j+iz0aFuF g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226794687"
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="226794687"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:11:57 -0800
X-IronPort-AV: E=Sophos;i="5.88,320,1635231600"; d="scan'208";a="696603649"
Received: from johnlyon-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.209])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 03:11:56 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220127093303.17309-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220127093303.17309-1-ville.syrjala@linux.intel.com>
 <20220127093303.17309-2-ville.syrjala@linux.intel.com>
Date: Thu, 27 Jan 2022 13:11:51 +0200
Message-ID: <87zgnhwhzc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 01/14] drm/i915: Extract intel_{get,
 set}_m_n()
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

On Thu, 27 Jan 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make the M/N setup/readout a bit less repitive by extracting
> a few small helpers.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Nice!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 109 ++++++++-----------
>  1 file changed, 47 insertions(+), 62 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 91add3d85151..f76faa195cb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3113,6 +3113,17 @@ static void intel_panel_sanitize_ssc(struct drm_i9=
15_private *dev_priv)
>  	}
>  }
>=20=20
> +static void intel_set_m_n(struct drm_i915_private *i915,
> +			  const struct intel_link_m_n *m_n,
> +			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> +			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> +{
> +	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->gmch_m);
> +	intel_de_write(i915, data_n_reg, m_n->gmch_n);
> +	intel_de_write(i915, link_m_reg, m_n->link_m);
> +	intel_de_write(i915, link_n_reg, m_n->link_n);
> +}
> +
>  static void intel_pch_transcoder_set_m_n(const struct intel_crtc_state *=
crtc_state,
>  					 const struct intel_link_m_n *m_n)
>  {
> @@ -3120,11 +3131,9 @@ static void intel_pch_transcoder_set_m_n(const str=
uct intel_crtc_state *crtc_sta
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> -	intel_de_write(dev_priv, PCH_TRANS_DATA_M1(pipe),
> -		       TU_SIZE(m_n->tu) | m_n->gmch_m);
> -	intel_de_write(dev_priv, PCH_TRANS_DATA_N1(pipe), m_n->gmch_n);
> -	intel_de_write(dev_priv, PCH_TRANS_LINK_M1(pipe), m_n->link_m);
> -	intel_de_write(dev_priv, PCH_TRANS_LINK_N1(pipe), m_n->link_n);
> +	intel_set_m_n(dev_priv, m_n,
> +		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
> +		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
>  }
>=20=20
>  static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
> @@ -3150,35 +3159,23 @@ static void intel_cpu_transcoder_set_m_n(const st=
ruct intel_crtc_state *crtc_sta
>  	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 5) {
> -		intel_de_write(dev_priv, PIPE_DATA_M1(transcoder),
> -			       TU_SIZE(m_n->tu) | m_n->gmch_m);
> -		intel_de_write(dev_priv, PIPE_DATA_N1(transcoder),
> -			       m_n->gmch_n);
> -		intel_de_write(dev_priv, PIPE_LINK_M1(transcoder),
> -			       m_n->link_m);
> -		intel_de_write(dev_priv, PIPE_LINK_N1(transcoder),
> -			       m_n->link_n);
> +		intel_set_m_n(dev_priv, m_n,
> +			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
> +			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>  		/*
>  		 *  M2_N2 registers are set only if DRRS is supported
>  		 * (to make sure the registers are not unnecessarily accessed).
>  		 */
>  		if (m2_n2 && crtc_state->has_drrs &&
>  		    transcoder_has_m2_n2(dev_priv, transcoder)) {
> -			intel_de_write(dev_priv, PIPE_DATA_M2(transcoder),
> -				       TU_SIZE(m2_n2->tu) | m2_n2->gmch_m);
> -			intel_de_write(dev_priv, PIPE_DATA_N2(transcoder),
> -				       m2_n2->gmch_n);
> -			intel_de_write(dev_priv, PIPE_LINK_M2(transcoder),
> -				       m2_n2->link_m);
> -			intel_de_write(dev_priv, PIPE_LINK_N2(transcoder),
> -				       m2_n2->link_n);
> +			intel_set_m_n(dev_priv, m2_n2,
> +				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
> +				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  		}
>  	} else {
> -		intel_de_write(dev_priv, PIPE_DATA_M_G4X(pipe),
> -			       TU_SIZE(m_n->tu) | m_n->gmch_m);
> -		intel_de_write(dev_priv, PIPE_DATA_N_G4X(pipe), m_n->gmch_n);
> -		intel_de_write(dev_priv, PIPE_LINK_M_G4X(pipe), m_n->link_m);
> -		intel_de_write(dev_priv, PIPE_LINK_N_G4X(pipe), m_n->link_n);
> +		intel_set_m_n(dev_priv, m_n,
> +			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> +			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
>  	}
>  }
>=20=20
> @@ -3863,6 +3860,18 @@ int ilk_get_lanes_required(int target_clock, int l=
ink_bw, int bpp)
>  	return DIV_ROUND_UP(bps, link_bw * 8);
>  }
>=20=20
> +static void intel_get_m_n(struct drm_i915_private *i915,
> +			  struct intel_link_m_n *m_n,
> +			  i915_reg_t data_m_reg, i915_reg_t data_n_reg,
> +			  i915_reg_t link_m_reg, i915_reg_t link_n_reg)
> +{
> +	m_n->link_m =3D intel_de_read(i915, link_m_reg);
> +	m_n->link_n =3D intel_de_read(i915, link_n_reg);
> +	m_n->gmch_m =3D intel_de_read(i915, data_m_reg) & ~TU_SIZE_MASK;
> +	m_n->gmch_n =3D intel_de_read(i915, data_n_reg);
> +	m_n->tu =3D ((intel_de_read(i915, data_m_reg) & TU_SIZE_MASK) >> TU_SIZ=
E_SHIFT) + 1;
> +}
> +
>  static void intel_pch_transcoder_get_m_n(struct intel_crtc *crtc,
>  					 struct intel_link_m_n *m_n)
>  {
> @@ -3870,13 +3879,9 @@ static void intel_pch_transcoder_get_m_n(struct in=
tel_crtc *crtc,
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> -	m_n->link_m =3D intel_de_read(dev_priv, PCH_TRANS_LINK_M1(pipe));
> -	m_n->link_n =3D intel_de_read(dev_priv, PCH_TRANS_LINK_N1(pipe));
> -	m_n->gmch_m =3D intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
> -		& ~TU_SIZE_MASK;
> -	m_n->gmch_n =3D intel_de_read(dev_priv, PCH_TRANS_DATA_N1(pipe));
> -	m_n->tu =3D ((intel_de_read(dev_priv, PCH_TRANS_DATA_M1(pipe))
> -		    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
> +	intel_get_m_n(dev_priv, m_n,
> +		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
> +		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
>  }
>=20=20
>  static void intel_cpu_transcoder_get_m_n(struct intel_crtc *crtc,
> @@ -3888,39 +3893,19 @@ static void intel_cpu_transcoder_get_m_n(struct i=
ntel_crtc *crtc,
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
>  	if (DISPLAY_VER(dev_priv) >=3D 5) {
> -		m_n->link_m =3D intel_de_read(dev_priv,
> -					    PIPE_LINK_M1(transcoder));
> -		m_n->link_n =3D intel_de_read(dev_priv,
> -					    PIPE_LINK_N1(transcoder));
> -		m_n->gmch_m =3D intel_de_read(dev_priv,
> -					    PIPE_DATA_M1(transcoder))
> -			& ~TU_SIZE_MASK;
> -		m_n->gmch_n =3D intel_de_read(dev_priv,
> -					    PIPE_DATA_N1(transcoder));
> -		m_n->tu =3D ((intel_de_read(dev_priv, PIPE_DATA_M1(transcoder))
> -			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
> +		intel_get_m_n(dev_priv, m_n,
> +			      PIPE_DATA_M1(transcoder), PIPE_DATA_N1(transcoder),
> +			      PIPE_LINK_M1(transcoder), PIPE_LINK_N1(transcoder));
>=20=20
>  		if (m2_n2 && transcoder_has_m2_n2(dev_priv, transcoder)) {
> -			m2_n2->link_m =3D intel_de_read(dev_priv,
> -						      PIPE_LINK_M2(transcoder));
> -			m2_n2->link_n =3D	intel_de_read(dev_priv,
> -							     PIPE_LINK_N2(transcoder));
> -			m2_n2->gmch_m =3D	intel_de_read(dev_priv,
> -							     PIPE_DATA_M2(transcoder))
> -					& ~TU_SIZE_MASK;
> -			m2_n2->gmch_n =3D	intel_de_read(dev_priv,
> -							     PIPE_DATA_N2(transcoder));
> -			m2_n2->tu =3D ((intel_de_read(dev_priv, PIPE_DATA_M2(transcoder))
> -					& TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
> +			intel_get_m_n(dev_priv, m2_n2,
> +				      PIPE_DATA_M2(transcoder), PIPE_DATA_N2(transcoder),
> +				      PIPE_LINK_M2(transcoder), PIPE_LINK_N2(transcoder));
>  		}
>  	} else {
> -		m_n->link_m =3D intel_de_read(dev_priv, PIPE_LINK_M_G4X(pipe));
> -		m_n->link_n =3D intel_de_read(dev_priv, PIPE_LINK_N_G4X(pipe));
> -		m_n->gmch_m =3D intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
> -			& ~TU_SIZE_MASK;
> -		m_n->gmch_n =3D intel_de_read(dev_priv, PIPE_DATA_N_G4X(pipe));
> -		m_n->tu =3D ((intel_de_read(dev_priv, PIPE_DATA_M_G4X(pipe))
> -			    & TU_SIZE_MASK) >> TU_SIZE_SHIFT) + 1;
> +		intel_get_m_n(dev_priv, m_n,
> +			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
> +			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
>  	}
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
