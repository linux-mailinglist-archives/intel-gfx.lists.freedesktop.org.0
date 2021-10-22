Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5A56437B38
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 18:58:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C6D6E7E6;
	Fri, 22 Oct 2021 16:58:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD1006E7E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 16:58:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10145"; a="209444417"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="209444417"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:58:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="495753278"
Received: from pbabu-mobl.gar.corp.intel.com (HELO localhost)
 ([10.251.213.192])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 09:58:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, airlied@gmail.com, daniel@ffwll.ch,
 lucas.demarchi@intel.com, Dave Airlie <airlied@redhat.com>
In-Reply-To: <YXLp8ky4WehjANzc@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1634918767.git.jani.nikula@intel.com>
 <7db2cecd528e01ad9fe89585189b171bfaa0b565.1634918767.git.jani.nikula@intel.com>
 <YXLp8ky4WehjANzc@intel.com>
Date: Fri, 22 Oct 2021 19:58:16 +0300
Message-ID: <87fsstkndj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/audio: name the audio
 sub-struct in drm_i915_private
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 22 Oct 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Oct 22, 2021 at 07:27:56PM +0300, Jani Nikula wrote:
>> Add name to the audio sub-struct in drm_i915_private, and remove the
>> tautologies and other inconsistencies in the member names.
>>=20
>> Cc: Dave Airlie <airlied@redhat.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_audio.c    | 90 +++++++++----------
>>  .../gpu/drm/i915/display/intel_lpe_audio.c    | 42 ++++-----
>>  drivers/gpu/drm/i915/i915_drv.c               |  2 +-
>>  drivers/gpu/drm/i915/i915_drv.h               | 22 +++--
>>  4 files changed, 77 insertions(+), 79 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/dr=
m/i915/display/intel_audio.c
>> index 03e8c05a74f6..b46f6539b9ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -388,7 +388,7 @@ hsw_dp_audio_config_update(struct intel_encoder *enc=
oder,
>>  			   const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>> -	struct i915_audio_component *acomp =3D dev_priv->audio_component;
>> +	struct i915_audio_component *acomp =3D dev_priv->audio.component;
>>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>>  	enum port port =3D encoder->port;
>>  	const struct dp_aud_n_m *nm;
>> @@ -436,7 +436,7 @@ hsw_hdmi_audio_config_update(struct intel_encoder *e=
ncoder,
>>  			     const struct intel_crtc_state *crtc_state)
>>  {
>>  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
>> -	struct i915_audio_component *acomp =3D dev_priv->audio_component;
>> +	struct i915_audio_component *acomp =3D dev_priv->audio.component;
>>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>>  	enum port port =3D encoder->port;
>>  	int n, rate;
>> @@ -494,7 +494,7 @@ static void hsw_audio_codec_disable(struct intel_enc=
oder *encoder,
>>  	drm_dbg_kms(&dev_priv->drm, "Disable audio codec on transcoder %s\n",
>>  		    transcoder_name(cpu_transcoder));
>>=20=20
>> -	mutex_lock(&dev_priv->av_mutex);
>> +	mutex_lock(&dev_priv->audio.lock);
>
> Maybe we should try to be consistent in our lock names and
> call mutexes 'mutex' and spinlocks 'lock'?

Works for me.

Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
