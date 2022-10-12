Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D2F5FC760
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CF0510E280;
	Wed, 12 Oct 2022 14:28:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D618910E2D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:28:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665584908; x=1697120908;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gcpaufGQUQsQ/527bUWT9IWpZEISIye+CCfaYZiLMGY=;
 b=EUe8Rj0rK8TeN22Z9ThiJyc6+VoZUinBKc+GZvo0NTH0VRAol4AuTSXw
 mfz7F63BkTbpZeBG4bgxQla8G2whYh+7b+c5H8Dm5384UPz9KlE2PfiA7
 PEWKipvKRnXvHKJwbNfdOCLHOFEb4RtjhwSGXTvKl3Fk/Wr8WiZs1SG+L
 JxDGIn+hYUsr2b0GZML5OvKuJhHdfv9+ot7Zh1/FLVW9GUN1FGh0N3FaX
 0QbdmYwDJpn3afuYTxncvzIpZv7v2cplsjHT9WdhPzTCWdBJeHht2pzDL
 MzWDvrCY4nJ98xu1uzXsKIEjXx9s9pVLWkI5TTjAjoy2om66RqsYPHs/e A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="368974186"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="368974186"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:28:26 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="621797037"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="621797037"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:28:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-11-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-11-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:28:27 +0300
Message-ID: <87czaxw1ys.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/22] drm/i915/audio: Make sure we write
 the whole ELD buffer
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
> Currently we only write as many dwords into the hardware
> ELD buffers as drm_eld_size() tells us. That could mean the
> remainder of the hardware buffer is left with whatever
> stale garbage it had before, which doesn't seem entirely
> great. Let's zero out the remainder of the buffer in case
> the provided ELD doesn't fill it fully.
>
> We can also sanity check out idea of the hardware ELD buffer's
> size by making sure the address wrapped back to zero once
> we wrote the entire buffer.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 34 ++++++++++++++++------
>  1 file changed, 25 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index abca5f23673a..d2f9c4c29061 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -333,19 +333,24 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u8 *eld =3D connector->eld;
> +	int eld_buffer_size, len, i;
>  	u32 tmp;
> -	int len, i;
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp &=3D ~(G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK);
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
> -	len =3D g4x_eld_buffer_size(i915);
> -	len =3D min(drm_eld_size(eld) / 4, len);
> +	eld_buffer_size =3D g4x_eld_buffer_size(i915);
> +	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
>  			       *((const u32 *)eld + i));
> +	for (; i < eld_buffer_size; i++)
> +		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);

I think I'd personally write this along the lines of:

	eld_buffer_size =3D g4x_eld_buffer_size(i915);
	len =3D drm_eld_size(eld) / 4;

	for (i =3D 0; i < eld_buffer_size; i++) {
		u32 val =3D i < len ? *((const u32 *)eld + i)) : 0;
		intel_de_write(i915, G4X_HDMIW_HDMIEDID, val);
	}

Get rid of two loops, the loop variable "leaking" from one to the next,
the min() around len calculation, and multiple reg writes. Seems cleaner
to me.

Anyway, the patch does what it says on the box,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> +
> +	drm_WARN_ON(&i915->drm,
> +		    (intel_de_read(i915, G4X_AUD_CNTL_ST) & G4X_ELD_ADDRESS_MASK) !=3D=
 0);
>=20=20
>  	tmp =3D intel_de_read(i915, G4X_AUD_CNTL_ST);
>  	tmp |=3D G4X_ELD_VALID;
> @@ -608,8 +613,8 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  	struct drm_connector *connector =3D conn_state->connector;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const u8 *eld =3D connector->eld;
> +	int eld_buffer_size, len, i;
>  	u32 tmp;
> -	int len, i;
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
>=20=20
> @@ -635,12 +640,18 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
>  	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
>=20=20
> -	len =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> -	len =3D min(drm_eld_size(eld) / 4, len);
> +	eld_buffer_size =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> +	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
>  			       *((const u32 *)eld + i));
> +	for (; i < eld_buffer_size; i++)
> +		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), 0);
> +
> +	drm_WARN_ON(&i915->drm,
> +		    (intel_de_read(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder)) &
> +		     IBX_ELD_ADDRESS_MASK) !=3D 0);
>=20=20
>  	/* ELD valid */
>  	tmp =3D intel_de_read(i915, HSW_AUD_PIN_ELD_CP_VLD);
> @@ -738,8 +749,8 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
>  	const u8 *eld =3D connector->eld;
> +	int eld_buffer_size, len, i;
>  	struct ilk_audio_regs regs;
> -	int len, i;
>  	u32 tmp;
>=20=20
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
> @@ -766,12 +777,17 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	tmp &=3D ~IBX_ELD_ADDRESS_MASK;
>  	intel_de_write(i915, regs.aud_cntl_st, tmp);
>=20=20
> -	len =3D ilk_eld_buffer_size(i915, pipe);
> -	len =3D min(drm_eld_size(eld) / 4, len);
> +	eld_buffer_size =3D ilk_eld_buffer_size(i915, pipe);
> +	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, regs.hdmiw_hdmiedid,
>  			       *((const u32 *)eld + i));
> +	for (; i < eld_buffer_size; i++)
> +		intel_de_write(i915, regs.hdmiw_hdmiedid, 0);
> +
> +	drm_WARN_ON(&i915->drm,
> +		    (intel_de_read(i915, regs.aud_cntl_st) & IBX_ELD_ADDRESS_MASK) !=
=3D 0);
>=20=20
>  	/* ELD valid */
>  	tmp =3D intel_de_read(i915, regs.aud_cntrl_st2);

--=20
Jani Nikula, Intel Open Source Graphics Center
