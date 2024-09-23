Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5797E603
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 08:31:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF03810E385;
	Mon, 23 Sep 2024 06:31:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SY+17EKh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B14510E062;
 Mon, 23 Sep 2024 06:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727073101; x=1758609101;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DF5vxh8g5AYVrOvZyF31nXYhZIyZW5OCrwkX/1oupis=;
 b=SY+17EKho2u9xx7LfIullmanOk4V5erALhQL9M56rVXdc7Y30ey2wFja
 PmZSS8nbfM2d83RxlHyYYGPOX4D9xflJrb+oeIaN0F3QIh91EvhOAQRpE
 fp5gzweqwlH6+dUHKECN8VEaKhLwHN0/LABe4IqOlN8DpwToXEoB/9t47
 z0iMZetgMyB93RUA7w8diBS8eJo6CBcdbh2OWUjTYrdjq4i5WA/k2M/X5
 iDVw8dXVLGddgo5zqazzfaF6U8WYxrACTSv7l2u2HAr5DZ43C1EE6BKT4
 AksvShBogkwNt8fMEIYBispwOxMmYfCQzagC+qvj8igoAbPSNcxhou0xg Q==;
X-CSE-ConnectionGUID: NdScZtqGR8Cf+DWVC0513A==
X-CSE-MsgGUID: YeS3/S3cQOiGfmOZ20KYvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11202"; a="26196438"
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="26196438"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2024 23:31:40 -0700
X-CSE-ConnectionGUID: 2keyYACWR5eLGhCJwnqujQ==
X-CSE-MsgGUID: cwS33KfMQv+MQ6UoZ1jfPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,250,1719903600"; d="scan'208";a="71275884"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Sep 2024 23:31:40 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:31:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 22 Sep 2024 23:31:39 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 22 Sep 2024 23:31:39 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 22 Sep 2024 23:31:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cQ+oDnwJRcJcvml16/KHxo12Ft3xJXZ6BFq0dojNBOzkyKMWfUBpQMTK+FNd1+zrZfB42MV8FyH1IySG6LN6Fy8KRat3mCwC25JdTlxnQGJo5dtesthRFBhzrcLBQVh3myhTQAnwVBVuo5cZBvY8r3RY2YsAWsEXtfsJ99H6dTbO9r50nLMXTOb2HEjfcBoFG0T/d4ayuk8cHEG3N1pX3J2DgM3I5bWxg6HkdNzXxwWPdf99sxniv6CUVIsrDujS1Hw0ARgrULrWzEIqpEaU+U9DX1dEG3pJVic7rYj5Myi/qlCo5Z/hkBWo+b93Q6otXpZG0pAXfFnsfOO29j5t/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0VhBCPk0gOtjmYnOqcrpQU1AnabP9m83ipaSX/41xA4=;
 b=cztzdQbAE0GrRxo0cBtKZrXf0OptmKmSwEfNTPpHNn5Bzdpsc+UqC0SOk0Zcw9h4mRXolnCqFlXLEcJA10Tb3gBwo3cRoGIWKh1qxMQU0PgXH3FwzDA1Lm2Xs2QWu+wiG92Nm2fV/AKrPY4gKepmqYrGK1168L+6XpANGYEnP2e/3IxKrxNEbDnuiUBLg1kla5X4zalvKs1xh38wtIjvOdkLGgfhWzyoXtdZ5TeMcMZSVB2gqyF4jh9KL6QVE42BymSY4GfjGa3jff0UNTy+qi94GHsfxzOD5wf/W/+VZKifNsRtbeK/b88638APkkoDOm6EkUymXIjVmAT/fECDAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5508.namprd11.prod.outlook.com (2603:10b6:610:d7::16)
 by SN7PR11MB7115.namprd11.prod.outlook.com (2603:10b6:806:29a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Mon, 23 Sep
 2024 06:31:33 +0000
Received: from CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd]) by CH0PR11MB5508.namprd11.prod.outlook.com
 ([fe80::6ecc:ebf2:5d20:80bd%3]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 06:31:33 +0000
From: "Srikanth V, NagaVenkata" <nagavenkata.srikanth.v@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Murthy, Arun R"
 <arun.r.murthy@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Topic: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
 timeout
Thread-Index: AQHbBNLX8rYvMogDH02z6jH0bLGGx7Jk+J6AgAABZwA=
Date: Mon, 23 Sep 2024 06:31:33 +0000
Message-ID: <CH0PR11MB550828F237C40440851BA923C26F2@CH0PR11MB5508.namprd11.prod.outlook.com>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-4-arun.r.murthy@intel.com>
 <SN7PR11MB6750FF1460FA59B579B93954E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750FF1460FA59B579B93954E36F2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5508:EE_|SN7PR11MB7115:EE_
x-ms-office365-filtering-correlation-id: 680adfba-1579-4944-d0c4-08dcdb995dfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?BFLq7RUeyWkPA8mR37XXgmiVlcz/GnV7zZNPnW5u3tZnkLsCnWpZUoPrB7QG?=
 =?us-ascii?Q?kbUteVxrN4V9kxKJrOIJLBL4Ir7Csde8e18RYs5i7cDJ7U1ZexJqwynJeieh?=
 =?us-ascii?Q?ql1b8NGhTbu5GrLvIJ9EH6imvY0fGyfYl3tVGACoPi6cAlViBVVu7efzxLIx?=
 =?us-ascii?Q?dgKw99foQdujkMyKZE7LNzq1ZowtQw0wKmhUd54wLmKqh0pt9Y4HM46C+Vcc?=
 =?us-ascii?Q?lFeT9VZpD/IZRYGjgcncJ550LBRULaaeQumXRswQbA1aD2aUoBZEbX7X2XHj?=
 =?us-ascii?Q?2UJuRxRIj4sK0zsjB39Yh4ZRQqDyB/9rMe0tEnqywTSliEg/tJVfcwKGXMJl?=
 =?us-ascii?Q?PEUbYE5Uz8mnJFIZa94U+Vn/KaXMeVlN8wodvs+J0mjqdOPcdVZHtYMDdoRu?=
 =?us-ascii?Q?iYVq/B7VEJhJkM46uGhBmIIuCmaPB/y0vdGbek0a7IKHMG2QDhIRJY+HEGhG?=
 =?us-ascii?Q?XnjsJ/+ru5SV+z4TM8KgK1avPoAy4QANrFjNR33YoN88IIVzsjPWUO2Zijlx?=
 =?us-ascii?Q?zTS6u48NdMjgCa+WnkhD1VPcxZKSb+D2YhjBgh7/F5YbaO9uSbpKTIbthm7G?=
 =?us-ascii?Q?F0GvhnJhNyDyGhA3qHF/9d0C3u+18iEIyswOiwonv9VVHvnRjuRRa8mevmF7?=
 =?us-ascii?Q?jem3/OQnquu0EY06I55Wy9fPugZRgFB8gUNivO7469r9/oHipbvI4O/xlLUn?=
 =?us-ascii?Q?Oh6NpOVgYWATfpXMYgfIOh3byITU2ax3dORwLQypj+2zEguE+wfWa7lZylPa?=
 =?us-ascii?Q?iX0uhQXcvl+0vg6VN7+Z7VzIdjbQTqDwUx/Zz5wmdhMf/6R5255vHZ+AZ1d1?=
 =?us-ascii?Q?qb1wvt7cJ9MdtgEC84WMOG1L/XxZ9JFmA1N48YcIFm5S0Zv9ycIuzPbKo1nA?=
 =?us-ascii?Q?OsNOhK4uh6LOTvNEKcgZu4rTip9jwdZtEcEl1nKoI57zQppa4wnccIC+wh9h?=
 =?us-ascii?Q?+WggQtVIt8CBW8B5Rgn28zBwPaSbQQ/cNfiJz9dfdjnrI9FkgPZ95Nu3pv5d?=
 =?us-ascii?Q?WJ68rofU9Zu1A0kMcJKkXhCxAqt4IF2oxuYsRLjKktp3d7KiFntO3OzFb58m?=
 =?us-ascii?Q?4Ym+fKUUm8vJL3+c/oXt/L2Eqy1GQWb4wISMtKymsM7SOUX/3Nnj0ArlcgV/?=
 =?us-ascii?Q?pLakjNMZ5VK/g+2C3fmNy+ZwuohifU5mP5aTlxGI7s3GyKE19agOVHz5k4UB?=
 =?us-ascii?Q?WMRmBecpj+vDS0n/kprQd90KJp7mpi5dLQU9K9LHkIAAeZxWdjqCIWStgJCu?=
 =?us-ascii?Q?HOeb+doJuGLzCfynWS90jgHuDUFdwyqGrY4u3j/brEesnjDID97MK+LC9Cs7?=
 =?us-ascii?Q?3UvZLE6q3Tcp4pany1bSPXlIn+2K9ZfYVY+6rEW7unS9+CsOKfc9GrUgcb7a?=
 =?us-ascii?Q?FTj+6SlheXPq0zMU+b31VKKku8fG8IUyizq4yic+d08BU5Lucg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5508.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5zBs6kF0bCuHIOfFb8LGF67Ild6xTvcmomKwZaWvQkVg02L8gTzAYJDJZ9fq?=
 =?us-ascii?Q?d9xj6x8NthUS3SIkktWe9VT1hIIqpL4TqdXdr1J/Zo88LUC9/OedRZxoGnBG?=
 =?us-ascii?Q?V0UuzPFQEDfRYCX/S1V/JvTIwoH+oXLqY2DTRk115+XPpGE9D04nMud4OcUu?=
 =?us-ascii?Q?Ki9+pGFL7B8tAjCRtoR+C4lHsxgsKu0rr5fjvzSRjL42G/enD309FF87SZol?=
 =?us-ascii?Q?8Wfm+yKWst+hiiWlArSdVvlyhYfajBxCCaluJTXNy1xcC10CrrU/8vNlnTVP?=
 =?us-ascii?Q?1xh+jJcxqHCgt6ra9DikWiHF6sIAWTWIX3Pw3vaEz39SrGFRwbHEirZeD6TZ?=
 =?us-ascii?Q?j5S050IaklakN2pBzkdJMvZrVn3vSJBvwQRPHbZL1jEmSvu8YZ75ZVNlbwcz?=
 =?us-ascii?Q?C8LwRVEOG1muopeE7Fs1DTnj8ZEDsHf9wQAz2LeMrIZjL5RDF+optssFGebu?=
 =?us-ascii?Q?H4n77m6LiBT65tRNIckGq/iZ3jxGsUfllF6CC+FUPZ8jzgZlsKT5d+a5VoAp?=
 =?us-ascii?Q?+2EF/nraZjR31pWJUX75zDI4jJccngKIdUdYALSaXEPoNM/zBseq+8QUvrYn?=
 =?us-ascii?Q?D1A+NM/wyauu26SieMR55q1nvJqOlEBAw2Ki03FTziv5G49TA8BW9IZ6TeDE?=
 =?us-ascii?Q?IQPH+AXbRntwh8AwBenhAiJlPY86M9gpLiELK/1gWAr4VHFaf7/MrElYtD/M?=
 =?us-ascii?Q?8v8NOFJRPZZ81tmq7FovwPAa7dVi5izQuLbBRcChswFrSAQISnXxXz4+uHHz?=
 =?us-ascii?Q?lwnzZTEirRHrw/ixql18bQED4CEL9TlhwS0fASmuYhmoxkJkRezxGA7kKL72?=
 =?us-ascii?Q?s2WgFLKHIdEm4Qr2R3hDhpnabw/wEd2pT0K7JdgIYZ0gTWp+KtkEOWbtmFnP?=
 =?us-ascii?Q?2JCzbmtJl3KYBAj0nrnNLB1okRgVgzY0CyXeH7huZPi1I201Wytgv4iTGCFD?=
 =?us-ascii?Q?68niZZ/IwCarI1d99XK04CIVjqcsXkXAS3o9B72iJTSlMtdn10Q/JJu6Rkm4?=
 =?us-ascii?Q?UQb7p2jhdCaqW59m77kO/yyct3px8p2FVGy7HegXvbCudup5ItcHd9s4k605?=
 =?us-ascii?Q?A+Sgg26NE8b1H4/WNzhUm1LhloqPaHuXv+1RAnSIiu6rhFUBF/PmjTkrxP11?=
 =?us-ascii?Q?b1wvW2mtkdrxhsQoM8fdS0tOeMoZTL6LMQZ0xDghllRjCvVqyZelroyOJk+W?=
 =?us-ascii?Q?MuAnjg3vE5BCEXK2BtmwRWx9eJHXvc10+sVC9YfFBXkezA97w5U9Ghn1IAZW?=
 =?us-ascii?Q?TYllfNEyfPPTh3KIX3r5cWPAdeaxRLpLPYdyKfXaYEXXCE43DxHlvMEvnz6P?=
 =?us-ascii?Q?ZVURakrHl3h5hd1n6uQVyL7Xsq6pSJSrg7WTB2zGW00IK2up0Aph02bvpAFY?=
 =?us-ascii?Q?DQXkLT8GZHEuUZEqMaQ8QFmndRtxaNIb7dXg1EYrOZJNJ8PCUrMpIJdZ7kD6?=
 =?us-ascii?Q?DL+G5XiisWx2r5W8Ww8gU4CDcIUbdvs7S45dXnyF4vIHRkyF99yP5QM8jLtL?=
 =?us-ascii?Q?N0vDDqQotRazINlJ3AzD3XWd86/YsPvVYLmvlO0YFY+4eP+XWEw11R1LiYQN?=
 =?us-ascii?Q?yRgnVoglquyU1eaG+thRL56ikwRWb27pVETVhdMqrsTLmmGZMcZOEu6sbgy/?=
 =?us-ascii?Q?kw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5508.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 680adfba-1579-4944-d0c4-08dcdb995dfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2024 06:31:33.2769 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mUr+BMs41fcGGG+ZjqnbNIK5/fr8ipV3bMTGogrnMhJ6XpTUjSj7umXs0HIuHgqGYRRO6sRftXIBy/Q/2378vm/BCZyH4bc6ogCsYQs5ju0ZEjc7TiUOLsMRgy8SVibt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7115
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


> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Arun R Murthy
> > Sent: Thursday, September 12, 2024 10:36 AM
> > To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> > Cc: Murthy, Arun R <arun.r.murthy@intel.com>; Srikanth V, NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Subject: [PATCH 3/3] drm/i915/dp: Include the time taken by AUX Tx for
> > timeout
> >
> > As per DP spec the timeout for LANE_CHANNEL_EQ_DONE is 400ms. But this
>=20
> Adding where in DP spec example dp2.1 section x.x is a good idea
>=20
Please refer to section 3.5.2.16.1 128b/132b DP LANEx_CHANNEL_EQ_DONE Sequn=
ce
and Figure3-51: 128b/132b DP EQ Time Budget Illustration of DP2.1a spec.

> > timeout value is exclusively for the Aux RD Interval and excludes the
> > time consumed for the AUX Tx (i.e reading/writing FFE presets). Add
> > another 50ms for these AUX Tx to the 400ms timeout.
>=20
> Is this something we came up with by trial and error or is this also a pa=
rt of spec
>=20
It's not by trail and erros. Timeout value of 450ms is part of DP.

> Regards,
> Suraj Kandpal
> >
> > Signed-off-by: Srikanth V NagaVenkata
> > <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index ca179bed46ad..b6573934c6dd 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -1414,7 +1414,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp
> > *intel_dp,
> >  	}
> >
> >  	/* Time budget for the LANEx_EQ_DONE Sequence */
> > -	deadline =3D jiffies + msecs_to_jiffies_timeout(400);
> > +	deadline =3D jiffies + msecs_to_jiffies_timeout(450);
> >
> >  	for (try =3D 0; try < max_tries; try++) {
> >  		fsleep(delay_us);
> > --
> > 2.25.1

