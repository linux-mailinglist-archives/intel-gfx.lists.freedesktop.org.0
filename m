Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 069DB3FECB4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 13:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628DA89690;
	Thu,  2 Sep 2021 11:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75E4F89690
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 11:10:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="215936488"
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="215936488"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:10:38 -0700
X-IronPort-AV: E=Sophos;i="5.84,372,1620716400"; d="scan'208";a="533005358"
Received: from jcalzada-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.249.47.103])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 04:10:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare
 <manasi.d.navare@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <20210901113851.GA3572110@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210901112815.16498-1-jani.nikula@intel.com>
 <20210901113851.GA3572110@ideak-desk.fi.intel.com>
Date: Thu, 02 Sep 2021 14:10:32 +0300
Message-ID: <87ilzj9qs7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: fix DG2 max source rate check
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

On Wed, 01 Sep 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Wed, Sep 01, 2021 at 02:28:15PM +0300, Jani Nikula wrote:
>> Accidentally dropped the else in a rebase fail, causing the DG2 max rate
>> to be overwritten later in the if ladder.
>>=20
>> Fixes: e752d1f9c14a ("drm/i915/dg2: add DG2 UHBR source rates")
>> Cc: Manasi Navare <manasi.d.navare@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Pushed, thanks for the reviews.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 4f2fd33529ca..81b7097c6ff1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -345,7 +345,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>  		size =3D ARRAY_SIZE(icl_rates);
>>  		if (IS_DG2(dev_priv))
>>  			max_rate =3D dg2_max_source_rate(intel_dp);
>> -		if (IS_JSL_EHL(dev_priv))
>> +		else if (IS_JSL_EHL(dev_priv))
>>  			max_rate =3D ehl_max_source_rate(intel_dp);
>>  		else
>>  			max_rate =3D icl_max_source_rate(intel_dp);
>> --=20
>> 2.30.2
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
