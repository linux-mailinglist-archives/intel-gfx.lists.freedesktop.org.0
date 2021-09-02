Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 905153FF334
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 20:25:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C31816E09F;
	Thu,  2 Sep 2021 18:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FEE76E09F
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 18:25:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="219267986"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="219267986"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:25:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="689246836"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga006.fm.intel.com with ESMTP; 02 Sep 2021 11:25:39 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 11:25:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 11:25:39 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 11:25:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tp4uUTwxWS03HSFhxfDabhLPZZnMVA+Z8DBumle1JKbN2Xv1aG78LkMgCQoyHc6s8gILUZ3txXqPF6Po1kfPW7heKRlu9UxdsTuMhs4jxYt5UjHaluPrk9OJIBhz2uuW0TPG5rO7NyMsx6e3NHtvjfapWp+9ApwyhmJe+jia1oteQbdo1tdBskzoAnokQrb8OJ6ZQMQJ2zi7ECtmscZPEJkEvTpD4OlOqGa8zxRmfdSNB9xxSL7AOoPdeC7sja93a5jLEorQzxm5gn+EXYwnU210AGy9I7QNofUZVw96lZEH2iz57ZEhBOgbKd4jvGsZT1eaS+ZQYLRvLUEEfYf9/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtJvlYzv9U1zwF0qaqXtPtGGvdp7v2Tcl3fzi8a5uDc=;
 b=JRYwYsjiryOIwWeVEiBBqUIf0kSSkj2ZrqU8tjXWNlQC3/UQMzDE3m2UKC808OdqtpVxd/i7aD3VuzpIbm1Au67GGR4PQ0GKkB9Eg2uhyiMQ07ttzUHYBn6YIOIl91kUTqLHV9ax5muWFkEOymB0Z290LWqj6VfndvRVbn/+VV6Ty932gtnUEx2CxjtTUXqTMvTU1SyjwHxSzWLE9cidz9XbA3DA4fdqSlyHuHUffSoe6rJ0Dq8Yo+0H0/mvQu5TwcmiLmX+9aLOvScXzMqRYf51eZL/H0EskISkt8Z1n7WpGuJPSXtJ1QBUY+6vUZdgTPsBp4gLsOeLgQOWVoWiZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AtJvlYzv9U1zwF0qaqXtPtGGvdp7v2Tcl3fzi8a5uDc=;
 b=LsvSmFwNqG4pjLSqyAgHoqNl33wRDxO/qvW21BfAFyoaj+Xjf2qrOL67PxkGja2mOJ4+BbPaqO5vK7oZEJtTMxS35kKgBaKCHWEmUgmtMNWwIwK0qi7IUgfy1eZzQtDvtNY/ndtejbMRk7hVZzIn3wmW2QS0m8xsrBhMSx7osmg=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB4127.namprd11.prod.outlook.com (2603:10b6:208:13e::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.19; Thu, 2 Sep
 2021 18:25:37 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::955e:e7a7:f183:f558%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 18:25:37 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Telukuntla, Sreedhar" <sreedhar.telukuntla@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V3 7/8] drm/i915/gt: Initialize L3CC table in
 mocs init
Thread-Index: AQHXnbvEz6hcn4p68kWWbXgS5vvV96uP5CGAgABJpCA=
Date: Thu, 2 Sep 2021 18:25:37 +0000
Message-ID: <BL3PR11MB57469575F24CAA0BA104B4DCFCCE9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-8-ayaz.siddiqui@intel.com>
 <20210902001639.GG461228@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20210902001639.GG461228@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 88f89650-14ae-49b2-31e7-08d96e3f0f94
x-ms-traffictypediagnostic: MN2PR11MB4127:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB412702EB8FC2D5F3458B93C1FCCE9@MN2PR11MB4127.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0X/AELEgiBIWXEco3W0XUImjpA6MkJ5BjkP3IRZ6SXiV2nfHKCS4c+Q2d6F7xt/X4B///IhwVJX5Pd11sGnThn927SdZWEAw7LMgBF5lGAhH5ZiYu6ZDL1ETy39JXMjagpA3D4qzlq2UkRazIg+AwJwbPzyyP5kiqNmO+Cd/JEBzVXoboNn5IDaU3KrSrjYO27bEWZc6QQIJhkrGn6JmS6v5anbv63ym1HpbW8TTc+EVwL3lzcUUdB9/u/xgZkmy0JZ/m8arm/dRGZBVBBPm6BffBFNurcLvobqfG91z6jKnGRrxd3u+Q6tjN3IGMcC3TaeI6dHm3qesNz9oVS3vsDVNcNuRWaRrxd/+keIfZeQ9dzrfARA7mlDxZskURf06sA+MoNjIe6nIqNZyHMTqh69F7fLGpWKaGIlODYQLC3jZJkOze9ig6qhaD+RUCdXFKRLn7nxjHwWijmk1KmM2bl28okImAn5SgA70HtD5/8q906DXcliF1zN6sElhhjlHJdz9aSBjTRn/yPsOhtqPyxy+/A3BL5zlBU6VPe7m6P9kerQUe3TeYYBfSuVWhDzSJwIGMLPjTFNbGKraUQAJ1weIyHOW2f13wEgdVQ6pQwRR21D/ZKVdQq6QkCY3hUHJFYPyZzonIujc2eepW4ud9VaMlN4TpR3b2rhAkD9OwDbPxu79pSpJAJKQlxW9W8N4qlXAae08uUOvBUIh6Kg/R6vnPOuc4yjns0Cm4sgvvA4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(136003)(396003)(39860400002)(346002)(107886003)(478600001)(38100700002)(86362001)(66446008)(66476007)(66556008)(54906003)(7696005)(66946007)(2906002)(6862004)(38070700005)(6636002)(64756008)(122000001)(186003)(71200400001)(55016002)(76116006)(9686003)(5660300002)(8676002)(26005)(52536014)(4326008)(8936002)(6506007)(53546011)(83380400001)(316002)(33656002)(32563001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?U4zDv6gpuFffBjKMZGxI0uy225yjoBmzSgSjOL9wKQCmvpztatyQbVJJ6aBU?=
 =?us-ascii?Q?xJrilTgknPpXvhiT1Bj/x0AHwPR0ckTVQ5XUNWR2nKlA6MMYualC1XDlUerR?=
 =?us-ascii?Q?sHijXaktU7HI+8Du1fKL4AFk9SpwU+hNE7jAYhvja39EMdYJjvXZAyBPxH5z?=
 =?us-ascii?Q?fufwQnXgNnRKXVlji61yvz9s9nroG5Bwxwr1NsJ/2VqkV/JIbCmbMHvRKIbx?=
 =?us-ascii?Q?2ecVqAoo+pJEU+VmKiPkZV6Dsrvcj0DlWknfmpXQsKE4Kcj3uLtTzsBNyzG8?=
 =?us-ascii?Q?oxDNHxGxW18LTuk9OpfqZbDjBLvNhHD9kc/wai1g2uvq3Q/+0JjvND8Mp98C?=
 =?us-ascii?Q?TBLkpA8gx+bQfHRi9h7kPHZ7GCyTlh9Mn4RSH83ZCFeUwbhRVZtqS93tlQHH?=
 =?us-ascii?Q?iBv2HVo+ndVdSO1X5YvQyfLg2CjXBRDTSquJN5ih2Pum1FWKlqTDvd5DzOyi?=
 =?us-ascii?Q?f7mlzEKP46QSJu7FpfsyHXmm5KNkX8Ac0G/m5WGUJN7Ukf/bgYemi2N43Vq4?=
 =?us-ascii?Q?gdypP3RMQM37j6qjV4xw4yX9wqoSdtbpgUeiDU6Etg5MdqDYiiAaBVbjLl5d?=
 =?us-ascii?Q?dpZXQ465ms+9fvx0CoKQajS6o6X0TvFr+D504qpM2+8bf5iyTKGFA8wPmp5O?=
 =?us-ascii?Q?m07FHX7Su819H+zav409S5usugBtWiMdx3NVqMyI4yz50jgQ59USSyu0IKYv?=
 =?us-ascii?Q?yTarey+hG6aRb5aoppuJbtnPHaMvhxJdiOrtZOy++Fq6xbYt0c2KoX9W4FWo?=
 =?us-ascii?Q?AOn3f0f24ymkbKCyG2BjmU9sr2zKFmfxuOG1ENw3l1Ll3XhgRp8vaMEzBId9?=
 =?us-ascii?Q?CYxJDQT2yfcyD4nPMSfQGhBU6HhN5IPypTYybxxQIiPfjGYb7RnqZZH7o6CE?=
 =?us-ascii?Q?gxQXsi91hiRvyN3Trcshw42FHkGFhDUqFFsq8OA9uBbrQHGJvHdZgWdgRItn?=
 =?us-ascii?Q?IiKv0gbd10N2JONDEuogcGSSw/m2m5oKr+7epnGFi6+4qhEieQgbqk6gF2R2?=
 =?us-ascii?Q?CGl9VqbSpKPzcgQSVOmaxC4uxaZZB/OkcpM6zgE4gp4KvujDajkYMuNk0WhF?=
 =?us-ascii?Q?yYGNWD+VCEThMZYW8wtNdgwTd/Wo8jtQ6h8zpApy9lu6O6OnzPrDiw/Vosjt?=
 =?us-ascii?Q?a/etQnH3Sdja0XhHB/EbpybD5w9ZWZEES+cbJmlBvE6NYXXimhcwk+nCXioj?=
 =?us-ascii?Q?2/Sm8yuPSnCpcu8rOW5TAB5jG+ntv/s+l7Z8aSRBjrnQ3s79b9SirTZBnRJg?=
 =?us-ascii?Q?i3Tkq5lFfCnFqJJ6RjX5Hl+/854WfhgAV/oM1xsE2DcL4CJrLphFf6Q+Zze4?=
 =?us-ascii?Q?HIN6NU6k+2XsL08NOpTZDWVZ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 88f89650-14ae-49b2-31e7-08d96e3f0f94
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2021 18:25:37.1716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HIqOJZtFudoQFWekuDiMI3leGcm40v/gpKrIklwUb/hrrF8GxO5OJSFHLlWqNFj45pnc5ijCD954h6jApqMIpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4127
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V3 7/8] drm/i915/gt: Initialize L3CC table
 in mocs init
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
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Thursday, September 2, 2021 5:47 AM
> To: Siddiqui, Ayaz A <ayaz.siddiqui@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Telukuntla, Sreedhar
> <sreedhar.telukuntla@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V3 7/8] drm/i915/gt: Initialize L3CC tabl=
e in
> mocs init
>=20
> On Mon, Aug 30, 2021 at 09:52:39PM +0530, Ayaz A Siddiqui wrote:
> > From: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> >
> > Initialize the L3CC table as part of mocs initalization to program
> > LNCFCMOCSx registers, so that the mocs settings are available for
> > selection for subsequent memory transactions in driver load path.


> >
> > Signed-off-by: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
> > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_mocs.c | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > index 577a78dfedf99..405374f1d8ed2 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> > @@ -717,10 +717,9 @@ static u32 l3cc_combine(u16 low, u16 high)
> >  	     0; \
> >  	     i++)
> >
> > -static void init_l3cc_table(struct intel_engine_cs *engine,
> > +static void init_l3cc_table(struct intel_uncore *uncore,
> >  			    const struct drm_i915_mocs_table *table)  {
> > -	struct intel_uncore *uncore =3D engine->uncore;
> >  	unsigned int i;
> >  	u32 l3cc;
> >
> > @@ -746,7 +745,7 @@ void intel_mocs_init_engine(struct intel_engine_cs
> *engine)
> >  		init_mocs_table(engine, &table);
> >
> >  	if (flags & HAS_RENDER_L3CC && engine->class =3D=3D RENDER_CLASS)
> > -		init_l3cc_table(engine, &table);
> > +		init_l3cc_table(engine->uncore, &table);
>=20
> Can you clarify in the commit message why we still need to re-call this i=
n
> intel_mocs_init_engine() if we've already done it in intel_mocs_init()?  =
I'm
> assuming it's because we lose these register values on engine resets, so =
in
> the execlist path we need to make sure they get re-applied after the rese=
t?
>=20
>=20
> Matt
Yes for platform like DG1/TGL we are loosing the MOCS programming during en=
gine reset.
While on XEHP-SDV , Programming of L3CC are retain during engine reset also=
 since
There is no Renderer engine in XEHP-SVD so MOCS will not be programmed, tha=
t why we need to add
This patch, We have not tested on stickiness DG2 yet, but I do not see any =
harm if we program it again
This patch will be required for XEHP-SVD.  If there are any other concern t=
hen we may ignore this patch
as of now and continue with other patches of series.  I'll modify commit me=
ssage with   more information.
-Ayaz
=20
=20
>=20
> >
> >  	aux =3D build_aux_regs(engine, &table);
> >  	apply_aux_regs_engine(engine, aux);
> > @@ -776,6 +775,14 @@ void intel_mocs_init(struct intel_gt *gt)
> >  	if (flags & HAS_GLOBAL_MOCS)
> >  		__init_mocs_table(gt->uncore, &table,
> global_mocs_offset());
> >  	set_mocs_index(gt, &table);
> > +
> > +	/*
> > +	 * Initialize the L3CC table as part of mocs initalization to make
> > +	 * sure the LNCFCMOCSx registers are programmed for the
> subsequent
> > +	 * memory transactions including guc transactions
> > +	 */
> > +	if (flags & HAS_RENDER_L3CC)
> > +		init_l3cc_table(gt->uncore, &table);
> >  }
> >
> >  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
> > --
> > 2.26.2
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
