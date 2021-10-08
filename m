Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E20C44267BE
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 12:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EAAE6F41C;
	Fri,  8 Oct 2021 10:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CB656F41E
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 10:25:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="206598283"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="206598283"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:25:55 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="478930449"
Received: from ssedpiaz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.40.186])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 03:25:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211006204937.30774-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211006204937.30774-1-ville.syrjala@linux.intel.com>
 <20211006204937.30774-7-ville.syrjala@linux.intel.com>
Date: Fri, 08 Oct 2021 13:25:49 +0300
Message-ID: <87sfxbx176.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 06/16] drm/i915: Extract
 icl_combo_phy_loadgen_select()
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

On Wed, 06 Oct 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pull the convoluted loadgen calculation into a small helper.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 23 ++++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index b8ec53d9e3b0..d06c76694a08 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1023,6 +1023,18 @@ static u8 intel_ddi_dp_preemph_max(struct intel_dp=
 *intel_dp)
>  	return DP_TRAIN_PRE_EMPH_LEVEL_3;
>  }
>=20=20
> +static u32 icl_combo_phy_loadgen_select(const struct intel_crtc_state *c=
rtc_state,
> +					int lane)
> +{
> +	if (crtc_state->port_clock > 600000)
> +		return 0;
> +
> +	if (crtc_state->lane_count =3D=3D 4)
> +		return lane >=3D 1 ? LOADGEN_SELECT : 0;
> +	else
> +		return lane =3D=3D 1 || lane =3D=3D 2 ? LOADGEN_SELECT : 0;
> +}
> +
>  static void icl_ddi_combo_vswing_program(struct intel_encoder *encoder,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> @@ -1089,11 +1101,8 @@ static void icl_combo_phy_set_signal_levels(struct=
 intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>  	enum phy phy =3D intel_port_to_phy(dev_priv, encoder->port);
> -	int width, rate, ln;
>  	u32 val;
> -
> -	width =3D crtc_state->lane_count;
> -	rate =3D crtc_state->port_clock;
> +	int ln;
>=20=20
>  	/*
>  	 * 1. If port type is eDP or DP,
> @@ -1117,11 +1126,7 @@ static void icl_combo_phy_set_signal_levels(struct=
 intel_encoder *encoder,
>  	for (ln =3D 0; ln < 4; ln++) {
>  		val =3D intel_de_read(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy));
>  		val &=3D ~LOADGEN_SELECT;
> -
> -		if ((rate <=3D 600000 && width =3D=3D 4 && ln >=3D 1) ||
> -		    (rate <=3D 600000 && width < 4 && (ln =3D=3D 1 || ln =3D=3D 2))) {
> -			val |=3D LOADGEN_SELECT;
> -		}
> +		val |=3D icl_combo_phy_loadgen_select(crtc_state, ln);
>  		intel_de_write(dev_priv, ICL_PORT_TX_DW4_LN(ln, phy), val);
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
