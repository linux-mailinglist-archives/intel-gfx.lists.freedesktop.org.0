Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACD458F6F8
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 06:30:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6625D12A75F;
	Thu, 11 Aug 2022 04:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F1E29E549
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 04:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660192184; x=1691728184;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F2fqw+KbdUH/5eyR9Ae84GsEw1iwVdaR365l/dVbNcM=;
 b=Tj3n7ZCpYTDgxN+GZl+XTxXg5Krv2D2FLft7l4aC2pLEBN8fXMoSTWLX
 QMNzfVbMYYKWZvNyY2wrsSd+d/4rkN1ZadT8Obciq/rX1Jlm1hct5cucJ
 p1ci9xvi4lTOyZK9EpkIBgwlY3wcjCfd6AYxnCRSAmn1k/giJZ2P3Rx9e
 nBYzoQcHxCNCw+5JDcoTwZSYnBP9b+WuygoAOu4a42II42fqzTI5jmMjj
 hMKUuXgt0FpIX7f2lOtJY2nQjJioGwte6emrolTrSWR1vC2g5a4w3cz0c
 1OZQmHtamcA8WiqXt38O4txlRTMnqbLqZWS1W0MW6aLv4qM4tzd5CwFaU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="290009169"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="290009169"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 21:29:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="747674246"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 10 Aug 2022 21:29:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 21:29:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 10 Aug 2022 21:29:43 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 10 Aug 2022 21:29:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 10 Aug 2022 21:29:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ijlLCFWkJdicZz5DQTUMyzru+dli8YKOL46YJfWlnbb8JhDPH8oysPV1dN298Jo1kHtN/Zzny2226aKKm52IjdZwgcnNGNEXjMUI+3Bq9wEX1JlcC00ooI5CUEfODwO0ujDkZVkPkYUVTbA66hX/Y36C7z23FE7C8Q6mjtCBZneHBtn8dXo0NuK1c14tYO6VJP6jA05qJKA7G1hojG/kCWzQtO+5WAqe85wPvb45cducsYBV6G1DdEUxCL5m15HyUfmoZCnzwsuW53R95ZWOsBfQ7LeUN5CcmUShFKjKRQcutpLtIuS/1zQpq4maNmdLUjuIvrVmk6xUZ/lV6u1Wmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k9cH5y3AGajEyVqtITcd4113tkKNRD42x4cRJG1bSAU=;
 b=MS7HcOk1YLCJETQxVO6mGW8qKblBb8mzkQnMfC0apmaTbMff53iZ3SUN7NIt2YYIaYLDHy2TgNB8qiVXNfSkY6QKi5Pou/dduPXerd3Kts246HCmJW0QskRdzlB2G1oJVMw6DzuDjTnsRv39NVSZAsdOEdBlfvK3/W30xiWBfk0H4iKaEfVhmmuXI6yvWa1hbicmQR9NDFoL9BHkcK+AtsgQkF4LBfVe7UGZa21bcd3U5++bHXh/9/ByIF3fHAwDfQ/VnhoGw5LZ5hlg9z6e8NUQUKLtOqQYBygrGaKK6kjbFgfDMjWpbpcLZ55dxOU9MBVMu8UvQHQxHdFHdMM+CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN9PR11MB5531.namprd11.prod.outlook.com (2603:10b6:408:104::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Thu, 11 Aug
 2022 04:29:41 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Thu, 11 Aug 2022
 04:29:41 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
Thread-Index: AQHYqxIX7bZCMh0zVk+gk0c1yyfUIq2ngHLAgACUmoCAAQoWEA==
Date: Thu, 11 Aug 2022 04:29:41 +0000
Message-ID: <DM6PR11MB3177737695F58E7BEE79EAFEBA649@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220808103054.3586074-1-imre.deak@intel.com>
 <DM6PR11MB3177D66964271F836828FC47BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YvOl77u2X219NvpF@ideak-desk.fi.intel.com>
In-Reply-To: <YvOl77u2X219NvpF@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8190129b-1182-4178-85c6-08da7b521bd7
x-ms-traffictypediagnostic: BN9PR11MB5531:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mqzH3aS0Wu/8vk2KGxA8Flrg74eLvyYiINJUB7F1mwEoOdRh93q64ibNkLBkwXeh+QQDIG+YPeNCGC+Rvfe5H2WRk4DjH0My9D4q1F3X6Xy7OZ17CsBXLpho46k45yLklzdFcLk6GmFa3tUHa3j9/QSlgVkDiNF1VkemWmRnWxFHSscd4Rt55XguOWb2hBRse0aPwMSsdNnf1Rw6Fsr2ZU+/c+fdcvDg5iTrhtooJrd49yY2HBX7k45cNBtPZygzVXHrdD+eK4UgALuwNcq3l9vNpKJLIan60WPZ7bJ3GStIln/Ek+NYOZZ16LuHEW8cV+1U3wnpj1tholm0Zl4hwDLjttEZs43Kf6IFLefj70B2mtQXcmTpQvg3i5azHRwANi4GGcojku+dgzaz7X0DSzcpPGBWmCuDpXLWJUTZj8/UZmOPXZHBWEr64Aa7lM//ZXcxyIZFmVycsW44lqhNwU1qIVa/u2h0+WwZ41xwfDd6AeXJ+GWq4/G0eKziJGniIfyX4yFbg3O+AIV1NRM4zRLfiBnSxpmjhto7z494LLg5/v8lwb7s5QuXBwV4wQVYuTh+m+rolq9M9fpGubyfJKTn475Q1Tycvos1isZvAz/EZIArxLemeeg9aBX4nd/zroJe0KVylTjzDzHLjLizBPsPYLz3gqErFdJ/I+ah+2r+C4CCZpyV7XGQ7pLEkJL8OZaQXjQGxtnEZSPxKO800RDa9cirvTP/TUQVgOuiLo182ThaAoiKfC3/d+y6+WHwra2BWZPxAGce1iyEgxlgA4iTqXXMdAd7AgAlzdslOa35rwAYjr6ORlP5YfclECFp
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(366004)(39860400002)(376002)(346002)(186003)(55016003)(83380400001)(33656002)(82960400001)(86362001)(122000001)(38070700005)(478600001)(38100700002)(2906002)(8936002)(6862004)(66476007)(66446008)(64756008)(8676002)(76116006)(66946007)(53546011)(5660300002)(66556008)(7696005)(6506007)(71200400001)(6636002)(55236004)(9686003)(26005)(52536014)(316002)(4326008)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JQIzQgQ/JBgJX0I0wGtRXM3BKl403v4H1oI07lTTpu2do0GewKGADkzq1ACI?=
 =?us-ascii?Q?uzgSQkXUTFlGTHlZ1Mpqp1hqkzokYa5Wp0jSUtGdvT2nQwd5xxmrk/HJlStB?=
 =?us-ascii?Q?OJs9Zf2zokK08YEycaukS4ocDXbLVWv0PZoa9r8cmuIWr88DCSTPDkehQpB2?=
 =?us-ascii?Q?dWzwSsQ9zNliF00tKR1bLJ2fBEZldScflxh40dEmw7ss3OzI9H0EPA9dXpbZ?=
 =?us-ascii?Q?jtZxShrGd3UMbcUEKOhfEcysvUwMR2tdCgYeDdfFbuaENr+mx09dPoSJ842k?=
 =?us-ascii?Q?mFmWBYlKwsmC0Cwu+gEDVvCr7MWMqXlw/hdrawwQp3nH85eaBTBPOF+KD9sw?=
 =?us-ascii?Q?w4PW6mlI7CAmWYF9pulVqJCvsafif7pymE+TEgXJ9e36ENZJX94v6gHhPcEq?=
 =?us-ascii?Q?yZApW9N2F1gj4yJrU/ybanDEkIGJruIWb2VE5pinTldZ+BI6AhziIV2DNyfn?=
 =?us-ascii?Q?lzHnL3pdUMc70mAMPGbFvlK+DDIXtDnVWdoACYzI3zS0KsBHdBtkv1fHPoBY?=
 =?us-ascii?Q?ZcqSNWGwg8gCVxMsYQV/wB0mjiG5GITyBEFl0d/sAZJuPn6BZzuN0PIpNFO0?=
 =?us-ascii?Q?MTB9Pssq1bjodpySYKY8BgnZ8JV0Sx05EV8IQyEZvHrsTD0TlzA9vw1qsiJ3?=
 =?us-ascii?Q?Xq41CyEe/NQwSLYveoBAONTf1Qnhp748vcGNLD4DscSl2MtN+tzeDMToD/ZP?=
 =?us-ascii?Q?kD0xnF1KSYXPYtXufrJRJnDT0WuC5CsQuSWthGdRQm98KrZEDiHJB1ialJaX?=
 =?us-ascii?Q?ZhrpMYncHan0ecidPFn4ZA3wfLejtp/4kHWT9G2IqZFzla1ow5QD2p0wlhKr?=
 =?us-ascii?Q?Usa2Qk1Or2n/BnaSEtlaG4t1YW0vpUP35vUsosYDPGmvSjFL/TZ4XGKTXQ8x?=
 =?us-ascii?Q?USnJk8zrgZEisCM8ekQOPIJXxwEbuYOfnYrbvg/erexUidni5D3QVZROBdJc?=
 =?us-ascii?Q?nQAlBH9+3vfgjI1XTpM8hASsmMgfVUdd2YsLJvJwCon3MUqKRE8xaojnJS2k?=
 =?us-ascii?Q?VUW83f4fY7iVAXVsNWHS4iHpE6VLNzOBn/U0Ju+PG4n170hNP76R6nsMScYX?=
 =?us-ascii?Q?+uLXs5rpDMHTYdbILB3FGqkXe5z7UXS9/cONuxl54acfPdYKoy3jEN6c92XO?=
 =?us-ascii?Q?bFexKDLAcAm68QwjsY0zSpAO/Iu4KvoG0l+GxkcqJoYs15MLBe/QoRAbnLdn?=
 =?us-ascii?Q?tWWi0VgPFEbId6eKHzbRWo2xE1Xuc5j+SZ8MDo6RXxAqmQwjrSiVFDlKmn7N?=
 =?us-ascii?Q?aVZGMpaaJnTtxVlXcyK9FIEHJ0hHvwXF5BEo7YCDb1F0UqqhchYOO+HRfsPL?=
 =?us-ascii?Q?5AmcFS9mPdVSyTNFh+SzOdBIowpqNCTcMu1QUib62aZWVh8ZaBMmRRelJQSG?=
 =?us-ascii?Q?0z/896VS4hPq00wz2hBkyuTmu/qGgLMfHQW6STlnT5rfeYOxkcrLfGztdshh?=
 =?us-ascii?Q?ImR+fDue+qe0cJEvZuDdjC97oFhcFIjBx07vDeNr1oXCmmG5cs9ypV9XB00Y?=
 =?us-ascii?Q?GwoCod7L7144q8AlpK+wOJkOS0i71ETC2HIZKj9OAWYRmJf/yW59DXMIg3hu?=
 =?us-ascii?Q?aADYclOupUty/vi+Wa7OcS6vIeNZis17cT+5amBy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8190129b-1182-4178-85c6-08da7b521bd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2022 04:29:41.0678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bcOP0dIxFQMZWPdt+P9rRbON9VZjhG2vE1z7MZljTo9o2G3CjakcY1TMzO/jd3BFyphSFDCaIQ+NX+S0vIN5ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5531
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses while
 loading PIPEDMC-C/D
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


Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

> -----Original Message-----
> From: Deak, Imre <imre.deak@intel.com>
> Sent: Wednesday, August 10, 2022 6:05 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/d13: Fix unclaimed accesses whi=
le
> loading PIPEDMC-C/D
>=20
> On Wed, Aug 10, 2022 at 06:48:24AM +0300, Murthy, Arun R wrote:
> > [...]
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > index 00e18a4a5a5a4..6c35212c36256 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > > @@ -383,6 +383,30 @@ static void disable_all_event_handlers(struct
> > > drm_i915_private *i915)
> > >       }
> > >  }
> > >
> > > +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915,
> > > +bool
> > > +enable) {
> > > +     enum pipe pipe;
> > > +
> > > +     if (DISPLAY_VER(i915) !=3D 13)
> > > +             return;
> > > +
> > This function will be called from bxt_display_core_init() as well.
>=20
> Yes, this function is called whenever the DMC firmware needs to be loaded
> and initialized/uninitialized.
>=20
> > Do we need this WA for bxt as well?
>=20
> The above display version check makes sure that the WA is only applied on
> relevant platforms. For BXT DISPLAY_VER()=3D=3D9 (for GLK it's 10), for D=
G2/ADLP
> DISPLAY_VER()=3D13.

Was thinking if its required for bxt as well. This confirms! Thanks.

Thanks and Regards,
Arun R Murthy
--------------------
