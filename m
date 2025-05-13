Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F162AB4AA0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 06:47:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2858810E4E7;
	Tue, 13 May 2025 04:47:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O9LvMSHK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1240810E2B2;
 Tue, 13 May 2025 04:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747111637; x=1778647637;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=BheGuJ5/K1XiMHFQuP6OWqAoIpaG4YCirsrKJ3HGdgI=;
 b=O9LvMSHKezcJv+CkvENfDoNC2Y4M6Hwo+XQI5oGYykdTrS99QaDsn7a0
 oqqlazsoydwtGXadPnuCbNnasLsgFYl9wT0SR3WUOI07X0e41boy3hiUR
 kfnCzmwTzC9+DZ1CDIvbCyoh/YMHGNk/1T6RrMiNGIlWiNIY6eZsVUZnq
 LEkvcnTdC7ii6P16LdN54lMpAvzKBzbNf05YsxZQcgYWcz81wZlSFRXRh
 EBBuny588voAVlsYgUxQpZRndo/PoZ5kQS6UvJKIpcllnlZrzFt+XlBJ5
 nQOYBWI0Q4dR6Ky4F3uW1OWW+gSEDWkfD1EAyNV+LDQsI5Xg0wnt/gk3n w==;
X-CSE-ConnectionGUID: u2l3wNNfTYav2MoV0kVJYg==
X-CSE-MsgGUID: ly2/WV4hQ2KaEvIEJX0bow==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="49100946"
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="49100946"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 21:47:17 -0700
X-CSE-ConnectionGUID: MZmbOREOT6uGmcJ7OSRUOQ==
X-CSE-MsgGUID: /r5O9qaXRySNd6mp7920tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,284,1739865600"; d="scan'208";a="142351995"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 21:47:17 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 12 May 2025 21:47:16 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 12 May 2025 21:47:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 12 May 2025 21:47:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A9Zrmr12/jnhVcT9RLo9HXWRON6sMBkN32DUH4S1TYSwLEJ0v1FIC5Ac4/VIGFuZUVlimhhi18dNXWgwQRvhcIqloZzzDmb8zfnddCcExtX12WaR8/Sadf7skiTOKlNd3SlryAYGmCPvK1msfijaUZXXGAHVcDdnEPoy7cl2JLFIcZM4mBi1OGVKHq3FFufF5sTjNY4X4oom0S4S5y7W8Nrzay7o43EoZwHF4h1BqJdMYCpETEn8Gslgdl8egYd7GHG/ne0z4X7Jzt4DPDjmlzj3AzD2/Rv2y7aurb+ZJwzOc5k8wBe6tFY54QGpud3Ea0dfMQzm0UlT1MP9TNRxyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BheGuJ5/K1XiMHFQuP6OWqAoIpaG4YCirsrKJ3HGdgI=;
 b=QSZ0ZKgwNcdtNq93lTPDF/iejTHkYP9CeAoEoBGmNK5eYdp1XkOsMrnaj8lIcFDTZ3s70CsmiMDAyAOhbJ1HLhfk0OR1DAr1d7w5FUKAFB9KWN/KpPKYT161ULTONAGUcB5qLKirxRfFmKWWYW5Uy8WsdNlcQYURXT9tRZ0/ZlcuEe6eMAeg5zYRH470zU++CmT++TlK1zzFCrn0Wk0J1l65JjmFJTDYYPDJodwctWYeoefwueYP1qHYIrdKrlbm4yd3xwPToabUH7JC13S7tixuBhirU/Pp65kgJxEBRlCtbDYZUACIKqY7Vm8g72XVdQwSpsynbIWp2ekZkoQzww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV2PR11MB6024.namprd11.prod.outlook.com (2603:10b6:408:17a::16)
 by DM3PPF67FA1A8F8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.30; Tue, 13 May
 2025 04:46:33 +0000
Received: from LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f]) by LV2PR11MB6024.namprd11.prod.outlook.com
 ([fe80::dc22:ef1e:53e2:f00f%4]) with mapi id 15.20.8722.027; Tue, 13 May 2025
 04:46:33 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Topic: [PATCH v3 2/2] drm/i915/alpm: Stop writing ALPM registers when
 PSR is enabled
Thread-Index: AQHbw7ttB8GQTWm5UkimJwgh07ppkbPP/IgA
Date: Tue, 13 May 2025 04:46:33 +0000
Message-ID: <179aafa7ee6f9b00dddb84751b2e64a05cdb17a3.camel@intel.com>
References: <20250508141701.3878486-1-jouni.hogander@intel.com>
 <20250508141701.3878486-3-jouni.hogander@intel.com>
 <SN7PR11MB6750BD686FB7B3740198DCCAE396A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750BD686FB7B3740198DCCAE396A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: LV2PR11MB6024:EE_|DM3PPF67FA1A8F8:EE_
x-ms-office365-filtering-correlation-id: 533bb7fe-8c47-4aa4-f633-08dd91d922c2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|1800799024|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?NkpEa01GbmE3MzhnVmtBU1dXeTgrRTRnWkpGaHUyNE1hOTZQb05lNU9sbzNR?=
 =?utf-8?B?U0gxKzFYeHBTWTVWQ05sNExBZXBTMGN5UXFmZXZkMmVqOFV3dmo5Sll0NGhM?=
 =?utf-8?B?dFZNajVwYVcxbEZWeGZLSDN4eDdqcjV3ZXQrdUJpSHBlYjNUK2l5bEkxSTJ1?=
 =?utf-8?B?QlVaYk1FWlJZckNYSFUwTjFPREpuckZnbDVXdklkWlFzaDRvalRDUUtuU05i?=
 =?utf-8?B?cThmTzV2TGNtYWY0SmlmSVhmY0YrZU1td1hxTFEvaXdkY0N5dWRodmxzQndC?=
 =?utf-8?B?N3lwS2lQaG5QWkpqbSt6MzM4SVhFUHU4bmZHbkpFYXBkejd6aXZSYm9RMjB0?=
 =?utf-8?B?b1FjV2RtdGEvazBIWVdnN2wzTlFmNk9BU0V1clNXd3hFcnJSUE5xY2owU05p?=
 =?utf-8?B?SU93RC9wbEE5NytlR1F1ZG53WmpwLzk2ODNNWEdQWUl1SWtjQm4rc3dkMW9M?=
 =?utf-8?B?ZTljRHBkTDkreDdhWU05MlU4NGY1QXNCK3ZGSG1oRmZiTnRkQTBEaVZERGFn?=
 =?utf-8?B?aEpWS0d2SW5IRWttSVViUUY0YlowUG5wOTgxMTNmRFZ4ZGJIUWxZTHhZeC9y?=
 =?utf-8?B?bXd1ekU5T1FnMHRUZldLRTVWT1lzVmVKTTVsdWNjUUlGQ2lQdVlKd1NSTUQ0?=
 =?utf-8?B?TWRpRTBRbDM3UWdvUVV2STN5YVRRT2trTzVVbzQyOFhVRWpQSzZRL0V1YVJN?=
 =?utf-8?B?QkhlRmgyVmd1NXVrQzRlWjFLS0p5QXNhWXFpekdzQnM2RDlJYnJSbXFFZHhS?=
 =?utf-8?B?ODdnYzVTeWc3MUZFNUZubXJnQmRPZzVsRk51dGc2RlFMZmVGSldpVTlpT29G?=
 =?utf-8?B?Y0Jsb0VaTmhKZ0ZiZnEzZldnZjdYdUY3VFZLYnZJU1FNblV5aG05VjNicWJ5?=
 =?utf-8?B?QmpJa05VYVZVTlA1dUNuNmcvcXIrMkJOTURzc0pZeU0xVlJ4UXQxYTRadDk3?=
 =?utf-8?B?S1M3UGYvL1Y4UzBHRFYwbHV6Zk9EOVk4NzJUVWR1NXUvcUxXR2w2bHJrQnFj?=
 =?utf-8?B?TkFWSWlMbEQxM3hWeHRXZ1hrQ3ZxZ2pFREJLYWFBaWlpY3QraVpmL1BXTFpu?=
 =?utf-8?B?REp6NFZqVFJGRHF6S0RLQ0NHcG52cHlDQ2c0Tk4ra2pDNjUyRTJ6Um9hdXp3?=
 =?utf-8?B?ZExrOU9XamRGVk13N2dFUWlFU2k0NU5tR2JmWU5nR3BvU3JsT2RLT0tFUThX?=
 =?utf-8?B?QllidWlzRnhsdHhkVmhvTVhIVzZHeUFCRVl1amI5WlBrbkx4OGZ5d3M2R2ZU?=
 =?utf-8?B?NkxxMWM2aVVxdXZlcWw1dkI4OUZGcDhUa01jS05GNjlHSHBFemIyV2JKSFFY?=
 =?utf-8?B?OE9mTm9aMmQ0c3ZRaGpVVTBaVDkzbG5LMVNEZjZhVlJGZ25NWFdvN2hvSCtY?=
 =?utf-8?B?emhJM2czNk5FT05YUnc5NzFXbHNwTFNFZDYra1RUVUQrdU9jc3E2OUJFbDg5?=
 =?utf-8?B?VHRRdDRYNXQyWEhxcmdyU0djRmV2WnhmRTRSV1BFdTZSMlA5WTNScUd3aGdy?=
 =?utf-8?B?ZFordXJhRlIzQlFsY1BxL3pGWXpGQVBOMFVnVEdkR0hjN0trVDNxQkkxTWww?=
 =?utf-8?B?aXF6dkhtQnNaS1E3UnJLKzkxaHZFblQ5L3JZUHNqVTdwbHBSNGYwTFlYUkFM?=
 =?utf-8?B?VDVhWTQxeHA1dXExN25pK0ZpRktrSHFLdnJGc3lGVXkvN2pGT2ZDQ3NidUM3?=
 =?utf-8?B?UGQ2NnJ4SU5BTFFWdTUyNmtJd2p4VzJPUTQxckh1UVR1bTY5QThJVTBOdzh4?=
 =?utf-8?B?UkFhcGk2LzN0UW5yRDNNVUlEMXo3bDFQSWhVbWQwR3Q1TXhldmh6VlVBVkxm?=
 =?utf-8?B?ZEs5VGJ4SEFaeTVZMGoySlBpbXVpaWZZN3ltWkc3QUUydm0wNVYwZ3p1Ym43?=
 =?utf-8?B?dzRocFE4YndGaXBwdG0vWENjUzc2WlV2bGo2Ym9lSkY0M0JYUVVhSWVXMkpH?=
 =?utf-8?B?VHFoL3Jad2hSbmpvNXBjZkdWRCtVdDlDMXg2bHBHbUNQbVFHWDF6RlZ2Uzc5?=
 =?utf-8?Q?17wrevIXG9z6+yyX4jlpF+HA8rK19E=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV2PR11MB6024.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(1800799024)(366016)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3BId29kUmVhajNUaWdWdjlvNURyRXVBNWRMYkc0RmRiMjdnbWRaSXZ1RUUz?=
 =?utf-8?B?RXJ3SHBUT1RyMk1HbC93c3RIL3RGaHlSenA1THhsQjdrRThxeXlyaytMRU05?=
 =?utf-8?B?ZWx4S3dCOHViR1VLbjBFbjRrZWxadkE4OVR5QWowYkNKVmlOajlWS1lRTTgz?=
 =?utf-8?B?S1FBLzhNYlZ6YVY1UUltb2VPQ1hTeXNwQytvOVY2bWE5RVJOZ00xQ09vWmtn?=
 =?utf-8?B?b2dIL1ltN1VDMTY3RkxLdk5WV2JqNEZHejRXUUZVRHd2NzlvNWl3OVA0cnMx?=
 =?utf-8?B?ME1aWlRndktYWlM2NnBBdG9BTEVrUHFxSlZjSUx4Y3RIYzRXM2tPUkQ5Wi9x?=
 =?utf-8?B?dE1nTUpzT0dQU2ViV2Rjd282cHJHZFV1SHJ5NUZkM3N1a0FtRnc5QkJ5aVVD?=
 =?utf-8?B?YUxqZ1piQm5LR3RzWnRkSThlbnV2dEVPMnJzQlA3eElYVWFaNG5XenVjL2s2?=
 =?utf-8?B?eE1MSmFaWVFVU2FROXl4OThiNmpNRUdFT3BBN2h3WXR5a0dJbG1XV3QxTWJG?=
 =?utf-8?B?S0psejJEbFRja0pXWm51VzMyUWNMYmVvRGdNa2VwWGFjTDJBc2l4c3JyNjRt?=
 =?utf-8?B?aWxUcGkrdndJVFdVK2VveXJiYk1idkQyL2RLRXFmWUNZSzVqY1ByZDhXV1Mz?=
 =?utf-8?B?N1MyNThJUXB4ZnY5ZVppQ2ljSVZTZ3hOSHZOb1FIeWcvVGJnRjZMZUpuUzNt?=
 =?utf-8?B?c1hvWTBDRFJXMTFkdUdKWTdTS2dyT2lGdXJkQlo4emlKalZpVFVzbklCbGVz?=
 =?utf-8?B?NEhSc0N5NFR3TWZjUjMxeDB1VkVWR0lZeXkrNE9rV28rVWhyeHJhMlByY3lI?=
 =?utf-8?B?L1kySFh5emhwcTBpdnk4b0N6dHladmNWU1RGdDhwbVVxeG0yNGx4OThpcGdP?=
 =?utf-8?B?RUErelJNOHIwUXUrT1o0ek1MWjkyWTF0SVlZQ3RRTElqSlM3amlZdTNTU1FI?=
 =?utf-8?B?MmdEREY4WmxjZ29uem8xcHNpOExZbE50MlFWMENvOXV5M0U5R3VOOVRia2Yr?=
 =?utf-8?B?eGg4K1NWU2wwZlBqODh6R3l2cis5dHE1SGdpSm9NNnJ1UEQ3VDlRU3BUTHZx?=
 =?utf-8?B?V0RkVnQzNjVDWXFxTHdWUnRDWGgwendObzF2Z2xKcm9SZ0hDTjNRakhTckVr?=
 =?utf-8?B?TDlrblR1YVBSNEtxZXdLbVBRdXAxbkVvb056YTFjSVdCa3hFNzJRRURPWWxD?=
 =?utf-8?B?anZoT0hNaUVSM3FTcllRV3ZRb2FaZFUxN084SERNeDNzeE5aWEUvTDNIRGtH?=
 =?utf-8?B?ZVRVWFF4UEtFM3Eydm1WTHJxVysyUmNLM3k1N2dWVW1wYk80WkRTZlY4U3R2?=
 =?utf-8?B?M01HRUN0QWVhUldaYUNUWElGZGwvaXROdERSTXlMeE9vdzhXbW5ZODRsNyt4?=
 =?utf-8?B?ZUxXWUdZTnZpOGhOMFZQZGZaL0piSnlXZ01xcm52OTQrOVNQL2lSRm9mWUUx?=
 =?utf-8?B?MlpXditVV1p0STRKN0JjTllZNm5KRE5ZWXR4Ym4wYUNmQlBnWXZxaUZTdEdM?=
 =?utf-8?B?WmpzZC9jLzhnMWJuQytHMXEwNWhDMGdCSFlSMHllcG0vNFFIcWlYREIyaU5x?=
 =?utf-8?B?THgyeEw2alYwUTNFR2hGWHlvQmUyTUVUUy96YndYWnlCbzM2TkRtOUZ1SEd3?=
 =?utf-8?B?Y3hsVllwb1I4dkNKakJTN09PSFBSK3VLREJzZ2JhSko2NDBDb05EZmJDMW5j?=
 =?utf-8?B?TDV2MTcrMlZGa3g1RHBGNUdTV1ZLTnpmK084U0Z4dE95RGlsV2Frc1pPblJ5?=
 =?utf-8?B?dEwwNW1peDR3L1JPY2NET2dTS1AwaHFYRnBYZTNpUkltYkp6U3pOWlZQb2ha?=
 =?utf-8?B?Z3NFMzF5VTRMdmFkM3NHOCtLWlZ1dUJuNTdzRm5qUHZHNE5jMTFqaU9CenpH?=
 =?utf-8?B?b3JZbzRWUXpsTTFkRlZVcFE0ZDBGYjlUVXExdHhZZlRVeE1nQS8xREtGSkt6?=
 =?utf-8?B?MUowSDBSYWxzVW9EVE41ajlUNzY4T2F6eE9JdHRqOGdsNTdwQy93ZTRFWU9v?=
 =?utf-8?B?UDlTVmF1Mll1dFhqcHhwNlU2N1R5Tmg2K1RReWVTS0dDUlJ1dEZhek5xbElH?=
 =?utf-8?B?dWU2TUJQZENDWFk2RWswUW1ibmJ6YjdaQW01bzFzNmNOMjViL0cyeTZScVdh?=
 =?utf-8?B?V3E3Znd4bUpZa2Q1OFh1T3pqbmw0N21oOHlUVVBMM3NiUjRWNHVSZDM1NDU2?=
 =?utf-8?B?UVBVNHhwbWRwblhjUkxIOVZ3VTl6T1VaUUQ1VWozemcxS3Byb2hiMWl1MEpQ?=
 =?utf-8?B?dHJRK3d4TEl3RWNYMWJYeUIwVHJ3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <87AEB0F9B93A5C4A835E6227B82653CF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: LV2PR11MB6024.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 533bb7fe-8c47-4aa4-f633-08dd91d922c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2025 04:46:33.2994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mrHIQZWkgG3R18isWl/TuuM/SOONGE4r+RHd6Xiy7NR1Tm1oL4+hG6ObXsmYvANnYzmmvC6f8McPwdvI2wUz+6uLnZD1CQ/Gnod4GPSeCLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF67FA1A8F8
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

T24gVHVlLCAyMDI1LTA1LTEzIGF0IDAzOjU5ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBNYXkgOCwgMjAy
NSA3OjQ3IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVs
LXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91bmkNCj4gPiA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MyAyLzJdIGRybS9pOTE1L2FscG06IFN0
b3Agd3JpdGluZyBBTFBNIHJlZ2lzdGVycw0KPiA+IHdoZW4gUFNSDQo+ID4gaXMgZW5hYmxlZA0K
PiA+IA0KPiA+IEN1cnJlbnRseSB3ZSBhcmUgc2VlaW5nIHRoZXNlIG9uIFBUTDoNCj4gPiANCj4g
PiB4ZSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogVGltZW91dCB3YWl0aW5nIGZvciBEREkg
QlVGIEEgdG8gZ2V0DQo+ID4gYWN0aXZlDQo+ID4gDQo+ID4gVGhlc2Ugc2VlbSB0byBiZSBjYXVz
ZWQgYnkgd3JpdGluZyBBTFBNIHJlZ2lzdGVycyB3aGlsZSBQYW5lbA0KPiA+IFJlcGxheSBpcw0K
PiA+IGVuYWJsZWQuDQo+ID4gDQo+ID4gRml4IHRoaXMgYnkgd3JpdGluZyBBTFBNIHJlZ2lzdGVy
cyBvbmx5IHdoZW4gUGFuZWwgUmVwbGF5IGlzIGFib3V0DQo+ID4gdG8gYmUNCj4gPiBlbmFibGVk
Lg0KPiA+IA0KPiA+IHYzOiBlbmFibGUvZGlzYWJsZSBBTFBNIGZyb20gUFNSIGNvZGUNCj4gPiAN
Cj4gPiBGaXhlczogMTcyNzU3YWNkNmY2ICgiZHJtL2k5MTUvbG9iZjogQWRkIGxvYmYgZW5hYmxl
bWVudCBpbiBwb3N0DQo+ID4gcGxhbmUNCj4gPiB1cGRhdGUiKQ0KPiA+IFNpZ25lZC1vZmYtYnk6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMgfCA0ICsrLS0NCj4g
PiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqAgfCA4ICsrKysrKyst
DQo+ID4gwqAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkN
Cj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9hbHBtLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5j
DQo+ID4gaW5kZXggOTQ0MjQ4MzA1OGQyLi5iYzkzZTgwMjY3MDMgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+IEBAIC00NjAsOCArNDYw
LDggQEAgdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCWludGVsX2F0b21pY19nZXRfb2xkX2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+IMKgCXN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
Ow0KPiA+IA0KPiA+IC0JaWYgKCghY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwNCj4gPiAtCcKgwqDC
oMKgIGNydGNfc3RhdGUtPmhhc19sb2JmID09IG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikgJiYN
Cj4gPiAhY3J0Y19zdGF0ZS0NCj4gPiA+IGhhc19wc3IpDQo+ID4gKwlpZiAoY3J0Y19zdGF0ZS0+
aGFzX3BzciB8fCAhY3J0Y19zdGF0ZS0+aGFzX2xvYmYgfHwNCj4gPiArCcKgwqDCoCBjcnRjX3N0
YXRlLT5oYXNfbG9iZiA9PSBvbGRfY3J0Y19zdGF0ZS0+aGFzX2xvYmYpDQo+ID4gwqAJCXJldHVy
bjsNCj4gPiANCj4gPiDCoAlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJt
LCBlbmNvZGVyLCBkaWZmIC0tDQo+ID4gZ2l0DQo+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+ID4gaW5kZXggY2NkNjZiYmM3MmY3Li4wZGJlNTlkMDYxODcgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtODAw
LDYgKzgwMCw4IEBAIHN0YXRpYyB2b2lkIF9wc3JfZW5hYmxlX3Npbmsoc3RydWN0IGludGVsX2Rw
DQo+ID4gKmludGVsX2RwLA0KPiA+IHN0YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc2luayhz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgCQkJCcKgIGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpwqAgew0KPiA+ICsJaW50ZWxfYWxwbV9lbmFi
bGVfc2luayhpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gKw0KPiA+IMKgCWNydGNfc3RhdGUt
Pmhhc19wYW5lbF9yZXBsYXkgPw0KPiA+IMKgCQlfcGFuZWxfcmVwbGF5X2VuYWJsZV9zaW5rKGlu
dGVsX2RwLCBjcnRjX3N0YXRlKSA6DQo+ID4gwqAJCV9wc3JfZW5hYmxlX3NpbmsoaW50ZWxfZHAs
IGNydGNfc3RhdGUpOyBAQCAtMTk2Miw2DQo+ID4gKzE5NjQsOA0KPiA+IEBAIHN0YXRpYyB2b2lk
IGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4g
wqAJwqDCoMKgwqAgSVNfRElTUExBWV9WRVJ4MTAwX1NURVAoZGlzcGxheSwgMzAwMCwgU1RFUF9B
MCwNCj4gPiBTVEVQX0IwKSkgJiYNCj4gPiDCoAnCoMKgwqAgIWludGVsX2RwLT5wc3IucGFuZWxf
cmVwbGF5X2VuYWJsZWQpDQo+ID4gwqAJCWludGVsX2RtY19ibG9ja19wa2djKGRpc3BsYXksIGlu
dGVsX2RwLT5wc3IucGlwZSwNCj4gPiB0cnVlKTsNCj4gPiArDQo+ID4gKwlpbnRlbF9hbHBtX2Nv
bmZpZ3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IA0KPiBOb3cgdGhhdCB3ZSBkbyBhbHBt
IGNvbmZpZ3VyZSBhbmQgZW5hYmxlIHNpbmsgZnJvbSBwc3IgY29kZSBkbyB3ZQ0KPiBuZWVkIHRv
IGRvIGl0IGZyb20gdGhlIGFscG1fcG9zdF9wbGFuZSBjb2RlPw0KDQphbHBtX3ByZV9wbGFuZSBh
bmQgYWxwbV9wb3N0X3BsYW5lIGFyZSBmb3IgTE9CRiBvbmx5IGFmdGVyIHRoaXMgY2hhbmdlLg0K
DQo+IA0KPiBBbHNvIG9uIGEgc2lkZSBub3RlIGludGVsX3Bzcl9lbmFibGVfc2luayBoYXMgYSBj
b21tZW50IHdoZXJlIGl0IGlzDQo+IGNhbGxlZCAoaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQpDQo+
IHdoaWNoIHRlbGxzIHVzIHdoYXQgYWxsIGlzIGJlaW5nIGRvbmUgaW5zaWRlIHRoZSBmdW5jdGlv
biB3ZSBuZWVkIHRvDQo+IGFkZCB0aGUgYWxwbSBlbmFibGVtZW50IHRvbyB0aGVyZS4NCg0KT2ss
IEkgd2lsbCBhZGQgdGhlcmUuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVn
YXJkcywNCj4gU3VyYWogS2FuZHBhbA0KPiANCj4gPiDCoH0NCj4gPiANCj4gPiDCoHN0YXRpYyBi
b29sIHBzcl9pbnRlcnJ1cHRfZXJyb3JfY2hlY2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkN
Cj4gPiBAQCAtMjE3Miw2DQo+ID4gKzIxNzYsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3JfZGlz
YWJsZV9sb2NrZWQoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKQ0KPiA+IMKgCWlmIChp
bnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+IA0KPiA+IAlpbnRlbF9zbnBzX3BoeV91cGRh
dGVfcHNyX3Bvd2VyX3N0YXRlKCZkcF90b19kaWdfcG9ydChpbnRlDQo+ID4gbF9kcCktDQo+ID4g
PiBiYXNlLCBmYWxzZSk7DQo+ID4gDQo+ID4gKwlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBs
YXlfZW5hYmxlZCAmJg0KPiA+IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gKwkJaW50
ZWxfYWxwbV9kaXNhYmxlKGludGVsX2RwKTsNCj4gPiArDQo+ID4gwqAJLyogRGlzYWJsZSBQU1Ig
b24gU2luayAqLw0KPiA+IMKgCWlmICghaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlfZW5hYmxl
ZCkgew0KPiA+IMKgCQlkcm1fZHBfZHBjZF93cml0ZWIoJmludGVsX2RwLT5hdXgsIERQX1BTUl9F
Tl9DRkcsDQo+ID4gMCk7DQo+ID4gQEAgLTM0OTgsNyArMzUwNSw2IEBAIHN0YXRpYyB2b2lkIHBz
cl9hbHBtX2NoZWNrKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCkNCj4gPiDCoAlpZiAo
aW50ZWxfYWxwbV9nZXRfZXJyb3IoaW50ZWxfZHApKSB7DQo+ID4gwqAJCWludGVsX3Bzcl9kaXNh
YmxlX2xvY2tlZChpbnRlbF9kcCk7DQo+ID4gwqAJCXBzci0+c2lua19ub3RfcmVsaWFibGUgPSB0
cnVlOw0KPiA+IC0JCWludGVsX2FscG1fZGlzYWJsZShpbnRlbF9kcCk7DQo+ID4gwqAJfQ0KPiA+
IMKgfQ0KPiA+IA0KPiA+IC0tDQo+ID4gMi40My4wDQo+IA0KDQo=
