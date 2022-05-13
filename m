Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3F5A52614C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 May 2022 13:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C319310EC3D;
	Fri, 13 May 2022 11:45:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B990110EC3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 May 2022 11:45:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652442352; x=1683978352;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=CrCV2av2qgUbHSCCx8bFmwJ4CIKklx7OlA5iy2FDhgM=;
 b=Y+uVn1rDMeSHBGo+55o8JAVWZ25iJTndiiuf9+IgcV5rixF/0/cSGnI1
 POKUhDRT2j7upJWyY9V8EbjdYetMZYzqLouy/6oMPcgyMHFO31VVtv+nZ
 YlHtYpk1Vvr75mqmv6ErI2M4cKPgTXOc/HxsHug0J4/DSIp0TlAMTykEH
 6VDWbR1yy9OsS1/L0NAeFxZyHiT+c9W8g1hQW9rMz7XFFD/dMtxI7rKz9
 pWsQCU/cmHRvZT5RBS5KyOgZdPeyPQzILB0zAujGHHSiceYOwE2yVGHyR
 ImGSy954DECBC3WCjmUbhQ7yo6Lui5pUzWe5swTgqeBy2lR69bi5uQ6Il A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="250817191"
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="250817191"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:45:52 -0700
X-IronPort-AV: E=Sophos;i="5.91,221,1647327600"; d="scan'208";a="595182923"
Received: from bborecki-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.131.83])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2022 04:45:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Yn1DZHCr/xccSUbP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220512161638.272601-1-jani.nikula@intel.com>
 <Yn1DZHCr/xccSUbP@intel.com>
Date: Fri, 13 May 2022 14:45:48 +0300
Message-ID: <87a6blirkj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/audio: fix audio code
 enable/disable pipe logging
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

On Thu, 12 May 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, May 12, 2022 at 07:16:38PM +0300, Jani Nikula wrote:
>> Need to use pipe_name(pipe) instead of pipe directly.
>>=20
>> Fixes: 1f31e35f2e88 ("drm/i915/audio: unify audio codec enable/disable d=
ebug logging")
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/dr=
m/i915/display/intel_audio.c
>> index 1c87bf66b092..f0f0dfce27ce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_audio.c
>> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
>> @@ -827,7 +827,7 @@ void intel_audio_codec_enable(struct intel_encoder *=
encoder,
>>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable a=
udio codec on pipe %c, %u bytes ELD\n",
>>  		    connector->base.id, connector->name,
>>  		    encoder->base.base.id, encoder->base.name,
>> -		    pipe, drm_eld_size(connector->eld));
>> +		    pipe_name(pipe), drm_eld_size(connector->eld));
>>=20=20
>>  	/* FIXME precompute the ELD in .compute_config() */
>>  	if (!connector->eld[0])
>> @@ -888,7 +888,7 @@ void intel_audio_codec_disable(struct intel_encoder =
*encoder,
>>=20=20
>>  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable =
audio codec on pipe %c\n",
>>  		    connector->base.id, connector->name,
>> -		    encoder->base.base.id, encoder->base.name, pipe);
>> +		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
>>=20=20
>>  	if (dev_priv->audio.funcs)
>>  		dev_priv->audio.funcs->audio_codec_disable(encoder,
>> --=20
>> 2.30.2

--=20
Jani Nikula, Intel Open Source Graphics Center
