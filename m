Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9F35FC7FE
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F38FD10E519;
	Wed, 12 Oct 2022 15:11:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B42FE10E519
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665587479; x=1697123479;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=s1oxrbxUE5F+6pBg0MQapAxmALJCUnKaib2rvQykdQs=;
 b=doCQavt+jhhEUHNhnOCXO2T1bB1nzLNZNnJRyUWZcqZ/ZEJkdFwUnLIt
 w/mZR5GGQiGRP70M8/QV0Ie0ZHX5uZVa0Bcka8QjD0RDHv9SC17/z8G01
 AgNnc8jXtMUqSYDTOURhWq1FCWNtDzy7A04v0SJgBIo8x+O1AT3IBfdvN
 s3fvyVgwst3eqt4bOHQ5EipnDklTMEg/pnDILjiWxN4/Ssqvr+JJ+tWeI
 t78vQVXiV81GlVTY2PnOf/GrTZ/JMkCOAgBPSlf0fFb5jiip4CwNCP2B8
 MVRmInDyox2eXaD5BDaXtVEJIDCVIv3ASiSxUPB09zB92M0SchKnh2jPQ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="305877130"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="305877130"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:11:18 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="604587695"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="604587695"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:11:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-16-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-16-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:11:20 +0300
Message-ID: <871qrdulev.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 15/22] drm/i915/audio: Precompute the ELD
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
> Stash the ELD into the crtc_state and precompute it. This gets
> rid of the ugly ELD mutation during intel_audio_codec_enable(),
> and opens the door for the state checker.

Should note the functional change of disabling audio up front if ELD is
bogus.

>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I observe that I'm confused by DP MST audio and how it ties into this.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_audio.c    | 53 +++++++++++--------
>  drivers/gpu/drm/i915/display/intel_audio.h    |  5 ++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +-
>  5 files changed, 45 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 4eb5589a0f89..39291e870635 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -334,8 +334,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_connector *connector =3D conn_state->connector;
> -	const u32 *eld =3D (const u32 *)connector->eld;
> +	const u32 *eld =3D (const u32 *)crtc_state->eld;
>  	int eld_buffer_size, len, i;
>=20=20
>  	intel_crtc_wait_for_next_vblank(crtc);
> @@ -344,7 +343,7 @@ static void g4x_audio_codec_enable(struct intel_encod=
er *encoder,
>  		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D g4x_eld_buffer_size(i915);
> -	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, G4X_HDMIW_HDMIEDID, eld[i]);
> @@ -616,9 +615,8 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_connector *connector =3D conn_state->connector;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> -	const u32 *eld =3D (const u32 *)connector->eld;
> +	const u32 *eld =3D (const u32 *)crtc_state->eld;
>  	int eld_buffer_size, len, i;
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
> @@ -642,7 +640,7 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  		     IBX_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D hsw_eld_buffer_size(i915, cpu_transcoder);
> -	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, HSW_AUD_EDID_DATA(cpu_transcoder), eld[i]);
> @@ -744,8 +742,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_connector *connector =3D conn_state->connector;
> -	const u32 *eld =3D (const u32 *)connector->eld;
> +	const u32 *eld =3D (const u32 *)crtc_state->eld;
>  	enum port port =3D encoder->port;
>  	enum pipe pipe =3D crtc->pipe;
>  	int eld_buffer_size, len, i;
> @@ -769,7 +766,7 @@ static void ilk_audio_codec_enable(struct intel_encod=
er *encoder,
>  		     IBX_ELD_ADDRESS_MASK, 0);
>=20=20
>  	eld_buffer_size =3D ilk_eld_buffer_size(i915, pipe);
> -	len =3D min(drm_eld_size(connector->eld) / 4, eld_buffer_size);
> +	len =3D min(drm_eld_size(crtc_state->eld) / 4, eld_buffer_size);
>=20=20
>  	for (i =3D 0; i < len; i++)
>  		intel_de_write(i915, regs.hdmiw_hdmiedid, eld[i]);
> @@ -795,6 +792,30 @@ static void ilk_audio_codec_enable(struct intel_enco=
der *encoder,
>  	mutex_unlock(&i915->display.audio.mutex);
>  }
>=20=20
> +bool intel_audio_compute_config(struct intel_encoder *encoder,
> +				struct intel_crtc_state *crtc_state,
> +				struct drm_connector_state *conn_state)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct drm_connector *connector =3D conn_state->connector;
> +	const struct drm_display_mode *adjusted_mode =3D
> +		&crtc_state->hw.adjusted_mode;
> +
> +	if (!connector->eld[0]) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
> +			    connector->base.id, connector->name);
> +		return false;
> +	}
> +
> +	BUILD_BUG_ON(sizeof(crtc_state->eld) !=3D sizeof(connector->eld));
> +	memcpy(crtc_state->eld, connector->eld, sizeof(crtc_state->eld));
> +
> +	crtc_state->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
> +
> +	return true;
> +}
> +
>  /**
>   * intel_audio_codec_enable - Enable the audio codec for HD audio
>   * @encoder: encoder on which to enable audio
> @@ -812,8 +833,6 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>  	struct i915_audio_component *acomp =3D i915->display.audio.component;
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
> -	const struct drm_display_mode *adjusted_mode =3D
> -		&crtc_state->hw.adjusted_mode;
>  	enum port port =3D encoder->port;
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> @@ -823,15 +842,7 @@ void intel_audio_codec_enable(struct intel_encoder *=
encoder,
>  	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio =
codec on pipe %c, %u bytes ELD\n",
>  		    connector->base.id, connector->name,
>  		    encoder->base.base.id, encoder->base.name,
> -		    pipe_name(pipe), drm_eld_size(connector->eld));
> -
> -	/* FIXME precompute the ELD in .compute_config() */
> -	if (!connector->eld[0])
> -		drm_dbg_kms(&i915->drm,
> -			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
> -			    connector->base.id, connector->name);
> -
> -	connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
> +		    pipe_name(pipe), drm_eld_size(crtc_state->eld));
>=20=20
>  	if (i915->display.funcs.audio)
>  		i915->display.funcs.audio->audio_codec_enable(encoder,
> @@ -854,7 +865,7 @@ void intel_audio_codec_enable(struct intel_encoder *e=
ncoder,
>  						 (int) port, (int) pipe);
>  	}
>=20=20
> -	intel_lpe_audio_notify(i915, pipe, port, connector->eld,
> +	intel_lpe_audio_notify(i915, pipe, port, crtc_state->eld,
>  			       crtc_state->port_clock,
>  			       intel_crtc_has_dp_encoder(crtc_state));
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.h b/drivers/gpu/drm=
/i915/display/intel_audio.h
> index 63b22131dc45..b9070f336bcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -6,12 +6,17 @@
>  #ifndef __INTEL_AUDIO_H__
>  #define __INTEL_AUDIO_H__
>=20=20
> +#include <linux/types.h>
> +
>  struct drm_connector_state;
>  struct drm_i915_private;
>  struct intel_crtc_state;
>  struct intel_encoder;
>=20=20
>  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> +bool intel_audio_compute_config(struct intel_encoder *encoder,
> +				struct intel_crtc_state *crtc_state,
> +				struct drm_connector_state *conn_state);
>  void intel_audio_codec_enable(struct intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index e2b853e9e51d..f378bcaf0f65 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1248,6 +1248,8 @@ struct intel_crtc_state {
>  		struct drm_dp_vsc_sdp vsc;
>  	} infoframes;
>=20=20
> +	u8 eld[MAX_ELD_BYTES];
> +
>  	/* HDMI scrambling status */
>  	bool hdmi_scrambling;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index a060903891b2..d6c88f14d31d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2023,7 +2023,9 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (HAS_PCH_SPLIT(dev_priv) && !HAS_DDI(dev_priv) && encoder->port !=3D=
 PORT_A)
>  		pipe_config->has_pch_encoder =3D true;
>=20=20
> -	pipe_config->has_audio =3D intel_dp_has_audio(encoder, pipe_config, con=
n_state);
> +	pipe_config->has_audio =3D
> +		intel_dp_has_audio(encoder, pipe_config, conn_state) &&
> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
>=20=20
>  	fixed_mode =3D intel_panel_fixed_mode(connector, adjusted_mode);
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/=
i915/display/intel_hdmi.c
> index 93519fb23d9d..d10998801228 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -43,6 +43,7 @@
>  #include "i915_debugfs.h"
>  #include "i915_drv.h"
>  #include "intel_atomic.h"
> +#include "intel_audio.h"
>  #include "intel_connector.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
> @@ -2261,7 +2262,8 @@ int intel_hdmi_compute_config(struct intel_encoder =
*encoder,
>  		pipe_config->has_pch_encoder =3D true;
>=20=20
>  	pipe_config->has_audio =3D
> -		intel_hdmi_has_audio(encoder, pipe_config, conn_state);
> +		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
> +		intel_audio_compute_config(encoder, pipe_config, conn_state);
>=20=20
>  	/*
>  	 * Try to respect downstream TMDS clock limits first, if

--=20
Jani Nikula, Intel Open Source Graphics Center
