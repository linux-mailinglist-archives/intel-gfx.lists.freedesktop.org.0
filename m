Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDE6465CB8
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 04:25:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 876926E96D;
	Thu,  2 Dec 2021 03:25:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26756E96D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 03:25:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236557228"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="236557228"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 19:25:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="745700573"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2021 19:25:36 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 1 Dec 2021 19:25:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 1 Dec 2021 19:25:36 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 1 Dec 2021 19:25:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YVMLXLBnHxpHV8yMNdFkNirZjQkhZnvFhRytheO/69wUaLgaEDDkm02kuQVqVE0kKVpNssjQGhV5YsK+uYxb1WbFw1PtZFKhwN0y5HmPOttWn675hIjILl9PTYqyPUjfLO01t1Loy95639I7/o5LPZmc5ApQd08l0c6LSc9fzwWFqt3vlj+fqN6UO1Q+XZ5n+r+0bGrltNlCoqYzolP6SWNtfBYLBzGM5OWGyG1kZgvRFZlgPtIGMmHO07VgFI0qG32Ja/IoY+jedWNpTjWpkyR840lqUBuy2QBsKT8rH2fWAlZyiQlF1eTHdyupxpRr8dATUl6veDcpXpxiMO3xVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBCqSmznxHJWeAltuVUsJdPKzbrJ7gqMhwkvaIew67s=;
 b=KE/tMOe0w816nAgskvFIqxBCj97yntjYhNHI6XG/u86yNyo/VJiYPObzheT3LeToIBVI47g5quwUqHFn2lHrdG3zM7c2ldiPV831O1+HRi5LfPKr8gWfn6ukuiE5ukZxZqx0woyOns2+YwgseEVXCiXwH6mw1fJ7Yk4BE63Zin8Ahlm//RVqq6z0evnuSLUyh9VBPGpiP/hvkcauxbJ9HNHRXLk2hA61K0uzkXvZkFwrLomo7nfUUNKINTr3/Inf8rmzpqfi2aR5uTjewmUl/Gzrx6jczp3FZKI3R9NnEx9FsuJEj00Q6VLVnLy7QstVGJJrSm6q98gJpICgQUvQHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBCqSmznxHJWeAltuVUsJdPKzbrJ7gqMhwkvaIew67s=;
 b=mfpJNh58Z9I8cVUWwJ/JaUN91mz3XhPuTQvUuSNN3xCJQ6U9dpA9ZJIL0fQnoz3foDxDYq1drXDrb0QkZGhwLdlwKYQzn+LfGdJ0w1ppCKkM8R+623mxj8OfQsxErtZEXpetTzT1eqor4qjqgYA8e63Ipedk17b+gz9IeiSf69Y=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.24; Thu, 2 Dec 2021 03:25:35 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Thu, 2 Dec 2021
 03:25:34 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcTtIAgACxdICAALyqgIAAzzDQ
Date: Thu, 2 Dec 2021 03:25:34 +0000
Message-ID: <DM6PR11MB420430F778CF34CC8C18A9BA89699@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211130171220.8622-1-vidya.srinivas@intel.com>
 <20211201034727.1666-1-vidya.srinivas@intel.com> <YaeOkxURq25NfLhy@intel.com>
In-Reply-To: <YaeOkxURq25NfLhy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 90171a53-0f17-4d5a-2d84-08d9b543673a
x-ms-traffictypediagnostic: DM6PR11MB3177:
x-microsoft-antispam-prvs: <DM6PR11MB31775EFE3A06B216083529D789699@DM6PR11MB3177.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GcWEMg7lD7ZMTyYtcwX643Y7ciR4APIOe5/353b0lJIparifSSEVM7iI9ScAnZi2NLXDBYV31+zvN/lt3g5+0Ur6wFmVd+hCNYaCFRojSghV7T1q5V4xMth6w0Cj6CkfC3m7BfUbv6pB/btShlFTtItDI5BATkQCBv3sDb2a9b3WKvKuTkbGV10eEtvs5g1aToUaKu07bBMnpxZKLTpawiOBvKjWpxt1zZ7atoAlD1mIHfjUMWtRmP8bhYxLO/qTv2GNCn6OjreGDv0r2586vNYf1osMefovzFwOEO7Ys59gmPkTcI1Oao3fTxxy/BaQ/k2yNQZu7mTRR9Krf/PCPJuRJLVs4RBIj4oPsD93yLMMrKEmIDqCgsGwEptb37RZ5+l7DWTuyZTX4CDvHh4TuVmZjr7ALgPYarmcWBzKCw8KYWoIzqFa+4jKpfLGWarKP7PX6dZdQLiz23OCpOKloFA029vMVTdVPN0sWqWT/pcjlhnordItMq8CZ8lOaOEvtNXUouLQjQAoa6KMDKF1VbhzBRT1TAZti5waexE0QKVf+EIYcT0OT5eR5MPN3sz0Ij943nv4wGkqcAricN/KxTdHjaICHM/uWWIw+xSKvzbkoQnnQ9wUg+QhlpV2rDDY8wXdaio4Kf6TyO/5asFLWhlY2KTJa4d9kH+1sB2LKBACNyMB0SWbimMJOPDdTdLEZuv5RncVSM/xfScQlh6LzQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(7696005)(82960400001)(4326008)(8676002)(54906003)(26005)(38070700005)(5660300002)(52536014)(9686003)(6506007)(86362001)(55016003)(71200400001)(122000001)(53546011)(66556008)(2906002)(316002)(64756008)(66946007)(6916009)(8936002)(66574015)(83380400001)(66476007)(33656002)(508600001)(38100700002)(76116006)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KfidjKtgp0W68jByFzvgYqSaGhMHLigPPG2rJMohFcUK15JGvips3FED0e?=
 =?iso-8859-1?Q?5GhCLi1/YiiK4llGfdKl9a+448E2R0uTZzNsd3xrkWZwpEPcBUwtgeVNPe?=
 =?iso-8859-1?Q?gxpVnnxyA66BINaEs/orPmmos947dtnP4ctc631YA7BKHhV/ms/x1hbgEU?=
 =?iso-8859-1?Q?/yWsuSQMoU+rrYO8xY0os1tcRkdk7y+Wg8w3bYiSa9Q6Y0NaP/0iBlifSN?=
 =?iso-8859-1?Q?2MpU2yS9CxiZptIoYaaO/FyJikQk7+yui+/IVsGqN7goN2TFrJMZNrnlye?=
 =?iso-8859-1?Q?jLNklBjeLpS9nm1zFNWt3jJEDQORV/QjGkCaRoUp6Iji4z1iVQBbRGmGc8?=
 =?iso-8859-1?Q?oEmEMMywtfPqp6J/Vo+627HmKAE/iI2RNMSLAFN37wSvm9QAwn6GJsKH2+?=
 =?iso-8859-1?Q?exgkQJGUmbZW5NtQfrzbiNGNJl8tadCeiIpbY16+VbMejOLr7XqFmdaHOV?=
 =?iso-8859-1?Q?Q4iKiLl15bK/kHWQnPCgPGEqaYAJ+jDk0HdIyW+whNQ9udlV7M2Leal2Gn?=
 =?iso-8859-1?Q?3T6olTi0V52VANenkaARJV3Rb0tHd8FY3RJheeCHtmqUJEuyHeVDxpOOmf?=
 =?iso-8859-1?Q?ciUO/NG5UT7AxHAV7iJjWynFQwxJzpg9H9aZ53Adj68+NRBjRkycH4/vHY?=
 =?iso-8859-1?Q?pKfcKxWGUvEuEKlIkE0vT8BHFUVWmOcXEbrYmUbe9n4iGMecmbE3fcuDQt?=
 =?iso-8859-1?Q?lJSuDfMa1nbyvfwzMTwMKi2ztXS2+Ovv/6fJ45XIB7J/+7L4WrFISDSGLz?=
 =?iso-8859-1?Q?KXJVjEpsSVe50Ohm1JODt2tELzSO/f5eIfkmZaR54EUnPnh/vVkzrZqR6W?=
 =?iso-8859-1?Q?yVo+Fb82SkNXWboSFlXQcyKnbfswYNxEISB4i3gSrs8nUmuXtc36ELwUda?=
 =?iso-8859-1?Q?jjZWPXgqh399bMclunSFa1GggZaysVBjEgWbxLoUC5bwP/yhZOy7NUEXbv?=
 =?iso-8859-1?Q?nMvtWShkk7v9lXil2vuh3xmet5HxayqDCoNkhVpHIi+tiNviyC8kthXVLe?=
 =?iso-8859-1?Q?l9F3tDtRipVwCOCcAgtdQtkNcIRTuG9BJb2KXVLAiTebhne/QSEt9wFCYb?=
 =?iso-8859-1?Q?POSrKSOXoS5S50sFux2KKifAIOUIXpnTHWFs4lf2LQuyM9zTvIMHEvY9Iu?=
 =?iso-8859-1?Q?TM+DQEQx793Wl1+6liP3LKc6ovuKtKGsOszmJp5/ZlV5eDSDYKflKMZoJm?=
 =?iso-8859-1?Q?ECpXw+pSjbHkdGzg+U3xYAefJpxknJk/oeKbclLP1tISdI7i8PcOCNYa3u?=
 =?iso-8859-1?Q?CWVUE2UM+XUQ/WOtpNrF+94+VLMJ6P3H8akKsbyUt67xj+IwxtPr08lHdl?=
 =?iso-8859-1?Q?odxphcOw6ElKOdYLQ6DxbJBqUbjtNUop0LmHGuAQV7EODFrM7trkJ+u+QN?=
 =?iso-8859-1?Q?D36IEIj6leuhOYf6ah4yN6y07srw2KNCtxyYBRQhgq3sKHbVASVwdsYbtA?=
 =?iso-8859-1?Q?gOC+N8vY1rv9b3Nr4MI+OouKBePxwbVNQXL2QTpYLzj0QBkIRBCmRFdpIC?=
 =?iso-8859-1?Q?qRCY9ZnNgPAlPACT+BNXRJv6kk24KqRyPxXuGLyFKATfNXC7J5LwHqQvnK?=
 =?iso-8859-1?Q?hVsooIVIMiRWUKVIKfyVDZCaabizGr01lsp5QQbsDu2RKMqpca2tokfIZC?=
 =?iso-8859-1?Q?1p3wSdCs2mnAox8jjaYD/k0veZ/PTeNjEUx22oy8xVVlIFXuN+NE05XGiS?=
 =?iso-8859-1?Q?mfca63srGVUotDDFbF9rSSXfMISOK1+j56WHms/EUU+BoAVoWTEm54q1PT?=
 =?iso-8859-1?Q?xO+Q=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 90171a53-0f17-4d5a-2d84-08d9b543673a
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 03:25:34.8098 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3U3ZKletBOrx+qZXot208fVmn8CRJxV+KYMSGEEbwAdVoQUpIGhzyStvLLj04+d/FHUG6PinSy2tNKMOnFX0Rr6ERluiiblUuI7BOfMA+L8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3177
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, December 1, 2021 8:33 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Wed, Dec 01, 2021 at 09:17:27AM +0530, Vidya Srinivas wrote:
> > PLANE_CUS_CTL has a restriction of 4096 width even though PLANE_SIZE
> > and scaler size registers supports max 5120.
> > Take care of this restriction in max_width.
> >
> > Without this patch, when 5k content is sent on HDR plane with NV12
> > content, FIFO underrun is seen and screen blanks out.
> >
> > v2: Addressed review comments from Ville. Added separate functions for
> > max_width - for HDR and SDR
> >
> > v3: Addressed review comments from Ville. Changed names of HDR and
> SDR
> > max_width functions to icl_hdr_plane_max_width and
> > icl_sdr_plane_max_width
> >
> > v4: Fixed paranthesis alignment. No code change
> >
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
>=20
> Hmm. What's this extra sob doing here?

Hello Ville, sincere apologies. When I run checkpatch.pl I see no warnings =
on my host.
However patchwork keeps reporting paranthesis alignment warning.
I tried to push it multiple times after running checkpatch.pl on my host. R=
eally sorry about that.

Regards
Vidya


>=20
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    | 21 +++++++++++++++----
> >  1 file changed, 17 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 28890876bdeb..e717eb58b105 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -420,9 +420,19 @@ static int icl_plane_min_width(const struct
> drm_framebuffer *fb,
> >  	}
> >  }
> >
> > -static int icl_plane_max_width(const struct drm_framebuffer *fb,
> > -			       int color_plane,
> > -			       unsigned int rotation)
> > +static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
> > +				int color_plane,
> > +				unsigned int rotation)
> > +{
> > +	if (intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> > +		return 4096;
> > +	else
> > +		return 5120;
> > +}
> > +
> > +static int icl_sdr_plane_max_width(const struct drm_framebuffer *fb,
> > +				int color_plane,
> > +				unsigned int rotation)
> >  {
> >  	return 5120;
> >  }
> > @@ -2108,7 +2118,10 @@ skl_universal_plane_create(struct
> > drm_i915_private *dev_priv,
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 11) {
> >  		plane->min_width =3D icl_plane_min_width;
> > -		plane->max_width =3D icl_plane_max_width;
> > +		if (icl_is_hdr_plane(dev_priv, plane_id))
> > +			plane->max_width =3D icl_hdr_plane_max_width;
> > +		else
> > +			plane->max_width =3D icl_sdr_plane_max_width;
> >  		plane->max_height =3D icl_plane_max_height;
> >  		plane->min_cdclk =3D icl_plane_min_cdclk;
> >  	} else if (DISPLAY_VER(dev_priv) >=3D 10) {
> > --
> > 2.33.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
