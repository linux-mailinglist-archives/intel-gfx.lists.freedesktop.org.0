Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6636AAA695D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 05:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A71610E895;
	Fri,  2 May 2025 03:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHwQ8KrA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C506B10E895;
 Fri,  2 May 2025 03:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746156806; x=1777692806;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ifGQw4IymKsvZT90GxvqM30yuu7DK7t+YKMPwh4hzjM=;
 b=ZHwQ8KrAR+hGr1i6ZsJ8TqYUeHG6mA0V1jbZWvoTUgc9C9CTiKfOTkcT
 XE1/uCcrHMMg39cP8NACU7H1AVkXBTb5BlQckJxauHCtZ81h/LTGxr68K
 WlRtBaW0ZwLpJdKMiSOZOGuMhepc5VpYSkoEbl8OS0+8jmbFXv+EdHRkZ
 hgrBd0P3LmPYj+r/d/7O083RykifNrwlafrxCjruJ7gNLQpRcyimIa+In
 9r2Vv754sE4RrjmQy2NgyPslVtuDYch1Bu3eSdv6Ay5/wcKroQD/PrGE8
 jQxTOKHN3RhD4jr/tJwdZwRg3eQQ+RfpkxsD9stNOylJwIQ6psm5Yen8e g==;
X-CSE-ConnectionGUID: wvUWGOieSzugUBXaCCui+Q==
X-CSE-MsgGUID: GxlsTngzSo650olgFTqf4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="58828121"
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="58828121"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:33:25 -0700
X-CSE-ConnectionGUID: TFr8kGNUTtewR5tYJEbMRg==
X-CSE-MsgGUID: O2jryomGSdO6/SOekCsINA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,255,1739865600"; d="scan'208";a="165469124"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2025 20:33:25 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 1 May 2025 20:33:25 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 1 May 2025 20:33:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 1 May 2025 20:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UJ6zVKptZSz9blNKgpFP8sDHOedURYg0ELGy45+xnsZWMyRJ60Ft0J4UCBscOnBHioMvT8nxA5XnO+QvE3NQB9y8/nsxnJT3DLgT4n7SFK4oORzKfStjyzXHfVWIU/L922GcUPLzIOzcqZnuMPKRTmOUps+Soo1YbF89EZWsD9UZvoPZhzUFzLCGDsA/7LUVAHk4Zr9oJSl4P4T5CHkDZcQ4UAAL/Sq+lBnEgAL8btUNUH8088X9xrq3BWqlf4YLTvkxC9V1nL2Eg2sHIHPvwVeo9CMaB0GXxi9v8aBLInOzDg3zSGFWDrEu+ECf5hmUmkgAaX9Pinz24L6rOqbmMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i5sczJ9CC5LpdZCi9CfYCPvw90oJo3jpXQzww086P+M=;
 b=HUqXxKoxV/9mKHQYR8jB+gO7ydbfvwu0mFLy+7rLHfBqWz9Q4S1xkDPIGG+FvUFIjmLIdvkmB++anv7GfALcxV6YIazsdr9+0LH71L16SK6nlpHPR2faDDeVAkFvIGpF3okZ1SRt2g3BlvEuJFsI2A4wMUeeSXcc8S+TW2OwSB1QQq7wgcvhR/uf5VsU4dt9iXgmzA/IBgXwJwyPYDIYWRZrU+PlxXyDu9bsxTWkidNyvoeETYw54deXQZBVOojDnbk+oa8xjVm1/CCdaiAwI1a5YWdJGqJDqNGgfyqhpQ5zb9utg+ldEWjjla2Q+n4xjtj1cUKfv3rPhSS7DnKrNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BL1PR11MB5253.namprd11.prod.outlook.com (2603:10b6:208:310::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Fri, 2 May
 2025 03:33:21 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8655.038; Fri, 2 May 2025
 03:33:21 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 02/10] drm/i915/hdcp: deduplicate and refactor HDCP GSC
 ops initialization
Thread-Topic: [PATCH 02/10] drm/i915/hdcp: deduplicate and refactor HDCP GSC
 ops initialization
Thread-Index: AQHbtVPDnEI929XPCkSReCsAa4/qlLO+uxyw
Date: Fri, 2 May 2025 03:33:21 +0000
Message-ID: <SN7PR11MB67509C502656504C24394A60E38D2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1745524803.git.jani.nikula@intel.com>
 <21e7871b35d4c7d13f016b5ecb4f10e5be72c531.1745524803.git.jani.nikula@intel.com>
In-Reply-To: <21e7871b35d4c7d13f016b5ecb4f10e5be72c531.1745524803.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BL1PR11MB5253:EE_
x-ms-office365-filtering-correlation-id: 2401c14c-9eee-467a-b527-08dd892a1675
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?HmlYVopWsw2xjMbG9192Lbi+6VhaKFpoeWwnAcaRD4H7KS4BbaIm/yU5Ccs4?=
 =?us-ascii?Q?83KIA8Z9ukh0o92UX74ddz8fnxWtADiv7nphkU0uq3ObZwqyxMtoBB7Z/bjE?=
 =?us-ascii?Q?FBpuyXfKlMAgMgOxDIAdpHM/3a4wqU89VTJkEfhN520oyYHKi9wQT1Tl+haF?=
 =?us-ascii?Q?Q5tOS1oyCRk2rhhPUtKvyHjiyTG8Cjjb1UPoSzaSxXe07xNjLFRrFalmdzJR?=
 =?us-ascii?Q?m9w6q+ukCIPZMFBnKovFuL6hm94jVd6IBEljSJcTS5tP4Xq/6g4GGiHJa4jL?=
 =?us-ascii?Q?DzrdLQlZI6qtvljANgro+iJWGLpjS4XV2RBMNuGlfvHaizxd50k6OkuHLJ98?=
 =?us-ascii?Q?cEAcW5TyXXD4YTBVkKsDPMS7tU4o4TNnw0QtQ0yikX6TjtSxuc0egPSw3pFt?=
 =?us-ascii?Q?xha5MPvZY2ZOwvyJTKti6fcJwd+xClmPE9RO3Y0qCQzs3bqjpnFMrq46VNLK?=
 =?us-ascii?Q?J9vcF5vHei557AOhm+0PLOP6HskElHjZkCclj+OuptEn41wBAF+6LAdVKPbO?=
 =?us-ascii?Q?q58ANhDoIw0FGGDxjHmQEv7Ci5ht7XPNBCiErLEIW7GmcVh167rp9ByPyTbS?=
 =?us-ascii?Q?BhK856gB3k3k2fnEeizSH8yFY9856CLb0r3MfVYJxL3nOfI/f2EWhRzC5Y+i?=
 =?us-ascii?Q?s/1C+NIbP8oEAci4GEJeJrVoBfoQwJpFc89sSKebx0Lb9ZSoSQndsqbkZvZx?=
 =?us-ascii?Q?oDQrlHQ0nuckcL0f7SYCxIbgQoPaaIrk/u069z+5sXNLkLIVdPaNXRCB3plY?=
 =?us-ascii?Q?3otlvPBfnDWDMwiWjyvvCvxmk4zBoTCxXSp823v7n8SJxsW51ZXDnbQLTgun?=
 =?us-ascii?Q?wEIU/6CVJJVWA8cAlrGCkA2Mdh94yQE0FKxbZCgHP56ncWuBovcYVlha2+bY?=
 =?us-ascii?Q?Qx3Q64Hy5szglW1tyueBkYLBjJHoXBixvms9GJ4Ayhd3v6GxBxmeM6kifQNu?=
 =?us-ascii?Q?xJM0RLTo2VrtptSHaSM3JWLnpiYWxsQTgpOWdDgUhnqjsK5NiD8+hcs01iGR?=
 =?us-ascii?Q?3AxLyDnMcXhjxwRctHEaCB1wWxOq/+D+qJx6weQTo7w/pORUdvAW5mankxIi?=
 =?us-ascii?Q?Fba+fPHJXGafgLHyudimiyY35DHaV/56jOtoeZebt6nvMl1z6FBwHTCjkdng?=
 =?us-ascii?Q?RBi/mWftGC9Dzf+4eddWhN0iQMZ57ajB4ENSEoPr6OGaNNub9WX+EF39XC2s?=
 =?us-ascii?Q?PNzYlOh0RVNhChT4p6jT9Sdry3tZfOOlHqyIFxMtszLrmVJ50TWlCfyozdo/?=
 =?us-ascii?Q?TwyS8DsZB/yXuUqf4wNtdrQ9aeqEcOMre2OzVPNjG0aj0ph8xhRvpMXvysAc?=
 =?us-ascii?Q?23xdOR66oW5qB1icDFkRcakgw7mGZbkafK8DVq3dzh5n+yzDoJD/CA9CNmWm?=
 =?us-ascii?Q?IuYz5KNbC+eVKjhkmfnBmgoL/27cSfC1s1cAo2o7tabh6cYrB0w4XnOCW9+W?=
 =?us-ascii?Q?73SHpwfLDQOlNWCZYB5zA6h9MSa0v7hoozS/NKeKUH0Bk8IQamOlnFKzYGdC?=
 =?us-ascii?Q?wd8roOw6t1XLW5M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?3OdisvSNuu8NE5axs6Elc0wXHfilvXc+1Zp8pkGnpB0rgyAfPt2ZZP6UAMgP?=
 =?us-ascii?Q?VZAYRXeVwS7LiQV6UlPg2ZhNlm90ZO2ur334Yapmb+v8LKEO4pvCiCcOoep8?=
 =?us-ascii?Q?mspWHgHXCwf2Vggxx/bjdtnMhdJ/q5/wZIVavPWW2ugKJpwUTFgXYU1lbtO3?=
 =?us-ascii?Q?LoW8cjb/iLZQiD85lZuL+aAbekngzSJqf2rKI8yuMptcJOIwOgKRpbe25DbR?=
 =?us-ascii?Q?MvRVNqLGx9g1daJbADRbwOjvqf/jjwwMaBc+BgQOhr9/Uull0kfr/In4XyTh?=
 =?us-ascii?Q?lfrgA9JbVEEpIqvJ8j0IVna8T0Or2R6AvoI8HNf1fMwEbtldedE+GNnkiIz4?=
 =?us-ascii?Q?O7hyFVjRN2WCgKAs8XFFnrEEoTCrlYWxBX2LljVBgSJo0RmNuEGTqzrDe2wo?=
 =?us-ascii?Q?vYGk27Gjk+uJdwOLRCs1gwS8JtMvVz6HSEDPSPlqvuEGqnEUWKvsKz7mbRM3?=
 =?us-ascii?Q?Lj2Wpq9JrafVd1yqw6PN6pwLrnAAt+jCxo3r3NRGga5zv/qfsfymNH/+y8+F?=
 =?us-ascii?Q?JW98RyNKNjDSlYqJgGd0HhNFNFQtmhSYkCNS9Anhrtsqnfd5s7BTlHa0oNb+?=
 =?us-ascii?Q?pDu1Y7X6F+WnYRR1vpdushI6aBd10DNx+1mtlJ3ybSUknv8SIIo7sS3F3gLR?=
 =?us-ascii?Q?CGAn0fXfYz60aVkSO5hwkEISblD/24xJ0qZ1nWf5oh5LCH8ls12OgeaxOCNv?=
 =?us-ascii?Q?cfO7zc9Cb0X3zjvbnftWgtwAucbwUiUjf+dXykNVTslDohkDaS5gAXZJZZxu?=
 =?us-ascii?Q?vE9w8W5P17GL0+M/sP77iGNr6p1TEHOK5xvfLBBTOI6knLEkfnAqgF4Ww7O9?=
 =?us-ascii?Q?Sr4U61B2NZOKy378AyjKHhjS3+IZqKG9JF5skCGlLH3ai1dPdGfzAeVShTnW?=
 =?us-ascii?Q?LQnVEeS3yfg7oeJ1plnrRxE+pxRYmbjNEFwKZSztEvOiHJPLlc7xSz0HHbHI?=
 =?us-ascii?Q?N33FkRetkWnP8IO+hSixcUag2CrEuopIgLou/bxAVL7HxjlCS2RJH9sKk76W?=
 =?us-ascii?Q?HJZ2nmR8770TqzhwdVxB9VvCNS9ppiedTAuk1Ya/XdS442aU+dvOttU35x+W?=
 =?us-ascii?Q?rRkIozDQQ1GsXOP53GMiwpJs4KzFf8YEJroq655VT2g80DPZw443eD2IJX7w?=
 =?us-ascii?Q?vJcEnWRA7ngTXFv2a8ulcOyN5OtBu7ENw+rP0ihTmbW0Dm1bytPj/gt1KW7X?=
 =?us-ascii?Q?gmgffYVVLrwSWZALVajhiTvNYffeNPPNgFl9i6VsedibJRLVAQXEfr0t+K7c?=
 =?us-ascii?Q?jAB1jbyvRv434blQvM2cWNeVfkL5srjX0BPrhuvb7ap0en753Ka8zJrsnnU8?=
 =?us-ascii?Q?wfLbIzbYYq2x5LwcLATDiTzV6PgkGu7MKdOpU0Q19DEwAzLd2/bGv1+NjulM?=
 =?us-ascii?Q?q075qzgYJ+YPxnprSy+uuqVLcM2PJFWMKh0F/XprNXnXrYBr+5XtEMI0WDHQ?=
 =?us-ascii?Q?gaRSJE6NhBDt0YK/DIPjES02yZPcGUhVVqwv7kXRMagTkpZowv9jOCxJ6azi?=
 =?us-ascii?Q?gxxkhV+8WQd+Avin/Ujmv9kDJ4LXpiR2u+PS/VRbfvbhFqYk1iEE3mYMLGOe?=
 =?us-ascii?Q?878ZwJ75OgOcYCJ5oZfry4N4dL+LxuPLO5jkySQB?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2401c14c-9eee-467a-b527-08dd892a1675
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2025 03:33:21.4290 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nurQngcPVZw2vrGPeQh7XflMXm0/ioNi2kzlpT8bM9B9Uy3NgoVsFOkL/FXI/D8RPqjY4HwbZGZkpZthoA3Mdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5253
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, April 25, 2025 1:32 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kandpal, Suraj
> <suraj.kandpal@intel.com>
> Subject: [PATCH 02/10] drm/i915/hdcp: deduplicate and refactor HDCP GSC o=
ps
> initialization
>=20
> The gsc_hdcp_ops is duplicated and initialized exactly the same way in tw=
o
> different places (for i915 and xe), and requires forward declarations for=
 all the
> hooks. Deduplicate, and make the functions static.
>=20
> There are slight differences in the i915 and xe implementations of
> intel_hdcp_gsc_init() and intel_hdcp_gsc_fini(). Take the best of both, a=
nd
> improve.
>=20
> We need to expose intel_hdcp_gsc_hdcp2_init() and
> intel_hdcp_gsc_free_message() for this, and create the latter for xe.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c     |  1 +
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 46 +---------
> drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  5 +-
> .../drm/i915/display/intel_hdcp_gsc_message.c | 84 +++++++++++++++----
> .../drm/i915/display/intel_hdcp_gsc_message.h | 58 +------------
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 50 +----------
>  6 files changed, 79 insertions(+), 165 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 411f17655f89..4857685c4020 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -27,6 +27,7 @@
>  #include "intel_dp_mst.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_gsc.h"
> +#include "intel_hdcp_gsc_message.h"
>  #include "intel_hdcp_regs.h"
>  #include "intel_hdcp_shim.h"
>  #include "intel_pcode.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..92a3ad2166f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -11,7 +11,6 @@
>  #include "i915_drv.h"
>  #include "i915_utils.h"
>  #include "intel_hdcp_gsc.h"
> -#include "intel_hdcp_gsc_message.h"
>=20
>  struct intel_hdcp_gsc_message {
>  	struct i915_vma *vma;
> @@ -91,23 +90,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> drm_i915_private *i915,
>  	return err;
>  }
>=20
> -static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> -	.initiate_hdcp2_session =3D intel_hdcp_gsc_initiate_session,
> -	.verify_receiver_cert_prepare_km =3D
> -
> 	intel_hdcp_gsc_verify_receiver_cert_prepare_km,
> -	.verify_hprime =3D intel_hdcp_gsc_verify_hprime,
> -	.store_pairing_info =3D intel_hdcp_gsc_store_pairing_info,
> -	.initiate_locality_check =3D intel_hdcp_gsc_initiate_locality_check,
> -	.verify_lprime =3D intel_hdcp_gsc_verify_lprime,
> -	.get_session_key =3D intel_hdcp_gsc_get_session_key,
> -	.repeater_check_flow_prepare_ack =3D
> -
> 	intel_hdcp_gsc_repeater_check_flow_prepare_ack,
> -	.verify_mprime =3D intel_hdcp_gsc_verify_mprime,
> -	.enable_hdcp_authentication =3D
> intel_hdcp_gsc_enable_authentication,
> -	.close_hdcp_session =3D intel_hdcp_gsc_close_session,
> -};
> -
> -static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
> +int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(display->drm);
>  	struct intel_hdcp_gsc_message *hdcp_message; @@ -131,7 +114,7
> @@ static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
>  	return ret;
>  }
>=20
> -static void intel_hdcp_gsc_free_message(struct intel_display *display)
> +void intel_hdcp_gsc_free_message(struct intel_display *display)
>  {
>  	struct intel_hdcp_gsc_message *hdcp_message =3D
>  					display->hdcp.hdcp_message;
> @@ -142,31 +125,6 @@ static void intel_hdcp_gsc_free_message(struct
> intel_display *display)
>  	kfree(hdcp_message);
>  }
>=20
> -int intel_hdcp_gsc_init(struct intel_display *display) -{
> -	struct i915_hdcp_arbiter *data;
> -	int ret;
> -
> -	data =3D kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);
> -	if (!data)
> -		return -ENOMEM;
> -
> -	mutex_lock(&display->hdcp.hdcp_mutex);
> -	display->hdcp.arbiter =3D data;
> -	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> -	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> -	ret =3D intel_hdcp_gsc_hdcp2_init(display);
> -	mutex_unlock(&display->hdcp.hdcp_mutex);
> -
> -	return ret;
> -}
> -
> -void intel_hdcp_gsc_fini(struct intel_display *display) -{
> -	intel_hdcp_gsc_free_message(display);
> -	kfree(display->hdcp.arbiter);
> -}
> -
>  static int intel_gsc_send_sync(struct drm_i915_private *i915,
>  			       struct intel_gsc_mtl_header *header_in,
>  			       struct intel_gsc_mtl_header *header_out, diff --git
> a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> index 5695a5e4f609..ad41e7e80095 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.h
> @@ -17,8 +17,9 @@ bool intel_hdcp_gsc_cs_required(struct intel_display
> *display);  ssize_t intel_hdcp_gsc_msg_send(struct drm_i915_private *i915=
, u8
> *msg_in,
>  				size_t msg_in_len, u8 *msg_out,
>  				size_t msg_out_len);
> -int intel_hdcp_gsc_init(struct intel_display *display); -void
> intel_hdcp_gsc_fini(struct intel_display *display);  bool
> intel_hdcp_gsc_check_status(struct intel_display *display);
>=20
> +int intel_hdcp_gsc_hdcp2_init(struct intel_display *display); void
> +intel_hdcp_gsc_free_message(struct intel_display *display);
> +
>  #endif /* __INTEL_HDCP_GCS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> index d4620b54beba..8e2aafff71d5 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.c
> @@ -11,7 +11,7 @@
>  #include "intel_hdcp_gsc.h"
>  #include "intel_hdcp_gsc_message.h"
>=20
> -int
> +static int
>  intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_dat=
a
> *data,
>  				struct hdcp2_ake_init *ake_data)
>  {
> @@ -65,7 +65,7 @@ intel_hdcp_gsc_initiate_session(struct device *dev, str=
uct
> hdcp_port_data *data,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>  					       struct hdcp_port_data *data,
>  					       struct hdcp2_ake_send_cert
> *rx_cert, @@ -135,7 +135,7 @@
> intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data
> *data,
>  			     struct hdcp2_ake_send_hprime *rx_hprime)  { @@ -
> 185,7 +185,7 @@ intel_hdcp_gsc_verify_hprime(struct device *dev, struct
> hdcp_port_data *data,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_d=
ata
> *data,
>  				  struct hdcp2_ake_send_pairing_info
> *pairing_info)  { @@ -237,7 +237,7 @@
> intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_da=
ta
> *dat
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_initiate_locality_check(struct device *dev,
>  				       struct hdcp_port_data *data,
>  				       struct hdcp2_lc_init *lc_init_data) @@ -
> 286,7 +286,7 @@ intel_hdcp_gsc_initiate_locality_check(struct device *dev=
,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data *=
data,
>  			     struct hdcp2_lc_send_lprime *rx_lprime)  { @@ -
> 338,9 +338,10 @@ intel_hdcp_gsc_verify_lprime(struct device *dev, struct
> hdcp_port_data *data,
>  	return 0;
>  }
>=20
> -int intel_hdcp_gsc_get_session_key(struct device *dev,
> -				   struct hdcp_port_data *data,
> -				   struct hdcp2_ske_send_eks *ske_data)
> +static int
> +intel_hdcp_gsc_get_session_key(struct device *dev,
> +			       struct hdcp_port_data *data,
> +			       struct hdcp2_ske_send_eks *ske_data)
>  {
>  	struct wired_cmd_get_session_key_in get_skey_in =3D {};
>  	struct wired_cmd_get_session_key_out get_skey_out =3D {}; @@ -388,7
> +389,7 @@ int intel_hdcp_gsc_get_session_key(struct device *dev,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>  					       struct hdcp_port_data *data,
>  					       struct
> hdcp2_rep_send_receiverid_list @@ -454,9 +455,10 @@
> intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
>  	return 0;
>  }
>=20
> -int intel_hdcp_gsc_verify_mprime(struct device *dev,
> -				 struct hdcp_port_data *data,
> -				 struct hdcp2_rep_stream_ready
> *stream_ready)
> +static int
> +intel_hdcp_gsc_verify_mprime(struct device *dev,
> +			     struct hdcp_port_data *data,
> +			     struct hdcp2_rep_stream_ready *stream_ready)
>  {
>  	struct wired_cmd_repeater_auth_stream_req_in *verify_mprime_in;
>  	struct wired_cmd_repeater_auth_stream_req_out verify_mprime_out
> =3D {}; @@ -519,8 +521,8 @@ int intel_hdcp_gsc_verify_mprime(struct devic=
e
> *dev,
>  	return 0;
>  }
>=20
> -int intel_hdcp_gsc_enable_authentication(struct device *dev,
> -					 struct hdcp_port_data *data)
> +static int intel_hdcp_gsc_enable_authentication(struct device *dev,
> +						struct hdcp_port_data *data)
>  {
>  	struct wired_cmd_enable_auth_in enable_auth_in =3D {};
>  	struct wired_cmd_enable_auth_out enable_auth_out =3D {}; @@ -566,7
> +568,7 @@ int intel_hdcp_gsc_enable_authentication(struct device *dev,
>  	return 0;
>  }
>=20
> -int
> +static int
>  intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data
> *data)  {
>  	struct wired_cmd_close_session_in session_close_in =3D {}; @@ -612,3
> +614,53 @@ intel_hdcp_gsc_close_session(struct device *dev, struct
> hdcp_port_data *data)
>=20
>  	return 0;
>  }
> +
> +static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> +	.initiate_hdcp2_session =3D intel_hdcp_gsc_initiate_session,
> +	.verify_receiver_cert_prepare_km =3D
> +
> 	intel_hdcp_gsc_verify_receiver_cert_prepare_km,
> +	.verify_hprime =3D intel_hdcp_gsc_verify_hprime,
> +	.store_pairing_info =3D intel_hdcp_gsc_store_pairing_info,
> +	.initiate_locality_check =3D intel_hdcp_gsc_initiate_locality_check,
> +	.verify_lprime =3D intel_hdcp_gsc_verify_lprime,
> +	.get_session_key =3D intel_hdcp_gsc_get_session_key,
> +	.repeater_check_flow_prepare_ack =3D
> +
> 	intel_hdcp_gsc_repeater_check_flow_prepare_ack,
> +	.verify_mprime =3D intel_hdcp_gsc_verify_mprime,
> +	.enable_hdcp_authentication =3D
> intel_hdcp_gsc_enable_authentication,
> +	.close_hdcp_session =3D intel_hdcp_gsc_close_session, };
> +
> +int intel_hdcp_gsc_init(struct intel_display *display) {
> +	struct i915_hdcp_arbiter *arbiter;
> +	int ret;
> +
> +	arbiter =3D kzalloc(sizeof(*arbiter), GFP_KERNEL);
> +	if (!arbiter)
> +		return -ENOMEM;
> +
> +	mutex_lock(&display->hdcp.hdcp_mutex);
> +
> +	ret =3D intel_hdcp_gsc_hdcp2_init(display);
> +	if (ret) {
> +		kfree(arbiter);
> +		goto out;
> +	}
> +
> +	display->hdcp.arbiter =3D arbiter;
> +	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> +	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> +
> +out:
> +	mutex_unlock(&display->hdcp.hdcp_mutex);
> +
> +	return ret;
> +}
> +
> +void intel_hdcp_gsc_fini(struct intel_display *display) {
> +	intel_hdcp_gsc_free_message(display);
> +	kfree(display->hdcp.arbiter);
> +	display->hdcp.arbiter =3D NULL;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> index 1af2f7c745fd..9f54157a4a3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc_message.h
> @@ -6,63 +6,9 @@
>  #ifndef __INTEL_HDCP_GSC_MESSAGE_H__
>  #define __INTEL_HDCP_GSC_MESSAGE_H__
>=20
> -#include <linux/types.h>
> -
> -struct device;
> -struct hdcp_port_data;
> -struct hdcp2_ake_init;
> -struct hdcp2_ake_send_cert;
> -struct hdcp2_ake_no_stored_km;
> -struct hdcp2_ake_send_hprime;
> -struct hdcp2_ake_send_pairing_info;
> -struct hdcp2_lc_init;
> -struct hdcp2_lc_send_lprime;
> -struct hdcp2_ske_send_eks;
> -struct hdcp2_rep_send_receiverid_list;
> -struct hdcp2_rep_send_ack;
> -struct hdcp2_rep_stream_ready;
>  struct intel_display;
>=20
> -int
> -intel_hdcp_gsc_initiate_session(struct device *dev, struct hdcp_port_dat=
a
> *data,
> -				struct hdcp2_ake_init *ake_data);
> -int
> -intel_hdcp_gsc_verify_receiver_cert_prepare_km(struct device *dev,
> -					       struct hdcp_port_data *data,
> -					       struct hdcp2_ake_send_cert
> *rx_cert,
> -					       bool *km_stored,
> -					       struct hdcp2_ake_no_stored_km
> -					       *ek_pub_km,
> -					       size_t *msg_sz);
> -int
> -intel_hdcp_gsc_verify_hprime(struct device *dev, struct hdcp_port_data
> *data,
> -			     struct hdcp2_ake_send_hprime *rx_hprime);
> -int
> -intel_hdcp_gsc_store_pairing_info(struct device *dev, struct hdcp_port_d=
ata
> *data,
> -				  struct hdcp2_ake_send_pairing_info
> *pairing_info);
> -int
> -intel_hdcp_gsc_initiate_locality_check(struct device *dev,
> -				       struct hdcp_port_data *data,
> -				       struct hdcp2_lc_init *lc_init_data);
> -int
> -intel_hdcp_gsc_verify_lprime(struct device *dev, struct hdcp_port_data
> *data,
> -			     struct hdcp2_lc_send_lprime *rx_lprime);
> -int intel_hdcp_gsc_get_session_key(struct device *dev,
> -				   struct hdcp_port_data *data,
> -				   struct hdcp2_ske_send_eks *ske_data);
> -int
> -intel_hdcp_gsc_repeater_check_flow_prepare_ack(struct device *dev,
> -					       struct hdcp_port_data *data,
> -					       struct
> hdcp2_rep_send_receiverid_list
> -					       *rep_topology,
> -					       struct hdcp2_rep_send_ack
> -					       *rep_send_ack);
> -int intel_hdcp_gsc_verify_mprime(struct device *dev,
> -				 struct hdcp_port_data *data,
> -				 struct hdcp2_rep_stream_ready
> *stream_ready);
> -int intel_hdcp_gsc_enable_authentication(struct device *dev,
> -					 struct hdcp_port_data *data);
> -int
> -intel_hdcp_gsc_close_session(struct device *dev, struct hdcp_port_data
> *data);
> +int intel_hdcp_gsc_init(struct intel_display *display); void
> +intel_hdcp_gsc_fini(struct intel_display *display);
>=20
>  #endif /* __INTEL_HDCP_GSC_MESSAGE_H__ */ diff --git
> a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 7c02323e9531..21cfecf077bf 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -9,7 +9,6 @@
>=20
>  #include "abi/gsc_command_header_abi.h"
>  #include "intel_hdcp_gsc.h"
> -#include "intel_hdcp_gsc_message.h"
>  #include "xe_bo.h"
>  #include "xe_device.h"
>  #include "xe_device_types.h"
> @@ -100,7 +99,7 @@ static int intel_hdcp_gsc_initialize_message(struct
> intel_display *display,
>  	return ret;
>  }
>=20
> -static int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
> +int intel_hdcp_gsc_hdcp2_init(struct intel_display *display)
>  {
>  	struct intel_hdcp_gsc_message *hdcp_message;
>  	int ret;
> @@ -125,58 +124,15 @@ static int intel_hdcp_gsc_hdcp2_init(struct
> intel_display *display)
>  	return ret;
>  }
>=20
> -static const struct i915_hdcp_ops gsc_hdcp_ops =3D {
> -	.initiate_hdcp2_session =3D intel_hdcp_gsc_initiate_session,
> -	.verify_receiver_cert_prepare_km =3D
> -
> 	intel_hdcp_gsc_verify_receiver_cert_prepare_km,
> -	.verify_hprime =3D intel_hdcp_gsc_verify_hprime,
> -	.store_pairing_info =3D intel_hdcp_gsc_store_pairing_info,
> -	.initiate_locality_check =3D intel_hdcp_gsc_initiate_locality_check,
> -	.verify_lprime =3D intel_hdcp_gsc_verify_lprime,
> -	.get_session_key =3D intel_hdcp_gsc_get_session_key,
> -	.repeater_check_flow_prepare_ack =3D
> -
> 	intel_hdcp_gsc_repeater_check_flow_prepare_ack,
> -	.verify_mprime =3D intel_hdcp_gsc_verify_mprime,
> -	.enable_hdcp_authentication =3D
> intel_hdcp_gsc_enable_authentication,
> -	.close_hdcp_session =3D intel_hdcp_gsc_close_session,
> -};
> -
> -int intel_hdcp_gsc_init(struct intel_display *display) -{
> -	struct i915_hdcp_arbiter *data;
> -	int ret;
> -
> -	data =3D kzalloc(sizeof(*data), GFP_KERNEL);
> -	if (!data)
> -		return -ENOMEM;
> -
> -	mutex_lock(&display->hdcp.hdcp_mutex);
> -	display->hdcp.arbiter =3D data;
> -	display->hdcp.arbiter->hdcp_dev =3D display->drm->dev;
> -	display->hdcp.arbiter->ops =3D &gsc_hdcp_ops;
> -	ret =3D intel_hdcp_gsc_hdcp2_init(display);
> -	if (ret)
> -		kfree(data);
> -
> -	mutex_unlock(&display->hdcp.hdcp_mutex);
> -
> -	return ret;
> -}
> -
> -void intel_hdcp_gsc_fini(struct intel_display *display)
> +void intel_hdcp_gsc_free_message(struct intel_display *display)
>  {
> -	struct intel_hdcp_gsc_message *hdcp_message =3D
> -					display->hdcp.hdcp_message;
> -	struct i915_hdcp_arbiter *arb =3D display->hdcp.arbiter;
> +	struct intel_hdcp_gsc_message *hdcp_message =3D
> +display->hdcp.hdcp_message;
>=20
>  	if (hdcp_message) {
>  		xe_bo_unpin_map_no_vm(hdcp_message->hdcp_bo);
>  		kfree(hdcp_message);
>  		display->hdcp.hdcp_message =3D NULL;
>  	}
> -
> -	kfree(arb);
> -	display->hdcp.arbiter =3D NULL;
>  }
>=20
>  static int xe_gsc_send_sync(struct xe_device *xe,
> --
> 2.39.5

