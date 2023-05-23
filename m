Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FFA70DD47
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 15:14:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5962510E030;
	Tue, 23 May 2023 13:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 601EB10E438
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 May 2023 13:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684847646; x=1716383646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=U8JxV+xjWO+Vmf9+2lHw7fon59GDfLNQBdFLaxvIn2Y=;
 b=AbAJnm+ySC/eqolkJbsNclmmixAjwB5oBwqfxqlhuLSFvAibfD0QFfwD
 3zcbpMPqzFhJrK6ClPRDM9IGugPJE57qKF6dfbiYsxWAXDxtXqjjOK8tL
 lU897DH/UZhrXU6Vm6zm4aNR8kXm7BYBLx6ysQ4K1elHC1TaguNyTS3Ur
 RG1Qj+VhYz93oZMtvdj1JLVqq5uSji/9ea7SV/PUysxr3r1kyh6cthbWq
 lGP23TnYuvxTVvrbiUAwXya1v8Ff+n5m9XmyMXSXqx7R59A1TqOdXThkM
 eFIheU27hP4Fusxxb6iz8KFBPQl4j7RlsajylhdBPjfZBMp10kMRK4uai Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="353256977"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="353256977"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:14:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="736871085"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="736871085"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:14:03 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <c752c626934552a0b57850dc6b3c7697d143de05.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522230759.153112-1-vinod.govindapillai@intel.com>
 <20230522230759.153112-3-vinod.govindapillai@intel.com>
 <87fs7nmnet.fsf@intel.com>
 <c752c626934552a0b57850dc6b3c7697d143de05.camel@intel.com>
Date: Tue, 23 May 2023 16:14:00 +0300
Message-ID: <877cszkx5z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v6 2/7] drm/i915: update the QGV point
 frequency calculations
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 23 May 2023, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Tue, 2023-05-23 at 12:01 +0300, Jani Nikula wrote:
>> On Tue, 23 May 2023, Vinod Govindapillai <vinod.govindapillai@intel.com>=
 wrote:
>> > From MTL onwwards, pcode locks the QGV point based on peak BW of
>> > the intended QGV point passed by the driver. So the peak BW
>> > calculation must match the value expected by the pcode. Update
>> > the calculations as per the Bspec.
>> >=20
>> > v2: use DIV_ROUND_* macro for the calculations (Ville)
>> >=20
>> > Bspec: 64636
>> >=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm=
/i915/display/intel_bw.c
>> > index ab405c48ca3a..c8075a37c3ab 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> > @@ -182,7 +182,7 @@ static int mtl_read_qgv_point_info(struct drm_i915=
_private *dev_priv,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0val2 =3D intel_uncore_=
read(&dev_priv->uncore,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MTL_MEM_SS_INFO_QGV_POINT_=
HIGH(point));
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dclk =3D REG_FIELD_GET=
(MTL_DCLK_MASK, val);
>> > -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->dclk =3D DIV_ROUND_UP((=
16667 * dclk), 1000);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->dclk =3D DIV_ROUND_CLOS=
EST(16667 * dclk + 500, 1000);
>>=20
>> What's with the +500 there?
>
> This is what pcode expects. Somehow pcode use this formula and we have to=
 exactly match this. Got
> this confirmed from Art.

I'm guessing all it really means is to round to closest, and they
specified it like that instead of saying "round to closest".

Essentially (x + (div/2)) / div is what DIV_ROUND_CLOSEST() does.

It's odd to do it *twice*, and surely not what they expect.

BR,
Jani.

>
> BR
> Vinod
>
>>=20
>> BR,
>> Jani.
>>=20
>>=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->t_rp =3D REG_FIELD=
_GET(MTL_TRP_MASK, val);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->t_rcd =3D REG_FIEL=
D_GET(MTL_TRCD_MASK, val);
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
