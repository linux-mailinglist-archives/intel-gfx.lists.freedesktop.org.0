Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A216319DC
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 07:49:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7B310E131;
	Mon, 21 Nov 2022 06:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21E9B10E131
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 06:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669013360; x=1700549360;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wwHVVTLxwuKTsjFh3hOIDTsGPmv1KL/IJBTKOmZPOYA=;
 b=CTZkIIvhkvarRpplgUW+F2PuVZra0Z2cKqB6TXxsk0XDYo23XvMUZu2g
 6t8PcRMWXWdZpqfWMir0wy6KHLWDLOHiI5elA2/6c098BjpYX+AvTWnrk
 NqBJ2mzn2ieTGXXk0HGyp6eCtMU49THBhsnMzpFWGhazmb3XYT9yjXElV
 QZqPH0E+A+IDB/1tHcpmfg7ERRk+C5zXzXOQOa0KtMf8oaujnnF7K3fFD
 vUnw6pnenpwmF0yHGaOxYcqWtUbh4fNDJW/4G6tUadAMHHtYR9rNOLkz7
 2UddD7U4H6m5n2vayHEZp8+UwGp/IjIQ8QSna2h6WFmYQ6000sX6bzqLI g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="399773334"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="399773334"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2022 22:49:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10537"; a="618717980"
X-IronPort-AV: E=Sophos;i="5.96,180,1665471600"; d="scan'208";a="618717980"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 20 Nov 2022 22:49:14 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Sun, 20 Nov 2022 22:49:14 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Sun, 20 Nov 2022 22:49:14 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Sun, 20 Nov 2022 22:49:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bXKkBLbYIPOttRpsNFvCzTADnP8tV5SgebFNPN+lSTN+bpnOVNyBpFOdmSVRG3zrpjNLK/lSSKec2ZEMOSJ4ut9HurQMfwFrlGKN3iFBmBBrrOOzdjMulqVDSpUUq0NjxWnEzUsA4cKnoVoBcl4DLDrKufJQCKfrumEywwElPLfzZHIyZRQrom/DDuHp8cmtnv2ZCZRf2RTCm/YHpASnlNwfiTY4C1NW5vWgmT4oL0cx8jZ3GApApNwrz1RXA3JxjtThqOvDcgD6myLjzPhymkuIwRZ7UtXy5P/NLD86BekZ+I931WTjGOKdO4nFeP19jfoqf3oaRmSSWtuuVpnZ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rnk1uY1rRunYeAZxkjDf+aJUqE50hYkgo13ZFNlYSFo=;
 b=MgOIITYQTCvvMZfeoCq3udWWTnwCYPjeWs6X6x/pI5O4pcEuZfeaZ4nLiWyNB0xiw3LM8fpI7ED6KhT8bAr9DEPaAvgYg2VjVfKolgvHnylXutNLWM3mlSZ6B2X58GW7J9ViFkbH6rQiKlwXyd/kI1wxRWthXIVsOty05gbzj+S6PRMIho9tJP6QjrsUVOet9inm6vR68Dx2b+OfZYFAp808cFDdu5e7JRuR0atomC3JMnrSLUqot3UGfp0Alc0YiVCttbEfpNJvrq9qLRo+P9n/Prc88TRsvy/0Fdr+hZZvtS0U7v2okgIfSgC5BVH/DnGy/IWJSWLuEqNnNC9D0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1469.namprd11.prod.outlook.com (2603:10b6:301:c::16)
 by PH0PR11MB5829.namprd11.prod.outlook.com (2603:10b6:510:140::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 06:49:07 +0000
Received: from MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252]) by MWHPR11MB1469.namprd11.prod.outlook.com
 ([fe80::6822:6369:3684:b252%9]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 06:49:07 +0000
From: "Ghimiray, Himal Prasad" <himal.prasad.ghimiray@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
Thread-Index: AQHY+aNVNJcPQI6yokCGKhwQrRAUjK5BXf7QgAeXjBA=
Date: Mon, 21 Nov 2022 06:49:07 +0000
Message-ID: <MWHPR11MB14695FB49DD3291EF6641A27B30A9@MWHPR11MB1469.namprd11.prod.outlook.com>
References: <20221115080845.1793650-1-himal.prasad.ghimiray@intel.com>
 <CY5PR11MB62110AFEF4C220BD46AECCD895079@CY5PR11MB6211.namprd11.prod.outlook.com>
 <MWHPR11MB14690212D27517518654B172B3079@MWHPR11MB1469.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB14690212D27517518654B172B3079@MWHPR11MB1469.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1469:EE_|PH0PR11MB5829:EE_
x-ms-office365-filtering-correlation-id: 9c5d1107-b3a3-411e-0935-08dacb8c7cc7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ty3dhcSdh6EBUxPkUenhEgApOqNYL4W+kLNY8+/WJgWykWKidQKk+immqEonZRw28C/L1BlROQ89WKE5zjg6WRIchkC1S+Vc87ImXU5pwm2AQXgQSnBl27piLSa1ffj8oBklIgUjcfqP7lEZi3yr/lp1zkXwFWL/f55vcv/TBZQl6h3VmbBBusPWw1vtpea3v4qepinNSyR3OXXPWAqMAVSRRAnBhhdNnwB/f+dVWTqVCj/vAbJLnOLnl14sA6Nuef8CiJ6TBJMVlJL120jPHEe/2BUKMLGuuXm7/IR5WwRBtnJRNo9UlJ43JAZZse2TKwY9vDTso2l4MffOOGs/EN4Apfm4Xeadf59NseS+TP2WULk3bkR9IsURQdAnJtVtjQL5b86Qne812NNlqRt4BT4iR9P65ssEFvP0oU7dK07Vb5TUUninlvNcIGk/FsGAiG8+/Mq5HqjG5ZzaUibkGftEwzZn8xail64BNvB/BUiU/0WeDMMtWVP/sMCq8GRhAVrfJKh6QZpUN1r3cBZpvFNWhfsC+0FElIQ02YBFftqInkQIugNqisbzieQ+4NCOhkeF/xQRw2RVB3Z5dIZ8ev5FsRChjD/0sflhx6ZiI57qK2VTeA6wJulOS2i8qzYYjtDWPjq/yvIW69H4vu05dL+FEqcQpyzWUeMJgGSlQe2r97KnjtJ91J7d890To8TpwD/iT8fHxIytvAhHFP9NyjiHliPqOst418kk+S/zStw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1469.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(366004)(346002)(396003)(39860400002)(136003)(451199015)(55016003)(2906002)(38070700005)(186003)(38100700002)(26005)(478600001)(33656002)(66556008)(6506007)(66946007)(76116006)(7696005)(5660300002)(316002)(4326008)(64756008)(8676002)(9686003)(53546011)(66446008)(66476007)(107886003)(8936002)(966005)(83380400001)(122000001)(52536014)(82960400001)(86362001)(41300700001)(71200400001)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JUhCXNo2fmN9PVL2X8iV/vXix1XIs3bqBu+NelUnlvZ+bngohPwjh05Y4uJm?=
 =?us-ascii?Q?x5R6X0ZtdrPbXFyY+4np2QSgnpkVcDU+o/OaIcZLSo+jIKIJBVvvA8JglKl7?=
 =?us-ascii?Q?SOYhdI3NUjUwSlvZ9vLrDL8s+wRFf1PZljQpZ2qhUgFMCoGE+nU2UJyxNQ2S?=
 =?us-ascii?Q?Gm0BK4HS8MkHjJquoYfYQeEqpyyPccNcdU6VoQwmFJeZbf413OT0WmMeXBTO?=
 =?us-ascii?Q?MWKcQ/Hw0QCG0vJdQd9if+6beeQtmtoP0t+HSDav/nzeKK0Udm+F6D6GekL0?=
 =?us-ascii?Q?xJL2SyIvTrLZyWGZMGWE7/bI2u5i9RQwWFV5jqceAX9MRhvH6sz5YaAYCTne?=
 =?us-ascii?Q?jIQh637oz/tAo8sm9WyWN3jT3uMZoh1s0VGQ9L8tv5xJtohBgsffdjCHS2H8?=
 =?us-ascii?Q?nvpyZxe4XA6Sz9H5kwj0RdQhtBtEBe4QnuVthkCwreGBUe59sJ63HPwhGU10?=
 =?us-ascii?Q?YiAvJYnOelihzrd+FvCSMNigo8J6+JyWk8sm9aHlqJ2UqW3G/99dwIu1FMzH?=
 =?us-ascii?Q?kEIjmRi3rRRLVD7rs+2LuVsruo/bDYCIhNH/SdsQA3LqHGvlmIDtUL+xv+4W?=
 =?us-ascii?Q?L0nfQKaKE2EsUBp602nbMF0IIMJ8cUk4FQYwLzTOVtEG01UFGD3NZRve6Xfx?=
 =?us-ascii?Q?QnoUc1P/AyjMQDp/nMmcjrQe3ayNAefuXqr0T/Ic7Kn5bWh7XK3Uc4IsG9Ds?=
 =?us-ascii?Q?DdBS1otH3JslpuvQNggMBdtA4T+AExh6nqHvVy4lV4NzB0L431ql7j0oQBEN?=
 =?us-ascii?Q?iq4bFk6X2YM05mq2X1IZxcf6B+UfENyRDMaDOwJmhjB+ljax/dTOJhMvv5Sc?=
 =?us-ascii?Q?q+KDas8yjtghhqv72lCljgH5LmNLgai7w3bNSrJBWGjpLiDcfq/7luOdFZyZ?=
 =?us-ascii?Q?esFqI74+RQwQqrwB1p2t0zh1UehImTo33HRt+OAaRr6lBMVYYVCBeNw9rBb1?=
 =?us-ascii?Q?L7z/SaDd4PKG1khK62R/nrVoUCbvyvONSVwflPnffd5rwTBNZwizt8QJtBiw?=
 =?us-ascii?Q?4Xcwt4Q6BishOo4atfOoB0zD6U6hEG6Dg80l2xNGyDfEPMXFNQuvroVTVusT?=
 =?us-ascii?Q?UVR438qifdTq85oNsIAPV8gs1fEkO2TNViANoYwqpPSQwdNzVDNQxjs4MjtH?=
 =?us-ascii?Q?F9Pz5SVT6fVQFaOtBj6gC2W+TN63ftxsAdtXeTC7730P1Pm5UGGw0UdkFBwT?=
 =?us-ascii?Q?T++Jju6M3UsUmiFxwMC31wOlUy0HzvjsMVKO7NLI71WjHzp16kLHKeI+KmDb?=
 =?us-ascii?Q?qfR3GHeY8rjpgvx+Jw1qxJzl50lfywCyYYDc//XV7/UhlhpyirGS4wywM4Kl?=
 =?us-ascii?Q?0J1NkWbpu1FOkQh+cyCTqNH7wh/+LIDoo88LSKhRzbrY6TW5ouA4fK2HHwP7?=
 =?us-ascii?Q?3UQcKSq+ZGuBdE8ONiSQd/A35pf987DAjCl/y6WTci9guQP+5mFp27HrZJ7v?=
 =?us-ascii?Q?ZMP4zzxJ67Tvzq5Ix8KPfkiCCEbTlnRUvCD2XmoAPOz8/MK9+PC5OrquIAA9?=
 =?us-ascii?Q?qNyIdN9UPoMGanSky1+kWN5G5Cc/I8SQO+DTD99x/fp2SNKShTFxbHRbFtD+?=
 =?us-ascii?Q?44IEEUDiHQj1MoYS6L7sIFOSOI19ER093oP1tXMgx2GzVk3amAREkQxaWf9D?=
 =?us-ascii?Q?Gg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1469.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c5d1107-b3a3-411e-0935-08dacb8c7cc7
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 06:49:07.5312 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KcTYuKlQ0BRFk/be0X0fEHTamcJLHxNeeaR0nX3B3fdMCVm5W0J8vuL2+w1Gc3EWwgV/XTSLF7JvBzOW/BMVjZnt1hyHlKlVF7qlMCzuKgc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5829
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
 bandwidth via sysfs.
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
> From: Ghimiray, Himal Prasad
> Sent: 16 November 2022 16:18
> To: Gupta, Anshuman <Anshuman.Gupta@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Iddamsetty, Aravind <Aravind.Iddamsetty@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> bandwidth via sysfs.
>=20
>=20
>=20
> > -----Original Message-----
> > From: Gupta, Anshuman <anshuman.gupta@intel.com>
> > Sent: 16 November 2022 15:38
> > To: Ghimiray, Himal Prasad <himal.prasad.ghimiray@intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Cc: Iddamsetty, Aravind <aravind.iddamsetty@intel.com>
> > Subject: RE: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> > bandwidth via sysfs.
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Himal Prasad Ghimiray
> > > Sent: Tuesday, November 15, 2022 1:39 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH 1/1] drm/i915: Export LMEM max memory
> > > bandwidth via sysfs.
> > >
> > > Export lmem maximum memory bandwidth to the userspace via sysfs.
> > >
> > > Signed-off-by: Himal Prasad Ghimiray
> > > <himal.prasad.ghimiray@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_reg.h   |  2 ++
> > >  drivers/gpu/drm/i915/i915_sysfs.c | 27 +++++++++++++++++++++++++++
> > >  2 files changed, 29 insertions(+)
> > >
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > > b/drivers/gpu/drm/i915/i915_reg.h index
> c4921c9a60770..3ba1efa995ca9
> > > 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -6603,6 +6603,8 @@
> > >  #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
> > >  #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed
> > > point format */
> > >  #define	    POWER_SETUP_I1_DATA_MASK
> > > 	REG_GENMASK(15, 0)
> > > +#define	  PCODE_MEMORY_CONFIG			0x70
> > Please re-arrange the macros in  increasing order of pcode command.
> > > +#define
> > > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH 0x0
> > >  #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
> > >  #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/*
> > xehpsdv,
> > > pvc */
> > >  /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */ diff --
> > git
> > > a/drivers/gpu/drm/i915/i915_sysfs.c
> > > b/drivers/gpu/drm/i915/i915_sysfs.c
> > > index 595e8b5749907..0a6efc300998b 100644
> > > --- a/drivers/gpu/drm/i915/i915_sysfs.c
> > > +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> > > @@ -37,7 +37,10 @@
> > >
> > >  #include "i915_drv.h"
> > >  #include "i915_sysfs.h"
> > > +#include "i915_reg.h"
> > >  #include "intel_pm.h"
> > > +#include "intel_pcode.h"
> > > +
> > >
> > >  struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)  {
> > > @@ -
> > > 231,11 +234,35 @@ static void i915_setup_error_capture(struct device
> > > *kdev) {}  static void i915_teardown_error_capture(struct device
> > > *kdev) {} #endif
> > >
> > > +static ssize_t
> > > +prelim_lmem_max_bw_Mbps_show(struct device *dev, struct
> > Please don't use mixed case here,
> > How about i915_lmem_max_bw_mbps_show ?
> [Ghimiray, Himal Prasad]
> We need to differentiate between Mb (Mega bit) vs MB(MegaByte) ,Hence I
> used camelCase.
> Using i915_lmem_max_bw_mbps_show will not give clarity whether the
> value is in Mb or MB.
>=20
> BR
> Himal Ghimiray
> > > +device_attribute *attr, char *buff) {
> > > +	struct drm_i915_private *i915 =3D kdev_minor_to_i915(dev);
> > > +	u32 val;
> > > +	int err;
> > > +
> > > +	err =3D snb_pcode_read_p(&i915->uncore,
> > > PCODE_MEMORY_CONFIG,
> > > +
> > > MEMORY_CONFIG_SUBCOMMAND_READ_MAX_BANDWIDTH,
> > > +			       0x0, &val);
> > > +	if (err)
> > > +		return err;
> > > +
> > > +	return sysfs_emit(buff, "%u\n", val); }
> > > +
> > > +static DEVICE_ATTR_RO(prelim_lmem_max_bw_Mbps);
> > > +
> > >  void i915_setup_sysfs(struct drm_i915_private *dev_priv)  {
> > >  	struct device *kdev =3D dev_priv->drm.primary->kdev;
> > >  	int ret;
> > >
> > > +	if (IS_DG1(dev_priv) || IS_DG2(dev_priv)) {
> > This seems to discrete agnostic.
> > How about HAS_LMEM ?
[Ghimiray, Himal Prasad]=20
The changes are not applicable to all the discrete platforms. Example PVC.=
=20
> > > +		ret =3D sysfs_create_file(&kdev->kobj,
> > > &dev_attr_prelim_lmem_max_bw_Mbps.attr);
> >
> > > +		if (ret)
> > > +			drm_err(&dev_priv->drm, "Setting up sysfs to read
> > > max B/W failed\n");
> > Why this sys fs is outside gt directory ?
> > Thanks,
> > Anshuman.
[Ghimiray, Himal Prasad]=20
Had put up the query in https://jira.devtools.intel.com/browse/VLK-39793 be=
fore implementation.
Query: sysfs entry should be associated with gt or  the card ?
As per answer: Individual tiles can't currently have a different frequency =
so would be talking about card level entry for now, next to the other frequ=
ency items.

> > > +	}
> > > +
> > >  	if (HAS_L3_DPF(dev_priv)) {
> > >  		ret =3D device_create_bin_file(kdev, &dpf_attrs);
> > >  		if (ret)
> > > --
> > > 2.25.1

