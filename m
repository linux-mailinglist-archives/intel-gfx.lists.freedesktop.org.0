Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2604691CAEB
	for <lists+intel-gfx@lfdr.de>; Sat, 29 Jun 2024 06:11:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D76410E046;
	Sat, 29 Jun 2024 04:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XjMnEE50";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E22E10E046
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 Jun 2024 04:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719634270; x=1751170270;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ES/6KAOSYzylOqBBZGiUUsUcQNBppfrLI0tauPHhBL0=;
 b=XjMnEE50yv+2zlVq7RoWpccv8HPmdnTphP/+Rih/vDzU7o4MkkMF6CmN
 MgkiakGQwTuQKD+oHUPSHDYjCj166ZlMdkjJek4+zYvuY5Oz+p7d4Jcxu
 mplNq7bFtXwhk05jck4/h04heGRPu/w9lCuoXgYIt4K783lC83lG8V0FD
 nVXopSEP2P5+O94Fs2m6CHvGuKbeKAC8HmSoGkWVFtgK9o1Tfc0yssFQg
 sdIN8GGA7WxVbLZbokcEVhD7gHJcPXt9FfTn+5nznIjzPIytTPxvHZPeR
 IGHwFfHK51EtvnXiLGHWEaG9AN1WGZTLZ4E6MzNgPl5q64uzytB5vuP9D g==;
X-CSE-ConnectionGUID: o7Ke6IDRT8WyytxSzemQOw==
X-CSE-MsgGUID: GqspfTu0T3+GP2MUQsE/GQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="16968166"
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="16968166"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 21:11:09 -0700
X-CSE-ConnectionGUID: vTkxFaG8RFaa5p+GThgbCw==
X-CSE-MsgGUID: drQqLnIeRz2RoBxZOAGLDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,170,1716274800"; d="scan'208";a="49403444"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 21:11:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 21:11:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 21:11:07 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 21:11:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 21:11:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DO9TI6xoxOq5NmHGZz4ujo5/RFk7mMTZDMk2OIqp10eyteAVOBRn9tjCwBdvOwwc+tyWkM+5MGaBSpSpl2PpNQLHY9S83GErwTOkFziptb9+xFNuPuthyh0iXY7V1XdRmCXEiVy871whMW8sA5bV7xgtDhE/ydJrw0M3SPM4r7gSjpTJg7S9+fxGXtqqmd3WhEpNHAeg3LqwaCgAgmRTU644FiEgtGKGvH1C+2Hi+Tu+TEx3CrlPvghg4sUiX6pK9zd5Xr0JsAtq92EW4Vkspeac0Hwm+f+IIBugrz0BcCi4dVP38/ZDn0mcnRcuyAbi98LhG7gHjy+Lko1+zddoKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ES/6KAOSYzylOqBBZGiUUsUcQNBppfrLI0tauPHhBL0=;
 b=Rf8l3SzqbJFgWO3Y/ugk+DIFmYU4M1urnp/gYp4KxOATs8LPA9N3qjWwS+RszUJvE0UOsJ3JdpeJNKwV9qpNAf/b/9lVEKM3laKRDRc6J/t4dIH33VDib8rZ9G2FfK6j4VSR29wjLBrsRd/wJuNacombB8SsFHG7T0FLd/8GOvnukH7jm0bzQMD6Ibh5iJQvm18AqnEaAjrpX53NzwPBHN0g4Zk4Pv1em86jcFQiH5aAAjhZhZHpnQmO/ltBsBGkeSWZKuIkSAm+X3+mW3y5CclgN39R+BtIryGPgexasLS7oUFXePAcZOrIJDWb1JHCkhNksm+MvBLcCoYtePE9XQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB8737.namprd11.prod.outlook.com (2603:10b6:8:1a1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.37; Sat, 29 Jun
 2024 04:11:05 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.7719.028; Sat, 29 Jun 2024
 04:11:04 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Sidhartha Kumar <sidhartha.kumar@oracle.com>
CC: "Liam.Howlett@oracle.com" <Liam.Howlett@oracle.com>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>, "linux-mm@kvack.org"
 <linux-mm@kvack.org>, "maple-tree@lists.infradead.org"
 <maple-tree@lists.infradead.org>, "Nikula, Jani" <jani.nikula@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: RE: Regression on linux-next (next-20240625)
Thread-Topic: Regression on linux-next (next-20240625)
Thread-Index: AdrH2wQgvZ0v3b3rSfqjB9b1aXGiMABOsLqwABVNzYAAG8/gkA==
Date: Sat, 29 Jun 2024 04:11:04 +0000
Message-ID: <SJ1PR11MB6129CDA10C82F5F2AF2E8EADB9D12@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129ACCDD516E5C546C7AA94B9D62@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61291EE0C56175FC19373119B9D02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <fda3367a-84ac-40ed-8e24-6d37f86e9cf7@oracle.com>
In-Reply-To: <fda3367a-84ac-40ed-8e24-6d37f86e9cf7@oracle.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS0PR11MB8737:EE_
x-ms-office365-filtering-correlation-id: 93a0a454-fa92-4816-831d-08dc97f17ebf
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?NVhYYm1JMmF6TlhrV29zdDFobDZzNTRVNEpYUkM3Qlh2blpUMktQNW5kbFVw?=
 =?utf-8?B?TjM5YnFDT1pmZW9WNzE4dnVzVEJVV1R2Q2ZtSkNvTjFNVG9YWHZSWmo2eGFD?=
 =?utf-8?B?emNvNXFWWk42R1VnNDZMOHhYTkl0R2gzampjQnVIdlc0UFNSYVBrYkhscTBj?=
 =?utf-8?B?d2lmRzltRFpodW5WR1llV0FTZ0RzRjdlQUFtM3hrNStwUkYwc0tLV2lJVDFR?=
 =?utf-8?B?di9vaC9ueTNXM2VVTGduU0xlSmJGbnRtbGlEeWtQeW1WNlVMWFhQOXpVQ3Ry?=
 =?utf-8?B?Szd5djF1K2FHYnd6OHd4eENOTyswdjBDVkVUTGJxV2JxQ1Uya3BIelp1dnJj?=
 =?utf-8?B?d0J0aVFjY0pmUkVtYkh1SlZZOGg5cU1DeHJiL0pWSlVWdUIrRHZPbmxUZHpJ?=
 =?utf-8?B?SzNES3dZZFBUZDlSYkgyQ0VjR0dDeW81NmpXNlp0YlFTdzlKMFUwZFEybWUr?=
 =?utf-8?B?U01DTnFjQnJRS3gxbjBpVWJqOG9WSnVhUURacXBGaGk2S0hOTGM4UXE0VzFZ?=
 =?utf-8?B?NVg2L1VtT0srQllFU0tGNXlDcFlhdE9tMVJGWFQrYWZvUDkxNG1RcEo1dFkv?=
 =?utf-8?B?US9UM3NNaHhvdXJDQkkrS1pCVE1oWGFIU2UzN1puUVo3K2hzUXp2Vzlubkdy?=
 =?utf-8?B?U2p6R2s4MDVHelozQ1lqdncrVnBxMVNPTzZ4L2RzZmhMSFN1NnNIbkhNcTFh?=
 =?utf-8?B?QUsxWWNxdnBBNTlhbW15cUVQdG1LNmpidnhCZVFpWTVYRU9QOTg3bWtUWjZz?=
 =?utf-8?B?ZzV4cTVmY09GYTdRbTlUdVBoMVhDQjBJVmRpWHRlVmxPU0tuTlUvbGcvSHl3?=
 =?utf-8?B?UHhBKy84ME5DZGg3ZHBKZWowRkJMYytXcGs4bE05WnNJNjF4SEN4TUtDbmRS?=
 =?utf-8?B?U05ueXU5eU5jdkNvWEc3SG9weXFQZWZDV3BwRmxPazFxZE9xRkc1YkQxeXl6?=
 =?utf-8?B?bUxoMnNTNDNLOU4rVy9hd1VOY2w3V2tDdGoyR3RnOEtJQlJrRGhRaXRXeGhv?=
 =?utf-8?B?dzVKSksrb2FGa01IV09rRXU4UUxZRWlZT2s3ZEpXeUpwWW5NekUzaHNZdUYx?=
 =?utf-8?B?SkppUUpUb0VGWXNhb25GZTY1ZTRwbXJIYXd4ck5pQ1ZxVUc1Z2xEcnFtWFF3?=
 =?utf-8?B?UWNiZEl1eVYrUGdMdkFCcHptZVFremQ4NjBsWjVzVXVQRFJVdE9FNjRTV2Y5?=
 =?utf-8?B?UnZSYWx3bEtJSXludEhkT3N3QU93TXQ5a1h6MlZJMU8xMU04dFpyZGdxb0M5?=
 =?utf-8?B?b2FRajFqdmhLNFNvRnhWeE9uZkZ0cmk5NURZaTJTeG8zZUo1NVdyRDdaNkF6?=
 =?utf-8?B?SGVSbjhoRTl5OGNxeUFOUGU2NHhsSjNpNFpJV3NhQmtnZFFUamZZdzVMbTdB?=
 =?utf-8?B?UjdnN3hCTW0wZmhsTDR2TVI0dEVXRUNtL3hZNlpCOEFyQ20rS0R4WUJzc3hJ?=
 =?utf-8?B?Y1k5cE1sei90aEhJNEpHZ3lXNWxtUnJVbS9yb0lHOU5zaGdlZHVpZGwvSGJ1?=
 =?utf-8?B?eEtnak9JQ29DYVA4YmUzU1g3enR3ZDBSaU5jSW55SldDOVFhSmI2djZMb2FG?=
 =?utf-8?B?QlQ0bjc3WWpnQTFTWEJ5RXR3YmFZUWxhNWcwNlRMcGhCVHBoelE4Q2NKVmM3?=
 =?utf-8?B?dC9DaVJyRW15OTdYQU9YYzloWFljd1VNMmlSRHZWVnBIcVRValZJSkp6bzBQ?=
 =?utf-8?B?M0NiV2xzUEpQOUI0NC9RWDJHRzJ2NVJSZERlcmN4MEtENTJSSVhoRkJ3cEta?=
 =?utf-8?B?ZSsyTWlxaHFyWndHSjNDSUVHNGtpN2xvN3VWc1R6RDMyZ0s5VkZQRVZKcFdh?=
 =?utf-8?Q?Mgzo3YqIiN+gB/raS6M/FYURH83cIoXDEypkU=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmRvU2RoN1BsYlRRVDQ3djk1eWhoVC8zYncxczRzWWtYcHdtRnB3c2xRclM4?=
 =?utf-8?B?QldTYzc5STlOTDZkSjAramx3SkI0bytxQWU0Q2sxWEg1U2NOejRCMFZSV1FO?=
 =?utf-8?B?a0tRK01GMm1FSFZtNmVXOHB6N0pCV2VNa0FGN0ZSQ3FWWUNKdzVKeU8xbzBQ?=
 =?utf-8?B?b3l2QVRsdGo1TUFHbnJLaU40ZnBTU1g2c1V3NHZqUFlzWUtYTjQ0NXRiQjkr?=
 =?utf-8?B?clcwZG16QmVCcTBRaHNCd2w0eDlacnRNUWtCZlRWTmJxbGk2Zldjc3FrbmFv?=
 =?utf-8?B?NW0ycFpFMVhScmN4M2JBdlg5T3EvNiswaTBnZndia1Y1eHBJNzYvcm56aWxV?=
 =?utf-8?B?M0NRYUxKV0xMdzl3UWxnY0g3WDVLbVh3K1FPNEgyMVAyTFByUzZOQ08vVmRR?=
 =?utf-8?B?R3hheDBMUmhNaXk0dStETSs5S2dJTk1FajVNOEtCUEpRcFRtWkdZSDhYd3dX?=
 =?utf-8?B?Q0Vva3BrUnkvaC9CSE9wUFdBYUgwOXB4Q0FwUWhtTmVpeW5YODR0QVR3a2dO?=
 =?utf-8?B?K003dTVja2cvZTZxSmZhQTBybWhzTUttWUxzRmp3TzlQaFRFVFVUOW95bURr?=
 =?utf-8?B?UWIrUU9iNjdnSUdSNThnZFJuc0UzZzM2NDkrS1cycUNSMFQ5SmlDazJRNW9P?=
 =?utf-8?B?d0lWZzNaYnpqQnhkV3Z0OVd3UFBPSWRHQ2RhL2VwWWZIMnlMVnIvSWNxbWc1?=
 =?utf-8?B?aTFxcGlaQ205L29yQWdrMFZoV1NpUElSbVNRVUhIRVZ1TTRJazNOR0VwM0Rp?=
 =?utf-8?B?UllqQkNJT2UxeUc4OVd1Rnk0dmtpMUdVMVYva1ZsdGY4eEdwSmltZExIRlFY?=
 =?utf-8?B?TFZlTlBKSXV6bFZBSTIvSW9qM0V3dUdkNXNOaVRHOE0zUzdMZDZsWmhZbTVG?=
 =?utf-8?B?MzAyK1dHV1VzUU16YTU4MlJOWDlBdkxzaEVVV3BVNWRlMXpsN2hBUUg0WWVV?=
 =?utf-8?B?cFNjRGFtUGtLYlc5TTlIN1NaU0JqbGVyYWpRZmIrMDE3VlNvN0VrYzFOV1Fw?=
 =?utf-8?B?aW1wZ3RKTHI5SjFLUUlrQno3Z0Myemk3bHk5MTRaV3QvMm04MmJ5ZXRLdDVL?=
 =?utf-8?B?R1c5QnVseTZmR3oyRGR0Nlh6S2lqU28vcURkRytNRnd2Y0M5TE00UFdha052?=
 =?utf-8?B?WmdzbWIzeWNScUNYdW4reWVMMTFRRGxxTk95eHdzYldZblJmQmg0ZjArNHF5?=
 =?utf-8?B?ZzA0OXVmbjh4K1VuVm5aT3AxYnBtNHBRYUh1cXBmWTJlVG9pU1o4Q2E5TGU5?=
 =?utf-8?B?QnJ0QkxGYTVyc0IxQkMyYXp6M3lHN3krWmpTKy9Tck9KTS9JWVJqUGZtNldD?=
 =?utf-8?B?S3BLREFFUDlvaHdIOEphTE5oU1gyUjJQVTZGd081YUZ2RHlkRCtod2tSL3lr?=
 =?utf-8?B?ejBuWS9FY1JUSmFtNDhiZkZoaUFNMTcrMHNsOGIzb2RpajltbzBpZk52SkRn?=
 =?utf-8?B?eU5JRURETUp6M01NSWYyNjMzUlk3Ty9yM2Q0K0JvN3lqdXRwVTBCQ29WalJs?=
 =?utf-8?B?N2tVQm94ZndocDJBaGRwcXZkMW9hSVpNeGdwTkRRR2FoNnVud1dwK1QvTmI5?=
 =?utf-8?B?Vk11MWpJbURnUjBBcmpNVzFob0Fud1gvdXovMFJ4YjZTSVBtVERhaEsrL3RU?=
 =?utf-8?B?dFdoNUs5QVRPenBVaEJ3dGgvaVFOQU5IR09RdnN2OWVHa2FzWEQ5OFNvMzFL?=
 =?utf-8?B?WFpTR1FyVWlkVGlNaWNxbFE0djZCT3RsNlBPcU55L1liQ2dFRUhLaTlMdDlx?=
 =?utf-8?B?LzJOWGtwcUxReENpcVFPSk9GUGg3cUsrN0pSUEkwQldCQzhMR0RONTNiZW54?=
 =?utf-8?B?TE12M1hGaXNBa2lDMDEyUUVWZnNaVE9aK0NXUXR4RDZ2aGoySldEa3p4YWpS?=
 =?utf-8?B?bjBTdmY5ekV5cnlNeGVzeHVLaC8yNEkyWUdWR0VJazJVbGJKOWpCd0hBU2xT?=
 =?utf-8?B?dXR4MDl6dlJWWEROWlF4M3pqSGdkYlUzQUdUbEhiZ1Y3SEllYVdFQVdMMGQz?=
 =?utf-8?B?enZqNnRIMFBPVTBRbjJkWk8vemNkZ2FLMDgxZjRoTjFxeTZHMnZxWU1mVjRK?=
 =?utf-8?B?d1RqOFBLRFNveEllUi85eTBHL3ZuczhHUk5qd0NoRGhEeDVuSWYwdHU5Zy9L?=
 =?utf-8?B?ZFRYeHpZS3hlNDg0T0I0NFBpeWNGN2VSeTlVUlRVY0c1ZTBLZWtWUlFWRUVu?=
 =?utf-8?B?Mnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93a0a454-fa92-4816-831d-08dc97f17ebf
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jun 2024 04:11:04.8888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZhYiA+bOvJGxm+6qqGqR/OQRKjqz/ObAKw2LhDnIe7H3hpr392lSszhWY5Bo9Ff4eLlLIzsnVAbkqvnuH9rpzheNdnkEeWpXoR4uHdaFy6A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8737
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogU2lkaGFydGhhIEt1bWFy
IDxzaWRoYXJ0aGEua3VtYXJAb3JhY2xlLmNvbT4NCj4gU2VudDogRnJpZGF5LCBKdW5lIDI4LCAy
MDI0IDg6MjQgUE0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1h
ci5ib3JhaEBpbnRlbC5jb20+DQo+IENjOiBMaWFtLkhvd2xldHRAb3JhY2xlLmNvbTsgYWtwbUBs
aW51eC1mb3VuZGF0aW9uLm9yZzsgbGludXgtDQo+IG1tQGt2YWNrLm9yZzsgbWFwbGUtdHJlZUBs
aXN0cy5pbmZyYWRlYWQub3JnOyBOaWt1bGEsIEphbmkNCj4gPGphbmkubmlrdWxhQGludGVsLmNv
bT47IFNhYXJpbmVuLCBKYW5pIDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47IEt1cm1pLA0KPiBT
dXJlc2ggS3VtYXIgPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogUmVncmVzc2lvbiBvbiBsaW51
eC1uZXh0IChuZXh0LTIwMjQwNjI1KQ0KPiANCj4gT24gNi8yNy8yNCA5OjQ1IFBNLCBCb3JhaCwg
Q2hhaXRhbnlhIEt1bWFyIHdyb3RlOg0KPiA+IFtjb252ZXJ0ZWQgdG8gcGxhaW4gdGV4dF0NCj4g
PiAraW50ZWwtZ2Z4DQo+ID4NCj4gPiBHZW50bGUgUmVtaW5kZXIuDQo+ID4NCj4gDQo+IEhlbGxv
LA0KPiANCj4gVGhpcyBwYXRjaCB3aWxsIGJlIGRyb3BwZWQgZnJvbSBtbS11bnN0YWJsZSBhbmQg
d2lsbCBub3QgYmUgaW4gbGludXgtbmV4dA0KPiBhZnRlciB0aGF0LiBJIGFtIHdvcmtpbmcgb24g
YSBmaXggdG8gaW5jbHVkZSBmb3IgdGhlIG5leHQgdmVyc2lvbiBvZiB0aGlzIHNlcmllcy4NCg0K
VGhhbmsgeW91IFNpZGRhcnRoYSwgV2UgZG9uJ3Qgc2VlIHRoZSByZWdyZXNzaW9uIGFueW1vcmUu
DQoNClJlZ2FyZHMNCg0KQ2hhaXRhbnlhDQoNCj4gDQo+IFRoYW5rcywNCj4gU2lkDQo+IA0KPiA+
IEZyb206IEJvcmFoLCBDaGFpdGFueWEgS3VtYXINCj4gPiBTZW50OiBXZWRuZXNkYXksIEp1bmUg
MjYsIDIwMjQgODo1MiBQTQ0KPiA+IFRvOiBzaWRoYXJ0aGEua3VtYXJAb3JhY2xlLmNvbQ0KPiA+
IENjOiBMaWFtLkhvd2xldHRAb3JhY2xlLmNvbTsgYWtwbUBsaW51eC1mb3VuZGF0aW9uLm9yZzsN
Cj4gPiBsaW51eC1tbUBrdmFjay5vcmc7IG1hcGxlLXRyZWVAbGlzdHMuaW5mcmFkZWFkLm9yZzsg
TmlrdWxhLCBKYW5pDQo+ID4gPGphbmkubmlrdWxhQGludGVsLmNvbT47IFNhYXJpbmVuLCBKYW5p
IDxqYW5pLnNhYXJpbmVuQGludGVsLmNvbT47DQo+ID4gS3VybWksIFN1cmVzaCBLdW1hciA8U3Vy
ZXNoLkt1bWFyLkt1cm1pQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBSZWdyZXNzaW9uIG9uIGxp
bnV4LW5leHQgKG5leHQtMjAyNDA2MjUpDQo+ID4NCj4gPiBIZWxsbyBTaWRoYXJ0aGEsDQo+ID4N
Cj4gPiBIb3BlIHlvdSBhcmUgZG9pbmcgd2VsbC4gSSBhbSBDaGFpdGFueWEgZnJvbSB0aGUgbGlu
dXggZ3JhcGhpY3MgdGVhbSBpbg0KPiBJbnRlbC4NCj4gPg0KPiA+IFRoaXMgbWFpbCBpcyByZWdh
cmRpbmcgYSByZWdyZXNzaW9uIHdlIGFyZSBzZWVpbmcgaW4gb3VyIENJIHJ1bnNbMV0gb24gbGlu
dXgtDQo+IG5leHQgcmVwb3NpdG9yeS4NCj4gPg0KPiA+IFNpbmNlIHRoZSB2ZXJzaW9uIG5leHQt
MjAyNDA2MjUgWzJdLCB3ZSBhcmUgc2VlaW5nIHRoZSBmb2xsb3dpbmcNCj4gPiByZWdyZXNzaW9u
DQo+ID4NCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4gYGBgYGBgYGBgYGAgPDM+W8KgwqDCoCAyLjMz
Njk0OF0gQlVHOiBzbGVlcGluZyBmdW5jdGlvbiBjYWxsZWQgZnJvbQ0KPiA+IGludmFsaWQgY29u
dGV4dCBhdCBpbmNsdWRlL2xpbnV4L3NjaGVkL21tLmg6MzM3IDwzPlvCoMKgwqAgMi4zMzY5NzRd
DQo+ID4gaW5fYXRvbWljKCk6IDEsIGlycXNfZGlzYWJsZWQoKTogMCwgbm9uX2Jsb2NrOiAwLCBw
aWQ6IDk1LCBuYW1lOg0KPiA+IGtkZXZ0bXBmcyA8Mz5bwqDCoMKgIDIuMzM2OTg5XSBwcmVlbXB0
X2NvdW50OiAxLCBleHBlY3RlZDogMCA8Mz5bDQo+ID4gMi4zMzY5OThdIFJDVSBuZXN0IGRlcHRo
OiAwLCBleHBlY3RlZDogMCA8ND5bwqDCoMKgIDIuMzM3MDA2XSAzIGxvY2tzDQo+ID4gaGVsZCBi
eSBrZGV2dG1wZnMvOTU6DQo+ID4gPDQ+W8KgwqDCoCAyLjMzNzAxNV3CoCAjMDogZmZmZjg4ODEw
MGQyYzNmMCAoc2Jfd3JpdGVycyl7LisuK30tezA6MH0sIGF0Og0KPiA+IGZpbGVuYW1lX2NyZWF0
ZSsweDVkLzB4MTYwIDw0PlvCoMKgwqAgMi4zMzcwNDFdwqAgIzE6IGZmZmY4ODgxMDA4MDA4NDAN
Cj4gPiAoJnR5cGUtPmlfbXV0ZXhfZGlyX2tleS8xKXsrLisufS17MzozfSwgYXQ6IGZpbGVuYW1l
X2NyZWF0ZSsweDlkLzB4MTYwDQo+ID4gPDQ+W8KgwqDCoCAyLjMzNzA2NV3CoCAjMjogZmZmZjg4
ODEwMDgwMDY1OCAoJnNpbXBsZV9vZmZzZXRfbG9ja19jbGFzcyl7Ky4rLn0tDQo+IHsyOjJ9LCBh
dDogbXRyZWVfYWxsb2NfY3ljbGljKzB4NzEvMHhmMCA8Mz5bwqDCoMKgIDIuMzM3MDg5XSBQcmVl
bXB0aW9uIGRpc2FibGVkDQo+IGF0Og0KPiA+IDwzPlvCoMKgwqAgMi4zMzcwOTFdIFs8MDAwMDAw
MDAwMDAwMDAwMD5dIDB4MCA8ND5bwqDCoMKgIDIuMzM3MTA1XSBDUFU6IDEzDQo+ID4gVUlEOiAw
IFBJRDogOTUgQ29tbToga2RldnRtcGZzIE5vdCB0YWludGVkDQo+ID4gNi4xMC4wLXJjNS1uZXh0
LTIwMjQwNjI1LW5leHQtMjAyNDA2MjUtZzBmYzRiZmFiMmNkNCsgIzEgPDQ+Ww0KPiA+IDIuMzM3
MTI2XSBIYXJkd2FyZSBuYW1lOiBBU1VTIFN5c3RlbSBQcm9kdWN0IE5hbWUvUFJJTUUgWjc5MC1Q
IFdJRkksDQo+IEJJT1MgMDgxMiAwMi8yNC8yMDIzIDw0PlvCoMKgwqAgMi4zMzcxNDFdIENhbGwg
VHJhY2U6DQo+ID4gPDQ+W8KgwqDCoCAyLjMzNzE0N13CoCA8VEFTSz4NCj4gPiA8ND5bwqDCoMKg
IDIuMzM3MTUyXcKgIGR1bXBfc3RhY2tfbHZsKzB4YjAvMHhkMCA8ND5bwqDCoMKgIDIuMzM3MTYz
XQ0KPiA+IF9fbWlnaHRfcmVzY2hlZCsweDE5NC8weDJiMCA8ND5bwqDCoMKgIDIuMzM3MTc1XQ0K
PiA+IGttZW1fY2FjaGVfYWxsb2Nfbm9wcm9mKzB4MjBjLzB4MjgwDQo+ID4gPDQ+W8KgwqDCoCAy
LjMzNzE4Nl3CoCA/IG1hc19hbGxvY19ub2RlcysweDE3My8weDIzMCA8ND5bwqDCoMKgIDIuMzM3
MTk3XQ0KPiA+IG1hc19hbGxvY19ub2RlcysweDE3My8weDIzMCA8ND5bwqDCoMKgIDIuMzM3MjA3
XQ0KPiA+IG1hc19hbGxvY19jeWNsaWMrMHgyN2IvMHg1NTAgPDQ+W8KgwqDCoCAyLjMzNzIyMF0N
Cj4gPiBtdHJlZV9hbGxvY19jeWNsaWMrMHg5Mi8weGYwDQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+
IGBgYGBgYGBgYGBgDQo+ID4gRGV0YWlscyBsb2cgY2FuIGJlIGZvdW5kIGluIFszXS4NCj4gPg0K
PiA+IEFmdGVyIGJpc2VjdGluZyB0aGUgdHJlZSwgdGhlIGZvbGxvd2luZyBwYXRjaCBbNF0gc2Vl
bXMgdG8gYmUgdGhlIGZpcnN0ICJiYWQiDQo+ID4gY29tbWl0DQo+ID4NCj4gPiBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgDQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiAgwqDCoMKg
IG1hcGxlX3RyZWU6IHJlbW92ZSBtYXNfZGVzdHJveSgpIGZyb20gbWFzX25vbWVtKCkNCj4gPg0K
PiA+ICDCoMKgwqAgU2VwYXJhdGUgY2FsbCB0byBtYXNfZGVzdHJveSgpIGZyb20gbWFzX25vbWVt
KCkgc28gd2UgY2FuIGNoZWNrDQo+ID4gZm9yIG5vDQo+ID4gIMKgwqDCoCBtZW1vcnkgZXJyb3Jz
IHdpdGhvdXQgZGVzdHJveWluZyB0aGUgY3VycmVudCBtYXBsZSBzdGF0ZSBpbg0KPiA+ICDCoMKg
wqAgbWFzX3N0b3JlX2dmcCgpLsKgIFdlIHRoZW4gYWRkIGNhbGxzIHRvIG1hc19kZXN0cm95KCkg
dG8gY2FsbGVycw0KPiA+IG9mDQo+ID4gIMKgwqDCoCBtYXNfbm9tZW0oKS4NCj4gPg0KPiA+ICDC
oMKgwqAgTGluazoNCj4gPiBodHRwczovL2xrbWwua2VybmVsLm9yZy9yLzIwMjQwNjE4MjA0NzUw
Ljc5NTEyLTYtc2lkaGFydGhhLmt1bWFyQG9yYWNsDQo+ID4gZS5jb20NCj4gPiAgwqDCoMKgIFNp
Z25lZC1vZmYtYnk6IFNpZGhhcnRoYSBLdW1hciBtYWlsdG86c2lkaGFydGhhLmt1bWFyQG9yYWNs
ZS5jb20NCj4gPg0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYA0KPiA+DQo+ID4gV2UgY291bGQgbm90IHJldmVydCB0aGUgcGF0Y2ggYmVj
YXVzZSBvZiBtZXJnZSBjb25mbGljdHMgYnV0IHJlc2V0dGluZyB0bw0KPiB0aGUgcGFyZW50IG9m
IHRoZSBjb21taXQgc2VlbXMgdG8gZml4IHRoZSBpc3N1ZS4NCj4gPg0KPiA+IENvdWxkIHlvdSBw
bGVhc2UgY2hlY2sgd2h5IHRoZSBwYXRjaCBjYXVzZXMgdGhpcyByZWdyZXNzaW9uIGFuZCBwcm92
aWRlIGENCj4gZml4IGlmIG5lY2Vzc2FyeT8NCj4gPg0KPiA+IFRoYW5rIHlvdS4NCj4gPg0KPiA+
IFJlZ2FyZHMNCj4gPg0KPiA+IENoYWl0YW55YQ0KPiA+DQo+ID4gWzFdIGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2xpbnV4LW5leHQvY29tYmluZWQtYWx0Lmh0bWw/DQo+ID4gWzJd
DQo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4
dC9saW51eC1uZXh0LmdpdC9jbw0KPiA+IG1taXQvP2g9bmV4dC0yMDI0MDYyNSBbM10NCj4gPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9saW51eC1uZXh0L25leHQtMjAyNDA2MjUv
YmF0LXJwbHMtNC9iDQo+ID4gb290MC50eHQgWzRdDQo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9y
Zy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbmV4dC9saW51eC1uZXh0LmdpdC9jbw0KPiA+IG1t
aXQvP2lkPTE4NzgyN2QyZGMzNzQ5ZDY2NTQ2Njk2Yjc4NTg0ZWU0YzU0Njg3YjANCg0K
