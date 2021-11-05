Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 851BE4462AC
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 12:29:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC246E22B;
	Fri,  5 Nov 2021 11:29:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71FF6E1F6
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 11:29:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="232132499"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="232132499"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 04:29:04 -0700
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="501906263"
Received: from jprisaca-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.214.70])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 04:29:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YYUFmkGqEIDpkH8N@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211104161858.21786-1-jani.nikula@intel.com>
 <20211104161858.21786-5-jani.nikula@intel.com> <YYUFmkGqEIDpkH8N@intel.com>
Date: Fri, 05 Nov 2021 13:29:00 +0200
Message-ID: <871r3ualj7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915/audio: clean up LPE audio
 init/cleanup calls
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

On Fri, 05 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 04, 2021 at 06:18:57PM +0200, Jani Nikula wrote:
>> Unify audio init/cleanup paths wrt LPE audio, and base the logic on the
>> return values from LPE audio calls. Move the platform device check on
>> cleanup to intel_lpe_audio.c, thereby limiting all audio.lpe substruct
>> access to that file.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_audio.c     | 14 ++++++++------
>>  drivers/gpu/drm/i915/display/intel_lpe_audio.c |  6 ++++--
>>  drivers/gpu/drm/i915/display/intel_lpe_audio.h |  4 ++--
>>  3 files changed, 14 insertions(+), 10 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/dr=
m/i915/display/intel_audio.c
>> index 24e76657d561..aa7037021376 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -1403,8 +1403,10 @@ static void i915_audio_component_cleanup(struct d=
rm_i915_private *dev_priv)
>>   */
>>  void intel_audio_init(struct drm_i915_private *dev_priv)
>>  {
>> -	if (intel_lpe_audio_init(dev_priv) < 0)
>> -		i915_audio_component_init(dev_priv);
>> +	if (!intel_lpe_audio_init(dev_priv))
>> +		return;
>> +
>> +	i915_audio_component_init(dev_priv);
>
> The logic here is already a bit funky. Technically we should not
> init the component stuff except when LPE audio is not present.
> Ie. we should only do it when intel_lpe_audio_init() returns
> -ENODEV.

Right.

>
>>  }
>>=20=20
>>  /**
>> @@ -1414,8 +1416,8 @@ void intel_audio_init(struct drm_i915_private *dev=
_priv)
>>   */
>>  void intel_audio_deinit(struct drm_i915_private *dev_priv)
>>  {
>> -	if ((dev_priv)->audio.lpe.platdev !=3D NULL)
>> -		intel_lpe_audio_teardown(dev_priv);
>> -	else
>> -		i915_audio_component_cleanup(dev_priv);
>> +	if (!intel_lpe_audio_teardown(dev_priv))
>> +		return;
>> +
>> +	i915_audio_component_cleanup(dev_priv);
>
> Here it would probably make more sense to just call both
> unconditionally so we don't have to care what happened during
> init.

Yeah, why not.

Thanks for the review, pushed everything except this patch, will
follow-up.


BR,
Jani.


>
>>  }
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.c b/drivers/gp=
u/drm/i915/display/intel_lpe_audio.c
>> index 4970bf146c4a..a2984718d136 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
>> @@ -296,10 +296,10 @@ int intel_lpe_audio_init(struct drm_i915_private *=
dev_priv)
>>   *
>>   * release all the resources for LPE audio <-> i915 bridge.
>>   */
>> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>> +int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
>>  {
>>  	if (!HAS_LPE_AUDIO(dev_priv))
>> -		return;
>> +		return -ENODEV;
>>=20=20
>>  	lpe_audio_platdev_destroy(dev_priv);
>>=20=20
>> @@ -307,6 +307,8 @@ void intel_lpe_audio_teardown(struct drm_i915_privat=
e *dev_priv)
>>=20=20
>>  	dev_priv->audio.lpe.irq =3D -1;
>>  	dev_priv->audio.lpe.platdev =3D NULL;
>> +
>> +	return 0;
>>  }
>>=20=20
>>  /**
>> diff --git a/drivers/gpu/drm/i915/display/intel_lpe_audio.h b/drivers/gp=
u/drm/i915/display/intel_lpe_audio.h
>> index f848c5038714..030874623872 100644
>> --- a/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> +++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.h
>> @@ -12,8 +12,8 @@ enum pipe;
>>  enum port;
>>  struct drm_i915_private;
>>=20=20
>> -int  intel_lpe_audio_init(struct drm_i915_private *dev_priv);
>> -void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
>> +int intel_lpe_audio_init(struct drm_i915_private *dev_priv);
>> +int intel_lpe_audio_teardown(struct drm_i915_private *dev_priv);
>>  void intel_lpe_audio_irq_handler(struct drm_i915_private *dev_priv);
>>  void intel_lpe_audio_notify(struct drm_i915_private *dev_priv,
>>  			    enum pipe pipe, enum port port,
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
