Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BF95FC81D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:16:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DDA10E548;
	Wed, 12 Oct 2022 15:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7305410E548
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587795; x=1697123795;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=XOKvgo/L+mxMLBvMm4e7oJaSAFQNvyPZWs8+JWgozDM=;
 b=bfcyP/f8FexETk3/UHQ0HHZd3RcL7p+CWqXwFEXeEwSoPZ/otmadB3Nn
 x133dkaBlVUXtLiC/zICH6w3VZAnWNoX4oijVA7oWYbKs6+xJRGcpRMFW
 eVJAm5V9aUGvEURSl/mWPVXsFyset+xgKtfpxUzk7rWnPhR93SU2bvlbU
 7YvvGAH4dFY+qweSAuzN8rpzPdN4VMUIJS+jlvgBsHy8mAeWsKFbFiwCi
 tUQeOlFY4bhB58IdoWSFAokxH4kt0N57YKZn35w1V89mH0bfWTh0uGyzN
 wkwIBTofbNyVxxUtYOTyg/wc8k9Lo7eVbVWqUDKzVzcuHC7rQZd+HXOlI w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="305878651"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="305878651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:16:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="689708726"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="689708726"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:16:33 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-19-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-19-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:16:36 +0300
Message-ID: <87v8opt6ln.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 18/22] drm/i915/sdvo: Precompute the ELD
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
Cc: Takashi Iwai <tiwai@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 11 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Use the precomputed crtc_state->eld for audio setup on SDVO
> just like we do with native HDMI.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 12 +++++-------
>  1 file changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 8852564b5fbf..d9a54ed4623a 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -38,6 +38,7 @@
>=20=20
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
> +#include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
> @@ -1377,7 +1378,9 @@ static int intel_sdvo_compute_config(struct intel_e=
ncoder *encoder,
>=20=20
>  	pipe_config->has_hdmi_sink =3D intel_has_hdmi_sink(intel_sdvo, conn_sta=
te);
>=20=20
> -	pipe_config->has_audio =3D intel_sdvo_has_audio(encoder, pipe_config, c=
onn_state);
> +	pipe_config->has_audio =3D
> +		intel_sdvo_has_audio(encoder, pipe_config, conn_state) &&
> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
>=20=20
>  	pipe_config->limited_color_range =3D
>  		intel_sdvo_limited_color_range(encoder, pipe_config,
> @@ -1752,12 +1755,7 @@ static void intel_sdvo_enable_audio(struct intel_s=
dvo *intel_sdvo,
>  				    const struct intel_crtc_state *crtc_state,
>  				    const struct drm_connector_state *conn_state)
>  {
> -	const struct drm_display_mode *adjusted_mode =3D
> -		&crtc_state->hw.adjusted_mode;
> -	struct drm_connector *connector =3D conn_state->connector;
> -	u8 *eld =3D connector->eld;
> -
> -	eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
> +	const u8 *eld =3D crtc_state->eld;
>=20=20
>  	intel_sdvo_set_audio_state(intel_sdvo, 0);

--=20
Jani Nikula, Intel Open Source Graphics Center
