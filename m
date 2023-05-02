Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BA06F4094
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 12:03:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C69AB10E4E9;
	Tue,  2 May 2023 10:03:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54F4F10E4E9
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 10:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683021819; x=1714557819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=cGrJGvkFpK4ogXP0uEgv2Yj6R6CBeAlJxCGTPiBufNY=;
 b=cx+9N+8gJbAie6UQ3MN5+wLXiyvuf1tB73r1PH9eMxrWxBrTI2ZgecBJ
 sz/lkfrHKLsy9tnn04f2511gG35Q4HgUOlyabgfAFVKj+V8UFlMSnWjaQ
 ss4qO1JB0+lUy6JD6YWrzqW21rDgus/1W7ULOB4TLpYIwgY2GkUYI27pW
 Api+IuYDcKfBMKNrjxq69YSMUQGwIwzB7DiLyjxz8iWczvO5wL23/hiE1
 p+2tgoGfNkpllx6dVKE2l+cH7TV0ui7I37ZZOKekED0sPbcm+ygG54Rwx
 jJh9ivKQ5blM/3B/EPH5gTOrd8OYo807gp6mg3zHTU2Fzijeu0QIb3W+F Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="347170694"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="347170694"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 03:03:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="690218558"
X-IronPort-AV: E=Sophos;i="5.99,243,1677571200"; d="scan'208";a="690218558"
Received: from xinpan-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.163])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 03:03:35 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
In-Reply-To: <4b531301f35e856b0a44f7a002686406a6d8672f.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-3-vinod.govindapillai@intel.com>
 <ZEqO4oTlYATzgnqd@intel.com>
 <4b531301f35e856b0a44f7a002686406a6d8672f.camel@intel.com>
Date: Tue, 02 May 2023 13:03:32 +0300
Message-ID: <87sfcf124r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 2/8] drm/i915: update the QGV point
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Apr 2023, "Govindapillai, Vinod" <vinod.govindapillai@intel.com>=
 wrote:
> On Thu, 2023-04-27 at 18:04 +0300, Ville Syrj=C3=A4l=C3=A4 wrote:
>> On Thu, Apr 27, 2023 at 06:00:10PM +0300, Vinod Govindapillai wrote:
>> > > From MTL onwwards, pcode locks the QGV point based on peak BW of
>> > the intended QGV point passed by the driver. So the peak BW
>> > calculation must match the value expected by the pcode. Update
>> > the calculations as per the Bspec.
>> >=20
>> > Bspec: 64636
>> >=20
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > =C2=A0drivers/gpu/drm/i915/display/intel_bw.c | 2 +-
>> > =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm=
/i915/display/intel_bw.c
>> > index ab405c48ca3a..25ae4e5834d3 100644
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
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->dclk =3D (16667 * dclk =
+ 500) / 1000;
>>=20
>> Don't hand roll rounding.
>
> Hi Ville,
>
> I did not understand what you meant by this.
>
> This is as per the Bspec 64636. I am assuming, probably this is what pcod=
e expects to get it
> compared with its internal reference qclk peak Bw. I will clarify with Ar=
t.
>
> And there is another requirement to get rid of div_round_up() of these BW=
 calculations. Will address
> them separately.

The point is, no matter whether you need to round up or down or nearest,
you need to use the DIV_ROUND_* helpers for that, not duplicate the
logic here. No matter what bspec says.

BR,
Jani.


>
> BR
> Vinod
>>=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->t_rp =3D REG_FIELD=
_GET(MTL_TRP_MASK, val);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sp->t_rcd =3D REG_FIEL=
D_GET(MTL_TRCD_MASK, val);
>> > =C2=A0
>> > --=20
>> > 2.34.1
>>=20
>

--=20
Jani Nikula, Intel Open Source Graphics Center
