Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EB24668BC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 17:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712346E1BB;
	Thu,  2 Dec 2021 16:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95FF36E1BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 16:59:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="234256602"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="234256602"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 08:59:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="677726933"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 02 Dec 2021 08:59:09 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 08:59:09 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 08:59:09 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 2 Dec 2021 08:59:09 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 08:59:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TZQntr7h7JmCAM9FtIelyv01rv4+Mv3L+0Ye5mHcDS/NeQsZX0Sx32AH61E63vfxFkSsu9GktlkOQw+EWItSZRWIu/GMD6eQ05j7+eySFOo0wV85N1ManfzWlRNsvPEqqKZ7Up0Tm+eqtuV+VIW4my0y5nDZgh3PDO9vXYanut5Tw931hWZndJQrdngW/tIv5D15e7Z8Do3IVuN5CNZiuGsrq2oW5OcSA/Rqi6o9yIMw2Htvu8UEErrEUxz1W69/0v9+xHT4UCzK496T0Ld1XoI3gDkMdUPW7pl2l9QLwyc4otknbiWRniE4zMM3b3KyukyDYaKjGIytlWEK9tJMCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G2HbDoFnqw++aaMroazD2gNYilMAtrlxe4Lcy/5HnmA=;
 b=lvyMNWpjI/MASt1hrCr5Jybv1JrCCT0dp+7l2Qah2oI2SRlJQuDadadVVn7lN+GOhOy73zYWmoSlkjv5kJstc5y8Z7BNkVZ4rkXg96M6NindrtyZRxIjpNI0QdJv26VdbuNuuEXKWLCItQxy49l4B01bWZDwvPIb5uSRpyyyK2iO/ogIKV8E70FXMTAbnkJy51cphedqzN+bdaV2BtnV+IsDdzR8bJKkhtM6toV8ptwbXOmotx45gYd9D/RbxxKzI94d55+n2CadWD2fP+shmkpj0ly91kBUraCzqJJoLxQL61oysvmUJwb2XUc1gzNj0E36098p7BR80XbZGlvZnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G2HbDoFnqw++aaMroazD2gNYilMAtrlxe4Lcy/5HnmA=;
 b=guKILJfs8e3AciTGd+Q56G4/8tE7EkfHQXRZ9YtI2eMK3loMYdUBgxk/NcA0qsUsYLRX/fDXY+3zuOajbqNJNxo0mvOQLF6r1aKGNFhVJqGPjIl+D9MqRSbwmZ5/iNaBbNEbOmCICKRxLgHTiDLIhofnHn4iEcBnli2C6S7Zpmg=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM5PR11MB1465.namprd11.prod.outlook.com (2603:10b6:4:7::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.23; Thu, 2 Dec 2021 16:59:07 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Thu, 2 Dec 2021
 16:59:07 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcTtIAgACxdICAAg2WAIAAIQsAgABAqpA=
Date: Thu, 2 Dec 2021 16:59:06 +0000
Message-ID: <DM6PR11MB42040AE38427EA49991E546489699@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211201034727.1666-1-vidya.srinivas@intel.com>
 <20211202110836.17536-1-vidya.srinivas@intel.com>
 <YajE7MGCilq4joly@intel.com>
In-Reply-To: <YajE7MGCilq4joly@intel.com>
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
x-ms-office365-filtering-correlation-id: e88ce2ac-c279-4909-a10f-08d9b5b50d94
x-ms-traffictypediagnostic: DM5PR11MB1465:
x-microsoft-antispam-prvs: <DM5PR11MB14651070824AFF685E6DD90989699@DM5PR11MB1465.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mWzzcxwV6ruUTzqesIk8fEhHG2l9t6l5la98y6aAvTa2JPRIZFzZxV5mZidhrcWuhtHUjgakQv7/LlNv1SJL3LpgylGMUFN36AYyWbClOrQiEhSFFW74y7MaLwmfQTIBcimMMyaX8SOSeOrSnecAVnVk2IH61cz2HDFPGxkmO7kxMPhGbdx9S1BoqyYsL8AjMyzA/nVdJzrUpnxQNjAE1bL4Bxs+9VnT1XpqhvoIN43crqZxQqJ0x6N3gtGcf/KRSVfb8L4mk+Xp6sz4flmMOZF722Bez2AZ2mQH4QBLsigjUxQHWcp43dAdquhzHiRy5jDZYuYGfgxgjhPjq58FVsHPXdpTShzGtQbml+thwAuKlspsFDWJohHctvzbzhuU8yZWGYfBjM5n9yWv3E/7t9EQ1MP9CUgsdOPg74WbtaKICoqYt+5JC3z6/kuQUGKeCrakxfkeahjJnsNYxdjx+8OjVUQHr6cKjv2QvytAHq7m5yiumIU/l32rLk6JWAKfQZH2ftBy12n73g1bhzxExX634e7WNaAibwqPB1MUvBH8vpdRjxsMrzD+TE1+1NAwr6W/gEL3U8SBdbfkLAASwUM5l1T7E+rSp6PdSW4v171WXQf5X6kcBoOD5G+Ndq9nVfSN0pmFntdzbzE96ZcgknRQb2CGC82YjJcAotIP7wTnL3khfxMwClcZMxsWxYqh7HpUJ3AuMkj0fhW7NZQemw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6916009)(26005)(38100700002)(122000001)(53546011)(7696005)(52536014)(6506007)(66946007)(82960400001)(8936002)(316002)(2906002)(66556008)(66476007)(508600001)(64756008)(4326008)(55016003)(86362001)(8676002)(5660300002)(33656002)(9686003)(83380400001)(38070700005)(186003)(76116006)(66446008)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KCebJI+ikqhhMz5CadZic4acFAZSrVTLj7aMN1x5QoidUpc8wXMmmK/KkW?=
 =?iso-8859-1?Q?AuwtHXqI1y9Ing+9gN33NSKvBmjG6RX4UtYJX5rRD3fba05GrgzSS6CbiF?=
 =?iso-8859-1?Q?Lxhj1lDisLkcBBR6baZO74T7Swfh0LpWWoSR3sQVfsj2NaIbB4x14eWM3c?=
 =?iso-8859-1?Q?b1hCej/4wy0hfYwHQ36oXkbYVYsgZ6rc/tq8aiAgYnDF8mllg/fMZBIgUr?=
 =?iso-8859-1?Q?576NPUv8dfl15CQKyu+Phj8KlK+nlh30IqJ/Msa/OAvydx+oQlkSriQm7x?=
 =?iso-8859-1?Q?TjygYZbNPAHP/N2p2FPUQqxR25nPfppPs3vMOhEuHvmkyOGkiPTjosZOFk?=
 =?iso-8859-1?Q?05/fnkhJsZ16yjR0hpflBbHXywdjHUraO1DHniMOcQ72xlr0Dj3ZF3NSVg?=
 =?iso-8859-1?Q?JTSaiV7pdCl9bz4WUbJsfREXK54kwerFW2vAzWxlDdkNjuIEghaXZD3pb6?=
 =?iso-8859-1?Q?DpEWp04FgfTEUlVA2I/F00TmAXwRaarK4rzo58P/WNyuZ3JE9tKQ1e+dz7?=
 =?iso-8859-1?Q?Yi/g0ZIAwEGGbbHhTTX7igwQnZO5UMY4MGjCDy0aOX/OhM0cZNKLwkpih6?=
 =?iso-8859-1?Q?+y11KmRgIJo+gcxo+/jWgAM14+JZ5H2hXxS/uPK4CoEaKbZ1Rl51cEb25l?=
 =?iso-8859-1?Q?bNflTV3NEdFUQcMX3o9dX/qDD+SXd3EV+kfMe7sWF1P9gi/o69JwHK2llw?=
 =?iso-8859-1?Q?EebhYaniJb0viA5JreBOJa73xVL7PozwXDhb6RZ6/OJnCz8yruHmQPz40t?=
 =?iso-8859-1?Q?VdReZUMAKE+8ylO53tdmPSqx6t+MyuOx8Oin8R1dajQM4IYtn7FDNqKBQZ?=
 =?iso-8859-1?Q?/P4pZqIleOKUg6Nh96AERUyDO7cHrLW3eDGzfk2g1LW1H20iXxN+hJIIBj?=
 =?iso-8859-1?Q?8R9KgM0ANXTXug1UTERgBS8O6CNEULQqo/sl1hrgZmixlvQ7s5jbXnB1fc?=
 =?iso-8859-1?Q?5peGfP4oqIGQbGemoLirBpEWgc5vx6U3ZF4+k7/JCAhgStIqgkO/B8ngl9?=
 =?iso-8859-1?Q?R+mdZf9ConCg1OlzagZNEvxJZSvYHoYBIRK6Vz1R/OuIYPq5F58ZXWkpFx?=
 =?iso-8859-1?Q?OhpaDj3oK+UCO/Lo1gsSJqth19EVb55jKL7/PqVtFaC/CZq/NcRIQPK9st?=
 =?iso-8859-1?Q?n/YIYkWfqvzcD/eLMcZkUgtSgUFR0kUknZfqoVygPDAsHIEiusgeM3nHIa?=
 =?iso-8859-1?Q?uOMuhHFWqfXWEYeysh3ckjVReijGiIpDfr949lfb0dtJUrSrz9nMbm/V4y?=
 =?iso-8859-1?Q?XTXAGO3NW8YlxockUwYTBzrtPvsVwRBf4WwIkgnSbZ5iFiH9qX6SmCbpG7?=
 =?iso-8859-1?Q?gyk8kvRQu/xyFFUSrlWAx81zifMwxs67WEjRwBJm66dBBwSw9R7Fcw/4Ns?=
 =?iso-8859-1?Q?+XUAOxeOIhLPtm6nvTg0sssUUvSfUwHk1awG4dwQYn6vL6XcIC/by5vEgs?=
 =?iso-8859-1?Q?FjX9CElgVQG3G9E1td5jrN2UdW97LoT3hUZ6a2OlhtHNGOMw5747AGGH8J?=
 =?iso-8859-1?Q?tOzL+k2RH0XVJdeRIARJ4I/nYoybenE2zAjW4lBqejoJFFgt4+UasPD/m7?=
 =?iso-8859-1?Q?8REOTdTs7P7aC8BCFRxwpEBQGg0KUA+PPWoICoita1VrVWftCydWy7r3UG?=
 =?iso-8859-1?Q?TbnC+PHBaJ32UWWpWy9nRKrBkMthDAq7hU3BlqhxaDJO9ZeFBA2/xj1T6J?=
 =?iso-8859-1?Q?qYyJOtr1Ddjxs5krlnMN/0ZhczqqMjJHwOPnn0W9F2Vhao0So95ufYO691?=
 =?iso-8859-1?Q?ZRUA=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e88ce2ac-c279-4909-a10f-08d9b5b50d94
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 16:59:06.9599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: isidpUhaF3fX25+2U+tCPE+BrcByE/lDteH7wKbgVVH6n/GyRwQfCwfUftf27ZPGjOiOjDHWv3Up/Jc811cBNGI7FYJw5r6Sh5yf+eVOaGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1465
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, December 2, 2021 6:37 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Thu, Dec 02, 2021 at 04:38:36PM +0530, Vidya Srinivas wrote:
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
>=20
> Pushed to drm-intel-next. Thanks.

Hello Ville, thank you very much for all the help.

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
