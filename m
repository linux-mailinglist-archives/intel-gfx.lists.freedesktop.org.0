Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEB840C38D
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 12:20:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70D676E900;
	Wed, 15 Sep 2021 10:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF046E900
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 10:20:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="307829761"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="307829761"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:20:41 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="553055621"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:20:40 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210913144440.23008-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-9-ville.syrjala@linux.intel.com>
Date: Wed, 15 Sep 2021 13:20:37 +0300
Message-ID: <878rzyyway.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 08/16] drm/i915: Extract
 hsw_panel_transcoders()
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

On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Extract the "panel transcoder" bitmask into a helper. We'll
> have a couple of uses for this later.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 54107bab4ae6..3848f7963cec 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5577,21 +5577,27 @@ static bool ilk_get_pipe_config(struct intel_crtc=
 *crtc,
>  	return ret;
>  }
>=20=20
> +static u8 hsw_panel_transcoders(struct drm_i915_private *i915)
> +{
> +	u8 panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
> +
> +	if (DISPLAY_VER(i915) >=3D 11)
> +		panel_transcoder_mask |=3D BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_=
1);
> +
> +	return panel_transcoder_mask;
> +}
> +
>  static bool hsw_get_transcoder_state(struct intel_crtc *crtc,
>  				     struct intel_crtc_state *pipe_config,
>  				     struct intel_display_power_domain_set *power_domain_set)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	unsigned long panel_transcoder_mask =3D BIT(TRANSCODER_EDP);
> +	u8 panel_transcoder_mask =3D hsw_panel_transcoders(dev_priv);
>  	unsigned long enabled_panel_transcoders =3D 0;
>  	enum transcoder panel_transcoder;
>  	u32 tmp;
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 11)
> -		panel_transcoder_mask |=3D
> -			BIT(TRANSCODER_DSI_0) | BIT(TRANSCODER_DSI_1);
> -
>  	/*
>  	 * The pipe->transcoder mapping is fixed with the exception of the eDP
>  	 * and DSI transcoders handled below.

--=20
Jani Nikula, Intel Open Source Graphics Center
