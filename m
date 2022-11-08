Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40EEB621922
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Nov 2022 17:11:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D43310E4BA;
	Tue,  8 Nov 2022 16:11:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F291F10E4B9
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Nov 2022 16:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667923879; x=1699459879;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=F8uKZE2gwOq3LUPeFcOSXw7l5GlAvAuZX6cJqDokA5U=;
 b=LsCVHrBCmvmE/BDSXO+RyTUBFKZrUlud1P5kMtu3CLNZTdFfvhmCFH5B
 GK+BKMTIB5JG2wP89/l5ihYTrXk3BzqJimn5LzOsCJAzbQ85zDAM6mJzX
 j5afbXeGa6p5x7asYX5VQBFQ8Avt2mfrZcgZCH0HxB09Rsxk8CvwCFe6E
 xvL7Z2+FfS+rBqGWG+vaAfn53UrKv60co8BR0nVM2cmn45njxBGcsVXgf
 +AJYBWkFMsQSRpWJD+Q/nfexl8JJKXJokABORIHCV+pzWU4TFxIvvD2qI
 80+mVDCFx1boy++GSrXTW4XZ7bWya00Lxs+XeQmkZVbIe+GyBz8byCP/V A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="290453385"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="290453385"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 08:11:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10525"; a="699977228"
X-IronPort-AV: E=Sophos;i="5.96,148,1665471600"; d="scan'208";a="699977228"
Received: from smoriord-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.16.110])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2022 08:11:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221108151839.31567-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221108151839.31567-1-ville.syrjala@linux.intel.com>
 <20221108151839.31567-4-ville.syrjala@linux.intel.com>
Date: Tue, 08 Nov 2022 18:11:07 +0200
Message-ID: <87bkph8m04.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 03/15] drm/i915/audio: Unify
 get_saved_enc()
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
> Make the two branches of get_saved_enc() look alike. Currently
> they look different even though they do exactly the same thing
> apart from =3D=3D vs. !=3D for the MST comparison.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 16 +++++++---------
>  1 file changed, 7 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 0a53731a9272..0ac28d28098f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -1069,10 +1069,10 @@ static int i915_audio_component_get_cdclk_freq(st=
ruct device *kdev)
>  static struct intel_encoder *get_saved_enc(struct drm_i915_private *i915,
>  					   int port, int pipe)
>  {
> -	struct intel_encoder *encoder;
> -
>  	/* MST */
>  	if (pipe >=3D 0) {
> +		struct intel_encoder *encoder;
> +
>  		if (drm_WARN_ON(&i915->drm,
>  				pipe >=3D ARRAY_SIZE(i915->display.audio.encoder_map)))
>  			return NULL;
> @@ -1083,7 +1083,7 @@ static struct intel_encoder *get_saved_enc(struct d=
rm_i915_private *i915,
>  		 * MST or not. So it will poll all the port & pipe
>  		 * combinations
>  		 */
> -		if (encoder !=3D NULL && encoder->port =3D=3D port &&
> +		if (encoder && encoder->port =3D=3D port &&
>  		    encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
>  			return encoder;
>  	}
> @@ -1093,14 +1093,12 @@ static struct intel_encoder *get_saved_enc(struct=
 drm_i915_private *i915,
>  		return NULL;
>=20=20
>  	for_each_pipe(i915, pipe) {
> +		struct intel_encoder *encoder;
> +
>  		encoder =3D i915->display.audio.encoder_map[pipe];
> -		if (encoder =3D=3D NULL)
> -			continue;
>=20=20
> -		if (encoder->type =3D=3D INTEL_OUTPUT_DP_MST)
> -			continue;
> -
> -		if (port =3D=3D encoder->port)
> +		if (encoder && encoder->port =3D=3D port &&
> +		    encoder->type !=3D INTEL_OUTPUT_DP_MST)
>  			return encoder;
>  	}

--=20
Jani Nikula, Intel Open Source Graphics Center
