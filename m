Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B2B85426B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 06:33:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 101C310E4B6;
	Wed, 14 Feb 2024 05:33:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a0t4hVFs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96ACC10E4B6
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Feb 2024 05:33:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707888836; x=1739424836;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iZwBSO8ljZxhD51a7S7zWL+mXyRwKlVs/a+Exq6NMms=;
 b=a0t4hVFsm8xOglVfxacuusffCCQL8RNV7Rl7U0fRv1CF/R82UNJ2Hmbd
 3TkHXPvusVT5szKdnvUiMuVthsmI6lyYk2soDNeGes0CCm9HNTwacs2MT
 hBpzMcInh68U1714wUu8gARGcVYaNCW9xppGx4/q25YDEmXNDIPwN5Ic3
 WTcetnbE29Zr7yhMsANC/3OC3t0uv0XsjOHnAFAyscxWrJdfwJLnMx1Aj
 UG/rrKmpQR5Au9PJ3dyVIhJgIY4j0EXpR3XK3mRyBlPsIpYg1uIhQJHXF
 iMZpVxPgmusTCW16SDPXGKNZV/hkGz5Kq51tcRrH+m/aBrKLcBCjNbVWe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="4889613"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="4889613"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 21:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="826312617"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="826312617"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 21:33:55 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 21:33:55 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 21:33:55 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 21:33:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFsnWapowa63qOb68VWWf8z4zv7+P51MXDcWEknGOYmuzVUXNyyuKpLhXV3/cOBhfiDRZSii3W3hSqYoHDFnX3Z38xXzDDtzygVg00Ts5bt2HxSCEWJG5c7JLvnzhpI1oSbSohM+SURucDLvqXiTX58g6hUNudCmOvUirQzkQuilQxd/7+6gJiIjczU8vmbmMIeWaxYAdpj8hgEiKTvCYO/DZMEshnyj1sn9nEdujxQMouCEBz+E80fi9vz/6oxK8W3oTjCuQQD/UXfygNzVmwCuGY3LE2rWOYOa5ab9GwkEAo0uny2rS6dxaZjNf49N4Li1/AmrQCKIs4TTKrlL1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XYvJTQBmBnMcb/HnwLFR4ExYicMBbvkyh9SGfKhbhDA=;
 b=YDpfOfq/a+YGh5OB1HYIsfVU8+CvZ+6hbXg4BkTNnIpEnz1sm454I2kFWaJUFLKuNnSUpbnH2lyV7DYDqO2BvNFpDXHzkorEYrNy72t1vwiwq4IYpNhZHyeI9wp3ZC4752m1M7mCdjvTdvTvrORLnleIZXwr/IcRLjMpsEzdN8+2PGt0Z+kUnHPe6y3h66L5inVG8Q02CK2EKcwF85+7JC+0Pj773/mfWDsMUx1hqkrcBIx3j8SrfyWhlgmpEvxTqPccLw6sESALgXG0ulM2FpkAUPfDDKvXaxvG5/AjXmBDNmEuQghfD6OZzOTrC3erNg8+IvNMR1iuIesdTfMUVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ2PR11MB7617.namprd11.prod.outlook.com (2603:10b6:a03:4cb::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 05:33:52 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 05:33:52 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
Thread-Topic: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
Thread-Index: AQHaWOtsMN1zvveYmUyeE7uDkTOiqrEIn0sAgAC4N9A=
Date: Wed, 14 Feb 2024 05:33:52 +0000
Message-ID: <IA0PR11MB730783C40D327B26EEEA8EC7BA4E2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240206104759.2079133-1-arun.r.murthy@intel.com>
 <20240206104759.2079133-5-arun.r.murthy@intel.com> <87v86s6xjr.fsf@intel.com>
In-Reply-To: <87v86s6xjr.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ2PR11MB7617:EE_
x-ms-office365-filtering-correlation-id: 1b7afc28-248e-48e2-15e5-08dc2d1e8795
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VTCv8QcgtYcDwzT9ZXY/YvXeW7YjoTW+k0KrwSgyKUYm2feqj+V+BaocZw9yD2JiH6wWJlq9zP2te0BlYXTqjQ6kQdtr2lWWCbBqApDLemDa+Q9mTTt8iV3/9mSEfYOPIdFZtxCgwraR3STPGbeO45Ecvg47ipxHZWzZclffiRNjcLD7LGLC8uhfE1NJhbegQYFfzkJfzc9QAk80A7hVWLWmmAWHXRG5vcRCGnLSFRRoGh6AFTxAZrZR2VgY7rvMB5svnnyvcUG8rA1n4M01jkvU81RlC8zEA+imOeDFwiptxXba+hp9kdy7h4UMYXix9W4JvDMIjnE+2xiuBFUsJPkqs2Dzj+ZGsU9vI+WN21XkD41qw/ZBlIrFqXgiQDfvs/bsaVf1nR0nco6afOfq+2dCFUsz3ordXAgZLA6ZHwIxIS7LL7C94O1uibxmdxMAx2ttC2jewkp7sg/TV+BpOL8XM1wkxYmn3Rve7uWHPJjijIK2hv3xiExOdDd63VtEzDCCnd3BttXS+POv6PJH5TnSV3OSqKjXz4iLAYrwJ6Ar3t0BVhjEl5Xlnkvre1vVs1TVdHAgD224breIfdH81imKR/Lg0KAVqNgpDLlcF01mejc7lcc3kkUPGX94ZFoG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(39860400002)(136003)(346002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(41300700001)(478600001)(82960400001)(316002)(33656002)(54906003)(86362001)(64756008)(66476007)(83380400001)(76116006)(66946007)(9686003)(107886003)(66556008)(66446008)(7696005)(71200400001)(122000001)(53546011)(38100700002)(6506007)(2906002)(110136005)(5660300002)(8676002)(8936002)(52536014)(38070700009)(4326008)(55016003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?T1EaFna3wPldbXv0xjqC/180J9HrkmWG2ijzkKIiWcoIUAeNinGrNO7xFRu+?=
 =?us-ascii?Q?WFE9pmKgPPzezMzPxEYQpcUpDOhGfFzL53cCXNemj06/vbK7tB07hT8LxyAR?=
 =?us-ascii?Q?5nlm61q/hKidSAxQFqI995Ys6auAOrla8GF/7nlJuZ1Kw0mPIria53ndXL6N?=
 =?us-ascii?Q?xSniHNzvghGgUA/lSVo8BYRHTEF3x6ss86IAnL6aBkKO/pVq/lJga0yg8h7c?=
 =?us-ascii?Q?EXSx/o6rEwckvg0IGBN0sra1OTheuLpu1RTL0QUVuBfcyTwjdj73Sg6Z8uln?=
 =?us-ascii?Q?S+eXXMR3lgC0aE3TsfBgALDSkxARIebraXPdtafyjAKYgC143xG2WdJL3q7D?=
 =?us-ascii?Q?3R2L9ZkXu6UeE0j4a/R6H6XEyRV+FXD6Y3PRgg+2W0QX0Wtm2inrsp7cFuC3?=
 =?us-ascii?Q?4GuQYfJzVqTNR7ILaeOEt4tylgLQOroNGmvRSJiLSCV3+jpSb+OTzBucpjJk?=
 =?us-ascii?Q?BReRacn/Bnzl9724XYL9jJpVNRxJ6i7Z4I60/kt8qsocIbpk97EtEXCHkujG?=
 =?us-ascii?Q?Fybjk1cKl/VQ+MGc7vvcSD5mUls7xD06Pd3I3OyDNN4GgQehKswSY9F9segX?=
 =?us-ascii?Q?qOK1plP6MxhDonV+mY78XXtR+8xx0+/Ds/78gBTk2aZ5bebMKGrCAQLJPyDI?=
 =?us-ascii?Q?nSasRtYvG1+hpTZp/4IcLSZHI6jQQZf9obb+jSaZggLRbCT4eSnYsYCUooNi?=
 =?us-ascii?Q?lWCAik5rveex2YQjU6jlMHq39SdIzuLPZ6MLr+sEZqgSYGHCbfPT8VnZ4yJl?=
 =?us-ascii?Q?zbBFR5V389kGeGOBNNWI3EjK0dmtEfdJ4LN7JNFkFFcps0UvEd4KS9pfSoGh?=
 =?us-ascii?Q?MVVDKBb6dSGnLvcC3RIHXTg+kvOpikaYvGUh2blBznuF4wxRD3q0u4IfWmHI?=
 =?us-ascii?Q?YkdUgKQg9pk5U0icz7MBuSyWY3qSIGIpL6Ui7akaiQCaxtkxYrA4tDWUIEl8?=
 =?us-ascii?Q?9c9FP6Onqp1Ei/d+h+wkNmQ41A2Z8zFakHLwiOaFMxtgKsVfeB+hOunlUsq7?=
 =?us-ascii?Q?f5vy4kpKQLasYgRIZC6S7/3pLiNC7MQiRsQEqUN0KhzaRJEzsm9Ynak3f/Vx?=
 =?us-ascii?Q?frEhnlRCsRH1N8haH9eRGncr35J/ioRgzYxnKS8ChXUcN3AS7+wkGewh/3Sr?=
 =?us-ascii?Q?TTKllSa2Fz8vmk+bu2N5IpuVgKxhFBaVwAVsum6olE1NPQwUVabUcgbq4cKK?=
 =?us-ascii?Q?7AKwlv4P58aBgUdxcRMzqnGa1QRKakYbPpItb1oOk9eWyPravRNb+Im4qtZ2?=
 =?us-ascii?Q?rJmgNe8py7ZZFf6FdtZADZv6qy868CKkx0vK+RQMhXGRdOorLHS7DYsLlRsv?=
 =?us-ascii?Q?cyvuqdSM/yvJdeAqWwBbX2ekGI0tkisxAJoPatep0IUb08LHSmmrEHt0p/wu?=
 =?us-ascii?Q?V4qybo4sGgyXFUIchfPPQ5/hDbXHLN4kvFWQOUXIr0VEmYN/s8iDxXqwTRi1?=
 =?us-ascii?Q?CYqkJpYvSKi7RHVMwIXZFqfJeYYYDwKk6F3Uipqa5DcYZBGJWfvjh5aeDXd8?=
 =?us-ascii?Q?EqRBQO2brWuq/TWby6aQasWhMwnwZJEFuDUjoxVlgFcF4KqT59nLuZqBT2gu?=
 =?us-ascii?Q?nkSqhumu/8fD/Fty/PsObegrV6FUSrL+7bE8gGiQismLnYiaHVF/ncs4Yclx?=
 =?us-ascii?Q?A7CwF3U/67jcwhZgv7CaB62I0zXInKKswjBvtGGMgDre?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b7afc28-248e-48e2-15e5-08dc2d1e8795
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 05:33:52.6226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mac6tglRjENeqrR0GR+ESOCAxLvFpyBMJ9YnqfUa2NkxNVtDBXzHruxm7DRKOqseCSkNgFxEPAzNDXui8LQ6+w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7617
X-OriginatorOrg: intel.com
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


> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, February 13, 2024 11:45 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-gfx@lists.freedesktop=
.org
> Cc: Deak, Imre <imre.deak@intel.com>; Syrjala, Ville <ville.syrjala@intel=
.com>;
> Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: Re: [RFC 4/4] drm/i915/display/dp: On LT failure retry LT
>=20
> On Tue, 06 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > On link training failure retry link training with a lesser link
> > rate/lane count as specified in the DP spec.
> >
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index ed7620e7f763..29d785a4b904 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -2502,6 +2502,7 @@ static void mtl_ddi_pre_enable_dp(struct
> intel_atomic_state *state,
> >  				 crtc_state->port_clock,
> >  				 crtc_state->lane_count);
> >
> > +retry:
> >  	/*
> >  	 * We only configure what the register value will be here.  Actual
> >  	 * enabling happens during link training farther down.
> > @@ -2586,7 +2587,14 @@ static void mtl_ddi_pre_enable_dp(struct
> intel_atomic_state *state,
> >  	 *     Pattern, wait for 5 idle patterns (DP_TP_STATUS Min_Idles_Sent=
)
> >  	 *     (timeout after 800 us)
> >  	 */
> > -	intel_dp_start_link_train(intel_dp, crtc_state);
> > +	if (!intel_dp_start_link_train(intel_dp, crtc_state)) {
> > +		/* Link Training failed, retain */
> > +		intel_dp->link_trained =3D false;
> > +		intel_dp_stop_link_train(intel_dp, crtc_state);
> > +		encoder->post_disable(state, encoder,
> > +				   crtc_state, conn_state);
> > +		goto retry;
> > +	}
>=20
> As said, the retry needs to go via userspace.

If within the supported mode range then also do we need to send uevent to u=
ser and should it come via userspace?
The fallback mandates in DP2.1 spec does this fallback in a loop.

The present fallback structure
Struct dp_fallback {
	U32 link rate;
	U8 lane_count;
	U32 resolution;
}

In the same fallback code, the present mode will be verified to see if its =
less than or equal to the resolution in dp_fallback. If so proceed within t=
he fallback loop else set the max link_rate/lane count values and sent ueve=
nt.

Thanks and Regards,
Arun R Murthy
--------------------
>=20
> BR,
> Jani.
>=20
>=20
> >
> >  	/* 6.n Set DP_TP_CTL link training to Normal */
> >  	if (!is_trans_port_sync_mode(crtc_state))
>=20
> --
> Jani Nikula, Intel
