Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8023892B0F
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Mar 2024 13:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A41A10E6C0;
	Sat, 30 Mar 2024 12:05:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3iuX7NK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD0010E72E;
 Sat, 30 Mar 2024 12:05:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711800332; x=1743336332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6AcmQBriN4AgPNxJGGmdQKDFdif97EJxw8yDeSzvEoY=;
 b=W3iuX7NKkI69qI4uXCCTRjqOPVAo/uYAk8oUmDG4Q8emxDgYN7ZCeSFH
 o7CwYAsZtwnpkFSuj5+bhEkPyRSrRF3q40vgfTeAPZIZ7AKFMrhn+TvA7
 d6NRYf+xKIrGFcg/yVxibcIRhpyzW8H9cIYFLwsrTiX8R6eU1NAmBNlMw
 lcZei0+hFfn/2WJxMXECjmJOaSpSZ4liPmXaNvFPrAU9rNYVimCuwBXTR
 cw7n9N1LM6b1NjNcLf5L42lDDy2+tz0BwPZzc9d7Z3R/hXAI61YoDB+yH
 nuYtCIJ8dfYRGkGvZvOXmyWlna0PerEXnfp9e14pT+zZlhp/d3h362xqk g==;
X-CSE-ConnectionGUID: iWKRz3kOQgKyl+HlETu8gg==
X-CSE-MsgGUID: 9kcho9yoRVKTYUQ6IWeC0Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11028"; a="24465877"
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; d="scan'208";a="24465877"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2024 05:05:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,166,1708416000"; d="scan'208";a="40368791"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Mar 2024 05:05:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 30 Mar 2024 05:05:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sat, 30 Mar 2024 05:05:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sat, 30 Mar 2024 05:05:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sat, 30 Mar 2024 05:05:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NLILmy/9O+GezKhHJYtmesEbEnw7fQGn1rrIvsg2KG7gaqsxI3lB0XUSsvzfzzjRy+WdO6cDV/4YBZVicEFRbEOwchVPalGrt4+VvlCnHr/5G52peGOie4wC9rmG3sAo6WqrnjHZWYF5OnHZ6/FYZgEj37o5Uo4mxSP+iIL+1D/YAIdLRcNXsI5YjOIsq1gwxFDnHwa2LThFS2TqwqxcneuyX2WQlQEAzA2sPQSPIqsr07N5wM+le1P3X9eMg5olvpcLoZq3pyfftQahyAZlZpk0EtUPfMe/NjrrxOdwoQZmS1voDHGDXn8XPugiq/tBRwcyjpYZTvLUWVfxIWkZcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=o2TlvmH6PCucm+IzOwvKP5R9ZztGJ8wWBO+vuDlqT+w=;
 b=JQbNgQ6WnUFZxSogRO+/JjH/72M56JypYlaNy/ja8+098ujZTCY6l21cZ4I/80l+7FVJKRVp9y6LBaykac/dwCIgpjvNH9VFgAdAkR9EDQz7oJ6+YwBqg8niJXueAZ+5RCulvZGtmCfH0D9uLX7hnTNxQ5ZU/Q+IRBZab6kr7I9HqaHz76pdDbCZc8TY10otHq4YkxFKXp8tnop76DybEKmnoT1huCpIjBVJIgFamDP+jCdLIXDff1PJKG26AKxN718vpIFffCEOXL+XR2y4J+AAuUcc4Bzl2jcNEaTgo+U5+muiAWNfVO3AtVz2Acz7xLWIuom2xBexvIoAeok56w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW3PR11MB4762.namprd11.prod.outlook.com (2603:10b6:303:5d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Sat, 30 Mar
 2024 12:05:26 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.031; Sat, 30 Mar 2024
 12:05:26 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Thread-Topic: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
Thread-Index: AQHagOdeOtZo5uteMUusODotvjIKwbFM0tyAgAAh/ICAAAOEAIAAAgiAgAAEMICAAzR54A==
Date: Sat, 30 Mar 2024 12:05:25 +0000
Message-ID: <IA0PR11MB7307547B012F44A827B68A22BA392@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240328080005.410961-1-arun.r.murthy@intel.com>
 <ZgUq47D313cr2VYp@ashyti-mobl2.lan> <87r0fufxy2.fsf@intel.com>
 <ZgVKWBQqEat-3iR3@ashyti-mobl2.lan>
 <IA0PR11MB730702DC9B3DBCAFB8396B33BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZgVPj8wHbjj2Oyu_@ashyti-mobl2.lan>
In-Reply-To: <ZgVPj8wHbjj2Oyu_@ashyti-mobl2.lan>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW3PR11MB4762:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DuZHm2PlPtiyY4FpIzQUEEvkG06YdngslX1j9TaMwPi0q0EJzHgzws74gN1aw2HFckIQZiQm+zlEtZSFdCvu44Ct5GOLJfx6321xlEHu3PRfd3l5MAIqv+vtf6lTn/jppC9LZnXUT4XrQsf3glLEBIltaqhDJfsEj2KslD5ZN5n8WVeUc3vyXZJGc1iCp5M0v38xJI0kvC/tXu3KTlk1hyUZyLrevSgBlqYfQHhQAj7STg0NOhtdFeUSugYWqP11+BdvDR1x8LCHgGQ9vbcoec8pPTWYSROEAsPO07ZFD70nnyXtlXRFdpjFWsWGdJpW6e83+fdQHUnMq7DRXrNU6AxZpDn/Ey3FtmUK4yTfBwcYncJ3LON/yO6/VS6T6RVjnUlDx4eaQaFMq0BjsoHgyoXa1Op88ZdSeA69YJbIv2AMw+yCYuRpsLWSof+JANJchaiJgSuWPPWYmVnbkeQdB0qH0XvF/90kPsWSAvD4L7hDWgyeczd+Qc0L+iATkDaGs9AT/Clq22VIhbNNuiCDUOqqTrKwvzE+CqPAYSi8MKkcZKwUJjsB5UunBI5nwpG1W5Dr9YlK/jT/PZIIS6pR1cbKny115eAb5SWzNTirvGVSx3yhVlvcofmHGkmiU7IqdKp/88vmhmvyMHWxIQHKp7yB43MUTvl2GcsxQTx/6EQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?lsvVV5pscGMeklZeb6R1mwpUtO+jrT2vcv/EHLBJS+Y2EttsmHM78tX44zWC?=
 =?us-ascii?Q?R9atRASvZps/hU1jCHwIT9IUQy1cUYdzw00RvW7SalXarn01PxvW5obbgDTZ?=
 =?us-ascii?Q?VgJfUIRMIxwaT4cEmEYWxL/wTZ3KG+6qnN2jubIe/TF+dG2j0xsbVGgDdsmE?=
 =?us-ascii?Q?5IGKFdtrB3URyDcXxJ2SGRDCGxfRN6RLEM4Tqe+h9QEF1wZxshb59ggqEP84?=
 =?us-ascii?Q?Oma3hkDnuhrZBg8z7MjQhRKRdD2Gye++pfjsFsVjaNQcdxgz6LHkSrLMpqY1?=
 =?us-ascii?Q?f/DG37zcx6GBFjzVCF31wGOSklAK1d0nsekJnPtmbxrvg6LwOxchXBbtR5ie?=
 =?us-ascii?Q?M3htlL55dwg2jnjBa9+i/JHihKFVLwy4fr5FeRO+y23nHUH4euXqNvIulh2i?=
 =?us-ascii?Q?LCSml/9dD0uoSGj/HqYkn0IGRZrT3Y/op1jRgjLPd18AiVwnhvzqoiEPtbO2?=
 =?us-ascii?Q?5aJ12mSGqEiqIXPn++AvyFyRmpVvXRVhJkXQT2h+AeN/UKB07XwYHoByvIg2?=
 =?us-ascii?Q?YEPKfbS9WXkdlgk0mkojE1QMolnXzWY3fpJInkxbm8zC61N38WqZzPw24BGg?=
 =?us-ascii?Q?lqyUBKRgzfhac19IqvQRYxBv3dkdmU9knR90f6sXa4DMThNNI/7CCUXhghFu?=
 =?us-ascii?Q?DO1havEn+ffbGQflDRHcIcrqqH89RReV//I2uOL2EHHwQQZdiABwArq0kvN0?=
 =?us-ascii?Q?jsGFsKSK8zZbvbyRHWaQWvw/VAreAsDA7lcKr9s8jsdoFCht8XE5c0G+0I8M?=
 =?us-ascii?Q?OL9oqAAacfhTM8oYGkZWwzAz27u4rgSsA1qtQwbPi4I1dSI0HM3Dxb5TIGJd?=
 =?us-ascii?Q?+hPX9zcG7cJ6Q8MRHLIU2n/byQJ+CFfpeOeB2Uu8O7mwWXBvKT043xuSOSk3?=
 =?us-ascii?Q?1dMBYDB/wQifOW+4ySC4XG0R5GvwDtGOcMipbUxn2wvxNRSLK0HuWhf2j0Ru?=
 =?us-ascii?Q?v9fMgW/peB2MGaStQBjG/3Ni4Upf1wtesylojgyBqqgOYHIiCee9q6EGyVjr?=
 =?us-ascii?Q?psi8OyxMgH6XqRjwVo0whku/0ApgnD71Gjm1Si9gy+w6NZQvTiUbxFQZjqjz?=
 =?us-ascii?Q?T+R66vCICJeotxqoIkeJE7IOmKc5GwQUgU8MPFjVgafHka3w+DlJRehaXFSV?=
 =?us-ascii?Q?hzGrnTxJAdvxEGKt8Tfax+V+xvDvcnXlTBausCADjNQ2pHHbFC1Pyqz+QM6O?=
 =?us-ascii?Q?57nSq+b+NcBnyJAdzjdql1qKEINyWCShxlN6A3UF8ZmlMzI9ZIggMidYrS0Y?=
 =?us-ascii?Q?XRrT26Mrr39U64CFwl3wpZi80Ih8h3ieeUx/9d7emWKL4b4pgcaqjRQVFs4/?=
 =?us-ascii?Q?CZS9EqIRGmGWjGmKrva9NBhhT8BKiOWiq9KKJ/WdgaDgP1jbE3eeLSIIW9ai?=
 =?us-ascii?Q?6cfqXE3mdebDCESSUw6giXASo95ooVZ9YqqhAr3d0KyfMKNeQCBRo6YD8swb?=
 =?us-ascii?Q?ph8ZP7ez9S5Mj/mBSzE+eOLsgn1dcKuG7jJE5/WPB4Biu+CCBnDFLmlONA8/?=
 =?us-ascii?Q?ZvUj7TnTYsOk51QeJp3iqb62CP1yI6XIfHDZknWNELtUJtDMuPYTGR8iVKyD?=
 =?us-ascii?Q?TeLnZTHILhe7DWuM9ahfSm0x4p2BvmS//ioJQ26Fh/J+eJ5SeMUuypdyJw9q?=
 =?us-ascii?Q?cmXYOJzJc9WzlxqCMNBDpZh0y/u/Kcxse+FIiiilo+uB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 334143ca-7f64-443f-ec74-08dc50b1af4d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2024 12:05:26.0074 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UJNpQi2Y88c2xwB40UJUlPw8WTJ5ZCUg8sCC1G6sHjH8Ha5PkD1FUqCjCMBaKaPoIwuZS7LDpM1vE0hI1S4iNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4762
X-OriginatorOrg: intel.com
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
> From: Andi Shyti <andi.shyti@linux.intel.com>
> Sent: Thursday, March 28, 2024 4:38 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>; Jani Nikula
> <jani.nikula@linux.intel.com>; intel-gfx@lists.freedesktop.org; intel-
> xe@lists.freedesktop.org
> Subject: Re: [PATCHv2] drm/xe/display: check for error on drmm_mutex_init
>=20
> Hi Arun,
>=20
> > > On Thu, Mar 28, 2024 at 12:33:09PM +0200, Jani Nikula wrote:
> > > > On Thu, 28 Mar 2024, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->sb_lock);
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->display.backlight.lock);
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->display.audio.mutex);
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex);
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->display.pps.mutex);
> > > > >> -	drmm_mutex_init(&xe->drm, &xe->display.hdcp.hdcp_mutex);
> > > > >> +	if (drmm_mutex_init(&xe->drm, &xe->sb_lock) ||
> > > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.backlight.lock) ||
> > > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.audio.mutex) ||
> > > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.wm.wm_mutex)
> ||
> > > > >> +	    drmm_mutex_init(&xe->drm, &xe->display.pps.mutex) ||
> > > > >> +	    drmm_mutex_init(&xe->drm, &xe-
> >display.hdcp.hdcp_mutex))
> > > > >> +		return -ENOMEM;
> > > > >
> > > > > why not extract the value from drmm_mutex_init()? it would make
> > > > > the code a bit more complex, but better than forcing a -ENOMEM
> return.
> > > > >
> > > > > 	err =3D drmm_mutex_init(...)
> > > > > 	if (err)
> > > > > 		return err;
> > > > >
> > > > > 	err =3D drmm_mutex_init(...)
> > > > > 	if (err)
> > > > > 		return err;
> > > > >
> > > > > 	err =3D drmm_mutex_init(...)
> > > > > 	if (err)
> > > > > 		return err;
> > > > >
> > > > > 	...
> > > > >
> > > > > On the other hand drmm_mutex_init(), as of now returns only
> > > > > -ENOMEM,
> >
> > The function is also returning -ENOMEM and there is no other error code
> returned from the error.
>=20
> yes, but it's wrong to assume this will always be true.
>=20
> > > > > but it's a bad practice to assume it will always do. I'd rather
> > > > > prefer not to check the error value at all.
> > > >
> > > > And round and round we go. This is exactly what v1 was [1], but
> > > > it's not clear because the patch doesn't have a changelog.
> > >
> > > ha! funny! I missed v1.
> > >
> > > > This is all utterly ridiculous compared to *why* we even have or
> > > > use drmm_mutex_init(). Managed initialization causes more trouble
> > > > here than it gains us. Gah.
> > >
> > > As I wrote here:
> > >
> > > > > I'd rather prefer not to check the error value at all.
> > >
> > > we could rather drop this patch. Checking the error value is always
> > > good, but checking implausible errors with this price is not really w=
orth it.
> >
> > This is reported as error from Coverity. My suggestion was also to disc=
ard this
> error from Coverity but the same API used in other places in our driver i=
s
> considering the return value.
>=20
> Strictly speaking, coverity is right and if I have to choose, I'd prefer =
your v1. v2,
> in my opinion, is wrong, even if it's more nice and readable.
>=20
Thanks for you comments, will wait to see any more comments and if not will=
 refloat v1 patch version.

Thanks and Regards,
Arun R Murthy
-------------------

> Thanks,
> Andi
