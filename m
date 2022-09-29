Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B1B5EF4D9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:58:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E068010E5E0;
	Thu, 29 Sep 2022 11:58:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2681C10E5E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664452726; x=1695988726;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=KXY8H0WxmwXQ1hWY+rKmzLdLhExv7L00ZXc9Ef1WIPo=;
 b=E/EnIA99SsbXs9NTCeTFXe3A6Cd3yVRFFNvnPo96YruvB3Smbv8Kgmvk
 DcGrA6wpMrm2bfihMbdn5Zh07lWIlMO/UFBqwhRamOtml8nFeefFNUmhE
 93jQ2k5Hm9DYAZqjS3z3szSW22iPQu6pqUw0kYYrM2VVhk5zFwD/2feWM
 AcGN7laKHbFQLw8YNt2f45v0wNrJxDPeD13LbpeQWjo0tplw60vbtg9PF
 Lr5EWZQnYROewxhBQhtoy8fUc3nDh18E4ahEitFnR6fkbmCmy9MdX+N8J
 elIDuSH7jO0BWZWQMJfLaoewnpgRShmXpQHD/E4ujN41oIRAEmsDztPJf A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="363715374"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="363715374"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:58:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="690792926"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="690792926"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.153])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:58:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220929071521.26612-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220929071521.26612-1-ville.syrjala@linux.intel.com>
 <20220929071521.26612-6-ville.syrjala@linux.intel.com>
Date: Thu, 29 Sep 2022 14:58:36 +0300
Message-ID: <875yh6xuhf.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Change
 glk_load_degamma_lut() calling convention
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

On Thu, 29 Sep 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Make glk_load_degamma_lut() more like most everyone else and
> pass in the LUT explicitly.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 96687ec30b19..0c73b2ba1283 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -826,13 +826,14 @@ static int glk_degamma_lut_size(struct drm_i915_pri=
vate *i915)
>  		return 35;
>  }
>=20=20
> -static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_sta=
te)
> +static void glk_load_degamma_lut(const struct intel_crtc_state *crtc_sta=
te,
> +				 const struct drm_property_blob *blob)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	const struct drm_color_lut *lut =3D blob->data;
> +	int i, lut_size =3D drm_color_lut_size(blob);
>  	enum pipe pipe =3D crtc->pipe;
> -	int i, lut_size =3D INTEL_INFO(dev_priv)->display.color.degamma_lut_siz=
e;
> -	const struct drm_color_lut *lut =3D crtc_state->hw.degamma_lut->data;
>=20=20
>  	/*
>  	 * When setting the auto-increment bit, the hardware seems to
> @@ -899,6 +900,7 @@ static void glk_load_degamma_lut_linear(const struct =
intel_crtc_state *crtc_stat
>=20=20
>  static void glk_load_luts(const struct intel_crtc_state *crtc_state)
>  {
> +	const struct drm_property_blob *degamma_lut =3D crtc_state->hw.degamma_=
lut;
>  	const struct drm_property_blob *gamma_lut =3D crtc_state->hw.gamma_lut;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20=20
> @@ -910,8 +912,8 @@ static void glk_load_luts(const struct intel_crtc_sta=
te *crtc_state)
>  	 * the degama LUT so that we don't have to reload
>  	 * it every time the pipe CSC is being enabled.
>  	 */
> -	if (crtc_state->hw.degamma_lut)
> -		glk_load_degamma_lut(crtc_state);
> +	if (degamma_lut)
> +		glk_load_degamma_lut(crtc_state, degamma_lut);
>  	else
>  		glk_load_degamma_lut_linear(crtc_state);
>=20=20
> @@ -1043,11 +1045,12 @@ icl_program_gamma_multi_segment(const struct inte=
l_crtc_state *crtc_state)
>=20=20
>  static void icl_load_luts(const struct intel_crtc_state *crtc_state)
>  {
> +	const struct drm_property_blob *degamma_lut =3D crtc_state->hw.degamma_=
lut;
>  	const struct drm_property_blob *gamma_lut =3D crtc_state->hw.gamma_lut;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20=20
> -	if (crtc_state->hw.degamma_lut)
> -		glk_load_degamma_lut(crtc_state);
> +	if (degamma_lut)
> +		glk_load_degamma_lut(crtc_state, degamma_lut);
>=20=20
>  	switch (crtc_state->gamma_mode & GAMMA_MODE_MODE_MASK) {
>  	case GAMMA_MODE_MODE_8BIT:

--=20
Jani Nikula, Intel Open Source Graphics Center
