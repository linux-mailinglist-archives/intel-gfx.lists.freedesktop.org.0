Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A43F5FC7E1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:01:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 715EB10E52A;
	Wed, 12 Oct 2022 15:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5A110E525
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665586863; x=1697122863;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=wLSnsTpTu6C45PCf1kr6ZFCRjduF78ezVWOtEgbcQ/M=;
 b=maTdrYszFWFIh5b948mJOhVyfmyLUOpvUaWPh4iEM8HWBAH6sPJmIzJ2
 GcHOHKY2Ndtnb/7eR6aZgAY1asTdWPK2HD0HE06yFzfmHGwg1bn0Tjn2H
 BdiCOVVDKyL4Ytus2dPSQcsTocE5Gyf/9EiRBINgeT+olWnn+Swedy/K1
 6Ag6WRQGHtc2q2c4pVWb5EB2XlhgDBlYCysnAhSBE1QIOkzUGucwrwXC4
 2jdvYLoUwVvv6P9yv855Sm02p8lPnxp/b45vuhFRtApJZMojzguUMVg+i
 PSjVwsG++UHZqEJcj89LyFwHNAqfrqgFVzfr1TdoQcBBZq8/WTDGuJwYR A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="302427523"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="302427523"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:01:02 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="695501788"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="695501788"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:01:01 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-14-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-14-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:01:04 +0300
Message-ID: <877d15ulvz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 13/22] drm/i915/audio: Split "ELD valid" vs.
 audio PD on hsw+
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
> On the older platforms the audio presence detect bit is in
> the port register, so it gets written outside audio codec hooks
> and is this separate from the ELD valid toggling. Split the
> operations into two steps on hsw+ to be more consistent with
> both the other platforms and the spec. Also according to the
> spec we might need some vblank waits between the two which
> definitely needs them done separately.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 1b928d283b8d..0a1ba10fc20d 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -479,9 +479,12 @@ static void hsw_audio_codec_disable(struct intel_enc=
oder *encoder,
>  		     intel_crtc_has_dp_encoder(old_crtc_state) ?
>  		     AUD_CONFIG_N_VALUE_INDEX : 0);
>=20=20
> -	/* Disable audio presence detect, invalidate ELD */
> +	/* Invalidate ELD */
> +	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +		     AUDIO_ELD_VALID(cpu_transcoder), 0);
> +
> +	/* Disable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> -		     AUDIO_ELD_VALID(cpu_transcoder) |
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
>=20=20
>  	mutex_unlock(&i915->display.audio.mutex);
> @@ -612,10 +615,13 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP))
>  		enable_audio_dsc_wa(encoder, crtc_state);
>=20=20
> -	/* Enable audio presence detect, invalidate ELD */
> +	/* Enable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> -		     AUDIO_ELD_VALID(cpu_transcoder),
> -		     AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> +		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
> +
> +	/* Invalidate ELD */
> +	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
> +		     AUDIO_ELD_VALID(cpu_transcoder), 0);
>=20=20
>  	/*
>  	 * FIXME: We're supposed to wait for vblank here, but we have vblanks

--=20
Jani Nikula, Intel Open Source Graphics Center
