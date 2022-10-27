Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B8C60FAA0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:42:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6140C10E658;
	Thu, 27 Oct 2022 14:42:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6260C10E658
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881742; x=1698417742;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=H7wKasBywo2ra+T4mbSM1oS5d6ekAl8KjdfY1y+kAIo=;
 b=GUL9U6tWY461oDJP34DBkuGwK58fqiv9PNYljOuaqBXUwV2Ara0ItwLE
 /pOgwDoSPtgqC+r/HQtuXiyTIlcCjJjFK+Udq09sx1/UQJSMNG24bybHc
 95r2C1Wo3ooPjZbbTezIIyPe9azPvK+1A7VG7At7N4F6gDAwyYcqNZQp+
 HFEYUPbrDFl1DJZr36GIdzdg1QfUge9LYqJV/ptvdDtYJJ9nhAy8iUG9t
 ahdTOUmAcS6BGoUZGo11LVPHPszfocdT+SdR/Ma9xviO/mDC1y2rc7cXJ
 kzE4f2cALctLkCOXmFLAe7XyUsxiKFYF6UROt1vDkS2YAFTHbvRpG47BY Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="291542945"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="291542945"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:42:21 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="807475924"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="807475924"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.147])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:42:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221026101134.20865-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
 <20221026101134.20865-6-ville.syrjala@linux.intel.com>
Date: Thu, 27 Oct 2022 17:42:15 +0300
Message-ID: <87h6zpcoqg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/sdvo: Don't add DDC modes for
 LVDS
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

On Wed, 26 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Stop enumerating the DDC modes for SDVO LVDS outputs (outside
> the initial fixed mode setup). intel_panel_mode_valid() will
> just reject most of them anyway, and any left over are entirely
> pointless as they'll match the fixed mode hdisp+vdisp+vrefresh
> so no user visible effect from using them instead of the fixed
> mode.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d432f70001b7..d7943f9a96e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2290,17 +2290,12 @@ static int intel_sdvo_get_tv_modes(struct drm_con=
nector *connector)
>=20=20
>  static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
>  {
> -	struct intel_sdvo *intel_sdvo =3D intel_attached_sdvo(to_intel_connecto=
r(connector));
>  	struct drm_i915_private *dev_priv =3D to_i915(connector->dev);
> -	int num_modes =3D 0;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
>  		    connector->base.id, connector->name);
>=20=20
> -	num_modes +=3D intel_panel_get_modes(to_intel_connector(connector));
> -	num_modes +=3D intel_ddc_get_modes(connector, &intel_sdvo->ddc);
> -
> -	return num_modes;
> +	return intel_panel_get_modes(to_intel_connector(connector));
>  }
>=20=20
>  static int intel_sdvo_get_modes(struct drm_connector *connector)

--=20
Jani Nikula, Intel Open Source Graphics Center
