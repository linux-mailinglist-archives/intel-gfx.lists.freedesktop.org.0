Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C8E5F9A7A
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 09:53:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B8010E45E;
	Mon, 10 Oct 2022 07:53:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA6DC10E45E
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 07:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665388416; x=1696924416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F+GJsDc67XKytVmM6En5bmBwhpwAiNqOweLQLRsL3IM=;
 b=BBn4C0YJkNulHw26jsR0BDpoP3HYQ3o8VJ5q9/pDFoo6BZ598DsFSHJe
 +RqiQ8t0Shs3AXpdh2p658VMRbwLB7N9W0pRiS16bW0vzJ0fi03rnOB+D
 U8Fs3V+levuiCydo4wF2GWnCDHPc+eygoJKLYHSb6VT1o3D1JMgFDOBqy
 bBpZZzCJvz51Stj7f7iMlmbKqkg4ypZ1PCasLwsptbIsjeuDrPfKXp+uP
 3HHWxEzrjR5WaJRXD1KkSEA4FcOoCm1QMNnHXK6l0/9VH5St2qB8NN68O
 1pMsl7HOAVLR77xhS/aEY02aHCOQIB5u1Rp6QfX7qRD+mIMHFUUmM52x6 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="330631238"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="330631238"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 00:53:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="688698326"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="688698326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 10 Oct 2022 00:53:36 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 00:53:35 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 00:53:35 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 00:53:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aEEnZeP4iYSDl4BeBXOTjPx8D9W0b6sJ/c74Jzu6j8QkLKztqK8IK8xSChTPrFfp/fh3bLZL86Q+vMQlKHMnXlWBhEpnE/HzfR8SayY6E1lXv/IfRY2i7tWOnoCPm/jJr3lzjivXYxOcd+4sD8OyPTtZd3AUNFCT4i93vcy1eR6c8ipLI1MA3Mh5NOyhoT4rTf1RIzgsdqjSF1vPxCKAIOClRR0ohU/zDfL8lSVjPgkP6atKrfLe+1D2g/iYYLQATnYsxuJHQVlLWiyPsi0X/FSYoMJ+uS3LcD8XFJ9nY4vTD1UI+j6k8Q8sWz/iFG/i178qsmF0iiIS5MQ2YTw1Aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r61IV7gk2UmXQZ8Yb5Av3VuwLNou9Zadq2hI7+jqpuk=;
 b=oTgivTr8rzdfmKuIQmCIOFDiK7wws/MYbnWA9ko84SHnGyDhq8kPeEtT+Y6qRUFSXF3zdBzci2bJsuH1/IX+7hDFZeDkcEjXOmoRd3HGPbZl+0wwns101FzQe+n8fZtE9HAND/hWu4d4yhFIVyrk4S0v2NrJnwqQFNx0X9Hiva5v2WMrY1R3Og1pinSaZP5Ms4ambSQVM+QbQ83N2D6azeRTPba5CQLvNq13otuvPmuxdDnNnhpspg9XF68nyu9Ojppxpj//9NU7zo3aa55QA8xzNBMQ+aWv9QgYhbBLJpcatV/o9Nk4GTuiX3rP6aGhDzInsoxPaPVmez4vp+yo/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB5352.namprd11.prod.outlook.com (2603:10b6:208:311::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.28; Mon, 10 Oct 2022 07:53:32 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::baaa:7aa8:7b3a:41e0]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::baaa:7aa8:7b3a:41e0%7]) with mapi id 15.20.5709.015; Mon, 10 Oct 2022
 07:53:32 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYwaOE/EXAADz+NkeUK0QgUHi7O63WeiyAgAhR7zCAB3v7gIAhL06w
Date: Mon, 10 Oct 2022 07:53:32 +0000
Message-ID: <DM6PR11MB31777D09EBDFB4604D5E6631BA209@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220906034803.4094252-1-arun.r.murthy@intel.com>
 <DM6PR11MB31775117B7388776D2E6DFD2BA439@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177451D1F3A10D00706461ABA469@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB31771349661CE3E0C2CB28BABA4D9@DM6PR11MB3177.namprd11.prod.outlook.com>
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
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|BL1PR11MB5352:EE_
x-ms-office365-filtering-correlation-id: ed2c8a5f-172d-4bd9-432b-08daaa94871a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZPIkji8ifWgtKcM9QitibQKEDdfh71ApKKpSrGWnZLvLYLI6wz+ZEQLBIlEhRx8tReQG3V2XB0u1MIZKyOH+1zRXmV0Tuo8XwzaDyTAEk4BITfDka0OL+5/wswq8gmQZiKCSgJQTznIcf23Gcc83ysbzFDGUhWJ4/EPhB/YSeUT80aRzPOjAJU7Wld9zOXSR/u/TaGds0JOSRl2leJCEYi8gl7dh2bqn4BXJzgKj0vJuI1fjrwjJdnkJnX+wTdOnan+QL787LXpOPXSKYwYS5bVdNYdpg7yqbn7AzqfkaL8/87rSJCzoVF82Ou4bc+4SpmlDS6jQ7AApX4JfoLEe9EnA9/T9BBYwwWr9AuMGzNyMrW5VvIS/AmpPQTh/W6e0ovavMgkcUx4JD3SGq15tAgZrxwOoV81bjUN60NFtdEb6E6tZQqQCp2mR3XetLgU/3aKIpJlREaWmCjTFDL1bwDOyMn2WnFcHqlZCr7xvnJ/yMqdcsAhBRFZXKTCfcRsXrPJNqMmOpOLJhFa3QN1Mc1a2OgQFj/dQ3LN7brB7bAfKZhsK8JS/pmTfs9F0QlSHrp8juht5iCnyXowy0dPeVYG0RMsnjm4aHffEUnuXd4Yf1ee6iOA/z6x1DX/EbFHJVr4feE9E7oB6tQp7LAfGMD6BfhImDwRkiuVTmolK+J7oes+zfllGCM9WadT2QFz3f1WOz30ztIPlvhZaKilVODhQGYIIQQlnzqUmBLHrbRi7LPbpp1DHlHAMbCCAp9wLG6+1CvcqPl0dQNB4GRfTBg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(366004)(136003)(39860400002)(451199015)(8936002)(5660300002)(52536014)(41300700001)(76116006)(55236004)(2906002)(53546011)(7696005)(6506007)(55016003)(71200400001)(33656002)(186003)(86362001)(83380400001)(9686003)(478600001)(38070700005)(66556008)(66446008)(66476007)(66946007)(26005)(4326008)(8676002)(6916009)(316002)(38100700002)(64756008)(107886003)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?SkCNvs42Gn/3A+vOZmH6iZ2xg+P8PW+lbgQRP0e52KtIewtLLZj4zmr/4aJv?=
 =?us-ascii?Q?Gi0iGFzijXiTGqp1+u1nllBIVA1mM6aISTTPfXLQCr2R32WJfw3HVqkD9DFY?=
 =?us-ascii?Q?aaz2VxayEqdWKWjMKZN9VdJ0YCxf3gvfZQJ1XyhVUYShZ3fdEEuyUSZjC+Se?=
 =?us-ascii?Q?j0gZDo79KqJsY6qCA1sarDOHtcjE3JAPArnf4TzFHVD15AZA/dmOt0RC7cEe?=
 =?us-ascii?Q?GJCb3sfS/lnVzn6UrbuJg/vanQHPRj7ugnI0TzV4Z2ybP9KWlQqakAIXo6Yf?=
 =?us-ascii?Q?ASUzoS/FgCwnCvzRmlsMkhXrNOvFcjA7SEn+m9+CzKenCrF0NJ4CYNHvopWT?=
 =?us-ascii?Q?uTSd8d+sbH+UVmuJxTT5Y1tUeWoYoIXoYj1onY7aXW29+6u8omDuIPlOQHos?=
 =?us-ascii?Q?6mt6Hc6Wy5Il9mQakmuAOr2FliF9vpCxg+SWfUN8oRXFRBAnV+R6onCeS1K8?=
 =?us-ascii?Q?1tRAu4U4aAo2RtWu9jQp3W09redG6f+g4dfBCDSyj4YtzESVLKDlokZESdj3?=
 =?us-ascii?Q?NoBXBU75dAZwZ/HzCJVHlcLWcUZA9gJ7n2skeH2suuPwuaEjpoc4ewVYfs/5?=
 =?us-ascii?Q?JfLiEUnuQrqvwtdn16fdxJX/3QpCqPrATTkbXEo7pcjHGHWaMkHBr2Db1/A2?=
 =?us-ascii?Q?SeOOofJAo7+aiQeR4q4mVRT3EJ1mZWJaXBYo3NhenrdDeX7deDBPJ6/sqL8P?=
 =?us-ascii?Q?lAWWdz0eTu7UUoODXDrMUMv3Gi5YTaN5hUDmASnKolUiuPFkw3QGxOJIMJzv?=
 =?us-ascii?Q?khVGrX/ccuKFEuLxw4enI2TGIVEei+MKz+wOy8pmANlOKbOVFD9c66nYhh66?=
 =?us-ascii?Q?48Lv+PZx+q/0re+zd7h/zpFyRz28s260fhy/+17L+Vg18rL0UKb78a5cODWI?=
 =?us-ascii?Q?Y0A9YrKyGpJa9ZvVP7dBc3/VQo5jbTuqaAfRX62+zHtdbHrtlYb66r6UTwNl?=
 =?us-ascii?Q?SeWlOI37tlk0Jano7hJ/lDCAvMHQYyI0J8A7aTLjuDHhrmxI4sQH4MFxzTqU?=
 =?us-ascii?Q?bmwoh78st8mISZCMNtvc5Bg/mrVLzmJIOAJAPgOTWyOjvdXhW21sjVqFAc6h?=
 =?us-ascii?Q?XeZQa4jp9SdYywf0eLGxs1n66KyV4ZOlMFjKjNfqZNU0KTpG3eHC8vrsP8C4?=
 =?us-ascii?Q?hAKegAy9HiSLGuqOX9nXY4sDelGZBHcXU/p3KxRyVBvS2gVlPfM50R64tx4S?=
 =?us-ascii?Q?DBaPB14TJd0mzkO9EwWTqUIJrWVp6FdcqGceQazCorIlNhImRU4iRiW+rtio?=
 =?us-ascii?Q?cdGySJ/ZD8STxpRS/4DP6a5zB/ZkN7/ENyzPi+r1aNP9RynmfnqaEoBB/Sg5?=
 =?us-ascii?Q?YpI3iHd0AcVbZ4Miuyu70AXBDFQYLpC67RTZmkw4SBRTKDxfjb7x4JMTAbhF?=
 =?us-ascii?Q?XDtZgZvtdLdE/JimxyJj67XnHfXxB3HVdJyZdy2IIOxxmKGm6H1zSjsh506Z?=
 =?us-ascii?Q?bNQUJQts3iZeom9r8q0162OMeZc6RMJ6lJVGF7/GFfVko9gnbD8nRwmv2x6J?=
 =?us-ascii?Q?5TGHbw6P8k4rnaYZgoMw2AhRfCPrqGbaBzUILBu6VfVG5D6rndArN51+lJcQ?=
 =?us-ascii?Q?bjp7UKFRmX6zC72MrYEv1TPD5SxcfOovP36BjWY0?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ed2c8a5f-172d-4bd9-432b-08daaa94871a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 07:53:32.4248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: w/6zAIUg4rECOSnkS8TwlvRub0VeNKjGSQa9Ibyw0nhXndhtloK6fGtANSoxR8mcrpWahGGGCggxOHPgSn1BDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5352
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ville,
	Gentle reminder!

Thanks and Regards,
Arun R Murthy
--------------------

> -----Original Message-----
> From: Murthy, Arun R
> Sent: Monday, September 19, 2022 10:38 AM
> To: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>
> Cc: Syrjala, Ville <ville.syrjala@intel.com>
> Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> If no comments, can anyone merge the patch!
>=20
> Thanks and Regards,
> Arun R Murthy
> --------------------
>=20
> > -----Original Message-----
> > From: Murthy, Arun R
> > Sent: Wednesday, September 14, 2022 4:21 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > Subject: RE: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> >
> > Gentle Reminder!
> > Any comments?
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Murthy, Arun R
> > > Sent: Friday, September 9, 2022 9:17 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: Syrjala, Ville <ville.syrjala@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on
> > > Linear buffers
> > >
> > > Gentle Reminder!
> > >
> > > > -----Original Message-----
> > > > From: Murthy, Arun R <arun.r.murthy@intel.com>
> > > > Sent: Tuesday, September 6, 2022 9:18 AM
> > > > To: intel-gfx@lists.freedesktop.org
> > > > Cc: ville.syrjala@linux.intel.com; Murthy, Arun R
> > > > <arun.r.murthy@intel.com>
> > > > Subject: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
> > > >
> > > > Starting from Gen12 Async Flip is supported on linear buffers.
> > > > This patch enables support for async on linear buffer.
> > > >
> > > > UseCase: In Hybrid graphics, for hardware unsupported pixel
> > > > formats it will be converted to linear memory and then composed.
> > > >
> > > > v2: Added use case
> > > > v3: Added FIXME for ICL indicating the restrictions
> > > >
> > > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 14 ++++++++++++++
> > > >  1 file changed, 14 insertions(+)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > index be7cff722196..1880cfe70a7d 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -6610,6 +6610,20 @@ static int intel_async_flip_check_hw(struct
> > > > intel_atomic_state *state, struct in
> > > >  		 * this selectively if required.
> > > >  		 */
> > > >  		switch (new_plane_state->hw.fb->modifier) {
> > > > +		case DRM_FORMAT_MOD_LINEAR:
> > > > +			/*
> > > > +			 * FIXME: Async on Linear buffer is supported on ICL
> > > > as
> > > > +			 * but with additional alignment and fbc restrictions
> > > > +			 * need to be taken care of. These aren't applicable
> > > > for
> > > > +			 * gen12+.
> > > > +			 */
> > > > +			if (DISPLAY_VER(i915) < 12) {
> > > > +				drm_dbg_kms(&i915->drm,
> > > > +					"[PLANE:%d:%s] Modifier does not
> > > > support async flips\n",
> > > > +					plane->base.base.id, plane-
> > > > >base.name);
> > > > +				return -EINVAL;
> > > > +			}
> > > > +
> > > >  		case I915_FORMAT_MOD_X_TILED:
> > > >  		case I915_FORMAT_MOD_Y_TILED:
> > > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > > --
> > > > 2.25.1

