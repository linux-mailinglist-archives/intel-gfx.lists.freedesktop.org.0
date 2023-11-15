Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53B7EC3AB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:29:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9161610E54E;
	Wed, 15 Nov 2023 13:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B85810E54E
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700054993; x=1731590993;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hcv6BaNMub5+ei1+i07m3MjK1YVt+TsXMEiE6SlOYBo=;
 b=CW3NRer9wpPLh9W6qeMTMgDCCsFl4nUtsmpUqIEQ5wpNw/PGEdiZq6sB
 lMxy1Q4iHeDsig8zzVCdLNGIjcv+hjI5fx9s4yGcw7wwbk515EImUefBD
 RBvFSINjcMECqAv/QNT5x3lFdZl/jwy43vKAcQh9SvDokq3t/uAEQhgQb
 gWt+ZgLXcnZVFUO2+LCzbwE18k8R+of2ni3LVnoLOgD0tjn5NMLHTwMyL
 OzdvHBetw7KYp09SFUl2ZWagEtYC4EAArWj0ixxP3H5JkY6Eijc1e3W+x
 2JG6koHzLhKFxAtHahLxCax9lcEtAbIevhYEdf4O+tJn1j6x9nS6oZ0Qk g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="371062777"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="371062777"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:29:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="888595061"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="888595061"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 05:29:29 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:29:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 05:29:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 05:29:27 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 05:29:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MibnyBgXPt7pOyYHWi6CISdbDFkt9xTeHggS8xjDkHdkwloJ5dJz8EgVZiaMsyF3rTd2wxSZdKj1bg8QP6agyk21qbl2YJeCvkUxz4Se7or0DYl4kxOgWIS3CHoYl8I4YjX+InART6y9nHK57Ubn3t/czXDjRHozprVlaGJolB5vUsKrYIQyChHgSD55Xf3ZPhhtiZWZnnoNwh4MAXfE4JX3j2KlD8rlba5e7RWmawJ+rd5HiTk1vK8a/52/Dlb1WfYjIjA44q7urmBfUGqpci+TdC7ifNtzkiE+stnUDHuFPqOoi66s7kPuS4c2k+FuF6/cw/qd/micgaLsdBkUYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+55g5ZEnaihmeAi/1e40A0/QMZzz6dq+CWUr00w9+Mc=;
 b=MiWmp3KF4NE133icK5ErXpuTI8lB/HOo3ef0uZ9IMhBPpVpvyG6oMZe70+KmFeL4SoMY1xa8PFBIXLMSD4ncOeDg9E2sXxHuAv6aUo9cFfBt/7a3I0ww/Y+gamlGgtwjQ0+2KXm+OWzxSQqT3lNIUOIqhH2G77FhcAIqluXfDSCN65COxwnD0kX/LOG0ONXzUaPa7g3cws9/q/yR8Ik7FnbfijjcxPi+C6fX4Nmt2SX8SpFdvgGajaaKVaWIi6aSO8nCzOC19LWp+461Te/Za7YN9umoKXv1TSn/h2oNG+I0SUQQCUUBrpyyZjSYh99QOcynNsJMyZw2xr1JB3XyKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.31; Wed, 15 Nov
 2023 13:29:25 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 13:29:25 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
Thread-Index: AQHaFm2cB5E9VXW6jk+MNyKcIqJS17B5F0cwgABYT4CAAfLTEA==
Date: Wed, 15 Nov 2023 13:29:24 +0000
Message-ID: <DS0PR11MB87404ECBC276F73AC5B1FBBABAB1A@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20231113201110.510724-1-imre.deak@intel.com>
 <20231113201110.510724-2-imre.deak@intel.com>
 <DS0PR11MB8740B50F166F066638898018BAB2A@DS0PR11MB8740.namprd11.prod.outlook.com>
 <ZVMlEWxM23hmUO+0@ideak-desk.fi.intel.com>
In-Reply-To: <ZVMlEWxM23hmUO+0@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|SA2PR11MB5195:EE_
x-ms-office365-filtering-correlation-id: b7271e6d-f903-4140-5cfb-08dbe5dee280
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eOj0NjhtZU/N7vFRGo958kD9dJ/g0V0WglZUdd6DlrX/tUttl7Ukm8q5vzeMEoz4BCoJLlfGEDvxUVYkMe5r8YUERWUQP80mSSJ2cnXVkalG7Qy91RsWKycMvacmBSHPPJGCmhRrKijjn5eN14fWRY4SCtE5HGbF4BQjaWaEzQjviC7y/iqZL1QQTE4wx4ebMAwhqDJEyV6+BG81Idb5tLyBA5zYBV5YBNlIxRLAdHvd9cNhNbGI6FDj1xUlcD2Wnfxu9FIOWrBZboOIiviIktjkf1niHJ9WEgxyLPlDTgacWRvszeqsgse3JCr3dLM98PWQsGuVeMf++k1OhUTb2Y2/bJjIRO4ADTzhAvbpudSd67xtg5jXFFt7IK5fZkThzDe+i43iO11kMihKLZONbd29kAjT5tGJItmUXvZYW0tiMap7TEI2KX9qk5WA0cTaCV8/9VOFBSBAbcj4d2TBJekRU9eUjYswaq2k1140KXGfa0XaXRYho7Uil/USf5wDiBQM3uNdBOI1HtqDSajheHX/ZDNAQaHtpZndEWCu+k20clzQ9DAxBZHHUtnAx2wNQTw13DzoRoy216r5Xa1IM4xzRywvxNEZJRJ+3CxnVwQoIa6Giyj6joyZldgAnIxE
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(39860400002)(366004)(376002)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(9686003)(82960400001)(33656002)(26005)(478600001)(8936002)(6862004)(52536014)(8676002)(4326008)(41300700001)(2906002)(5660300002)(86362001)(66946007)(316002)(66556008)(66476007)(38070700009)(64756008)(66446008)(6636002)(76116006)(55236004)(6506007)(7696005)(53546011)(71200400001)(55016003)(38100700002)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?fMxcXQ4QyBGbzIUHTvJxm6mO+x94HECk7qEXLrRNhun7f0kceHpeOXENhCUl?=
 =?us-ascii?Q?nLlCdfagqzKPxx22mjcsK9tTQeA2hRcYnwQ3q+j3I0ltpQoKvQ0zo6Api676?=
 =?us-ascii?Q?pmX18Z19hc9NTPnS/r2gVpvc8q+QWATQj8MHk96cQcEeDz4o2ZgGW7S73D1f?=
 =?us-ascii?Q?+p33Neb+6TFoC35qVKeP3AyM8P/BknSxZKqd/oSIOxx4s6ArTLcSWrly5aZM?=
 =?us-ascii?Q?cIzKjPmpWvU7MCWuHiz6jWZ8cNyUWv+r0JPcV5PpBSuV1M+QuHCOZGxc2SwY?=
 =?us-ascii?Q?G3nSSlYs7gr/iajZdW1FXJSW53PhqQlf7tsb4lfO6ULYh3MY6bPWrm0chE7N?=
 =?us-ascii?Q?CbM0uGBXHdoa1x+5tAVsUGjbs1Z9qjPbx2ZtjsNxE4FyIUlR8MviKfgkNX4U?=
 =?us-ascii?Q?Ob0DgEg1QLCBHxN36ig95U29U7hcYOdYvFvqPdUc5V5coxe9PxfE3n1vt6uh?=
 =?us-ascii?Q?zkpqctr53yDYNDgfUErsYxIz2jRThF9YkG1yFQDGkJ6odw11wjgyQQhGuYPI?=
 =?us-ascii?Q?ZrDVgaGXAsoc+HIeyPNerIQFtPwXu5iGZYNXhrxHN/kTLhmW0197FnkwJM2T?=
 =?us-ascii?Q?y3HAiYGe2jkWGfxCqdUEJUPA01pB/BcaFdgXy6aQJelTCATQYcFUDp1lGjUo?=
 =?us-ascii?Q?VjinhiWJ8IT8jy/BfBp7hTw4jEuvxccHMVeXQQr/HxjGS80OFFw6tzno+c1H?=
 =?us-ascii?Q?egVe9iYzkqulNpTG3rF9ToInWelYbDp74jZgH1j7E/6YVFBdBbJmL6oqKLbP?=
 =?us-ascii?Q?QfK5nMkM9ZxopcXZDGlKst5fXSLrdAmahYhjRWYRnbJqeu/J06Xnb/Pm4SX/?=
 =?us-ascii?Q?nlwUcmQgOAZ7C0MVGeSRz5hg30D3OFQoWRwmm4+n7Sf3EEAzFWEVVKFlLN4p?=
 =?us-ascii?Q?5+OOCT8bTa8kzJnbdTxmlvvwBtXqSoPA8sPMAppB9Fl1zuffkR1uEkD3rcA4?=
 =?us-ascii?Q?Zp1sRDdOhr6wsPYlPBL9Lkwk8QdBLzJGSdpACIWp3ENmjXpi2CBt+QdtxtRB?=
 =?us-ascii?Q?3hNN+ECeASp876y31MMPtMmbUkPQ7O9EDKnvl6R1i7k8I/ztlIt/1wLrAbg1?=
 =?us-ascii?Q?mwwfoI9tWvS5gyuAv0EObbAcryyRITw1qPaG9rYfrW1qOoT36vDzNarK2aPo?=
 =?us-ascii?Q?8KDnlD/gc6IEjQGyX2Q3sVv219oFXyvQ2hPztim9wvl7RXq31y02X5rAtUUd?=
 =?us-ascii?Q?3QQxDbfh/E5vw7OcKavb2tK8IN4zcjaaLgNTMsrum/5S2syvHRqHFFccrvcA?=
 =?us-ascii?Q?/LaepIWCty6iBPsxUlc15BoTl543WIXuq0v6gPcMoWQzWRRVurcWpBNZHDZA?=
 =?us-ascii?Q?0+6JSczn9Q0xtkQnGkBojW0H0te5npA/2zDOMp5N9nm2U8UFpJdAjlH2dorg?=
 =?us-ascii?Q?VSmHHFh7aIAzffRcAYIyqsAcCMSR9eebwXeoo9wh+bb/6HTCo/DHRmxmiU1F?=
 =?us-ascii?Q?C+gE8GPy07hhAjI1ZotAqjBm8FY6drF3ukuX25xAkkgES+dmVhTMvDHrhwr5?=
 =?us-ascii?Q?RtWA+/gbVPYgtoprbqC6MwaKQbovVUy/CXcOZVyv43qilGRpD0IJv3DUsY2B?=
 =?us-ascii?Q?vK353kiKwl22flOSq0tQfDhges5unTewvoI76+ON?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7271e6d-f903-4140-5cfb-08dbe5dee280
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2023 13:29:24.8414 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bPDjV1/BJ0SYyfrhYTPunaddqPVea9789eivHSLfFAnXYvTPPRzuJJXWQdjlnY19WNu/QNVBvfnzxx23aY1fQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N values
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
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Tuesday, November 14, 2023 1:13 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N value=
s
>=20
> On Tue, Nov 14, 2023 at 05:29:35AM +0200, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Imre Deak
> > > Sent: Tuesday, November 14, 2023 1:41 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dp: Fix UHBR link M/N
> > > values
> > >
> > > The link M/N ratio is the data rate / link symbol clock rate, fix
> > > things up accordingly. On DP 1.4 this ratio was correct as the link
> > > symbol clock rate in that case matched the link data rate (in
> > > bytes/sec units, the symbol size being 8 bits), however it wasn't cor=
rect for
> UHBR rates where the symbol size is 32 bits.
> > >
> > > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 16 ++++++++-----
> > >  drivers/gpu/drm/i915/display/intel_dp.c      | 24 ++++++++++++++++++=
++
> > >  drivers/gpu/drm/i915/display/intel_dp.h      |  2 ++
> > >  3 files changed, 36 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 24aebdb715e7d..c059eb0170a5b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -2411,6 +2411,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int
> > > nlanes,
> > >                      struct intel_link_m_n *m_n)  {
> > >       u32 data_clock =3D bits_per_pixel * pixel_clock;
> > > +     u32 link_symbol_clock =3D
> > > + intel_dp_link_symbol_clock(link_clock);
> > >       u32 data_m;
> > >       u32 data_n;
> > >
> > > @@ -2431,7 +2432,7 @@ intel_link_compute_m_n(u16 bits_per_pixel, int
> > > nlanes,
> > >                   0x8000000);
> > >
> > >       compute_m_n(&m_n->link_m, &m_n->link_n,
> > > -                 pixel_clock, link_clock,
> > > +                 pixel_clock, link_symbol_clock,
> > >                   0x80000);
> > >  }
> > Better if this can be moved to intel_dp.c
>=20
> The function is also used by non-DP outputs, so not sure. In any case it =
would
> need to be a separate change.
>=20
> > Also per the spec the constant N values is 0x800000
>=20
> For the link M/N values I can't see this in the spec. It's mentioned in t=
he context
> of calculating data M/N. Changing that - if it makes sense - should be in=
 a
> separate patch.

Agree!

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------
>=20
> > The calculation of data M has dependency with DP symbol
> > >
> > > @@ -3943,20 +3944,23 @@ int intel_dotclock_calculate(int link_freq,
> > >                            const struct intel_link_m_n *m_n)  {
> > >       /*
> > > -      * The calculation for the data clock is:
> > > +      * The calculation for the data clock -> pixel clock is:
> > >        * pixel_clock =3D ((m/n)*(link_clock * nr_lanes))/bpp
> > >        * But we want to avoid losing precison if possible, so:
> > >        * pixel_clock =3D ((m * link_clock * nr_lanes)/(n*bpp))
> > >        *
> > > -      * and the link clock is simpler:
> > > -      * link_clock =3D (m * link_clock) / n
> > > +      * and for link freq (10kbs units) -> pixel clock it is:
> > > +      * link_symbol_clock =3D link_freq * 10 / link_symbol_size
> > > +      * pixel_clock =3D (m * link_symbol_clock) / n
> > > +      *    or for more precision:
> > > +      * pixel_clock =3D (m * link_freq * 10) / (n * link_symbol_size=
)
> > >        */
> > >
> > >       if (!m_n->link_n)
> > >               return 0;
> > >
> > > -     return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq),
> > > -                             m_n->link_n);
> > > +     return DIV_ROUND_UP_ULL(mul_u32_u32(m_n->link_m, link_freq *
> > > 10),
> > > +                             m_n->link_n *
> > > intel_dp_link_symbol_size(link_freq));
> > >  }
> > >
> > >  int intel_crtc_dotclock(const struct intel_crtc_state *pipe_config)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index f662d1ce5f72c..80e1e887432fa 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -132,6 +132,30 @@ bool intel_dp_is_uhbr(const struct
> > > intel_crtc_state
> > > *crtc_state)
> > >       return intel_dp_is_uhbr_rate(crtc_state->port_clock);
> > >  }
> > >
> > > +/**
> > > + * intel_dp_link_symbol_size - get the link symbol size for a given
> > > +link rate
> > > + * @rate: link rate in 10kbit/s units
> > > + *
> > > + * Returns the link symbol size in bits/symbol units depending on
> > > +the link
> > > + * rate -> channel coding.
> > > + */
> > > +int intel_dp_link_symbol_size(int rate) {
> > > +     return intel_dp_is_uhbr_rate(rate) ? 32 : 10; }
> > As per the spec this DP symbol is 32 for DP2.0 and 8 for DP1.4
>=20
> On DP1.4 before the 8b/10b conversion the symbol size is 8 bits, after th=
e
> conversion (which is what @rate describes and for which the symbol size i=
s
> returned for) it's 10 bits.
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> > > +
> > > +/**
> > > + * intel_dp_link_symbol_clock - convert link rate to link symbol
> > > +clock
> > > + * @rate: link rate in 10kbit/s units
> > > + *
> > > + * Returns the link symbol clock frequency in kHz units depending
> > > +on the
> > > + * link rate and channel coding.
> > > + */
> > > +int intel_dp_link_symbol_clock(int rate) {
> > > +     return DIV_ROUND_CLOSEST(rate * 10,
> > > intel_dp_link_symbol_size(rate));
> > > +}
> > > +
> > >  static void intel_dp_set_default_sink_rates(struct intel_dp *intel_d=
p)  {
> > >       intel_dp->sink_rates[0] =3D 162000; diff --git
> > > a/drivers/gpu/drm/i915/display/intel_dp.h
> > > b/drivers/gpu/drm/i915/display/intel_dp.h
> > > index e80da67554196..64dbf8f192708 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> > > @@ -82,6 +82,8 @@ bool intel_dp_has_hdmi_sink(struct intel_dp
> > > *intel_dp); bool intel_dp_is_edp(struct intel_dp *intel_dp);  bool
> > > intel_dp_is_uhbr_rate(int rate);  bool intel_dp_is_uhbr(const struct
> > > intel_crtc_state *crtc_state);
> > > +int intel_dp_link_symbol_size(int rate); int
> > > +intel_dp_link_symbol_clock(int rate);
> > >  bool intel_dp_is_port_edp(struct drm_i915_private *dev_priv, enum
> > > port port);  enum irqreturn intel_dp_hpd_pulse(struct intel_digital_p=
ort
> *dig_port,
> > >                                 bool long_hpd);
> > > --
> > > 2.39.2
> >
