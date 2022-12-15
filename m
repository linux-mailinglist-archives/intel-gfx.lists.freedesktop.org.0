Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467D164D539
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 03:05:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F5E110E4DC;
	Thu, 15 Dec 2022 02:05:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3842110E4DC
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 02:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671069939; x=1702605939;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GyEPFTxKdT0RUn7ZTRde3yrtLj7s9c+ZSjkSVT/0V6U=;
 b=Ftcf02TsN9hWAl+zPlCmj8mB1HT2SIxVLjPfi0aNAfwPEBOzqn3L9hko
 SJM0MsGPg5jGGSqiQA9rOzW1c9KJMoQouy2Q4+FF/M885XZOe74HQobVE
 X5k9c37gdN/JgKAYpUhyFEeqnKu46xQaNkl0YF6Ekf9TCTRtEhyI8MM8x
 8YLJlJKOW9wMT+kO7sei1T2p8u4NdYRwUwR1DPox6YwjPMZ8Tt+ZfwKfP
 C8AQP4Wwx8AyRX/j3/UPvXtupBYScqyVPGAupMmihntyb5Qid/++Xu+pO
 qQjlXAL6XsIE6QfdWNYZdpnw6MExzfIDxS17vu9NzUznxDkY6rrR4qlm7 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="298906506"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="298906506"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2022 18:05:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="823502928"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="823502928"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 14 Dec 2022 18:05:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 18:05:37 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 14 Dec 2022 18:05:37 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 14 Dec 2022 18:05:37 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 14 Dec 2022 18:05:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nv5u+DbDfs1tPkJqFWlGK4seOtKP5O3RSBZw+pEX7xiAwrw8jqjFCQU92YHNTR93CPhucrQT24CNArxTU9RhTBIun7xDgPBUq+AhZ83h+GS7zRercSiJb6e74xOiqXtk7SNPuYFvpTSySuo0Xp5evNOCHjLDyxw7WEXAJU6teh1nkLszbJUI70f8E8qn2kGOo++2VvtL3Pbk7bp50olEpIuHhd5/3gQgPFTzxUGguwYmNegUbhxtMkcR4Iod+PB+ZvLWkd+RRPJfdn1ROyZ/el+9OiCPQ2ILyAR0m0w0EtfRHxpIvMDRoFxTQ80Drszd0N9ioT1agBAYN+tq3BYX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ilEhLtz1kJ98O/4XZ1EIN9t7Vdx/VHJ5a9+/tsYkajE=;
 b=fM4zq//B00dTW/dLvpcCYn1GCTJr3+iE47fbT/Cl9QWVQEyfyhxvxswFbm3j7upo+dfoEKp0a5q6KPrYq8o5bUqucO5LTXDkEKvV9nm3ib+1rNMXCEjXSsZqiaVxNv5qjZCjO1jeS7lyxZTmK3TShP2WHG7H1aJ9HeEFWeDxHSwRsMTDGktx/8gyEfWVQFfqnKeVtd9ZAajyVdzYdlWYhIlQq4nnn+NeIyn4JdveV2C4DfgL+/TSB4xJHA26Po8UA/VoV1OhAALNArtTBeHyGxd+ZXr2T1ppqTyQSVWDlhlJoVvSVdPIXbDZae2x7EncIFhGe6GLe6F/+CcN8g93dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH0PR11MB5412.namprd11.prod.outlook.com (2603:10b6:610:d3::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.11; Thu, 15 Dec 2022 02:05:34 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 02:05:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code
 to a separate file
Thread-Index: AQHZDjYykObIy68DkU6b73XzmDej365sxFAQgABZdACAARf/cA==
Date: Thu, 15 Dec 2022 02:05:34 +0000
Message-ID: <DM6PR11MB317725A0A8F963B61A9579F6BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB3170BFC8724349A4AD8776CCBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87h6xywdfh.fsf@intel.com>
In-Reply-To: <87h6xywdfh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|CH0PR11MB5412:EE_
x-ms-office365-filtering-correlation-id: e23e507d-f3b7-42e3-cd75-08dade40d9ec
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tM+NPD+mDPUkPJEEHwjF8lA7aR2pEKaus9mZqiR8jef1GbZtaAhbIkKp8HIENuMZJMoZUyYTuy5U8lFo+Ks7Bf4pYqQTHSejcPxe7yWpkCw2r1YChXILE3yFe0hd/WFi41LPKLYMzo0KunX79U8zZvd2QNSFjTd2+IkfEGd6IR6r2Dih6mS/lYU3bur3OmiQIa1QbB1w3IajAJTwgcsF0xTW+vTDbYvNh2VAEO5d83JJyajXAND5E1FIAjSMy3dv5ckgmBWa9amgU89NAE3n1nBQL49cgaTZllnt/RrNdVE4cBiLp2bhB+78LRB4UmPqh2qt+Ck12FXiCaHqgVUgiQJ5RJ3OOeAZyVD56erNAzGndcsWXaKgApd8al+36v2XIc7KuDF3+qj3zO+NercwjYf7SDzBGmRMl9SI8Rwu0Rzx+Ra0vJhTxIV0Lh3tO1O0S1LSdFXJ/O5UqQUyNINCdaddPnCAuazJubY7SMVKlrpsHM0xMwhP6Dk5LvXzVq8HjF4lWQROfrlJZkjzcV73KOozHcN7ZBUf9OQbGUx4vtIdP48G9DCNZ+3FoU+MrLrcwERufN6+BeqpevRtFkdFK7ffpIEnf2r82k5slGRnxa8GfOaWKDVm7/jKPjL1W9SPZG1P7x5kNP/9TaGrJm3lz1IE9jslOnd9OLNQuS4y5aViGgcYG6G9f8MSdizGnnuYzPOWDhcYMr3ZGj0vFh0TRw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(346002)(376002)(396003)(136003)(451199015)(86362001)(478600001)(55236004)(7696005)(38100700002)(71200400001)(9686003)(53546011)(6506007)(186003)(26005)(82960400001)(122000001)(8936002)(2906002)(41300700001)(110136005)(52536014)(83380400001)(316002)(38070700005)(66476007)(8676002)(76116006)(66556008)(64756008)(66446008)(66946007)(5660300002)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mFCurnuQ9nWb3PcGNEQEZP5tT8ZuoO7w3SrsqeMD52+DyGSjV0AmRlaWzo37?=
 =?us-ascii?Q?xMPhOsNmMfxRM1rCuS+SHVryTqSeVTfGrWlNQfnGoXBsIB7pEsy59kKUnRJH?=
 =?us-ascii?Q?ZW2ngRvEtjd152vCrg1+QgX6oZ+caGGuiwYcywOPvabjhkWQIlfIp30LB6BD?=
 =?us-ascii?Q?UySqpz62FTjFb0gaipUwYyFExbM4FrnoqM9j5zAGudBunuOKlUe4rKK01FDe?=
 =?us-ascii?Q?9H+u+3gSIgUJ2qm7SXhzCoOwJe+V0umnM0Vb+EOLArh6At62CxBj8cndVNDP?=
 =?us-ascii?Q?zPni7VKaXqb9IhfPk4TniFEo6F+4xZ/bI/wr1LnI5qydgHJdA6WvN0/XvLMz?=
 =?us-ascii?Q?p7X70nb4rSaC1PupfeTa4G7Do3Qg0JWCCNq/tPWsEFKDdsL+cOA880R63B92?=
 =?us-ascii?Q?nA6GgjzCPG0wNnZGNQ29bPFYozcqC0U9Ia281KHpg3qhVGmGNospSnL0p/CI?=
 =?us-ascii?Q?me4k1F2JEGeIKntbCwagLeBlq2Wxa5gv2S3NENQldlE6kA+XfN8WEB6SMYJg?=
 =?us-ascii?Q?/PKQw2SwNQDYirUOe9XhfL8LwBh3jxq1big8UNHtyqOUCrTt6PnQ7Zq7w19Y?=
 =?us-ascii?Q?eH7OMLyKdWT/SjrJoFaSBeLIWLXLBQ0xq4yhX7F8uFFSFuR9aFRzAEWY7wne?=
 =?us-ascii?Q?P/HxXkUp/WqTlLGEUfkdbr5zc37hy5G0YTsKAXKfCpRVYEDrtBEb/981DMpH?=
 =?us-ascii?Q?/fjKbn83L7LgxzHdJkvKHJo46EtHs66ivk/v+3N/z5fJW2JTQpcuYvpP/RB2?=
 =?us-ascii?Q?nlX9IgqH6UoczFpHf6Bf5EMPS8WW5450fQYXcL641kIQMeK7W+cTfqhNVJTZ?=
 =?us-ascii?Q?8fkc3PeKZKsMSW+18Gb2F/17ei2rTtoQ6Ofh8wzEIZ3NrbzeBNK5cr8lAUJa?=
 =?us-ascii?Q?to95Dnm7gyN2uPh15htKya650QeP7jj1JvCP46rpmXeMOKkY7HzME9aHZcrM?=
 =?us-ascii?Q?a6RsSGe5HRiIJjxCMPidmhnUgUBr5buaPZHcMyFCvK64WmymG+NnqFNKFzt3?=
 =?us-ascii?Q?MuhcAlFvCoT1GJBBr/4jAzApazOtlJ2F8SqAb5AuN44labQEQb/7Qip0gROM?=
 =?us-ascii?Q?Pkyr55JxTEUeYhbDVjS1ljU76zuEk7dud5jVXm/zfGyV/Pu0LBFhuVy0mehO?=
 =?us-ascii?Q?hNUzQEXAT8WDo/MLPmSTm8PwQUcZpQbVrGY40t1Q2aVVty9aM5etp3bErsWE?=
 =?us-ascii?Q?pnmI4NQ/HIh66CgNddxhm+BT3B7lihEkx0XFmw75ISbHoZ0IlAktez9WFSXa?=
 =?us-ascii?Q?hDZKUsVWMtguM3j+PoAySMPOBbtyx5c+zV/YPeRqUSQhgFwdbgefU4XDzMx2?=
 =?us-ascii?Q?QV+jfWsaiK7cVP54XvsSOuLnj/SuML1FwYdW9zAmQZR1vqFk63HnmST8Bjw7?=
 =?us-ascii?Q?elgPil3DErKsijC0Z+/iXcako1OkXEafwUwY5EEcIQRhs8YW28211nXyCZnC?=
 =?us-ascii?Q?dTJXal9yy0yWDiieGreOTHBcknP0OKE0Zp7pVV78nV6e5vrFRu1lG2d1W5ot?=
 =?us-ascii?Q?PLh0XUnJsMVDDw/fivBVof8+fqrR8z3xyOaG8/cySrAyfgGjHK6MSEo+Ik5I?=
 =?us-ascii?Q?fIT7sSz5PSR0ox0lkY9d0EwUtmetJVEbQeA3PMK3?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e23e507d-f3b7-42e3-cd75-08dade40d9ec
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 02:05:34.1325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 005GGjvaevp+uReTq/ST7FgN3SUyZPs5ItMioakedb8q+k4prRwdExpJHqgw1NbwrBGCsJMfPDh7j4UTHOUisw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5412
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code
 to a separate file
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
> Sent: Wednesday, December 14, 2022 2:49 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline co=
de to
> a separate file
>=20
> On Wed, 14 Dec 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Monday, December 12, 2022 7:59 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>
> >> Subject: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline
> >> code to a separate file
> >>
> >> Add new intel_vblank.[ch] and dump a bunch of the vblank/scanline
> >> code there.
> >>
> >> Jani Nikula (7):
> >>   drm/i915/irq: split out vblank/scanline code to intel_vblank.[ch]
> > Can the function naming convention such as i915_get_vblank_counter be
> > changed to intel_get_vblank_counter in the same series?
>=20
> In this case i915_ is a platform prefix, contrast with
> g4x_get_vblank_counter().
>=20
> There's more naming to be sorted out, and I wanted to see what the
> response was to this split with the scanline functions being included her=
e
> before embarking on doing a bunch of tedious renames.
>=20
Just commented to see if these changes are coming in the same series. Under=
stand that its more tedious and will be taken later. Thanks for the clarifi=
cation.

Thanks and Regards,
Arun R Murthy
--------------------
> BR,
> Jani.
>=20
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >
> >>   drm/i915/display: move more scanline functions to intel_vblank.[ch]
> >>   drm/i915/display: use common function for checking scanline is movin=
g
> >>   drm/i915/hdmi: abstract scanline range wait into intel_vblank.[ch]
> >>   drm/i915/vblank: use intel_de_read()
> >>   drm/i915/vblank: add and use intel_de_read64_2x32() to read vblank
> >>     counter
> >>   drm/i915/reg: split out vblank/scanline regs
> >>
> >>  drivers/gpu/drm/i915/Makefile                 |   1 +
> >>  drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
> >>  drivers/gpu/drm/i915/display/intel_crtc.c     |   1 +
> >>  drivers/gpu/drm/i915/display/intel_de.h       |   7 +
> >>  drivers/gpu/drm/i915/display/intel_display.c  |  54 +--
> >>  .../drm/i915/display/intel_display_trace.h    |   1 +
> >>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   9 +-
> >>  drivers/gpu/drm/i915/display/intel_vblank.c   | 456
> ++++++++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_vblank.h   |  24 +
> >>  .../gpu/drm/i915/display/intel_vblank_regs.h  |  42 ++
> >>  drivers/gpu/drm/i915/gvt/cmd_parser.c         |   1 +
> >>  drivers/gpu/drm/i915/gvt/display.c            |   1 +
> >>  drivers/gpu/drm/i915/gvt/handlers.c           |   1 +
> >>  drivers/gpu/drm/i915/i915_irq.c               | 408 ----------------
> >>  drivers/gpu/drm/i915/i915_irq.h               |   6 -
> >>  drivers/gpu/drm/i915/i915_reg.h               |  35 --
> >>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |   1 +
> >>  17 files changed, 541 insertions(+), 508 deletions(-)  create mode
> >> 100644 drivers/gpu/drm/i915/display/intel_vblank.c
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank.h
> >>  create mode 100644 drivers/gpu/drm/i915/display/intel_vblank_regs.h
> >>
> >> --
> >> 2.34.1
> >
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
