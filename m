Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C68B335BF
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 07:14:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27A3E10E054;
	Mon, 25 Aug 2025 05:14:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BKeHGxeS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D700810E054;
 Mon, 25 Aug 2025 05:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756098881; x=1787634881;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=PN1bTwhSNiAr90w6ptUGVNCeQ8ttEHeaJFd7wr1HC9k=;
 b=BKeHGxeSsk0O5NNZNd5DJ1HgTXq3COouyFldiBsx8yJ+dqCQU1Sb30Bq
 mdqcgm7q0HEMjayqHFjeJLcIx0gz6zN2C8aFt+EY2UD604ZLRRC30saQS
 8/0lLNh9czQfMJ7Ka2ceUu69mkKIHpFfjnxOfzFRfp9/NevAzl0LkeqCu
 cEI9xPdqwkmiCf4Y0N/TXP5xZalidU1DV7a3Z5sOq2hKirRSyjtqRttnP
 z7rv0dQcKx7Kapyy3FLO2Xcsn4QlBB/jA/uu/PL0YK/Qu+vZKgVUkQG3L
 e22XstkhFWKrPWBrkSXfKSvve7kRWWbM/E08t2q0SDYFLWpn5/UKQZ8jz g==;
X-CSE-ConnectionGUID: ZwZSepJ5SfWjRTsWlk5Xpg==
X-CSE-MsgGUID: txga9eMkT1mmN42BvnYQGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11532"; a="68572819"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68572819"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 22:14:41 -0700
X-CSE-ConnectionGUID: 2SLXLKbpS4iAIxQ1X1Bxsw==
X-CSE-MsgGUID: +BNLcjyRRoSot4pVXHgJ1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="169100466"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2025 22:14:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 22:14:39 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sun, 24 Aug 2025 22:14:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.80)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sun, 24 Aug 2025 22:14:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QGC/gNCpj6mAT1XsQ6yGJ9cCCZWVfrHwfsjXIa1tt5JQnHDiymQ21rko+9rJdSo5lQeM6gFVGqzsTWuw1/fLfcWM5GP4wP/kjwo76/6/5UBI6XflR4iTH64i5Y7NyXlLBiIHBl5LPIOu1+tEgQK5pgDtgFIb7S/IGLDDkLowRqEWuqBoTs544JurWcKJo0w1yFv8xK28u36QzCBTLkcb4QKv6/2DND8Omqk1vySemqrK4UuzTBSO0UOlem8m94atzfiQTmaB+HD9Uz7chWJb+oqa0pojoCQ2cCrpLS16grECJhRqIk8KmWwArig4fdM0pc1y1Js0plI1z7hINMGKWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J91DmLTqRfCbhodpR5B0n6WHoXBom1g+JeKPjA5ZHLQ=;
 b=jbrOBOcmnxoCA9O24+i+AGSbsM54kMHHBTb1UlksOu9BHXy6OVFGn9WfpJzkj5oAci2f60td0VehdvYCgFnQI0Fmznwr7s3/6s1AK77H+cGAPHYXLnDuabaqmm7ZRdMkZzegrWBtm+njiRXKLznRL73/a/p6U8qAZShz5Gw1Mhprjtry4UPFa3wvIAhkHINmFZXGFJDxQtbIzievmA5bBYQ5GFBEhSGjQd7Jw9JJVjQ753otuvw1csNcT14ZPWhhobP3Yf7GltmWprmXFk8f5fghzKeZHNC/nbq+WORCOTAMPmtbiQMK0oIWJ2NENkWwkESWBg/Tex0avlqyUIig8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6266.namprd11.prod.outlook.com (2603:10b6:208:3e6::12)
 by PH7PR11MB7664.namprd11.prod.outlook.com (2603:10b6:510:26a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.14; Mon, 25 Aug
 2025 05:14:36 +0000
Received: from IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720]) by IA1PR11MB6266.namprd11.prod.outlook.com
 ([fe80::eda2:e570:4314:8720%6]) with mapi id 15.20.9052.019; Mon, 25 Aug 2025
 05:14:36 +0000
From: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "Dugast, Francois" <francois.dugast@intel.com>
Subject: RE: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
Thread-Topic: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
Thread-Index: AQHcEv26oBkhYwS1BkOkWTxNK/n4xbRy1cDQ
Date: Mon, 25 Aug 2025 05:14:36 +0000
Message-ID: <IA1PR11MB6266F0213B87A6E9A7B97FD4E23EA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20250822002512.1129144-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250822002512.1129144-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6266:EE_|PH7PR11MB7664:EE_
x-ms-office365-filtering-correlation-id: 32d7414c-e1d3-46f2-cacf-08dde3964919
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?0OmsdJav2xgUYSnCkBl5zthUnl1df3nIRMBaaAtsxrrY+h7wn1f5mymySZbp?=
 =?us-ascii?Q?WW1y5dyHXkhfRbr1Mh5RZz8zi5LC/P1OMg8ML8/ANueO51uoSSBLei/TS+80?=
 =?us-ascii?Q?3A3m1SfcA+YMRhjPVq7oa78FnUDetWjqQV3N/0UJyqrrYhqEuAb9sBmkuLQW?=
 =?us-ascii?Q?YAn+QuyIT7WV6adUqhw+BAKfpVF7bm9/kAWMpNzEEhueRAQBf+SGpuHLEv/R?=
 =?us-ascii?Q?Q24AWO73AqlJBF2Sfwaz9LY7aqrr8lPTovgCZRoElupGRkwa10GTBk+MJxxq?=
 =?us-ascii?Q?1YQb1+0XLTE1pzv90FVo0oj9FPEKoJ6RcaudE4lDxS0KWdtmTngnxq9F4B+2?=
 =?us-ascii?Q?5B6w1G4bEVG39LskrZP+lJg7HPC6TSXbqMpKxOy5MRzUWmUfw9csuZw8JrY5?=
 =?us-ascii?Q?Su5aQ5OMeyCG+XjZ088PDxuYbSVp5J9/lIzSxw2SR8GRFT0NDp7VRBYxJjy3?=
 =?us-ascii?Q?RS+c2pfftgY+SNZAjTe+Y0GqJ5Ry6gFxm9iOkJ+HPvAPM+5/ErirlvHE4aJ7?=
 =?us-ascii?Q?TZ4NIEPax62puEVc4yx14mR2KkIkZdnXAonypOUp8Xm2d1/LsetrfSdDdcXg?=
 =?us-ascii?Q?dQzyXtz77M4mAlU+2YA8aiIwJJL44dtGmst2YZdLKaTXPLsbOohxIG2L3ZK8?=
 =?us-ascii?Q?gNKaXvSa5VtMV+gWX9o5OIZAC2+rdZ0S8qXOgUmeRNkuKslU8PeDkMdIiemU?=
 =?us-ascii?Q?PtLI2LSCN96hk3ljExy7bFuiSesHC2f1OYFeCfX5TO8BrnQX1n7yLoGADBAt?=
 =?us-ascii?Q?tJhN9q0lTHl/2ay138NJpQgBIN4ShoW5B9x3mMSJjh5Ce3gInj1+fJpvJ0We?=
 =?us-ascii?Q?8zeqOWZuwtncM9xCCdxQ4nzyno0YRNdKjDfs9iTg5xMY3YxVdI7szgTTsx15?=
 =?us-ascii?Q?QIBcrPNwy48eR48kMtY4u0+1sxlVamZZqpr49PHicAzoHOtP/rG2IIiRgdho?=
 =?us-ascii?Q?9X3RTH2WbKXpqkik81vmIY/k2jZS618ZTMHfXGCrLCBDwbGWXsGg6q1yes5R?=
 =?us-ascii?Q?AmGBQsaJ+0qSIfaWm2WI7k0ikaI7sXiL1ep+ddgkXy99xk8HA3VPBQtz9FT7?=
 =?us-ascii?Q?4TidO5sUG+aLvnIUvRVF/8N3mw5Khvgrl5ObxQPbO4fJG+Aioxk/U2cXYFxD?=
 =?us-ascii?Q?OWus1A1EsMrPFYzcUNJ2mpFzWKrpM4PCc0sn48f9C+xOcY56xCCFYqU6BblF?=
 =?us-ascii?Q?3xY9Wv7NoK2DY9JVbHhECcRnnUFoUgcwFyDYoT5aoyRDHnAkmB+FnpHaMIS6?=
 =?us-ascii?Q?S7bjquPQ/4zcJOIRZdhIc3OXp2RIOuV2heDm6evTDAxvrZpnVAPqAXzZCdik?=
 =?us-ascii?Q?zbj3dJIf146lyxU6hWsspnVXnu/trDmFdpJJFOruVciSe8B9RgAnI8VGo3zc?=
 =?us-ascii?Q?z0pCzK+AZg/cccBtq1lJp91ZfKM8oRKoW5UuDcytnNEsv6s+VW9jVihEXjff?=
 =?us-ascii?Q?J5ec7rAzokpfjuUk6WGkLfPoC+8rDk1OX9xcxZydIE45yKJveypoZ0ehZTf0?=
 =?us-ascii?Q?0ZtYs+2P6bYyimY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6266.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nv+sj5wdKW/3fkoo5YzUYM2Vs09Q/CBgO5uYlPT5d41giTWostEFa6rt/ivI?=
 =?us-ascii?Q?ytlndhrILI770xw0xrsUweIKR6BUYA+gwX3Rz1CcvqPrUA70v/52/R77g+0T?=
 =?us-ascii?Q?KdS8uoXpPbpKt0W2tnLl72G7LKxbZe2jvLHPA+JUoAd0vpZ/qbA+N8s+6pUr?=
 =?us-ascii?Q?qd6yEGcte2XU403MkotBtiPKekgo+fX37CkLUMFXyxDsFA3ynZH5A/DrJLPH?=
 =?us-ascii?Q?OhjETbG9VeMusvDZrgkN8NQWbiyqD+ESHT+SYvQhIiPdlk9wNeAl8T6ILUCS?=
 =?us-ascii?Q?3PHS5oPN9tEuC37h+wfLW4GG+bkxsAIr+1EsdXys5Do706t4hq2gxJkpvkgp?=
 =?us-ascii?Q?8cFgPzOfqzBnAmUPeJrnMJeppcqhrnDdK3bxwu7xCUn1SNP8wyOXw2E3QcPJ?=
 =?us-ascii?Q?+Fow7PbWqbKdO71bsNjOeD3HMnyzHubKJkwws5mOppIG4XKdyjzaR6ixCOBK?=
 =?us-ascii?Q?Q9LU9iRKglNul0jPDoHRlV3aBj50h6z7oq0vh7DfF6MO9RZWHBEqZ/FIOnWd?=
 =?us-ascii?Q?ptEtA9kBvLeymxgl8QyAKDlJedP6pSzsc0dIBA1uIyguFbmR5tIjDKhrP/+7?=
 =?us-ascii?Q?yC1O69o74JP6l7ZlQOeeipGigHUx4YunPZA6ERcNXu+O+w9xckp/vl2Azkyc?=
 =?us-ascii?Q?2TepPJvhLJ8bBTBFT2/zLHK1OWnwQ3LdUzmi3N7iM5+9mbM+pO9HqCkCNkPz?=
 =?us-ascii?Q?7Wy5g1hCkfN/DZfTQd1MJ+FwGo+zAhoch7r1LBATpvy7peIVKqPd13JmW86y?=
 =?us-ascii?Q?DG8XEl/Tipgk4ELYL6x6CVTZhjRwPK/RUjvs2YgQNHOZRfhrOOFSTUXtmccu?=
 =?us-ascii?Q?bgNoteqEwyZa1da5tmVZpb2OYnZH3GmOXIteARB8kcmnbODmnGdCaVo4wm57?=
 =?us-ascii?Q?0urg3GQSeND1bb3YCAo8bVqwSQxrX/aPM6vkyRDsd7nhZUnoAN6GnhHNIhbj?=
 =?us-ascii?Q?45S7Ip+z1Go5xx1KxVCXBGiE3/7DTbGCbTAETHonXM0XYeyzd84h5+9NIp/p?=
 =?us-ascii?Q?m9qeDKjjxPDeEG2olYCwwhYtAlOSbUJ2Aw9Ccumzd83WjR4rzVGtVsHf7uFd?=
 =?us-ascii?Q?oxlzLONQlvOKte47Zjy0mtTcioaiC5ae57SXHWxjN7DQmKalsnUmoP+F2Cod?=
 =?us-ascii?Q?ivqBbLl9tXkqab2U984NgJHkEmbLF7WmrloRJ7EV9pI1rBDyyQwEA/7EDRGv?=
 =?us-ascii?Q?HFr7ETK+l4aPIWcu/kTGTvL77noR717hfEVlNHPnWpu8ssQzEc6JBUlxJ2/2?=
 =?us-ascii?Q?C7LIjFbm3mcWs31iwGIRXky+KAR01k+FaKpZIXJSunCn0TV/oESdcNcoPZW7?=
 =?us-ascii?Q?xxD3Pn7WwhFNdZ7oe6bcPk0mwN8gzcdZKXoY+/34iUxZ/RNvEvkBWlorzuXq?=
 =?us-ascii?Q?PnkLz37SrWHsqahS/M8qD16kSni3b6H4q3HuPxY/K2Y2Q3dLGtRhpUL0V/89?=
 =?us-ascii?Q?ZsJZASI3UgNkQMrHEdtIbSvrhDXh+lO944GhykTI0Dg5vuDwUkdc51IzIKxv?=
 =?us-ascii?Q?66sFn88WHyGZ77po3HK2lb4CfaV2+FlnXUv1Y714nhxQi+qELGCAnExo1m6+?=
 =?us-ascii?Q?Pm3dyOJb0ZZ3jW122Sx/Mhunns2WowPEgJkcjotyOOajALn/YwUoXpYEQh4W?=
 =?us-ascii?Q?3w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6266.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32d7414c-e1d3-46f2-cacf-08dde3964919
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Aug 2025 05:14:36.7257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7sU9gVmKA3zTV+8QoFgmn0XYruOyJ8YqiEUFzGAylLt5+pKTS0yFJX5dH5VQO9LlPSayM8i7EsVf5I6s720p+VhMCm6lodqISaALWiMg0FQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7664
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Chaitanya Kumar Borah
> Sent: Friday, August 22, 2025 5:55 AM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Chauhan, Shekhar <shekhar.chauhan@intel.com>; Atwood, Matthew S
> <matthew.s.atwood@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Dugast, Francois <francois.dugast@intel.com>
> Subject: [PATCH] drm/xe/wcl: Extend L3bank mask workaround
>=20
> The commit 9ab440a9d042 ("drm/xe/ptl: L3bank mask is not available on the
> media GT") added a workaround to ignore the fuse register that L3 bank
> availability as it did not contain valid values. Same is true for WCL the=
refore
> extend the workaround to cover it.
>=20
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

I interpret from the WA and PTL description that we don't want to push any =
value, not even 0s,=20
to userspace if the L3 mask is not available for media GT.

LGTM,
Reviewed-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_wa_oob.rules | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_wa_oob.rules
> b/drivers/gpu/drm/xe/xe_wa_oob.rules
> index 8d0aabab6777..8bef2f567faf 100644
> --- a/drivers/gpu/drm/xe/xe_wa_oob.rules
> +++ b/drivers/gpu/drm/xe/xe_wa_oob.rules
> @@ -48,7 +48,7 @@
>  16023588340	GRAPHICS_VERSION(2001),
> FUNC(xe_rtp_match_not_sriov_vf)
>  14019789679	GRAPHICS_VERSION(1255)
>  		GRAPHICS_VERSION_RANGE(1270, 2004)
> -no_media_l3	MEDIA_VERSION(3000)
> +no_media_l3	MEDIA_VERSION_RANGE(3000, 3002)
>  14022866841	GRAPHICS_VERSION(3000), GRAPHICS_STEP(A0, B0)
>  		MEDIA_VERSION(3000), MEDIA_STEP(A0, B0)
>  16021333562	GRAPHICS_VERSION_RANGE(1200, 1274)
> --
> 2.25.1

