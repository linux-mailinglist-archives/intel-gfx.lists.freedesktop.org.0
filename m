Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C529625E5
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 13:21:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB6510E3F1;
	Wed, 28 Aug 2024 11:21:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZDlFVPJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 919AE10E3A4;
 Wed, 28 Aug 2024 11:21:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724844109; x=1756380109;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=hJBrNKD/DGYEqEbNe2JRmT5YyZJtgurV71oUki3/l7c=;
 b=PZDlFVPJCTxi9XjBSXnYYDw6OtIipfeVN4tDxm+t6Vw55Ssaiu8q57k2
 DN8cROWtmypcdKFaoYzrMoFAtI+YUcrsTxGVB6iDWgyDVF+WFghTBYhr9
 dv0OE2sosARz748GJxWyM+BibrqnW0KpZ0Trvk32sF5f9IkZN51K73z+j
 X4dguinGJ27gzCqzZ1I+JKFv6FY1Pv26LDl34CO1kG8FitMW+tc8h8Cuw
 PHd1aSLq3tBT/OvC+203ML8R4pVj1/uEKPHx+awlMhAo0K3wlj55HW+EK
 kXF02TYx3C7QrBQra9nDZpPYIaysIY0BfbvQpt4zja7oDLrHAEHWRDl0p A==;
X-CSE-ConnectionGUID: n9rB4TKzRdet6qY6McjGfw==
X-CSE-MsgGUID: +v6ZDXccSgWxUdmi9Kk/yQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="23172336"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="23172336"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:21:49 -0700
X-CSE-ConnectionGUID: R/pv9iaNRDyQoqeKDrImuA==
X-CSE-MsgGUID: xOfgVXZAQdKVYMIjCmlthg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="93904344"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 04:21:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCHv2] drm/i915/display: BMG supports UHBR13.5
In-Reply-To: <88c9b678401c4151881fb747b3414d312254dfc4.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827081205.136569-1-arun.r.murthy@intel.com>
 <88c9b678401c4151881fb747b3414d312254dfc4.camel@intel.com>
Date: Wed, 28 Aug 2024 14:21:40 +0300
Message-ID: <87y14gyjsr.fsf@intel.com>
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

On Wed, 28 Aug 2024, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> Hi,
>
> Do we need this? There is this patch already https://patchwork.freedeskto=
p.org/patch/592161/

mtl_rates doesn't have 1350000.

BR,
Jani.

>
> Looks like we are supposed to iterate source_rates using "intel_dp->num_s=
ource_rates"
>
> If you are keeping this, then may be we need a separate max_rate call for=
 bmg for better clarity?
> Now there is a separate source_rates for bmg but a max_rate using mtl_max=
_rate()!
>
> BR
> Vinod
>
>
> On Tue, 2024-08-27 at 13:42 +0530, Arun R Murthy wrote:
>> UHBR20 is not supported by battlemage and the maximum link rate
>> supported is UHBR13.5
>>=20
>> v2: Replace IS_DGFX with IS_BATTLEMAGE (Jani)
>>=20
>> HSD: 16023263677
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>> =C2=A0drivers/gpu/drm/i915/display/intel_dp.c | 13 +++++++++++--
>> =C2=A01 file changed, 11 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i=
915/display/intel_dp.c
>> index 789c2f78826d..99a365a945ae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -528,6 +528,10 @@ static void
>> =C2=A0intel_dp_set_source_rates(struct intel_dp *intel_dp)
>> =C2=A0{
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* The values must be in=
 increasing order */
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0static const int bmg_rates[] =
=3D {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0162000, 216000, 243000, 270000, 324000, 432000, 540000=
, 675000,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0810000,=C2=A01000000, 1350000,
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0static const int mtl_rat=
es[] =3D {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0162000, 216000, 243000, 270000, 324000, 432000, 540=
000, 675000,
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0810000,=C2=A01000000, 2000000,
>> @@ -558,8 +562,13 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_dp->source_rates || intel_=
dp->num_source_rates);
>> =C2=A0
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (DISPLAY_VER(dev_priv=
) >=3D 14) {
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0source_rates =3D mtl_rates;
>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0size =3D ARRAY_SIZE(mtl_rates);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0if (IS_BATTLEMAGE(dev_priv)) {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0source=
_rates =3D bmg_rates;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0size =
=3D ARRAY_SIZE(bmg_rates);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0} else {
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0source=
_rates =3D mtl_rates;
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0size =
=3D ARRAY_SIZE(mtl_rates);
>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0}
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0max_rate =3D mtl_max_source_rate(intel_dp);
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0} else if (DISPLAY_VER(d=
ev_priv) >=3D 11) {
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0source_rates =3D icl_rates;
>

--=20
Jani Nikula, Intel
