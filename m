Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9085FC7E9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 17:02:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A467510E51F;
	Wed, 12 Oct 2022 15:02:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9C4010E51F
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 15:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665586929; x=1697122929;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=PaiIiZIFp1m3kvHHHe8DlaVaeokjDSvsDyYVBjO6kW8=;
 b=hp33F9EvtXwbCGSyytVPvla7fn1lP73PRYDBdrzI0hcLX4FUOg0aj1GR
 6Kr4kocJmmxdaFRRdDJhcBxX//k6jWz2W/o4GLFgJgT8B7ej88PTLRA16
 0ZVKfqj5wh6g3TSGVHR3ejORoa9UfITguYzvSTEt3znzVoSr/8LFj7mAa
 1OASkYDGHfzy56HCaMBFJyezP+DjgP9OZs7KJ9RSIMiDpoQcrI5L5Z1w3
 uy9WpMJZiu3arwAhkh0fjq0W3BTw/KVY+hZqZ4o/yKvlItAvyMsmsuzw6
 hXwQmWfURM70puzmcU98hGyJB3pk04WdRcKEqHeUQbU7A5xREWwyvqbL9 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="366814996"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="366814996"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:02:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="752154824"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="752154824"
Received: from jhpuonti-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.226])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 08:01:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221011170011.17198-15-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221011170011.17198-1-ville.syrjala@linux.intel.com>
 <20221011170011.17198-15-ville.syrjala@linux.intel.com>
Date: Wed, 12 Oct 2022 18:01:55 +0300
Message-ID: <874jw9uluk.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 14/22] drm/i915/audio: Do the vblank waits
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
> The spec tells us to do a bunch of vblank waits in the audio
> enable/disable sequences. Make it so.
>
> The FIXMEs are nonsense since we do the audio disable very
> early and enable very late, so vblank interrupts are in fact
> enabled when we do this.
>
> TODO not sure we actually want these since we don't even rely
> on the hw ELD buffer, and these might be there just to give
> the audio side a bit of time to respond to the unsol events.
> OTOH they might be really needed for some other reason.

*shrug*

Acked-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> Cc: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 31 +++++++++++++---------
>  1 file changed, 18 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm=
/i915/display/intel_audio.c
> index 0a1ba10fc20d..4eb5589a0f89 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -318,10 +318,14 @@ static void g4x_audio_codec_disable(struct intel_en=
coder *encoder,
>  				    const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>=20=20
>  	/* Invalidate ELD */
>  	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
>  		     G4X_ELD_VALID, 0);
> +
> +	intel_crtc_wait_for_next_vblank(crtc);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  }
>=20=20
>  static void g4x_audio_codec_enable(struct intel_encoder *encoder,
> @@ -329,10 +333,13 @@ static void g4x_audio_codec_enable(struct intel_enc=
oder *encoder,
>  				   const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	const u32 *eld =3D (const u32 *)connector->eld;
>  	int eld_buffer_size, len, i;
>=20=20
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
>  	intel_de_rmw(i915, G4X_AUD_CNTL_ST,
>  		     G4X_ELD_VALID | G4X_ELD_ADDRESS_MASK, 0);
>=20=20
> @@ -466,6 +473,7 @@ static void hsw_audio_codec_disable(struct intel_enco=
der *encoder,
>  				    const struct drm_connector_state *old_conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>=20=20
>  	mutex_lock(&i915->display.audio.mutex);
> @@ -483,6 +491,9 @@ static void hsw_audio_codec_disable(struct intel_enco=
der *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_ELD_VALID(cpu_transcoder), 0);
>=20=20
> +	intel_crtc_wait_for_next_vblank(crtc);
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
>  	/* Disable audio presence detect */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_OUTPUT_ENABLE(cpu_transcoder), 0);
> @@ -604,6 +615,7 @@ static void hsw_audio_codec_enable(struct intel_encod=
er *encoder,
>  				   const struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_connector *connector =3D conn_state->connector;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	const u32 *eld =3D (const u32 *)connector->eld;
> @@ -619,17 +631,12 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     0, AUDIO_OUTPUT_ENABLE(cpu_transcoder));
>=20=20
> +	intel_crtc_wait_for_next_vblank(crtc);
> +
>  	/* Invalidate ELD */
>  	intel_de_rmw(i915, HSW_AUD_PIN_ELD_CP_VLD,
>  		     AUDIO_ELD_VALID(cpu_transcoder), 0);
>=20=20
> -	/*
> -	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
> -	 * disabled during the mode set. The proper fix would be to push the
> -	 * rest of the setup into a vblank work item, queued here, but the
> -	 * infrastructure is not there yet.
> -	 */
> -
>  	/* Reset ELD address */
>  	intel_de_rmw(i915, HSW_AUD_DIP_ELD_CTRL(cpu_transcoder),
>  		     IBX_ELD_ADDRESS_MASK, 0);
> @@ -726,6 +733,9 @@ static void ilk_audio_codec_disable(struct intel_enco=
der *encoder,
>  		     IBX_ELD_VALID(port), 0);
>=20=20
>  	mutex_unlock(&i915->display.audio.mutex);
> +
> +	intel_crtc_wait_for_next_vblank(crtc);
> +	intel_crtc_wait_for_next_vblank(crtc);
>  }
>=20=20
>  static void ilk_audio_codec_enable(struct intel_encoder *encoder,
> @@ -744,12 +754,7 @@ static void ilk_audio_codec_enable(struct intel_enco=
der *encoder,
>  	if (drm_WARN_ON(&i915->drm, port =3D=3D PORT_A))
>  		return;
>=20=20
> -	/*
> -	 * FIXME: We're supposed to wait for vblank here, but we have vblanks
> -	 * disabled during the mode set. The proper fix would be to push the
> -	 * rest of the setup into a vblank work item, queued here, but the
> -	 * infrastructure is not there yet.
> -	 */
> +	intel_crtc_wait_for_next_vblank(crtc);
>=20=20
>  	ilk_audio_regs_init(i915, pipe, &regs);

--=20
Jani Nikula, Intel Open Source Graphics Center
