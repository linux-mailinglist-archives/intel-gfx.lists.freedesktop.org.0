Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72544645FAA
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 18:10:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 586A110E408;
	Wed,  7 Dec 2022 17:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D403F10E409
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 17:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670432999; x=1701968999;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=nppvNp0E+NIua6+wqEjKX7nXwCGGKUGwWVuuWrjmHlY=;
 b=dzIn5Xcr+C4/a7/SbEjWxpcZqsNgV8kxC1zC9LzOJ5u+T/Wfqy3apveB
 fOgoSPyZAkbD0v3nC92xyZTXhr5uAFc31MDpje0k91juMhhufowxgih7d
 JMXFmCragwQJp+ta4/N6McUkKYJEnNjIkHW9ZXjB9/sof7qAyjGrWeFuL
 SjJCHP2qLLDTIocJ2t5VNW9Vw3Xle8hw4VUMYdg5++cObovK55Nirohr6
 tQaK2qpzTU8UWHlJcVLH4lXPgrzdVl8hK6kbWn+7wWeGJ8srlkrQMGCqW
 5kNCkJW7wDE2NOMfnPRCG2d2PT/n4iR9BTV3ABrmLVvoVwIVkBYIbB17L w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="314593160"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="314593160"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:09:54 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="771171903"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="771171903"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 09:09:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y5CqNYDoSWVwO8HN@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221205122918.3092092-1-jani.nikula@intel.com>
 <Y5CqNYDoSWVwO8HN@intel.com>
Date: Wed, 07 Dec 2022 19:09:49 +0200
Message-ID: <87ilin16oy.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: drop uncore locking around
 i8xx/i965 fbc nuke
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

On Wed, 07 Dec 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Dec 05, 2022 at 02:29:18PM +0200, Jani Nikula wrote:
>> The locking should not be needed after commits de5bd083d247
>> ("drm/i915/fbc: Skip nuke when flip is pending") and 7cfd1a18c5f9
>> ("drm/i915: Remove remaining locks from i9xx plane udpates").
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ----
>>  1 file changed, 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/=
i915/display/intel_fbc.c
>> index b5ee5ea0d010..deba0c49c827 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>> @@ -323,10 +323,8 @@ static void i8xx_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane =3D fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv =3D fbc->i915;
>>=20=20
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>>  	intel_de_write_fw(dev_priv, DSPADDR(i9xx_plane),
>>  			  intel_de_read_fw(dev_priv, DSPADDR(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>>  }
>>=20=20
>>  static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>> @@ -359,10 +357,8 @@ static void i965_fbc_nuke(struct intel_fbc *fbc)
>>  	enum i9xx_plane_id i9xx_plane =3D fbc_state->plane->i9xx_plane;
>>  	struct drm_i915_private *dev_priv =3D fbc->i915;
>>=20=20
>> -	spin_lock_irq(&dev_priv->uncore.lock);
>>  	intel_de_write_fw(dev_priv, DSPSURF(i9xx_plane),
>>  			  intel_de_read_fw(dev_priv, DSPSURF(i9xx_plane)));
>> -	spin_unlock_irq(&dev_priv->uncore.lock);
>>  }
>>=20=20
>>  static const struct intel_fbc_funcs i965_fbc_funcs =3D {
>> --=20
>> 2.34.1

--=20
Jani Nikula, Intel Open Source Graphics Center
