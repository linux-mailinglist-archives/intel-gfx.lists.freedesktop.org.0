Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFCD74E6E9
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 08:12:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B523F10E30A;
	Tue, 11 Jul 2023 06:12:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E35C710E30A
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 06:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689055955; x=1720591955;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=1m/A2zS30lILq/alLyDH233lZA0k65O8r5/ofVCCOBo=;
 b=TmEd3R80U39QHt3F/b8pOJ497Akut6+VeJKgm5YgyU7ZouH9v9RJaNaj
 ql29lVxG26uDy47UbP6g4X7zuS3Ouy9HkZwJMaWh/9zfQXMMkgNrrN+s5
 dCKjdnhw4o7qyeNAR0PBazMsnJGAiCVReUp1aQX7lxYxpmvDpadwPZMmq
 gBX3vLEEIVh/SS2dV9nc9FcsKZNbFt3CVg/dN+AZEY/r458EPkEwgr0kF
 KwUvFnPhCYeWAq1xE0D5mGt4BVmDVxsYAw+bSzCaCdEmQvLKvwjtpwqRf
 C63ky5EufKwII6Z2dbD+fjYShJzdG5tkKfv76oHuS8rekyij0Gu5L6s86 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="354394554"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="354394554"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2023 23:12:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10767"; a="724305268"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="724305268"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jul 2023 23:12:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 23:12:33 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 10 Jul 2023 23:12:32 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 10 Jul 2023 23:12:32 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 10 Jul 2023 23:12:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=caSnhQ5grq4BH9dlCnx/s19CQ4x40cdKyMYDnVaKwkBuSlQa2oiV3Yy8B0WP3XO3JRJ6fYW8Jh04QTdvOdyQ2fMKRo16mLqP6orcruOMQRuQa6invQpiz1jusTINw3bJe0ZhSo3TWOyTc60gCTUHPa9JWf9ull+x0DXlYxanIt1CY+GaoPWQ+JMpd4EkVc3z8wJlnwz4eudpAQzcJfuSD9m7ruwDtOo1NvVgdacn5r4dw99nm3J6xPQKSitHiLRzcvbDKuBzsMhlHlCCbIEC54qa+Y1rSkYfyfI4Wemnh2Rw06KqM6Uhmln2c7ICmJkfpNcNp9nYTc0AkFNxwjydHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKdqaRArDlOT33HLix7Grnsw/5lFHYBaN7YQPlUKAe0=;
 b=D0BxlTNS1meHR4HPaKgKgma0wKlWqZmIdbchpJg9lpNWy0WEe4tv8voykrwx3A0vdEmLvjsiMaSTkgfZexGVem3qTAZHh8wwcAdujgdTQTJqUL38hEpEJrLhZqFpSC5W38hwVZU7jWL5SAgz6bi3bGI7yDcXTCukCOG37aqwk6Aqe5bR3/nmDlqH5y1qJOtT+m9rFsqm4lYkt0QBONdX4R9ju6iUio8H5Km0bRyeg3OnzeGnbxdKQW8epXMWZZoX+zMEayFUjuR6H+vg/zBhRFmKF/UeB6yfeTQImTc4WRgTuGQKwFnH/KWO8EkDMjo6dx2mbEjnIQPI/IAA7XBrpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA1PR11MB6244.namprd11.prod.outlook.com (2603:10b6:208:3e6::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.30; Tue, 11 Jul
 2023 06:12:30 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::6d2a:b83f:1618:2dd6%4]) with mapi id 15.20.6544.024; Tue, 11 Jul 2023
 06:12:29 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/5] drm/i915/dsc: Add PPS enum
Thread-Index: AQHZsxbX28+stxxRKki9spvK/0Fd96+y0QqAgAAANYCAAUWzYA==
Date: Tue, 11 Jul 2023 06:12:28 +0000
Message-ID: <SN7PR11MB6750BC73DD68007C534ED41BE331A@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230710100911.2736389-1-suraj.kandpal@intel.com>
 <20230710100911.2736389-2-suraj.kandpal@intel.com> <87bkgkjb9g.fsf@intel.com>
 <878rbojb88.fsf@intel.com>
In-Reply-To: <878rbojb88.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA1PR11MB6244:EE_
x-ms-office365-filtering-correlation-id: 6fd402b7-22e5-4bb6-5c8e-08db81d5ce13
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iA91VylTScuSWQS8JlQSfUn9chSBJX1ekxP8hzwlkj6/89GvZ5jBjQFwCsJMBwxhQMvjDKkITqTTHEKpwQeyQ4YtsJzybmqD6yFUEFfwpQY9h61Be182kX2WBPHyn6/ddM58Wgx0wkgJyqlBXyC4OfuIwhbUZBU3jLRoUd2ImF9KYsK4EJb6l8GNqe3OeB+IBfEcsACaQmiyIei6P3qjD/LzHEyg64vAsq7UJfQKXNyZhqcZNEfghUa65g0xA3lIOP5yoXSQ2ww1REJFw7sFr+fXpCLumrZn6Wz8AbsSb9fGCW5ls7eh5yTHSBHiqD+8XmZHevPPgviCNx46N2lpEjqk34S0A4JNo9QszqObLSAJub/3cg6YnmpUgTWiIFpYvs7G199gkp35mUY646q6ATFOJkBIsM1PLduiql5y/wxZ9GETmbk80MkPxWoQC8ebTXmTZw/k/1h//WwqnKpnXRGIbjeDVlf2G7+jj+h9m1GlFX45kzQS2w34mvRkkAkjGUDkXRWgiMfU9IlLsStRE+gH5YCdPM5T8jfhBwONnULlOtWEBTVNv2SSxL3K8yIVWoykBCebBWBk9CxriAWT0dmj0ISuT7jxsqmSlgtFXtdtL9+fFUos1DKeKEHprzTC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(396003)(376002)(39860400002)(366004)(451199021)(86362001)(38100700002)(38070700005)(82960400001)(33656002)(55016003)(71200400001)(7696005)(110136005)(76116006)(122000001)(6506007)(26005)(186003)(9686003)(52536014)(5660300002)(66556008)(316002)(2906002)(66946007)(8936002)(8676002)(66476007)(64756008)(66446008)(478600001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Q886Gh1DSZ19D3mW3vwGUpRFmguL15deUkGqvY3A8qvKK0ezwTFRxUam1+xl?=
 =?us-ascii?Q?GwapKlNYo2NBZozWhoi1NPkMaeWGYQD3rLIInjH9MaXR23PtBi3TJpWtg0ec?=
 =?us-ascii?Q?Uf25wuotH3odMylnS1yJjGIypmIZ6vBETzmOa28AqdsNm8rXvhWWnWmpm1yy?=
 =?us-ascii?Q?gDJmUmzVBg/rwvL/u82CQwYfAiI11a0OwSIkdAFC+ImFYdG3mhEI1YnkDXMd?=
 =?us-ascii?Q?HQdY1aatJNdV1XO4wpw5BtjC7xXW+CemOtMOEVI4XhzJ3/sPI1k6NttYp6am?=
 =?us-ascii?Q?jnbPABkY1ZbHK34O4km4L4ndJjbp9r0PeJ2tx7sh1coho+JM346a4QLSo0Fn?=
 =?us-ascii?Q?4g7ML45FnWtkPL/KYBF9jDqQeQOoYEUuT1PoW/hZVAugZMAPfBzg8NknryU0?=
 =?us-ascii?Q?AQLNHxfe8f5I9hRJ9Kx47vJ/H7OjdRyrkyuV5Ei/jrHyzG/Lq9h91TEY5yt2?=
 =?us-ascii?Q?DTROkgQ8k8n5ZfsjUDlvr1MeIaZwUCtKBjzc1M4fVrvnjdx3aU9hFsSo3RQI?=
 =?us-ascii?Q?b1WIIF9rg+HNxIIFMAAXr6rux8vlayyz2jLpQNm0NwEu+izaYIsUOjQ7k/sC?=
 =?us-ascii?Q?iXcSllnORrww7gYgmO0oqpQLM1lursnc185qPYxex7daN9IJ5pG1pW6R3Tum?=
 =?us-ascii?Q?1dRzZq4y/jGYcUk0EU9GHXczPdID/UrAj/63IZz4X0A+8BsgjZ/zqOH5R1gt?=
 =?us-ascii?Q?JI33imV5ViTZNIw+qkx0frglej/vTwsOZj1FpVWNquq/JvJ2cqIGD8ZKgg4G?=
 =?us-ascii?Q?YhP+6GLmzDdIT3L9RY5RxDyb/BpCbOSZHZmt+fVfg2z2sfIxsc4o1lpsd4g7?=
 =?us-ascii?Q?QUX/TwDV3f6hiwJaSJaRHzg4B+8OFjnVL6lZl5slz8M1bamTajUncZEO7wSy?=
 =?us-ascii?Q?X0NA4Srb9rYWGIjNn3URLBsSkrnYaAGHllHA85egEkx8VkrmXniXqmEr2VLs?=
 =?us-ascii?Q?KQqjb/4gFdANfNouGfTwoitxO02g9w0RboKr3pdVnl8QnEikMzCP4CcRvREe?=
 =?us-ascii?Q?Ne1hyBySkT3Ol39Dj0ASTzCKO0iqZDpMGXtMIZsOTj9tExOhyfuNVYE49Fyc?=
 =?us-ascii?Q?wEtvdMJIKICbaiG+DPB5UTX7vOZME1HdBOGkBnIqlEmkw1pAWXTYtKwf03v0?=
 =?us-ascii?Q?gMYHzLf8p75BQ1m+N2DG5EKWYJxaBBUG2+8G7dT8Zu/gqsQhV74dm8xCRVOv?=
 =?us-ascii?Q?Njqt1HyZOIASSDcS+LwusLxDiovR7bOZ9K9UqQu31rbVPMGb5smNO2iNdR/E?=
 =?us-ascii?Q?0gzKL617AxwqLIceQAlScjS9rM8+dphI2dd/aUS26Khdqj76qYBEeoF5Ku91?=
 =?us-ascii?Q?g3noelNUIhA8Iked8TaR0yb0A60Pmia87NgEaebqh79KlfRwtA5PZX6EFK70?=
 =?us-ascii?Q?bi5nkNgRC7oxfnl3EoCNn8UNRymZiV/lIoj/z96sCbMzyLYW+K4FNd+6HasV?=
 =?us-ascii?Q?fW5qNZZdoG6E9xDypqvtkBTIcj1LZixQ+cOv92zQ7U5bkk9vuNPNrPCt0Yh6?=
 =?us-ascii?Q?Ez36BoZ5AO+OXz7T8TGwCJvxmg/81RME1gG0GolVme+7n1keNjK6pTMMlKLi?=
 =?us-ascii?Q?DuW+GsMZtsW/yKnFn+xkiJq6ZzDfl1ZQ8UqirodM?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6fd402b7-22e5-4bb6-5c8e-08db81d5ce13
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 06:12:28.8184 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qpmgjYNG+JTx+GA4rxydvoZjOGL6GVDlmDH91a1l7676C1aQuOgVTwUTbXahy7I/9JNemwojCxYsOKA4QCKIQw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/dsc: Add PPS enum
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

> On Mon, 10 Jul 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> > On Mon, 10 Jul 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> >> Add PPS enum so that we can later on use it to distinguish which PPS
> >> is being read or written onto.
> >
> > The patch adding the enum alone isn't useful, should be squashed with
> > something that uses it.
>=20
> Also, maybe you could just use an int?
>=20

I see will drop this patch and use int instead

Regards,
Suraj Kandpal
> >
> > BR,
> > Jani.
> >
> >>
> >> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_vdsc.c | 17 +++++++++++++++++
> >>  1 file changed, 17 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> index bd9116d2cd76..1a8272324c36 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> >> @@ -19,6 +19,23 @@
> >>  #include "intel_vdsc.h"
> >>  #include "intel_vdsc_regs.h"
> >>
> >> +enum intel_dsc_pps {
> >> +	PPS_0 =3D 0,
> >> +	PPS_1,
> >> +	PPS_2,
> >> +	PPS_3,
> >> +	PPS_4,
> >> +	PPS_5,
> >> +	PPS_6,
> >> +	PPS_7,
> >> +	PPS_8,
> >> +	PPS_9,
> >> +	PPS_10,
> >> +	PPS_16,
> >> +	PPS_17,
> >> +	PPS_18,
> >> +};
> >> +
> >>  bool intel_dsc_source_support(const struct intel_crtc_state
> >> *crtc_state)  {
> >>  	const struct intel_crtc *crtc =3D
> >> to_intel_crtc(crtc_state->uapi.crtc);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
