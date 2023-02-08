Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E8868EDF8
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 12:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D3D510E744;
	Wed,  8 Feb 2023 11:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976C510E744
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 11:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675855935; x=1707391935;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=DjOSQqjZUkVFvNEQiVgyY0DEnNgmCfAG0uIHEgkBMZE=;
 b=Y46F42jkwX1awsC/eo37908m1cK1elL/l7aw3Nro1fOK1p4ezBJeGD6e
 7LUBceJbjTIOpfKAuU30oeCsEI8gFH3S2GStb1TjbQ9hAFIDYvWIl/gw+
 6+1lhIFLv2NYIbZYZWnD50UoOnJ7r+GVgpus3v981oj3gB85n5uukySUg
 oOZsuIbysqtM13+qKU/L1DdzDP8SZV5HphUf6nCZ+BxWmRf7Be8/Lk5+0
 9N1o2R/xSzXk+7hfdX0zzQiVZnYHV5JbMb+oDpVdrJFk/ExxTIJL1kiuk
 SYGzIDghWMFSTlnZmxMoyj7M4MG6aTt3e/ji3q2/cefhch2RfTSCJxCi7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="328429231"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="328429231"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:32:15 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="756015004"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="756015004"
Received: from joergber-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.82])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 03:32:14 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <Y+I3sg4xW+7K3hrG@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230207111626.1839645-1-jani.nikula@intel.com>
 <Y+I3sg4xW+7K3hrG@intel.com>
Date: Wed, 08 Feb 2023 13:32:11 +0200
Message-ID: <87fsbgxuis.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: set default backlight
 controller index
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

On Tue, 07 Feb 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Feb 07, 2023 at 01:16:26PM +0200, Jani Nikula wrote:
>> With backlight controller set to -1 in intel_panel_init_alloc() to
>> distinguish uninitialized values, and controller later being set only if
>> it's present in VBT, we can end up with -1 for the controller:
>>=20
>>     [drm:intel_bios_init_panel [i915]] VBT backlight PWM modulation
>>     frequency 200 Hz, active high, min brightness 0, level 255,
>>     controller 4294967295
>>=20
>> There's no harm if it happens on platforms that ignore controller due to
>> only one backlight controller being present, like on VLV above, but play
>> it safe.
>>=20
>> Fixes: bf38bba3e7d6 ("drm/i915: Try to use the correct power sequencer i=
ntiially on bxt/glk")
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c | 1 +
>>  1 file changed, 1 insertion(+)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm=
/i915/display/intel_bios.c
>> index e6ca51232dcf..ad833069f59c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1033,6 +1033,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>>  	}
>>=20=20
>>  	panel->vbt.backlight.type =3D INTEL_BACKLIGHT_DISPLAY_DDI;
>> +	panel->vbt.backlight.controller =3D 0;
>>  	if (i915->display.vbt.version >=3D 191) {
>>  		size_t exp_size;
>
> Ah right, older VBT didnt have this so we leave it untouched.
> Zeroing in that case seems like the right thing to do.
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

--=20
Jani Nikula, Intel Open Source Graphics Center
