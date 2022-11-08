Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 132A5621927
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 17:11:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7B510E4B7;
	Tue,  8 Nov 2022 16:11:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD4D510E4BE
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 16:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667923894; x=1699459894;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=3DwalHr6zm6+otVF9FsVeG5oL28F3q87mlOJZCQ95Mw=;
 b=gKE5w9yVFcn5S4PGq7T0crB0cRWQB13LXIx1GRkHGI2kvfvMWc0sTQzE
 1dEowjEynhMKWoowWJ+iKWYHkfe0DcB+idp8Lo75LKUnJZxlRkx2fv51p
 MGfx7bdypUCDGyrRiAzYrXEUMWd4Wbq7LhE3LGv7hNMsZrOePVqoI099x
 ErI4qI2Zu4d5JIoWRZzAvFOzNOxOqLlAN4otoEeYg6Q+hOk5WJESYFgBX
 2ZGvtJF+mzkmjO2QhZejlsagTDDmPDB+JbMrV9blr1TMuiY5YAvR4TWPZ
 bLlQnIV/12loovw9NXuVNVGoBaz+Xsn8gZHG9k/EW1a8aDrwWoaYQ2GD7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="291122099"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="291122099"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 08:11:32 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="636388535"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="636388535"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 08:11:30 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221108151839.31567-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
 <20221108151839.31567-5-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 18:11:27 +0200
Message-ID: <878rkl8lzk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 04/15] drm/i915/audio: Realign some
 function arguments
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

On Tue, 08 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Fix up some function argument alignment fails.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 0ac28d28098f..6b0c2b0522fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -778,8 +778,8 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>=20=20
>  	if (i915->display.funcs.audio)
>  		i915->display.funcs.audio->audio_codec_enable(encoder,
> -								  crtc_state,
> -								  conn_state);
> +							      crtc_state,
> +							      conn_state);
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
>  	encoder->audio_connector =3D connector;
> @@ -794,7 +794,7 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>  		if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
>  			pipe =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
> -						 (int) port, (int) pipe);
> +						      (int)port, (int)pipe);
>  	}
>=20=20
>  	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
> @@ -831,8 +831,8 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
>=20=20
>  	if (i915->display.funcs.audio)
>  		i915->display.funcs.audio->audio_codec_disable(encoder,
> -								   old_crtc_state,
> -								   old_conn_state);
> +							       old_crtc_state,
> +							       old_conn_state);
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
>  	encoder->audio_connector =3D NULL;
> @@ -845,7 +845,7 @@ void intel_audio_codec_disable(struct intel_encoder *=
encoder,
>  		if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
>  			pipe =3D -1;
>  		acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
> -						 (int) port, (int) pipe);
> +						      (int)port, (int)pipe);
>  	}
>=20=20
>  	intel_lpe_audio_notify(i915, pipe, port, NULL, 0, false);

--=20
Jani Nikula, Intel Open Source Graphics Center
