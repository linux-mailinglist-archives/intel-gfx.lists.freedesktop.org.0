Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0909997E6A8
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 09:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1326010E0E2;
	Mon, 23 Sep 2024 07:33:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K1Xiismh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C3810E0E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 07:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727076807; x=1758612807;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=/kIxIu7Sp4PXYxM3RR8XIOxLACydO8rTad771bUES9w=;
 b=K1XiismhUEzaIr7Fnrrr8m8JioHFWdIDW+DXCkY0RaIzIgxUmTA0FjGc
 OfJt4cwh1XfUVxy3X4H81QBtBjujyN0eS7NpmRF+kMmulCHiu8IiReHGN
 ayCCl/JW3hkTlxe0ja683gK8gTsAxC0f0Nrbnm+H9Tng1yMRzbBgDUTmG
 nD4n01BwldIdu24PK1qTtEQFnt38JnSa8z6bzO6sBMoW+k03Cz6wWxFkM
 5iFLIgcPX0zJF/tQiKuUub8W/E1jIwLekynRB3ZEz9w3BZAkm+sfEgLv3
 yGemhnYPJCLgHbUsOpaYULtl+RrZFdUvjZ/wCc0zfuJgrEYLD3HkbJQsQ Q==;
X-CSE-ConnectionGUID: i5OF/Qx4RXSS+htxU/gy6Q==
X-CSE-MsgGUID: bWT09/QURw66GQOK5HWKyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="25960452"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="25960452"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:33:20 -0700
X-CSE-ConnectionGUID: p7MpF/caRGK3fvhhBtXktQ==
X-CSE-MsgGUID: DRmdI6cDRbej7iWov0P9uQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="75745758"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 00:33:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/quirks: make intel_dpcd_quirks const
In-Reply-To: <ZuxuouVHVBIRZwAW@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240919153354.1269295-1-jani.nikula@intel.com>
 <ZuxuouVHVBIRZwAW@intel.com>
Date: Mon, 23 Sep 2024 10:33:16 +0300
Message-ID: <87tte67rk3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 19 Sep 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Sep 19, 2024 at 06:33:54PM +0300, Jani Nikula wrote:
>> The array can be in rodate, make it const.
>>=20
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Thanks, pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_quirks.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/d=
rm/i915/display/intel_quirks.c
>> index 29b56d53a340..28f497ae785b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -231,7 +231,7 @@ static struct intel_quirk intel_quirks[] =3D {
>>  	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>>  };
>>=20=20
>> -static struct intel_dpcd_quirk intel_dpcd_quirks[] =3D {
>> +static const struct intel_dpcd_quirk intel_dpcd_quirks[] =3D {
>>  	/* Dell Precision 5490 */
>>  	{
>>  		.device =3D 0x7d55,
>> @@ -272,7 +272,7 @@ void intel_init_dpcd_quirks(struct intel_dp *intel_d=
p,
>>  	int i;
>>=20=20
>>  	for (i =3D 0; i < ARRAY_SIZE(intel_dpcd_quirks); i++) {
>> -		struct intel_dpcd_quirk *q =3D &intel_dpcd_quirks[i];
>> +		const struct intel_dpcd_quirk *q =3D &intel_dpcd_quirks[i];
>>=20=20
>>  		if (d->device =3D=3D q->device &&
>>  		    (d->subsystem_vendor =3D=3D q->subsystem_vendor ||
>> --=20
>> 2.39.2

--=20
Jani Nikula, Intel
