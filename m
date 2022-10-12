Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 521D35FC855
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8416A10E569;
	Wed, 12 Oct 2022 15:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C3310E54E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665588130; x=1697124130;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=eMiYLKC86agXu2SjqWb/sPgQSIOXIQorhLWj6/U3Lds=;
 b=Bxutry4TmypQubfydotUbwko6l5zoCfuXf7IHG7/Q7cLD5vj1ajrY2GM
 1kfaHVQ2T72GSvkRF6AzDcYqfy2PGGdb4zJehXEsJbIcTAhdZOEYkr9mK
 Aa9JYovrJM4daUn+NRldrLQYAPf3ygEpTG6SxHGdO0TUxTj9On9AgHCWI
 33IioymGr7p8pltC6TMZzpejYDSmj9MM2JtbSczGnOySqDhci7TrCRhqr
 0Mqs2mBBMWRMcRwcHGn6cJjh0B4Mr4HJ7M8Bvk0qo3MkVLSZ6YB+Vwy89
 uWFgxY7t6kSpUtZJ5nNyRqaMVKFuA3W0SHTMod3ly0EGpZY4e1z5smm79 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303559770"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="303559770"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:22:10 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="629145842"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="629145842"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:22:08 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-20-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-20-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:22:11 +0300
Message-ID: <87pmext6cc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 19/22] drm/i915/sdvo: Do ELD hardware readout
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
> Read out the ELD from the hw so the state checker can verify it.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index d9a54ed4623a..b2884fdc2b1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -1185,6 +1185,21 @@ static void intel_sdvo_get_avi_infoframe(struct in=
tel_sdvo *intel_sdvo,
>  			      frame->any.type, HDMI_INFOFRAME_TYPE_AVI);
>  }
>=20=20
> +static void intel_sdvo_get_eld(struct intel_sdvo *intel_sdvo,
> +			       struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(intel_sdvo->base.base.dev);
> +	ssize_t len;
> +
> +	if (!crtc_state->has_audio)
> +		return;
> +
> +	len =3D intel_sdvo_read_infoframe(intel_sdvo, SDVO_HBUF_INDEX_ELD,
> +					crtc_state->eld, sizeof(crtc_state->eld));
> +	if (len < 0)
> +		drm_dbg_kms(&i915->drm, "failed to read ELD\n");
> +}
> +
>  static bool intel_sdvo_set_tv_format(struct intel_sdvo *intel_sdvo,
>  				     const struct drm_connector_state *conn_state)
>  {
> @@ -1744,6 +1759,8 @@ static void intel_sdvo_get_config(struct intel_enco=
der *encoder,
>  	}
>=20=20
>  	intel_sdvo_get_avi_infoframe(intel_sdvo, pipe_config);
> +
> +	intel_sdvo_get_eld(intel_sdvo, pipe_config);
>  }
>=20=20
>  static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)

--=20
Jani Nikula, Intel Open Source Graphics Center
