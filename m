Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0506E271A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Apr 2023 17:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73BDC10E1A9;
	Fri, 14 Apr 2023 15:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E7A810E1A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Apr 2023 15:34:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681486443; x=1713022443;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tI994xYoOrY37DC/Lj+BEn3geyQ/q8d0w9ehHdZwOdA=;
 b=Rfn2pO95tMfNdSpD/Nlio22DUEdPkGUQ0n6JyZapc8Nxxyas8Bwp9a7l
 4YSXoNv4HGqxFUFx0A8FltbzPtp3VUvuHzB9TCBSFowFB0IgMSzy9wLkh
 ow+ZPCcvMwB/8HkqBslIeFiTnUlp3empW3+1m0H086i1AUWbJOpqeBH6j
 PZo9mKygVTYStj6Rioqy9lB1VIej4oCYdPEsBP4cSP6fQJf9tJYoRftbw
 IzqBFG+NnL/n8KWUNrRYEQY3PM6BAAyV93GmJzYPcHoJM5G37dEcp4zpe
 Md4nv/wS+NIypFOXXo+NJm1NR3V0YNUd4Ttla2/lY1vo3wBcY5uQ1IlIb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="328641075"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="328641075"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 08:34:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="722489133"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="722489133"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 14 Apr 2023 08:33:55 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 08:33:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 08:33:55 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 08:33:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cAj8IHBWLLxe5FOA2roSu2DYn/b4NQIUzgo4Ksv9S7FHZxMvnRzx4nmQecUffU+LaOm4REJYREkobiuGlFIQTUVDizDn1vBoAEgoChdpMiEOaPggvvBHfhKBXvT5YKyEWhIvrMGvr8+jU1GW87Yfogq12TN8RI628WQLsYXnfa2bjsy+bPiFvR4GDed6/U2XQ8y9oiw1POsJfaVUaTZq4e1oPBa3lQjNbIMTvLLGxWOG/jhsiF3YCynUFA8TOEaqJlTD8e6Emk6zX7hNDFLA7mf+YXIcspCuXdDQ+WVbLItm9RfXMdewzJoueondACgfq6h/Ah3rmmVMwid4aNFg6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XmfzRzl5L5v7f4ccyS2fGoADwe1emwinkzUcxwcLj4A=;
 b=oH3DFhb4cKPBb+gm6Fp4752pEMkoifPfUW9dyneXMLdUUB1XmQxnRbCif3Qn6b2GHoQ5acjUPLZINl6qoHKBYKbhyqnubdamF/xnXV3Prd0jR91gjOTyEEvvzUkpwFlDZf25zWNcG8xZ5OvI2fetY78/NOtKF95EcFryD4bHe9+Fsv/Cf9gB+8Aw2wpaEd8PxyI9QS98lJeuqJ4K9LtnLqgNuWTnedX2D2XlM6/MTl5Au5t1jcamjRaM8l0j2UA/G+rYj3YQGQ3P0Nd5WVIgXpArGZQGqEo7nZ7BC3A5F4gzP9Hq+EyF+cJiJ+q++bqf9jfDuGAjBzsz8ek+II+P4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB7063.namprd11.prod.outlook.com (2603:10b6:806:2b5::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6298.30; Fri, 14 Apr 2023 15:33:52 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%9]) with mapi id 15.20.6277.038; Fri, 14 Apr 2023
 15:33:52 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [PATCH 7/9] drm/i915/mtl: Add C10 phy programming for HDMI
Thread-Index: AQHZbsXE/s+5Upq1wUWZKbsHYuMbRa8q7xWQ
Date: Fri, 14 Apr 2023 15:33:52 +0000
Message-ID: <DM4PR11MB597137B19DBC0BA3AAD0AD6D87999@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230413212443.1504245-1-radhakrishna.sripada@intel.com>
 <20230413212443.1504245-8-radhakrishna.sripada@intel.com>
 <ZDk7YSJd7G+uaHuE@ideak-desk.fi.intel.com>
In-Reply-To: <ZDk7YSJd7G+uaHuE@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|SA1PR11MB7063:EE_
x-ms-office365-filtering-correlation-id: f992ac5f-716d-450b-3b85-08db3cfda69a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XZA1htzjF4y2rjBmcj95PObs10cGod/nTPdmTGSmaU3stvJ6QegR9gIFWzFXd9sQ6eGzz/DyXj6jLmNdxDwuWgiwtf8DSgBjvzlu52fU1pN5C3UcruyC9jH/5vbUm952SkFqjg0HZWFS72CIJtwOPzhTHp5+RMGg6c5AD659SbKPWlcrgJYB6s7CRwfWHXVMkSZYBTIA/ZeDaDHEvHWNrEH2WzDAiZx9vF1llFeeDbDEsJPm2rRzwdt1Q7MguKmqNqpInFHLuwZjLivSlrqKs7dY/HzFszdPmD3A1cJ9SItiXA+X5ikqVxutE8pFdbZjMf4fgx/swyUg/vvhXNGG5JDckmB9HkjwzIIJ9nSvBXQAOqpxsZkD8t0FXNDxsLNtM4YG7ADdXTeG3F2lJwvaNiPEQYIYX/mUgJkuv/drGtY6tIy7YfTr2ci2i8x3Kz8Y49ls8RNe0KAYwSlaCpbOFSnACPYrVADwuRkVI1MCn7IybAmQM62boqebSuDpJQXRrzyj0FMnVIiDe9ksq72iFYhCmvDulxSp2xCwQF8w0jbCce4znXopvhCS4+mnKBPR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(376002)(136003)(366004)(396003)(451199021)(66946007)(5660300002)(52536014)(8936002)(83380400001)(966005)(186003)(38070700005)(53546011)(9686003)(122000001)(6506007)(82960400001)(26005)(38100700002)(86362001)(7696005)(8676002)(33656002)(316002)(6636002)(110136005)(478600001)(71200400001)(55016003)(4326008)(41300700001)(64756008)(76116006)(66476007)(66556008)(66446008)(30864003)(2906002)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?7tjRA1VG1pBqmpQ+SEHX/qr6hg4KAcDLRduVKM/0ntYQJTAG3Dz5zJNkMarl?=
 =?us-ascii?Q?FdQbYn83gBa1glqNDqqgkBRP3zFQMQRfO/dHlllcqXhmRgRWDPazhiceukUQ?=
 =?us-ascii?Q?BfkVDtZHohosLrFTh0xQLKmq6EckaXNd2dXWtS6DMsBXQivNXIwl+Hu+11w4?=
 =?us-ascii?Q?JYvVXFvDXrOsk3K+y56FO2zONjrkUWVTpw+cAphUrSP2WrLDJ8MwFkJaWj/1?=
 =?us-ascii?Q?yr0v6MGNrv/USbJnEWATBf6WghxhO/19ue0YmFFxqRtTLDjf+45bmLFhsvkh?=
 =?us-ascii?Q?z+GCkUsvMTBj3eBWqINL4k/xeW9IcX/Cd4nNAFUfmQaRzdBSWkzROa4zlbCQ?=
 =?us-ascii?Q?XCcgT/Ojr1s8s8DpJNQfTlcFEK1ZJKRdSURlPELHmtzRKKkewIAYlhX/EoQo?=
 =?us-ascii?Q?esaVlR3BUcvT5c8w8iErPVqIG+KBkK04auHAtbceFqIbARDgsAkqlpJpEbcf?=
 =?us-ascii?Q?rCG6Z80P8qXOxedh6/8NKMM7+kG+NqS7i3btsT7XHbnuxmIeg0MXIs9q9wL+?=
 =?us-ascii?Q?99ISy9Ig+AJD/tFFA/i7upNKTtcQwV1l/h5P68dy+qnuyExREAWN5chOTn5J?=
 =?us-ascii?Q?yGgPDBYp9QfB/oeO+fPsK310H15+LBKuY4lwt4MAuokGuxjIZ2aoPog4W3Po?=
 =?us-ascii?Q?3MKFBgQucTIxcydGqTbbfYTOHF4OalWrBadUE6ZmW2nTVOgE03bN7UXsiqqH?=
 =?us-ascii?Q?iQMUCFicpRd4/ceq4twfJAt1rU6H1mjPIQq/G7J6eOOcacVsHiHg2WuPGv0A?=
 =?us-ascii?Q?0kWIM4N+zpqEFN//mKNaAf4WN4W4aVGzigF7n5xtOz30eXxV7iB2qqZCJaNK?=
 =?us-ascii?Q?WEeu9Vvi7V63XKClBVlEbShRdRm1L9/aHsz9mDmHBWft9aeMiqSKE+YZvK+4?=
 =?us-ascii?Q?PGxTur1Ts8klNrKu885LyWAj6erwlzYhyLYYyR67W+txSxqcvea1B1NndYIB?=
 =?us-ascii?Q?Ey0nGsUe23wFUXXJUCT8kPRPFhNsUUwHJk3qMfPVGqaWkyXhuzeN60tNhMSs?=
 =?us-ascii?Q?aQLh3UPgoWPXYxg00lRy8lImKM/Hxn+dZjVuME9ktUbwSl0M8JFYTjS4dMdP?=
 =?us-ascii?Q?6O7Ybg16IRpqMih7PT+ZXKwrA26KoQXtpetLmn4fTrUKreJsBvk7zQfnOjzu?=
 =?us-ascii?Q?uz5fg7urfGBoyYzHiehr5G7ahor4zaXw5TlYFPnbkxIQUrhVkiOnr9uzvHhb?=
 =?us-ascii?Q?R3oKBWQeN4FdyFxsoYFE09IM6Uik+HlQXpQuCt15qPTcwmkElZMgvjBMrw6P?=
 =?us-ascii?Q?j5B/KZcDTeP1D5/NU1plRi9S5t1TacmiEpDZhSCxlTnvxSZv4olH6Zakjk90?=
 =?us-ascii?Q?luQw8LTdhfh56OkUe/zf3ikvmrVuEH6x5gQPHzyq60eohxgDBDY3rBJcXome?=
 =?us-ascii?Q?hnrJBpHTDGZzANwyiE4Ucs1AS/L+QUFVPr/+WTPe7uyh/NFYq1hqAPFgieGM?=
 =?us-ascii?Q?m2jCGgpY03AaBK6g2vWX2YLkEjH2WfdQ/IBvzqcf+rVVJd4fLaKeLEgXhIcf?=
 =?us-ascii?Q?GjLKZRMEVqe063Vl3u5ECYK/3z7yEdB7l5tP3cxHluszqGGc+PpehicOWLuN?=
 =?us-ascii?Q?h091WnMvl36OLo4XeTzrmfJpdHJPgfAlxEZMUc5KKfZn+GSNP1vFCO1LcsOO?=
 =?us-ascii?Q?gA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f992ac5f-716d-450b-3b85-08db3cfda69a
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 15:33:52.2321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gMxnxqcQT7yfSdyaQnFEKRquBoRiFlpZWzRRCXVJ7KXaCECyV5UFx5Yl7Y/YPuxFe02YLAWgbqPnK120wJb1qBDE9DFkmICh5MUyFg0sBa0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/mtl: Add C10 phy programming
 for HDMI
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

Thank you for the review Imre and Mika for submitting the patches.

Pushed the series onto drm-tip.

-Radhakrishna(RK) Sripada

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Friday, April 14, 2023 4:39 AM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 7/9] drm/i915/mtl: Add C10 phy programming for HDMI
>=20
> On Thu, Apr 13, 2023 at 02:24:41PM -0700, Radhakrishna Sripada wrote:
> > Like DG2, we still don't have a proper algorithm that can be used
> > for calculating PHY settings, but we do have tables of register
> > values for a handful of the more common link rates. Some support is
> > better than none, so let's go ahead and add/use these tables when we
> > can, and also add some logic to hdmi_port_clock_valid() to filter the
> > modelist to just the modes we can actually support with these link
> > rates.
> >
> > Hopefully we'll have a proper / non-encumbered algorithm to calculate
> > these registers by the time we upstream and we'll be able to replace
> > this patch with something more general purpose.
> >
> > Bspec: 64568
> >
> > v2: Rebasing with Clint's HDMI C10 PLL tables (Mika)
> > v3: Remove the extra hdmi clock check pruning.
> >
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > Link:
> https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-6-
> mika.kahola@intel.com
>=20
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 610 +++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 +
> >  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   2 +
> >  drivers/gpu/drm/i915/display/intel_hdmi.c     |   5 +-
> >  4 files changed, 614 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index 5ffd661fa507..d46ff3401e5e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -647,6 +647,603 @@ static const struct intel_c10pll_state * const
> mtl_c10_edp_tables[] =3D {
> >  	NULL,
> >  };
> >
> > +/*
> > + * HDMI link rates with 38.4 MHz reference clock.
> > + */
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_25_2 =3D {
> > +	.clock =3D 25200,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x4,
> > +	.pll[1] =3D 0,
> > +	.pll[2] =3D 0xB2,
> > +	.pll[3] =3D 0,
> > +	.pll[4] =3D 0,
> > +	.pll[5] =3D 0,
> > +	.pll[6] =3D 0,
> > +	.pll[7] =3D 0,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0x1,
> > +	.pll[10] =3D 0,
> > +	.pll[11] =3D 0,
> > +	.pll[12] =3D 0,
> > +	.pll[13] =3D 0,
> > +	.pll[14] =3D 0,
> > +	.pll[15] =3D 0xD,
> > +	.pll[16] =3D 0x6,
> > +	.pll[17] =3D 0x8F,
> > +	.pll[18] =3D 0x84,
> > +	.pll[19] =3D 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_27_0 =3D {
> > +	.clock =3D 27000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34,
> > +	.pll[1] =3D 0,
> > +	.pll[2] =3D 0xC0,
> > +	.pll[3] =3D 0,
> > +	.pll[4] =3D 0,
> > +	.pll[5] =3D 0,
> > +	.pll[6] =3D 0,
> > +	.pll[7] =3D 0,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0x1,
> > +	.pll[10] =3D 0,
> > +	.pll[11] =3D 0,
> > +	.pll[12] =3D 0x80,
> > +	.pll[13] =3D 0,
> > +	.pll[14] =3D 0,
> > +	.pll[15] =3D 0xD,
> > +	.pll[16] =3D 0x6,
> > +	.pll[17] =3D 0xCF,
> > +	.pll[18] =3D 0x84,
> > +	.pll[19] =3D 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_74_25 =3D {
> > +	.clock =3D 74250,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4,
> > +	.pll[1] =3D 0,
> > +	.pll[2] =3D 0x7A,
> > +	.pll[3] =3D 0,
> > +	.pll[4] =3D 0,
> > +	.pll[5] =3D 0,
> > +	.pll[6] =3D 0,
> > +	.pll[7] =3D 0,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0x1,
> > +	.pll[10] =3D 0,
> > +	.pll[11] =3D 0,
> > +	.pll[12] =3D 0x58,
> > +	.pll[13] =3D 0,
> > +	.pll[14] =3D 0,
> > +	.pll[15] =3D 0xB,
> > +	.pll[16] =3D 0x6,
> > +	.pll[17] =3D 0xF,
> > +	.pll[18] =3D 0x85,
> > +	.pll[19] =3D 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_148_5 =3D {
> > +	.clock =3D 148500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4,
> > +	.pll[1] =3D 0,
> > +	.pll[2] =3D 0x7A,
> > +	.pll[3] =3D 0,
> > +	.pll[4] =3D 0,
> > +	.pll[5] =3D 0,
> > +	.pll[6] =3D 0,
> > +	.pll[7] =3D 0,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0x1,
> > +	.pll[10] =3D 0,
> > +	.pll[11] =3D 0,
> > +	.pll[12] =3D 0x58,
> > +	.pll[13] =3D 0,
> > +	.pll[14] =3D 0,
> > +	.pll[15] =3D 0xA,
> > +	.pll[16] =3D 0x6,
> > +	.pll[17] =3D 0xF,
> > +	.pll[18] =3D 0x85,
> > +	.pll[19] =3D 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_594 =3D {
> > +	.clock =3D 594000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4,
> > +	.pll[1] =3D 0,
> > +	.pll[2] =3D 0x7A,
> > +	.pll[3] =3D 0,
> > +	.pll[4] =3D 0,
> > +	.pll[5] =3D 0,
> > +	.pll[6] =3D 0,
> > +	.pll[7] =3D 0,
> > +	.pll[8] =3D 0x20,
> > +	.pll[9] =3D 0x1,
> > +	.pll[10] =3D 0,
> > +	.pll[11] =3D 0,
> > +	.pll[12] =3D 0x58,
> > +	.pll[13] =3D 0,
> > +	.pll[14] =3D 0,
> > +	.pll[15] =3D 0x8,
> > +	.pll[16] =3D 0x6,
> > +	.pll[17] =3D 0xF,
> > +	.pll[18] =3D 0x85,
> > +	.pll[19] =3D 0x23,
> > +};
> > +
> > +/* Precomputed C10 HDMI PLL tables */
> > +static const struct intel_c10pll_state mtl_c10_hdmi_27027 =3D {
> > +	.clock =3D 27027,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xCC, .pll[12] =3D 0x9C, .pll[13] =3D=
 0xCB, .pll[14] =3D
> 0xCC,
> > +	.pll[15] =3D 0x0D, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_28320 =3D {
> > +	.clock =3D 28320,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xCC, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x00, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0D, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_30240 =3D {
> > +	.clock =3D 30240,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x04, .pll[1] =3D 0x00, .pll[2] =3D 0xDC, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x00, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0D, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_31500 =3D {
> > +	.clock =3D 31500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x62, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0xA0, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x09, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_36000 =3D {
> > +	.clock =3D 36000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xC4, .pll[1] =3D 0x00, .pll[2] =3D 0x76, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x00, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_40000 =3D {
> > +	.clock =3D 40000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0x55, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_49500 =3D {
> > +	.clock =3D 49500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x20, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_50000 =3D {
> > +	.clock =3D 50000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xB0, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0x2A, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_57284 =3D {
> > +	.clock =3D 57284,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xCE, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x77, .pll[12] =3D 0x57, .pll[13] =3D=
 0x77, .pll[14] =3D
> 0x77,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_58000 =3D {
> > +	.clock =3D 58000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0xD5, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0C, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_65000 =3D {
> > +	.clock =3D 65000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x66, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0xB5, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x09, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_71000 =3D {
> > +	.clock =3D 71000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x72, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0xF5, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_74176 =3D {
> > +	.clock =3D 74176,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x44, .pll[12] =3D 0x44, .pll[13] =3D=
 0x44, .pll[14] =3D
> 0x44,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_75000 =3D {
> > +	.clock =3D 75000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7C, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x20, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_78750 =3D {
> > +	.clock =3D 78750,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x84, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x08, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_85500 =3D {
> > +	.clock =3D 85500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x92, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x10, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_88750 =3D {
> > +	.clock =3D 88750,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0x98, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0x72, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x09, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_106500 =3D {
> > +	.clock =3D 106500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBC, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0xF0, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_108000 =3D {
> > +	.clock =3D 108000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xC0, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x80, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_115500 =3D {
> > +	.clock =3D 115500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD0, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x50, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_119000 =3D {
> > +	.clock =3D 119000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xD6, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0xF5, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0B, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_135000 =3D {
> > +	.clock =3D 135000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6C, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x50, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x09, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_138500 =3D {
> > +	.clock =3D 138500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x70, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0x22, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_147160 =3D {
> > +	.clock =3D 147160,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x78, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0xA5, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_148352 =3D {
> > +	.clock =3D 148352,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x44, .pll[12] =3D 0x44, .pll[13] =3D=
 0x44, .pll[14] =3D
> 0x44,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_154000 =3D {
> > +	.clock =3D 154000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x80, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0x35, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_162000 =3D {
> > +	.clock =3D 162000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x88, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x60, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_167000 =3D {
> > +	.clock =3D 167000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x8C, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0xFA, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_197802 =3D {
> > +	.clock =3D 197802,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x99, .pll[12] =3D 0x05, .pll[13] =3D=
 0x98, .pll[14] =3D
> 0x99,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_198000 =3D {
> > +	.clock =3D 198000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x74, .pll[1] =3D 0x00, .pll[2] =3D 0xAE, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x20, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_209800 =3D {
> > +	.clock =3D 209800,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xBA, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0x45, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_241500 =3D {
> > +	.clock =3D 241500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xDA, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0xC8, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x0A, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_262750 =3D {
> > +	.clock =3D 262750,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x68, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0x6C, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x09, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_268500 =3D {
> > +	.clock =3D 268500,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x6A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0xEC, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x09, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_296703 =3D {
> > +	.clock =3D 296703,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x33, .pll[12] =3D 0x44, .pll[13] =3D=
 0x33, .pll[14] =3D
> 0x33,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_297000 =3D {
> > +	.clock =3D 297000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x00, .pll[12] =3D 0x58, .pll[13] =3D=
 0x00, .pll[14] =3D
> 0x00,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_319750 =3D {
> > +	.clock =3D 319750,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xB4, .pll[1] =3D 0x00, .pll[2] =3D 0x86, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0xAA, .pll[12] =3D 0x44, .pll[13] =3D=
 0xA9, .pll[14] =3D
> 0xAA,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_497750 =3D {
> > +	.clock =3D 497750,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0x34, .pll[1] =3D 0x00, .pll[2] =3D 0xE2, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0x9F, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x09, .pll[16] =3D 0x08, .pll[17] =3D 0xCF, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_592000 =3D {
> > +	.clock =3D 592000,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x55, .pll[12] =3D 0x15, .pll[13] =3D=
 0x55, .pll[14] =3D
> 0x55,
> > +	.pll[15] =3D 0x08, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state mtl_c10_hdmi_593407 =3D {
> > +	.clock =3D 593407,
> > +	.tx =3D 0x10,
> > +	.cmn =3D 0x1,
> > +	.pll[0] =3D 0xF4, .pll[1] =3D 0x00, .pll[2] =3D 0x7A, .pll[3] =3D 0x0=
0, .pll[4] =3D 0x00,
> > +	.pll[5] =3D 0x00, .pll[6] =3D 0x00, .pll[7] =3D 0x00, .pll[8] =3D 0x2=
0, .pll[9] =3D 0xFF,
> > +	.pll[10] =3D 0xFF, .pll[11] =3D 0x3B, .pll[12] =3D 0x44, .pll[13] =3D=
 0xBA, .pll[14] =3D
> 0xBB,
> > +	.pll[15] =3D 0x08, .pll[16] =3D 0x08, .pll[17] =3D 0x8F, .pll[18] =3D=
 0x84, .pll[19] =3D
> 0x23,
> > +};
> > +
> > +static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] =
=3D {
> > +	&mtl_c10_hdmi_25_2, /* Consolidated Table */
> > +	&mtl_c10_hdmi_27_0, /* Consolidated Table */
> > +	&mtl_c10_hdmi_27027,
> > +	&mtl_c10_hdmi_28320,
> > +	&mtl_c10_hdmi_30240,
> > +	&mtl_c10_hdmi_31500,
> > +	&mtl_c10_hdmi_36000,
> > +	&mtl_c10_hdmi_40000,
> > +	&mtl_c10_hdmi_49500,
> > +	&mtl_c10_hdmi_50000,
> > +	&mtl_c10_hdmi_57284,
> > +	&mtl_c10_hdmi_58000,
> > +	&mtl_c10_hdmi_65000,
> > +	&mtl_c10_hdmi_71000,
> > +	&mtl_c10_hdmi_74176,
> > +	&mtl_c10_hdmi_74_25, /* Consolidated Table */
> > +	&mtl_c10_hdmi_75000,
> > +	&mtl_c10_hdmi_78750,
> > +	&mtl_c10_hdmi_85500,
> > +	&mtl_c10_hdmi_88750,
> > +	&mtl_c10_hdmi_106500,
> > +	&mtl_c10_hdmi_108000,
> > +	&mtl_c10_hdmi_115500,
> > +	&mtl_c10_hdmi_119000,
> > +	&mtl_c10_hdmi_135000,
> > +	&mtl_c10_hdmi_138500,
> > +	&mtl_c10_hdmi_147160,
> > +	&mtl_c10_hdmi_148352,
> > +	&mtl_c10_hdmi_148_5, /* Consolidated Table */
> > +	&mtl_c10_hdmi_154000,
> > +	&mtl_c10_hdmi_162000,
> > +	&mtl_c10_hdmi_167000,
> > +	&mtl_c10_hdmi_197802,
> > +	&mtl_c10_hdmi_198000,
> > +	&mtl_c10_hdmi_209800,
> > +	&mtl_c10_hdmi_241500,
> > +	&mtl_c10_hdmi_262750,
> > +	&mtl_c10_hdmi_268500,
> > +	&mtl_c10_hdmi_296703,
> > +	&mtl_c10_hdmi_297000,
> > +	&mtl_c10_hdmi_319750,
> > +	&mtl_c10_hdmi_497750,
> > +	&mtl_c10_hdmi_592000,
> > +	&mtl_c10_hdmi_593407,
> > +	&mtl_c10_hdmi_594, /* Consolidated Table */
> > +	NULL,
> > +};
> > +
> > +int intel_c10_phy_check_hdmi_link_rate(int clock)
> > +{
> > +	const struct intel_c10pll_state * const *tables =3D mtl_c10_hdmi_tabl=
es;
> > +	int i;
> > +
> > +	for (i =3D 0; tables[i]; i++) {
> > +		if (clock =3D=3D tables[i]->clock)
> > +			return MODE_OK;
> > +	}
> > +
> > +	return MODE_CLOCK_RANGE;
> > +}
> > +
> >  static const struct intel_c10pll_state * const *
> >  intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
> >  			struct intel_encoder *encoder)
> > @@ -656,9 +1253,10 @@ intel_c10pll_tables_get(struct intel_crtc_state
> *crtc_state,
> >  			return mtl_c10_edp_tables;
> >  		else
> >  			return mtl_c10_dp_tables;
> > +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> > +		return mtl_c10_hdmi_tables;
> >  	}
> >
> > -	/* TODO: Add HDMI Support */
> >  	MISSING_CASE(encoder->type);
> >  	return NULL;
> >  }
> > @@ -758,6 +1356,7 @@ static void intel_c10_pll_program(struct
> drm_i915_private *i915,
> >  	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CONTROL(1),
> >  		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> >  		      MB_WRITE_COMMITTED);
> > +
> >  	/* Custom width needs to be programmed to 0 for both the phy lanes */
> >  	intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> PHY_C10_VDR_CUSTOM_WIDTH,
> >  		      C10_VDR_CUSTOM_WIDTH_MASK,
> C10_VDR_CUSTOM_WIDTH_8_10,
> > @@ -820,7 +1419,8 @@ int intel_c10pll_calc_port_clock(struct intel_enco=
der
> *encoder,
> >  				 const struct intel_c10pll_state *pll_state)
> >  {
> >  	unsigned int frac_quot =3D 0, frac_rem =3D 0, frac_den =3D 1;
> > -	unsigned int multiplier, tx_clk_div, refclk =3D 38400;
> > +	unsigned int multiplier, tx_clk_div, hdmi_div, refclk =3D 38400;
> > +	int tmpclk =3D 0;
> >
> >  	if (pll_state->pll[0] & C10_PLL0_FRACEN) {
> >  		frac_quot =3D pll_state->pll[12] << 8 | pll_state->pll[11];
> > @@ -832,10 +1432,14 @@ int intel_c10pll_calc_port_clock(struct
> intel_encoder *encoder,
> >  		      pll_state->pll[2]) / 2 + 16;
> >
> >  	tx_clk_div =3D REG_FIELD_GET8(C10_PLL15_TXCLKDIV_MASK, pll_state-
> >pll[15]);
> > +	hdmi_div =3D REG_FIELD_GET8(C10_PLL15_HDMIDIV_MASK, pll_state-
> >pll[15]);
> >
> > -	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier <<
> 16) + frac_quot) +
> > +	tmpclk =3D DIV_ROUND_CLOSEST_ULL(mul_u32_u32(refclk, (multiplier <<
> 16) + frac_quot) +
> >  				     DIV_ROUND_CLOSEST(refclk * frac_rem,
> frac_den),
> >  				     10 << (tx_clk_div + 16));
> > +	tmpclk *=3D (hdmi_div ? 2 : 1);
> > +
> > +	return tmpclk;
> >  }
> >
> >  static void intel_program_port_clock_ctl(struct intel_encoder *encoder=
,
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > index 6b736acb83e0..509d1d12776e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> > @@ -32,5 +32,6 @@ void intel_c10pll_state_verify(struct intel_atomic_st=
ate
> *state,
> >  			       struct intel_crtc_state *new_crtc_state);
> >  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
> >  				     const struct intel_crtc_state *crtc_state);
> > +int intel_c10_phy_check_hdmi_link_rate(int clock);
> >
> >  #endif /* __INTEL_CX0_PHY_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > index fe2e3edef69b..20024622d0eb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> > @@ -145,6 +145,8 @@
> >  #define   C10_PLL0_FRACEN		REG_BIT8(4)
> >  #define   C10_PLL3_MULTIPLIERH_MASK	REG_GENMASK8(3, 0)
> >  #define   C10_PLL15_TXCLKDIV_MASK	REG_GENMASK8(2, 0)
> > +#define   C10_PLL15_HDMIDIV_MASK	REG_GENMASK8(5, 3)
> > +
> >  #define PHY_C10_VDR_CMN(idx)		(0xC20 + (idx))
> >  #define   C10_CMN0_REF_RANGE
> 	REG_FIELD_PREP(REG_GENMASK(4, 0), 1)
> >  #define   C10_CMN0_REF_CLK_MPLLB_DIV
> 	REG_FIELD_PREP(REG_GENMASK(7, 5), 1)
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 4fd944520826..8141d5184856 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -45,6 +45,7 @@
> >  #include "intel_atomic.h"
> >  #include "intel_audio.h"
> >  #include "intel_connector.h"
> > +#include "intel_cx0_phy.h"
> >  #include "intel_ddi.h"
> >  #include "intel_de.h"
> >  #include "intel_display_types.h"
> > @@ -1864,7 +1865,9 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
> >  	 * FIXME: We will hopefully get an algorithmic way of programming
> >  	 * the MPLLB for HDMI in the future.
> >  	 */
> > -	if (IS_DG2(dev_priv))
> > +	if (IS_METEORLAKE(dev_priv))
> > +		return intel_c10_phy_check_hdmi_link_rate(clock);
> > +	else if (IS_DG2(dev_priv))
> >  		return intel_snps_phy_check_hdmi_link_rate(clock);
> >
> >  	return MODE_OK;
> > --
> > 2.34.1
> >
