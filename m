Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73132537B7F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 May 2022 15:26:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43FD110E862;
	Mon, 30 May 2022 13:26:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5760510E862
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 May 2022 13:26:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653917170; x=1685453170;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=FLU8wJQQfuS4wvi8rSbOahfXUwUZSbkpjl0THmMQpYo=;
 b=P0VZ/yns4fMuJITYHelrqGYfgfv+rTt++XSrxV2tHxXIEBVRJPoUbH1a
 sXUDG5aTqxfUNAeFumK/zYaYBUckZ+J2MWDZMDRofSyvNmrHviJ2y/Yxk
 1KDvKBq2VK2V8wnhtNLpfkynij6R2qptl4kLJYyXQa7S8zYNrAm4pz4zT
 gaFQKhW8xSjbLwp9A5CV45AteGCxLyW7EFRTk1qTY55m6Ar5X52t6vPHA
 ZYeOrB2f3ChMWOQHKtZAPe8s1sAJJ3PmyVqSPTfe2xAzKWyll47KxFLAd
 z84MQomRFiRb78gy7X0KHUk/1qgs52MBF0ko3nLZzZfk/ZinjNpb9WAYO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10362"; a="361377671"
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="361377671"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:26:09 -0700
X-IronPort-AV: E=Sophos;i="5.91,263,1647327600"; d="scan'208";a="605189610"
Received: from jkuna-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.150.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2022 06:26:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87a6azrw8d.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
 <20220527204949.2264-7-ville.syrjala@linux.intel.com>
 <87a6azrw8d.fsf@intel.com>
Date: Mon, 30 May 2022 16:26:04 +0300
Message-ID: <877d63rw2b.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915: Treat DMRRS as static DRRS
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

On Mon, 30 May 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Fri, 27 May 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Some machines declare DRRS type =3D seamless, DRRS =3D no, DMRRS =3D yes.
>> I *think* DMRRS stands for "dynamcic media refresh rate", and
>> I suspect the way it's meant to work is that it lets the driver
>> switch refresh rates to match the frame rate for media playback.
>> Obviously for us all that kind of policy stuff is entirely up to
>> userspace, so the only thing we may do is make the extra refresh
>> rate(s) available.
>>
>> So let's treat this case as just static DRRS for now. In the
>> future We might want to differentiate the "seamless w/ downclocking"
>> vs. "seamless w/o downclocking" cases so that we could do seamless
>> refresh rate changes for systems that only claim to support DMRRS.
>>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Acked-by: Jani Nikula <jani.nikula@intel.com>

Oh, the reasoning for some Acked-bys instead of Reviewed-bys today in
this and another series:

They could all be r-b in the sense that they do what they say on the
box. But I don't really have the information to confirm they are the
right thing to do. I'm acking "let's go with this, and see where it gets
us".

Make sense?


BR,
Jani.



>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++----
>>  1 file changed, 20 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index 0774238e429b..c42b9e7d0dce 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1279,8 +1279,16 @@ parse_panel_driver_features(struct drm_i915_priva=
te *i915,
>>  		 * static DRRS is 0 and DRRS not supported is represented by
>>  		 * driver->drrs_enabled=3Dfalse
>>  		 */
>> -		if (!driver->drrs_enabled)
>> -			panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
>> +		if (!driver->drrs_enabled && panel->vbt.drrs_type !=3D DRRS_TYPE_NONE=
) {
>> +			/*
>> +			 * FIXME Should DMRRS perhaps be treated as seamless
>> +			 * but without the automatic downclocking?
>> +			 */
>> +			if (driver->dmrrs_enabled)
>> +				panel->vbt.drrs_type =3D DRRS_TYPE_STATIC;
>> +			else
>> +				panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
>> +		}
>>=20=20
>>  		panel->vbt.psr.enable =3D driver->psr_enabled;
>>  	}
>> @@ -1310,8 +1318,16 @@ parse_power_conservation_features(struct drm_i915=
_private *i915,
>>  	 * static DRRS is 0 and DRRS not supported is represented by
>>  	 * power->drrs & BIT(panel_type)=3Dfalse
>>  	 */
>> -	if (!(power->drrs & BIT(panel_type)))
>> -		panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
>> +	if (!(power->drrs & BIT(panel_type)) && panel->vbt.drrs_type !=3D DRRS=
_TYPE_NONE) {
>> +		/*
>> +		 * FIXME Should DMRRS perhaps be treated as seamless
>> +		 * but without the automatic downclocking?
>> +		 */
>> +		if (power->dmrrs & BIT(panel_type))
>> +			panel->vbt.drrs_type =3D DRRS_TYPE_STATIC;
>> +		else
>> +			panel->vbt.drrs_type =3D DRRS_TYPE_NONE;
>> +	}
>>=20=20
>>  	if (i915->vbt.version >=3D 232)
>>  		panel->vbt.edp.hobl =3D power->hobl & BIT(panel_type);

--=20
Jani Nikula, Intel Open Source Graphics Center
