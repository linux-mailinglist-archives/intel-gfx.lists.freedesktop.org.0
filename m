Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82252986B8A
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 05:53:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CDDD10EA88;
	Thu, 26 Sep 2024 03:53:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMIokhay";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D5FC10E87D;
 Thu, 26 Sep 2024 03:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727322823; x=1758858823;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=lsN3/9foq1KgGWm7RvjbhNlhvCxgRadbNOZbCB2c8I4=;
 b=KMIokhayanuyCUKtiVx+89U8TeFsbHtUTrrngHjFpJ3/opSKepZjde8+
 mctzIwskoQeTj/c1tq4PErgEsVtwBJ3nBRV2g/ksTSG/zTQKd/9uT6XbW
 XE9HBHsXNhnSlb56GYIi6Pxc9Qwq6BGX6rZXvRnMqkXopNByf2WO25Mlb
 KArcId4/rz3uqNE4XLN5rFn9Sw18B3ncxmrudxhgKcH9C4morS3NWqiKt
 r/dsdjBoy5nCFIqBQ0Cj2GcuJUtNHrDs3Foe4ZXkc3vcR7ns0/2VXQGt8
 EakdM4dAbxRcOJ3F+YKlAjaIATsQqQwoJVBHx6pnT2+JpAdZ7bM+ezWQr Q==;
X-CSE-ConnectionGUID: dVgZ4LwXTJegYLNqeBH+VQ==
X-CSE-MsgGUID: +iZynW9bSwi4rQmrhgq16A==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="37544564"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="37544564"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 20:53:42 -0700
X-CSE-ConnectionGUID: jJ8AbAUfT+iFZu+4dWa3wQ==
X-CSE-MsgGUID: KsdvP7STTJ+ODj1+BKligg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="102823487"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 20:53:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 20:53:36 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 20:53:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 20:53:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 20:53:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hj+wCpK0rdChduAHRTCiKBNDkeI3XH346P1/dGsz8wyzUERkr4D141OqhhanmUiYWN5sOXM0VE7IYQqyTIIMr2SHUSV1MPQ43PGuAY0wV/KjasmGcgNNqqbLp6RWbnlJ637+cm8CjNBuN1IVnke9LUQPOgUhfXOk+7TsnJaIfN1kj6UcbR+obfLsbi3upVlpKt7N0Pyn01dnfE2M7VW24mwM7bq50haLeH1iv84t8RlJvQk+zd++ffO1p5TAJgQsMLUsRGuuxin78rRpS8YiVQ2gXPijD5BEGBtWRzYCekpM6ER851bZa+ueDf9p8GoIl3tk/AlP4sopdFWxFDOi1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQCyuG6LF4tUfGQz/+adYByQdMxBur6cYvm325jE6Vk=;
 b=siG2cVhWNM2jYYXNP7xVqD5LrwZbYrx0ylIRaPB8Qe9S/+6moSDiHRsK0VwA7q0QlMo6dF9SIBlR4Fh9WpBPVXwUw0nYVEZkPany1Zv1GUPkBbw+APs2+0sJovGtTSnv/WRnbW832wSf/Z7nDeT7XLyjeeD/FlhvdgZWHwUzLuh/SkpxW5//5CjDYtsFBJXmc32ujVNcdBO2V7pVJ1BmqUDufqZlcOApaWFHPuufN6TYvR5DAolrW3oWtVCsGFAZkMKCdQxJcTtNXWDYgm7N+Fu45WibCwhj/A8AfdVCsnF/EU6bFEmlQ8t0oPioPhbWkWimRhEzopgI4g+vhwQwOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by SA3PR11MB7414.namprd11.prod.outlook.com (2603:10b6:806:31c::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.26; Thu, 26 Sep
 2024 03:53:32 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7982.022; Thu, 26 Sep 2024
 03:53:32 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Topic: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
Thread-Index: AQHbDXUL71vQj8r0+EGXD6hgmzqx27JlLzrAgALfG4CAAWUgQA==
Date: Thu, 26 Sep 2024 03:53:32 +0000
Message-ID: <CH0PR11MB5508B1A182BBE54C149D9A9FC26A2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240923045218.1813255-1-chaitanya.kumar.borah@intel.com>
 <CH0PR11MB5508BDE81DDF72CACAE943BCC26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
 <SJ1PR11MB61298CF42DF9479CA616488DB9692@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61298CF42DF9479CA616488DB9692@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|SA3PR11MB7414:EE_
x-ms-office365-filtering-correlation-id: 5f5888b4-8430-460a-f829-08dcdddeca63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?tGHdfvB2ozES8v+G+hDle3JtAsiqmBdq0gi2tuf/UeHsZCf+yQFjNLugtgBG?=
 =?us-ascii?Q?hq3Iw2xuC9/7I+N/GIeBiZaZkaIdroqpK0w4I+H0zI/kAs+FM2W29ZcjADp7?=
 =?us-ascii?Q?hNJ0i1rUDRIUoo/p5wA+EgBXmssfcHQCiYZU1y+tWxSmOBW4xjBkvQvHwozl?=
 =?us-ascii?Q?jbIQeYbBgOWhgZEC1JTcuj3QyjqfB1DkHkQcQQzDjugx8/+Xe64VIdgFDS4Q?=
 =?us-ascii?Q?ezA246CKsuz5Pnb7Wup69zmdH88v92FXhkPgbZy43Mgoio1lNTIcKP4p91CP?=
 =?us-ascii?Q?BQpbx4xGjzUjtc1izpXLlaVDYjQvvis2HVeJgFDXZfL//QB5vS0UD3QVeMtQ?=
 =?us-ascii?Q?3dQu+5NJXvQPdatInQQUMjixTCWEpgpdtzw7/KW7IEuzKOrh9qfJ9o2DzeM0?=
 =?us-ascii?Q?0SsGjrpWrvXKjkpKF66dIpFgN+IiXwe1WQQXBo5MzeSCBCKjc+NKXj+Ru0hR?=
 =?us-ascii?Q?0i+Cqs7cH05uBl+IGRe9ZmggYs53nB0M7FpiHP+K1l2hqdDGN+EQxFJqn9Ql?=
 =?us-ascii?Q?wDi4pn94XKHtabbFQUW4i2i1xAuYgzxYs+z3/Ou13JRsN0OxLG6yyEe6lCRx?=
 =?us-ascii?Q?ohFEOUA0KhdnTSK9K8+bEM3Yv71rqDNwoknbnYoLeC8ngFcRuFS4cML4twc6?=
 =?us-ascii?Q?0Y3s1j0EXxmVeNHWmrAbh6riVzX0Mx5hbNZsnjQOi4cCQyk/zlvArPOEjy8k?=
 =?us-ascii?Q?0x/CH26NyXYrBV+HK3BFCNVRkHgKeylhQ8HPmjPBXDiAFPDppYfAr9ZjsGKH?=
 =?us-ascii?Q?4F9tnrRIPNQUXmhwwqI2J00QW6onLke2YSslxhGa38KrhhRPt0MIQ6CoBMsh?=
 =?us-ascii?Q?MX2eyrWtnJlx5q+e3uiMoPEjSUKSnnyKcK9K6Ug7m8oKcknQtk3JtJcCJICy?=
 =?us-ascii?Q?EDuwK2v1DKxAz25iUrfbrUqjxvyjh97f4iE9Wma8eaMQlRAQMLsKG2Seq/w8?=
 =?us-ascii?Q?zuPkaHgZB8erankurDy8OQ4K0P40T95Q99OnT+bsbcO1IED4E4GeLDuRsbah?=
 =?us-ascii?Q?s2bpxLPrKYUiPx8vy+DTd0Bkqim6R7lFXxxY7fI5DdMtInns1XkfJZa0q54N?=
 =?us-ascii?Q?jBbaYYOWgkGHGXVj4wsei/lQ7YGBIe82V4H0dsWhEeSDsJ0rBqZLtoUhhSaw?=
 =?us-ascii?Q?lfpJrqFuhJ06kK7sJ0r95t0kTVQkb/nUsPrWcUPp5YaDkdQwYgdq6yXqv7Hs?=
 =?us-ascii?Q?UmP8XmJpFsyS4QmJ/kHnT6vzWoZ67sv8XLPTOhOmAuVNL5ahWKyCnbL9TifJ?=
 =?us-ascii?Q?dYpwx5PXAPa5izk8iLVw9VYLRWLK+ykuTOKixSLim2Jrzz2KEo2jIFF+fiNF?=
 =?us-ascii?Q?Vi3U/Vc4ic45suUk0HBvD1h065fRKsSd3G/1vIw8dp6X4w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QN1qhYnbLUPnUjBo36K2Fl2CfnHmcjTKxxF2/21uWz+HxIV0rdEyU3fhJSN2?=
 =?us-ascii?Q?1en0sdbSWXAWmOvM+sQPbvX1nYOaSdIjI5qUNKgVCmqQJts1rrDrbDfis0Kg?=
 =?us-ascii?Q?0Up9Q+TR8SWU7Y1ty0Hxeaszq+ii7o9omZmX4bCGCA4hLpSbsCV/ml1bIr+Y?=
 =?us-ascii?Q?jtPy63rwm2fZTFl8NdXjX493qreNleR46SvgeQTvQhGhwHBQ8mzWjfwrkVuH?=
 =?us-ascii?Q?CzsV7Ou1ehbgbuv84lruQUuvU2/Ggn/52ZRk40QSfK+aedDUfH3yePvgw2NN?=
 =?us-ascii?Q?uI7MNh0oFI3D034cWhJgmrRU94b9u2QpMhqXtDedXHUualcY0hovitt6cJag?=
 =?us-ascii?Q?9RQ8SnbmzhpasbyHwhsKbhhpH8YtgbZkhv5gsOPZ0YRgfJOVM2lulT2w21Md?=
 =?us-ascii?Q?mIeVAdNTOma9+vkYc+1HCQB0pH7JCbyIHFyJAm97qfufkHztBLhAaLYtSxeE?=
 =?us-ascii?Q?87CzcujACtIbFgPH6qMD4E+3G+GZLT7OZmwKtgT1ro4ONpctYx8qY6lhQl4f?=
 =?us-ascii?Q?nuE3Y8+32kUINHu0FVRyQk4d1gNKRTssnFcqEwzUW1NUj2+6BWhcoHkqORi8?=
 =?us-ascii?Q?36mNxLzcvqPMJOCiT3GanK/zgH6C0+X6FlroHj0STzIDx0oRMVozX9VsloZs?=
 =?us-ascii?Q?FeDk4JgMyypzNLA9qO8Tx9QaOk33PhE8PXDTnSSir8dPalXCwypn38sIeADZ?=
 =?us-ascii?Q?GOPoxw3VWAGwOrheSxmstqamWVKhQVLJRhIyNXqM57/KHUQZ9t2f2oFejSq4?=
 =?us-ascii?Q?Gm0ybUDhYa7PZqgV+K7QNsPLHp+1Vq0PSpoYLqXxNA/yi6Pi3SJDj4nzswCR?=
 =?us-ascii?Q?QjRHy/BXbNpjQLNQQSoQRNI5QuaC53pcGsulYLcwgaKdNGBVd0jhbex1Gyu0?=
 =?us-ascii?Q?u+WV/6Q+vc0Hjfcb+vebbxwmv8AnoxJLDdVzC4yqakuHCtKdtJ9O+5+T6GOC?=
 =?us-ascii?Q?gdLD2RhYazGJL+6pfb+6VYoJ3e69KPOg9sHPWjmCLNAkCS/mQeTTtPLhO9N4?=
 =?us-ascii?Q?/nDiyKH3NIBxrCDo/oS6ate98QmvPVA/bWiIqV3QHym3Ofsx9IGzg2mRluLh?=
 =?us-ascii?Q?cVQrSw6pSaNLArYeBp1ImoDYfI/tfn28bKTyin38+buEb3Ms7vg0MTFzNOcP?=
 =?us-ascii?Q?WC4LysUYDGW+e41cywBi+jaCEOO+FHcRqu4i/CR954XXsn9uVZukE7FcVI1w?=
 =?us-ascii?Q?Hr4l55No3HD0N9SySene9IfCYN4WCjHfoAHYJjiMSV8jArvn7HEHIzHzrRk+?=
 =?us-ascii?Q?tjhphdSY40GIdNJ+8au3bWYlDnIvhMMIyNijLUhGH8Mqs7POUhDSDL+RVXZ9?=
 =?us-ascii?Q?o1czy2h5m7/bmsYgfVpuAI9wuavaVvuEs8Vjhyat7laHICF7uQO9JByTj4Iu?=
 =?us-ascii?Q?o5aFadWrmdv09SzQ6Q1RWkNu8Ct+iHQdmC7yfRlzLdVqEJLjhnUXLAtR2ZV/?=
 =?us-ascii?Q?97bWLdHXHXvgT0nR+4BssxBv6v6jpFtgtxgci/ykus2nqntGu7b6tvU73tY3?=
 =?us-ascii?Q?h+XZ4bTyvC+PMZPHeYNqqiaS18rK0C52AcoEu3V2ekBQNFEdAIvUllHVspLk?=
 =?us-ascii?Q?pkRwKK+lrHgCfxOr9M05NlqKVUZd4w19gzyKKDG1VuWg1BkJ5n1XgTnHzj5w?=
 =?us-ascii?Q?jw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f5888b4-8430-460a-f829-08dcdddeca63
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2024 03:53:32.7362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6ve0Na0SJmtLxjZmZ5vkk9y5xxf184a3tHHqGYr60+2dWHKYJLLtc7onXqYOXrLgg2wr2f3DBH46A7Ou1eZ3o10NLtkgYhYtjIJM2M5Jj3U6O1X05iSt8WVWY7fhLR6R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7414
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Wednesday, September 25, 2024 12:02 PM
> To: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
>=20
> Hello Srikanth,
>=20
> Thank you for the review.
>=20
> > -----Original Message-----
> > From: Srikanth V, NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > Sent: Monday, September 23, 2024 4:16 PM
> > To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> > gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: RE: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
> >
> >
> >
> > > -----Original Message-----
> > > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > > Chaitanya Kumar Borah
> > > Sent: Monday, September 23, 2024 10:22 AM
> > > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > > Subject: [PATCH] drm/i915/dp: Add FEC Enable Retry mechanism
> > >
> > > From PTL, FEC_DECODE_EN sequence can be sent to a DPRX independent
> > > of TRANS_CONF enable. This allows us to re-issue an FEC_DECODE_EN
> > > sequence without re-doing the whole mode set sequence. This separate
> > > control over FEC_ECODE_EN/DIS sequence enables us to have a retry
> > > mechanism in case the DPRX does not respond with an FEC_ENABLE
> > > within
> > the stipulated 5ms.
> > >
> > > Signed-off-by: Chaitanya Kumar Borah
> > > <chaitanya.kumar.borah@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_ddi.c | 61
> > > +++++++++++++++++++++++-
> > >  1 file changed, 59 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > index 85e519a21542..589acea9906a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > > @@ -78,6 +78,8 @@
> > >  #include "skl_scaler.h"
> > >  #include "skl_universal_plane.h"
> > >
> > > +#define FEC_RETRY_COUNT 3
> > > +
> > >  static const u8 index_to_dp_signal_levels[] =3D {
> > >  	[0] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> > DP_TRAIN_PRE_EMPH_LEVEL_0,
> > >  	[1] =3D DP_TRAIN_VOLTAGE_SWING_LEVEL_0 |
> > DP_TRAIN_PRE_EMPH_LEVEL_1, @@
> > > -2255,6 +2257,57 @@ static int read_fec_detected_status(struct
> > > drm_dp_aux *aux)
> > >  	return status;
> > >  }
> > >
> > > +static void retry_fec_enable(struct intel_encoder *encoder,
> > > +			     const struct intel_crtc_state *crtc_state,
> > > +			     struct drm_dp_aux *aux)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > > +	int ret =3D 0;
> > > +
> >
> > You should also be clearing FEC_ENABLE_LIVE_STATUS in DP_TP_STATUS
> > register by writing 1.
> >
>=20
> This seems to be a RO bit according to spec.
>=20
You are right. But we could wait till FEC_ENABLE_LIVE_STATUS is cleared aft=
er clearing
FEC_ENABLE in DP_TP_CTL. We could also use FEC_DISABLE_PENDING in DP_TP_CTL=
 also here.

> > > +	/* Clear FEC enable */
> > > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > > +		     DP_TP_CTL_FEC_ENABLE, 0);
> > > +
> >
> > > +	/* Set FEC enable */
> > > +	intel_de_rmw(i915, dp_tp_ctl_reg(encoder, crtc_state),
> > > +		     0, DP_TP_CTL_FEC_ENABLE);
> > > +
> > > +	ret =3D intel_de_wait_for_set(i915, dp_tp_status_reg(encoder,
> > > crtc_state),
> > > +				    DP_TP_STATUS_FEC_ENABLE_LIVE, 1);
> > > +	if (!ret)
> > > +		drm_dbg_kms(&i915->drm,
> > > +			    "Timeout waiting for FEC live state to get
> enabled");
> > }
> > > +
> > > +static void wait_for_fec_detected_with_retry(struct intel_encoder
> > *encoder,
> > > +					     const struct intel_crtc_state
> > > *crtc_state,
> > > +					     struct drm_dp_aux *aux)
> > > +{
> > > +	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev);
> > > +	int status;
> > > +	int err;
> > > +	int retrycount =3D 0;
> > > +
> > > +	do {
> > > +		err =3D readx_poll_timeout(read_fec_detected_status, aux,
> > > status,
> > > +					 status &
> > > DP_FEC_DECODE_EN_DETECTED || status < 0,
> > > +					 500, 5000);
> > > +
> > > +		if (!err && status >=3D 0)
> > > +			return;
> > > +
> > > +		if (err =3D=3D -ETIMEDOUT) {
> > > +			drm_dbg_kms(&i915->drm,
> > > +				    "Timeout waiting for FEC ENABLE to get
> > > detected, retrying\n");
> > > +			retry_fec_enable(encoder, crtc_state, aux);
> > > +		} else {
> > > +			drm_dbg_kms(&i915->drm, "FEC detected status
> > read
> > > error: %d\n", status);
> > > +		}
> > > +	} while (retrycount++ < FEC_RETRY_COUNT);
> > > +
> > > +	drm_err(&i915->drm, "FEC enable Failed after Retry\n"); }
> > > +
> > >  static void wait_for_fec_detected(struct drm_dp_aux *aux, bool
> enabled)  {
> > >  	struct drm_i915_private *i915 =3D to_i915(aux->drm_dev); @@ -
> > 2303,8
> > > +2356,12 @@ void intel_ddi_wait_for_fec_status(struct intel_encoder
> > > *encoder,
> > >  	 * At least the Synoptics MST hub doesn't set the detected flag for
> > >  	 * FEC decoding disabling so skip waiting for that.
> > >  	 */
> > > -	if (enabled)
> > > -		wait_for_fec_detected(&intel_dp->aux, enabled);
> > > +	if (enabled) {
> > > +		if (DISPLAY_VER(i915) >=3D 30)
> > > +			wait_for_fec_detected_with_retry(encoder,
> > crtc_state,
> > > &intel_dp->aux);
> >
> > wait_for_fec_detected_with_retry() should be called inside
> > intel_ddi_enable_fec() after configuring DP_TP_CTL register and before
> > transcoder is enabled.
> > wait_for_fec_detected() is called after transcoder is enabled.
> >
>=20
> Agreed. I will make the change.
>=20
> Regards
>=20
> Chaitanya
>=20
> > > +		else
> > > +			wait_for_fec_detected(&intel_dp->aux, enabled);
> > > +	}
> > >  }
> > >
> > >  static void intel_ddi_enable_fec(struct intel_encoder *encoder,
> > > --
> > > 2.25.1

