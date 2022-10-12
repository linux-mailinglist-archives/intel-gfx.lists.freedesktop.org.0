Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 46B7E5FC79C
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 16:42:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FF5510E32F;
	Wed, 12 Oct 2022 14:42:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F49910E2F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 14:42:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665585767; x=1697121767;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=G7JZvB6dvIRQSwncAxorpD0z1wMGc8/6O4kvFvbXDaA=;
 b=foBYmxpZLpwOW/eTAfZ92MkgyH7mVj5vzZtjt9bJSa7rAZnQZwzblkSS
 NQbTcaepMVvmKZRPJkWhNrehpS0D4cvYwrqPPYl4rwXcdjRC0ZskEgm/u
 uqLfiyK/lLpFo/NvNwpDxkCFJnCGPVminQ+JLBDaoxXzpgNjKTbb6p1nm
 AdoLUrZSfTSPpi5xcSaJ3dYLgH64Tt29jGW/GhQVpMGTSr+BUg95lj5Xu
 JiyTFUqPyDqcNLD++0zplE/umNz9FWpv4fVEqzlpUcBp/IKis8BmIHBdl
 edh3lSYkD9CerIvM9ifWIwpLKOUs4yMnhzANHRfEQKkXwWjtiaPCpsIM1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="304797770"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="304797770"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:42:45 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="629130969"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="629130969"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 07:42:43 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-12-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-12-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 17:42:46 +0300
Message-ID: <87fsftumqh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 11/22] drm/i915/audio: Use u32* for ELD
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
> Make the eld pointer u32* so we don't have to do super
> ugly casting in the code itself.
>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 21 +++++++++------------
>  1 file changed, 9 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index d2f9c4c29061..9f64f52f895f 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -332,7 +332,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
> -	const u8 *eld =3D connector->eld;
> +	const u32 *eld =3D (const u32 *)connector->eld;
>  	int eld_buffer_size, len, i;
>  	u32 tmp;
>=20=20
> @@ -341,11 +341,10 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	intel_de_write(i915, G4X_AUD_CNTL_ST, tmp);
>=20=20
>  	eld_buffer_size =3D g4x_eld_buffer_size(i915);
> -	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
> -		intel_de_write(i915, G4X_HDMIW_HDMIEDID,
> -			       *((const u32 *)eld + i));
> +		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
>  	for (; i < eld_buffer_size; i++)
>  		intel_de_write(i915, G4X_HDMIW_HDMIEDID, 0);
>=20=20
> @@ -612,7 +611,7 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	const u8 *eld =3D connector->eld;
> +	const u32 *eld =3D (const u32 *)connector->eld;
>  	int eld_buffer_size, len, i;
>  	u32 tmp;
>=20=20
> @@ -641,11 +640,10 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	intel_de_write(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder), tmp);
>=20=20
>  	eld_buffer_size =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> -	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
> -		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder),
> -			       *((const u32 *)eld + i));
> +		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), eld[i]);
>  	for (; i < eld_buffer_size; i++)
>  		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), 0);
>=20=20
> @@ -746,9 +744,9 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
> +	const u32 *eld =3D (const u32 *)connector->eld;
>  	enum pipe pipe =3D crtc->pipe;
>  	enum port port =3D encoder->port;
> -	const u8 *eld =3D connector->eld;
>  	int eld_buffer_size, len, i;
>  	struct ilk_audio_regs regs;
>  	u32 tmp;
> @@ -778,11 +776,10 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	intel_de_write(i915, regs.aud_cntl_st, tmp);
>=20=20
>  	eld_buffer_size =3D ilk_eld_buffer_size(i915, pipe);
> -	len =3D min(drm_eld_size(eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
> -		intel_de_write(i915, regs.hdmiw_hdmiedid,
> -			       *((const u32 *)eld + i));
> +		intel_de_write(i915, regs.hdmiw_hdmiedid, eld[i]);
>  	for (; i < eld_buffer_size; i++)
>  		intel_de_write(i915, regs.hdmiw_hdmiedid, 0);

--=20
Jani Nikula, Intel Open Source Graphics Center
