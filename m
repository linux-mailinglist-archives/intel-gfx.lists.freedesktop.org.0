Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B43C4EC9C8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 18:37:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27CC10E73D;
	Wed, 30 Mar 2022 16:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2989C10E73D
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 16:37:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648658256; x=1680194256;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZkJ7zXUlo2yB42NKmk75wsDgE1re+N8+CatExm00gNM=;
 b=n6R7ztImo+aYyzpjPQKpzi1qZ6nnfvy3kRm05ukySfG4C+0stDV1hAZE
 ALVCXpTx7EE13jHSZys7dbTlFInsTGzSzuLL+VdwLxW3ai0HhjMSCU3bW
 EdueqQuyrP2vsgIYepNPDvdQteDQx9ESFgjraJcMNpQ463+4eGLOR2Cms
 TM9lzzd33f1rr38f/hH+vuajun2KfODkxTm6IWf0BfgOhWJEXY7BL+nJV
 q/XxjCmoCHMerKSfA4KPAq1at/pDz3JmFCueQqy8RA3v5i8/jqq/tnwyE
 z08H5v1Mew66zJGDrj3bKmfB4M0i+MmXSSC8Ot7YKEQFhKvTCRak9qQbh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="257165888"
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="257165888"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:37:35 -0700
X-IronPort-AV: E=Sophos;i="5.90,223,1643702400"; d="scan'208";a="546927878"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 09:37:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YkQ7I+ma4kT4hpxm@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220330094109.4164326-1-jani.nikula@intel.com>
 <YkQ7I+ma4kT4hpxm@intel.com>
Date: Wed, 30 Mar 2022 19:37:31 +0300
Message-ID: <87ilrvbdmc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/audio: unify audio codec
 enable/disable debug logging
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 30 Mar 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Mar 30, 2022 at 12:41:08PM +0300, Jani Nikula wrote:
>> The audio codec enable/disable debug logging is spread around in callers
>> and the platform specific hooks. Put them all together in one place on
>> both the enable and disable paths.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/g4x_dp.c      |  7 +---
>>  drivers/gpu/drm/i915/display/g4x_hdmi.c    |  3 --
>>  drivers/gpu/drm/i915/display/intel_audio.c | 39 ++++++----------------
>>  3 files changed, 11 insertions(+), 38 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i91=
5/display/g4x_dp.c
>> index 8e1338678d91..55fefc950f41 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
>> @@ -658,9 +658,7 @@ static void intel_enable_dp(struct intel_atomic_stat=
e *state,
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>> -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>>  	u32 dp_reg =3D intel_de_read(dev_priv, intel_dp->output_reg);
>> -	enum pipe pipe =3D crtc->pipe;
>>  	intel_wakeref_t wakeref;
>>=20=20
>>  	if (drm_WARN_ON(&dev_priv->drm, dp_reg & DP_PORT_EN))
>> @@ -694,11 +692,8 @@ static void intel_enable_dp(struct intel_atomic_sta=
te *state,
>>  	intel_dp_start_link_train(intel_dp, pipe_config);
>>  	intel_dp_stop_link_train(intel_dp, pipe_config);
>>=20=20
>> -	if (pipe_config->has_audio) {
>> -		drm_dbg(&dev_priv->drm, "Enabling DP audio on pipe %c\n",
>> -			pipe_name(pipe));
>> +	if (pipe_config->has_audio)
>>  		intel_audio_codec_enable(encoder, pipe_config, conn_state);
>> -	}
>>  }
>>=20=20
>>  static void g4x_enable_dp(struct intel_atomic_state *state,
>> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i=
915/display/g4x_hdmi.c
>> index 06e00b1eaa7c..39ba5dc51f8e 100644
>> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
>> @@ -148,11 +148,8 @@ static void intel_enable_hdmi_audio(struct intel_en=
coder *encoder,
>>  				    const struct drm_connector_state *conn_state)
>>  {
>>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>> -	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
>>=20=20
>>  	drm_WARN_ON(&i915->drm, !pipe_config->has_hdmi_sink);
>> -	drm_dbg_kms(&i915->drm, "Enabling HDMI audio on pipe %c\n",
>> -		    pipe_name(crtc->pipe));
>>  	intel_audio_codec_enable(encoder, pipe_config, conn_state);
>>  }
>>=20=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/dr=
m/i915/display/intel_audio.c
>> index 3bdca0fe2cee..24d20817a5e5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -337,8 +337,6 @@ static void g4x_audio_codec_disable(struct intel_enc=
oder *encoder,
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	u32 eldv, tmp;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm, "Disable audio codec\n");
>> -
>>  	tmp =3D intel_de_read(dev_priv, G4X_AUD_VID_DID);
>>  	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
>>  		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
>> @@ -362,9 +360,6 @@ static void g4x_audio_codec_enable(struct intel_enco=
der *encoder,
>>  	u32 tmp;
>>  	int len, i;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm, "Enable audio codec, %u bytes ELD\n",
>> -		    drm_eld_size(eld));
>> -
>>  	tmp =3D intel_de_read(dev_priv, G4X_AUD_VID_DID);
>>  	if (tmp =3D=3D INTEL_AUDIO_DEVBLC || tmp =3D=3D INTEL_AUDIO_DEVCL)
>>  		eldv =3D G4X_ELDV_DEVCL_DEVBLC;
>> @@ -383,7 +378,6 @@ static void g4x_audio_codec_enable(struct intel_enco=
der *encoder,
>>  	intel_de_write(dev_priv, G4X_AUD_CNTL_ST, tmp);
>>=20=20
>>  	len =3D min(drm_eld_size(eld) / 4, len);
>> -	drm_dbg(&dev_priv->drm, "ELD size %d\n", len);
>>  	for (i =3D 0; i < len; i++)
>>  		intel_de_write(dev_priv, G4X_HDMIW_HDMIEDID,
>>  			       *((const u32 *)eld + i));
>> @@ -501,9 +495,6 @@ static void hsw_audio_codec_disable(struct intel_enc=
oder *encoder,
>>  	enum transcoder cpu_transcoder =3D old_crtc_state->cpu_transcoder;
>>  	u32 tmp;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
>> -		    transcoder_name(cpu_transcoder));
>> -
>>  	mutex_lock(&dev_priv->audio.mutex);
>>=20=20
>>  	/* Disable timestamps */
>> @@ -647,10 +638,6 @@ static void hsw_audio_codec_enable(struct intel_enc=
oder *encoder,
>>  	u32 tmp;
>>  	int len, i;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm,
>> -		    "Enable audio codec on transcoder %s, %u bytes ELD\n",
>> -		     transcoder_name(cpu_transcoder), drm_eld_size(eld));
>> -
>>  	mutex_lock(&dev_priv->audio.mutex);
>>=20=20
>>  	/* Enable Audio WA for 4k DSC usecases */
>> @@ -703,11 +690,6 @@ static void ilk_audio_codec_disable(struct intel_en=
coder *encoder,
>>  	u32 tmp, eldv;
>>  	i915_reg_t aud_config, aud_cntrl_st2;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm,
>> -		    "Disable audio codec on [ENCODER:%d:%s], pipe %c\n",
>> -		     encoder->base.base.id, encoder->base.name,
>> -		     pipe_name(pipe));
>> -
>>  	if (drm_WARN_ON(&dev_priv->drm, port =3D=3D PORT_A))
>>  		return;
>>=20=20
>> @@ -754,11 +736,6 @@ static void ilk_audio_codec_enable(struct intel_enc=
oder *encoder,
>>  	int len, i;
>>  	i915_reg_t hdmiw_hdmiedid, aud_config, aud_cntl_st, aud_cntrl_st2;
>>=20=20
>> -	drm_dbg_kms(&dev_priv->drm,
>> -		    "Enable audio codec on [ENCODER:%d:%s], pipe %c, %u bytes ELD\n",
>> -		    encoder->base.base.id, encoder->base.name,
>> -		    pipe_name(pipe), drm_eld_size(eld));
>> -
>>  	if (drm_WARN_ON(&dev_priv->drm, port =3D=3D PORT_A))
>>  		return;
>>=20=20
>> @@ -844,18 +821,17 @@ void intel_audio_codec_enable(struct intel_encoder=
 *encoder,
>>  	enum port port =3D encoder->port;
>>  	enum pipe pipe =3D crtc->pipe;
>>=20=20
>> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable a=
udio codec on pipe %c, %u bytes ELD\n",
>> +		    connector->base.id, connector->name,
>> +		    encoder->base.base.id, encoder->base.name,
>> +		    pipe, drm_eld_size(connector->eld));
>
> Could also use the [CRTC:%d:%s] format for the pipe.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Pushed to din, left the nitpicks for another time, thanks,

BR,
Jani.

>
>> +
>>  	/* FIXME precompute the ELD in .compute_config() */
>>  	if (!connector->eld[0])
>>  		drm_dbg_kms(&dev_priv->drm,
>>  			    "Bogus ELD on [CONNECTOR:%d:%s]\n",
>>  			    connector->base.id, connector->name);
>>=20=20
>> -	drm_dbg(&dev_priv->drm, "ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
>> -		connector->base.id,
>> -		connector->name,
>> -		encoder->base.base.id,
>> -		encoder->base.name);
>> -
>>  	connector->eld[6] =3D drm_av_sync_delay(connector, adjusted_mode) / 2;
>>=20=20
>>  	if (dev_priv->audio.funcs)
>> @@ -900,9 +876,14 @@ void intel_audio_codec_disable(struct intel_encoder=
 *encoder,
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>>  	struct i915_audio_component *acomp =3D dev_priv->audio.component;
>>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>> +	struct drm_connector *connector =3D old_conn_state->connector;
>>  	enum port port =3D encoder->port;
>>  	enum pipe pipe =3D crtc->pipe;
>>=20=20
>> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable =
audio codec on pipe %c\n",
>> +		    connector->base.id, connector->name,
>> +		    encoder->base.base.id, encoder->base.name, pipe);
>> +
>>  	if (dev_priv->audio.funcs)
>>  		dev_priv->audio.funcs->audio_codec_disable(encoder,
>>  							   old_crtc_state,
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
