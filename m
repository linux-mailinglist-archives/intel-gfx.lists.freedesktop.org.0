Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 298709FF137
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Dec 2024 19:31:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBF8210E101;
	Tue, 31 Dec 2024 18:31:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z4JAzvAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486B210E0F9;
 Tue, 31 Dec 2024 18:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735669871; x=1767205871;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=6qYHpw+wU3On+yQv6suBQtKaSclPRA+22L4aqlka0E4=;
 b=Z4JAzvANHkjci1/he4CPC64phByV6uQjUGmW2tWthP3Jy9HW5fvQEd2W
 Sm1QQZ3aRWe3tz2ipSWvCyDDtUTCwHTr6UDpQHgupm0wnhqkUlty8u5Rg
 ekXRURblluk4E7vuxGPJAgS+8ZX1wvBeXkiTE1SE8wHS26/BzO88depUt
 YUvYVW9LIyA/mHQpHeNs3T0MwZ6R+GYcrpBfuX4JfYsBHdBghDf+BzPB5
 hV+T3sOn55P72i0hPLrpBppUhjw3OEc89FozWSSsMnrKUleInE37ZqE+B
 CIOv0F8i59wqGm+f86h84mq2uFGVVHBe7EVerljR5EEeqTe4mIU4DOw+r w==;
X-CSE-ConnectionGUID: YWXsNInvSO2Ev6aCfgdZRA==
X-CSE-MsgGUID: bTguqhpURra4a5qptZOM+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11302"; a="35657024"
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="35657024"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2024 10:30:49 -0800
X-CSE-ConnectionGUID: ucE+q91YRvmkmGhgiRhvwA==
X-CSE-MsgGUID: nqc32J/QSUq6ONz83aSY5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,280,1728975600"; d="scan'208";a="101605936"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Dec 2024 10:30:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 31 Dec 2024 10:30:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 31 Dec 2024 10:30:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 31 Dec 2024 10:30:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nEuF+m+IUNP+gn/9hc0OtjsfcUhJH+v+uTcI/qjJQa7rzJrURUWRmEgRt0wZmhyS/cdEa4wY8FEBgB4drAdKwFWPoUmq18AjcWnkDvyhBGXwsUrt2AHawU9qAK8Lhi+J8L819xeql0c1RMlJkCWKCitw+BiItGyWKCadClLDlp+SKF+6XA96+ywaxmkFA1bXA6PIOwSskqgagkKarjFrSC8hSaGdiBBKnaXX3hdlnhKDaoiKHJkvbUecGIAvvXC6ZDQ35QLykCGJrSl3gB2cldJDzVVLfGfDjMvSzyUKjVMiuFt+q7GBneikwtX4VsA00AjkD64I+7cCRZT8imOZ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LgQYprEXaVqt4dv2bf5AQ+61LHJkOLXzgAaWMM9Th9k=;
 b=Y8Dezls0a8QbqWLlIReqPxCPcnmIBA6InJqaqQD/odazgTHpng8FP5DNpCtta5CeVGf1/1tghrsL4TEYzvDq8mP3y7w5XpBF6n21pbiCuUiNomg+DcZI/VmGtGtMJUQumTv8QNCWuxo/fq89TScJgLoSsduFvf+LROuVvmrTbBJ2S4gmI1tpVetQt4Ruw0iVWnqSKqm2Nx/Uv7p5+MglRIfB7Vtp/sYP04FVnGvaffaGKL8RFZAJieBbZQRxIx+3Lo0wGKuI1Y0tecK/OeEo/2zGCjgIodL8Qx7DNGbOb73G9oQgExVlrcpbwkErdOJUg0SF/9wJdvWn2J52KOqFOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8113.namprd11.prod.outlook.com (2603:10b6:8:127::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Tue, 31 Dec
 2024 18:30:42 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8293.000; Tue, 31 Dec 2024
 18:30:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87pll8nki3.fsf@intel.com>
References: <20241224165408.43778-1-gustavo.sousa@intel.com>
 <87pll8nki3.fsf@intel.com>
Subject: Re: [PATCH v3] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Tue, 31 Dec 2024 15:30:36 -0300
Message-ID: <173566983648.6883.16609818129709969328@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0212.namprd03.prod.outlook.com
 (2603:10b6:303:b9::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8113:EE_
X-MS-Office365-Filtering-Correlation-Id: 2280445f-2232-4aad-6abb-08dd29c93b59
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmxZbEcyZUtJSWcxZFdudXBwdC9ndUptYTRLdng2WEoraWdJcmtBdERhY1ho?=
 =?utf-8?B?QS9KLzdyK1RqZlFBUktYZGN3b3p2Tm1ob0prUngvbFZvMHErN2dkNEtOQ3l2?=
 =?utf-8?B?ODFDVld5MkZ3SG1YYXNodG9PTXNoekVObU93WktLb0p6dlJYMHBOZ0h4cFZo?=
 =?utf-8?B?SnVOaGZXRTNuRjE4a0lHKzFuNUl0blpHa2o1cExlL1hSVjg2SXVpaGtLKzNq?=
 =?utf-8?B?UVUwYldOeE5NQ0MvTnBSU2k1RjZDM1RQWmh4ZmVWbmk3b09ZSXRZNVg5OUxj?=
 =?utf-8?B?anRteXRLSm15Y0ZtM3VRcnN4Nk9TNEJBMTBjYWl5YTQzYmRmNk5wcWNXWGZG?=
 =?utf-8?B?aTQ4TkwvSDE2ZWtTa2JWYkg4UTNya1JSVDlPT3lIbjgwcExQUmI3R2dXdzJF?=
 =?utf-8?B?aElJSnRRQlUrbDNNSkcyV2tISzJtY3V5Nzg4RWROUTdadFZyR2x6alpLcjZ2?=
 =?utf-8?B?SXJPTllxeE4rSDdKSnRmb3FqU1hRTFhHYVR0Vi9oMmY5Z3o3YmVmNFlsRXdR?=
 =?utf-8?B?UzAxUWRUdXF3WFR1OWdGQ0ZZNWt1MnNPamdCWXJjVmZDaTlRMVhmT29MMmtS?=
 =?utf-8?B?WG9ZVVIzbEg5bkpSN0t6VWhJVmhCeGprY3JpemNxcUVLZVdDQWxmNGNPdzYr?=
 =?utf-8?B?MFpFSlZHMGdmMFJYbnMrcktOMjNqWFBzbzNpdmg5OHM4MmdtUCs0Um5XdHpq?=
 =?utf-8?B?VGpPTjJpZUgrQ0F3YVFyclpuT0NaNTNPUGtpTWY4VC9UMXZhdDRHT1d0cHQ1?=
 =?utf-8?B?VnNBRkpZSWsweTBTRDM1VnhrSnVJQkxPQmg1SEZTSHIvSHA3b0ovNytSL0pF?=
 =?utf-8?B?VGdsMlJHUTNTN1c1aEJkcUdFRkN0eHI5M0tZamNwai9iaVRxRW5VZjZXRWZD?=
 =?utf-8?B?TGd3bVYxck9NbFg5eWQrbmxNR0xMeDhDYVdEL25oOVpCMEh2ZDhycEE2Mi9H?=
 =?utf-8?B?Uk0vbXF3b3cyWjZkN081cXpyUWdGMDNHd0tmcmNWeUw5RlpqZGRDTmhkSXp1?=
 =?utf-8?B?elZMQ1Q1cWdRandZdElPR1R2czJITDc0bFV3YkRTbG1QeG1JSG45UEJnRFAz?=
 =?utf-8?B?UnB4Zmp1SjIwUkZ3Nnl4czcveTdSVUJ4Q3pJbE4xaVFRdkFUQ1lmTEZrZGQ3?=
 =?utf-8?B?OVVMU24vdnpDSXBuTzVwdmUxeUNCL2habHpWNjA0a3ZKWGQ5T3p4QXdveC8z?=
 =?utf-8?B?bHZlZFpoY2tIeitFRStmVkxOOUJLeWFpQ3E2YTlsd21RMUFFUGk3ZG1vVE82?=
 =?utf-8?B?eXpsMDdrT01IYzc4bndKRzJRMlA4VWJTMDlLUVoxSjFiZis2VkVFaDlCR0dx?=
 =?utf-8?B?MXkxNHhUQnhzdjFhQm5VRVpmSGdTZWJTcC9KaW85dVBQU0owdFlTQS8zRk04?=
 =?utf-8?B?SG5ReHR3cnF5RzVRc3hRSm5vdG9uVjNWSTkrTTYva0toUVEvVlRRa0hNUHlZ?=
 =?utf-8?B?TlM5T2d3Q1c1bjc4RzBRT05hUmxpaDZUdXJrR25rZUJldUFrMUFRZWRwbkxl?=
 =?utf-8?B?ZS9OcmVwT0ZYZEJxcHd3T2hVTE0wbWpSbTBuQ0Y3TGZBUXBlNGhHMFlva0tO?=
 =?utf-8?B?NjBndWUxN01ZOVV2OWpPeDYzWlkxYXZYYTgxdFRERUNBWFF0NENiczlGUitv?=
 =?utf-8?B?bEF4VFNDaVpEeHhHSmlWZTQyV0RuZEJFaStsT3QydnlCd1lqMHd2MnZvSjFV?=
 =?utf-8?B?dnJZOWxrT0dDWE1kZEtFK2liUHB0REFVYzdLbnVhSjRBUkNxVUJWRVNQNVN5?=
 =?utf-8?B?QTZHZWJYSWt5b0VRajBnL01zdlhZVndoQWxLQXRhbC9MVHQyTTV3bnRPclhq?=
 =?utf-8?B?bjhQcU5kcmRhUDRQdkw5bHdLMnVEcGd1QnFxQ2FMNmdSTGRiNVovc1J6Vm80?=
 =?utf-8?Q?TCsR8Prb9b61X?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUlXNWZIRVhRNThXZW5sM0UrWWQ0UTVmQ0NDY1VmSi95MkxNUEFnRURLYVhX?=
 =?utf-8?B?UEZ4Njd1amVGb1R1WlJ5a2I2UFlCNVZnOEYrUkI2TG4zZUlHTGlURm5wY1Mz?=
 =?utf-8?B?cUNlNk1aZ21rcVFneUs2VmlQOE1rclpBZlFnWXR6N0x3QkdMdXcrT2lVaVNH?=
 =?utf-8?B?MGFhcGIraVk0TGpYbCt2MlAyUkxrRmdjUWVKOEJpUmpOTnZaZTNzZXhoaE5Q?=
 =?utf-8?B?UjJ2M0h4UmdrMXpiRExpcldSV09BaEFDazdEZHpyWEZXeHdWSklSbDhldXRC?=
 =?utf-8?B?Z0pRVmFXNkV3SEM5TWUveEo3Mk9XUWZhbzNoa0loQkxiQlFGVHUvamdEQVV4?=
 =?utf-8?B?Q1I1THZ6T2I2Nm1DL0FRSkZzN1YrRE44NWh2Y3NJK1hQdWp2Q1dNL0ZsbU9W?=
 =?utf-8?B?WURLb1lYTHpBUERjR0xEeWpBR203OVM0dkdnWW9KYU9TRlNxcHZINnZ3RmVt?=
 =?utf-8?B?TE13OTJmcUhLbUgyVmtwSmFOOS81K2E3OUlIUUdwNWZaT0VxbkdVV3F5ZEJh?=
 =?utf-8?B?V2Z1RS9sbGplUmpDbUl1ckV3bWdOVkUzOEt1QWg1d1hsWG02NlNCd1puVFEz?=
 =?utf-8?B?VnJzc2ErWXBXa1JOVzlEcVU4VGJmM0NzSEErSjNKdUhKQlk4RUloUGpnejln?=
 =?utf-8?B?S00zZHArb0ZtZk1xeUoxcDN4ZG9NMi9wQUFrbXlQdXJBNUxIajU2eWdQL1ln?=
 =?utf-8?B?Q1RUbGhpR0ZrcCttenozY0tHMFlKVVMyeThFQTlFdjdxOERvL3Qra012OG9S?=
 =?utf-8?B?RUE2VTRqckdmY3pIK3dBQ1pUT2dKQTh6aHB3cW40NFdJZmg3bVA5ZHczOENT?=
 =?utf-8?B?NUhoNlhObGhDb3Vtdi8rMXhaS01LdHFCUU11ZFI1NTg1QjVaY1lnQThQMnBR?=
 =?utf-8?B?ZGdsWnFNUkNhdHk5S2ozay9PQ2M3eDRIR3ZZTjVRa09WMUN2QkQ4UDN1NWV2?=
 =?utf-8?B?b1ltWXBrZXNZdlg2U3h1RkZtb0hRSGFCZ3lnYXFEYUJFNWt3R3RWYngwRUcy?=
 =?utf-8?B?UUlaQ3pHenkxTWNRUklFZ3U1M2xsdXR1dlJWU0FjaDRrSXFab2xTaVhDeklQ?=
 =?utf-8?B?S3QxTkVPdjJMaVJkbk1OY1JXSGJtckpmWHJJaVMybGFNQ2hFckFxamVNd1JJ?=
 =?utf-8?B?NmdaRWdibyt2cnBWK01QRmNhb1dkZVg4MEI1UDlJenExYzlhb1VWV01LZUsr?=
 =?utf-8?B?WnVMbFVKWU40ZlJ3d1FWUXNkYTNROTRNR1pKOEJWZFVhcWREeGMydEY5RXBF?=
 =?utf-8?B?TEJUR3U3Rzh4dW5OK25pWDBFeVA1dmovd2NVSVpDd2hQTmdQYzlHRkM3cFVW?=
 =?utf-8?B?RWRJZzcvSHNRbkowZmVLQnFmTURwUzUwZTdkcjU5UlNmaWVyaTJoOWo4WUUw?=
 =?utf-8?B?cko3NURudStOVjh4alB5czJTMTdZbm9rVmxZaWNvZXdJVHlxNk5Hditpbkxq?=
 =?utf-8?B?YS9HNERRNTVzMCtSQzJxcmdCenIyQWs1cW8xU21sa0FLendsdHo3eEJSV2Vl?=
 =?utf-8?B?YlIwUDlaRERsTHFRdXdpRVgrRWZwR29Pd3JRZ0t5R1NUYTdKSWVKVHA4Uldj?=
 =?utf-8?B?Y2dCSzdOenVGRXEvYVRwcllVMTdVQnBkSWdSMC8zZ29nelZId3pnV0EzZ3pU?=
 =?utf-8?B?dVVHdVMxNjNaaXZJbVdRaGQwS3QyTStRdHZZY2RUbm5BVUwwcXFIM3ZhYzJh?=
 =?utf-8?B?M3N1MVBMUkhoUDdRbWRNdnlXb1hwMnEwMFhDT2JRS2o2cE42ZDFIbmQxNlY0?=
 =?utf-8?B?VkI1ZXdoQ004UWd1aEg2SGhMN2pWUFJyQkg3K2lwZ09hV3JqUUdScTRObXZm?=
 =?utf-8?B?eUFGeWRITVpBNzBQbGdrZ0s5bGMwRzdZcDE2M0NRZnZYaG1tT21xc0pmWnE3?=
 =?utf-8?B?NkQxQVE4ZHpET2ZHd3ZEeTVqMkdrV2xzVmdoSVdoaHNDUDU0b0hJeGQ5YTVt?=
 =?utf-8?B?MGl5ZFZ3T0d1ZUt3SWpKeldzS1hOYmhnbkdPeTIwZkd5ZTdOaFhSSGVKZDJ0?=
 =?utf-8?B?TE9RTnZCYlExcWtpZGdLSFdWdWNxSnJyRUJhWWxnamE0OWRvZE0yTDJUOU5C?=
 =?utf-8?B?alpaY1FSczg2OU5TYmdBUEFrUEJ0NzNqZis0RWNUc3Q3cTQxdVRKTVNEMTRw?=
 =?utf-8?B?N2V1M0VKSWk3Sm4xSzlFdElIQXlGZzdIc2VYWVkwS0krWGhqdVF3WENDVmN2?=
 =?utf-8?B?Ync9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2280445f-2232-4aad-6abb-08dd29c93b59
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Dec 2024 18:30:41.9938 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xX64xG7GouLuboc5gPCldEHGMsxfa5IUiLR8PwPHzakEL2TJujNYU9btqM/juYRDs1il98v6/YXaAyub/sc3cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8113
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

Quoting Jani Nikula (2024-12-31 08:45:56-03:00)
>On Tue, 24 Dec 2024, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> The CMTG is a timing generator that runs in parallel with transcoders
>> timing generators and can be used as a reference for synchronization.
>>
>> On PTL (display Xe3_LPD), we have observed that we are inheriting from
>> GOP a display configuration with the CMTG enabled. Because our driver
>> doesn't currently implement any CMTG sequences, the CMTG ends up still
>> enabled after our driver takes over.
>>
>> We need to make sure that the CMTG is not enabled if we are not going to
>> use it. For that, let's add a partial implementation in our driver that
>> only cares about disabling the CMTG if it was found enabled during
>> initial hardware readout. In the future, we can also implement sequences
>> for enabling CMTG if that becomes a needed feature.
>>
>> For completeness, we do not only cover Xe3_LPD but also all previous
>> display IPs that provide the CMTG.
>>
>> v2:
>>  - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>>  - Update logic to force disabling of CMTG only for initial commit.
>> v3:
>>  - Add missing changes for v2 that were staged but not committed.
>>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 311 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  38 +++
>>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 ++
>>  drivers/gpu/drm/i915/display/intel_display.c  |  11 +
>>  .../gpu/drm/i915/display/intel_display_core.h |   4 +
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  .../drm/i915/display/intel_display_driver.c   |   5 +
>>  .../drm/i915/display/intel_modeset_setup.c    |   5 +
>>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  11 files changed, 399 insertions(+)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 3dda9f0eda82..7e7414453765 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -231,6 +231,7 @@ i915-y +=3D \
>>          display/intel_bo.o \
>>          display/intel_bw.o \
>>          display/intel_cdclk.o \
>> +        display/intel_cmtg.o \
>>          display/intel_color.o \
>>          display/intel_combo_phy.o \
>>          display/intel_connector.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm=
/i915/display/intel_cmtg.c
>> new file mode 100644
>> index 000000000000..27491497f515
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -0,0 +1,311 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#include <linux/string.h>
>> +#include <linux/string_choices.h>
>> +#include <linux/types.h>
>> +
>> +#include "i915_drv.h"
>> +#include "i915_reg.h"
>> +#include "intel_crtc.h"
>> +#include "intel_de.h"
>> +#include "intel_cmtg.h"
>> +#include "intel_cmtg_regs.h"
>> +#include "intel_display_device.h"
>> +#include "intel_display_types.h"
>> +
>> +/**
>> + * DOC: Common Primary Timing Generator (CMTG)
>> + *
>> + * The CMTG is a timing generator that runs in parallel to transcoders =
timing
>> + * generators (TG) to provide a synchronization mechanism where CMTG ac=
ts as
>> + * primary and transcoders TGs act as secondary to the CMTG. The CMTG o=
utputs
>> + * its TG start and frame sync signals to the transcoders that are conf=
igured
>> + * as secondary, which use those signals to synchronize their own timin=
g with
>> + * the CMTG's.
>> + *
>> + * The CMTG can be used only with eDP or MIPI command mode and supports=
 the
>> + * following use cases:
>> + *
>> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on=
 a
>> + *   dual eDP configuration (with or without PSR/PSR2 enabled).
>> + *
>> + * - Single eDP as secondary: It is also possible to use a single eDP
>> + *   configuration with the transcoder TG as secondary to the CMTG. Tha=
t would
>> + *   allow a flow that would not require a modeset on the existing eDP =
when a
>> + *   new eDP is added for a dual eDP configuration with CMTG.
>> + *
>> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps runn=
ing to
>> + *   maintain frame timings. When exiting DC6v, the transcoder TG then =
is
>> + *   synced back the CMTG.
>> + *
>> + * Currently, the driver does not use the CMTG, but we need to make sur=
e that
>> + * we disable it in case we inherit a display configuration with it ena=
bled.
>> + */
>
>Thanks for writing this, appreciated.
>
>> +
>> +static struct intel_global_state *
>> +intel_cmtg_duplicate_state(struct intel_global_obj *obj)
>> +{
>> +        struct intel_cmtg_state *cmtg_state =3D to_intel_cmtg_state(obj=
->state);
>> +
>> +        cmtg_state =3D kmemdup(cmtg_state, sizeof(*cmtg_state), GFP_KER=
NEL);
>> +        if (!cmtg_state)
>> +                return NULL;
>> +
>> +        return &cmtg_state->base;
>> +}
>> +
>> +static void intel_cmtg_destroy_state(struct intel_global_obj *obj,
>> +                                     struct intel_global_state *state)
>> +{
>> +        kfree(state);
>> +}
>> +
>> +static const struct intel_global_state_funcs intel_cmtg_state_funcs =3D=
 {
>> +        .atomic_duplicate_state =3D intel_cmtg_duplicate_state,
>> +        .atomic_destroy_state =3D intel_cmtg_destroy_state,
>> +};
>> +
>> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 20;
>> +}
>> +
>> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 14;
>> +}
>> +
>> +static bool intel_cmtg_requires_modeset(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) < 20;
>> +}
>> +
>> +static void intel_cmtg_dump_state(struct intel_display *display,
>> +                                  struct intel_cmtg_state *cmtg_state)
>> +{
>> +        if (intel_cmtg_has_cmtg_b(display))
>> +                drm_dbg_kms(display->drm,
>> +                            "CMTG state readout: CMTG A: %s, CMTG B: %s=
, transcoder A secondary: %s, transcoder B secondary: %s\n",
>> +                            str_enabled_disabled(cmtg_state->cmtg_a_ena=
ble),
>> +                            str_enabled_disabled(cmtg_state->cmtg_b_ena=
ble),
>> +                            str_yes_no(cmtg_state->trans_a_secondary),
>> +                            str_yes_no(cmtg_state->trans_b_secondary));
>> +        else
>> +                drm_dbg_kms(display->drm,
>> +                            "CMTG state readout: %s, Transcoder A secon=
dary: %s, Transcoder B secondary: %s\n",
>> +                            str_enabled_disabled(cmtg_state->cmtg_a_ena=
ble),
>> +                            str_yes_no(cmtg_state->trans_a_secondary),
>> +                            str_yes_no(cmtg_state->trans_b_secondary));
>
>Quite a bit of duplication here, with capitalization differences.
>
>Might just use the first one and:
>
>intel_cmtg_has_cmtg_b(display) ? str_enabled_disabled(cmtg_state->cmtg_b_e=
nable) : "N/A"

Okay. Going with this for next version.

>
>
>> +}
>> +
>> +int intel_cmtg_init(struct intel_display *display)
>> +{
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        struct intel_cmtg_state *cmtg_state;
>> +
>> +        cmtg_state =3D kzalloc(sizeof(*cmtg_state), GFP_KERNEL);
>> +        if (!cmtg_state)
>> +                return -ENOMEM;
>> +
>> +        intel_atomic_global_obj_init(i915, &display->cmtg.obj,
>> +                                     &cmtg_state->base,
>> +                                     &intel_cmtg_state_funcs);
>> +
>> +        return 0;
>> +}
>> +
>> +void intel_cmtg_readout_state(struct intel_display *display,
>> +                              struct intel_cmtg_state *cmtg_state)
>
>There are no functions with _readout_state() suffix but much more with
>_readout_hw_state(). I think we should stick to that convention.

Okay.

>
>> +{
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>
>Unnecessary, see below.
>
>> +        u32 val;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>> +        cmtg_state->cmtg_a_enable =3D val & CMTG_ENABLE;
>> +
>> +        if (intel_cmtg_has_cmtg_b(display)) {
>> +                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>> +                cmtg_state->cmtg_b_enable =3D val & CMTG_ENABLE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_A)) {
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915=
, TRANSCODER_A));
>
>Please use s/i915/display/ here.

Oh. I should have checked that _MMIO_TRANS2() uses the display struct.
Thanks.

>
>> +                cmtg_state->trans_a_secondary =3D val & CMTG_SECONDARY_=
MODE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_B)) {
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(i915=
, TRANSCODER_B));
>
>Ditto.
>
>> +                cmtg_state->trans_b_secondary =3D val & CMTG_SECONDARY_=
MODE;
>> +        }
>> +
>> +        intel_cmtg_dump_state(display, cmtg_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_global_obj_state(state,
>> +                                                  &display->cmtg.obj);
>
>Fewer newlines is just fine. 100 char width is okay if it improves
>readability.

Well, the whole declaration and initialization does not fit the 100
char limit. I guess, as a compromise, I could go with the call to
intel_atomic_get_global_obj_state() on its own line, but fitting a
single line.

>
>> +
>> +        if (IS_ERR(obj_state))
>> +                return ERR_CAST(obj_state);
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_old_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_old_global_obj_state(state,
>> +                                                      &display->cmtg.ob=
j);
>> +
>> +        if (!obj_state)
>> +                return NULL;
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static struct intel_cmtg_state *
>> +intel_atomic_get_new_cmtg_state(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_global_state *obj_state =3D
>> +                intel_atomic_get_new_global_obj_state(state,
>> +                                                      &display->cmtg.ob=
j);
>> +
>> +        if (!obj_state)
>> +                return NULL;
>> +
>> +        return to_intel_cmtg_state(obj_state);
>> +}
>> +
>> +static bool intel_cmtg_state_changed(struct intel_cmtg_state *old_cmtg_=
state,
>> +                                     struct intel_cmtg_state *new_cmtg_=
state)
>> +{
>> +        if (!new_cmtg_state)
>> +                return false;
>> +
>> +        return old_cmtg_state->cmtg_a_enable !=3D new_cmtg_state->cmtg_=
a_enable ||
>> +                old_cmtg_state->cmtg_b_enable !=3D new_cmtg_state->cmtg=
_b_enable ||
>> +                old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->=
trans_a_secondary ||
>> +                old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->=
trans_b_secondary;
>> +}
>> +
>> +static int intel_cmtg_check_modeset(struct intel_atomic_state *state,
>> +                                    struct intel_cmtg_state *old_cmtg_s=
tate,
>> +                                    struct intel_cmtg_state *new_cmtg_s=
tate)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        u8 pipe_mask;
>> +
>> +        if (!intel_cmtg_requires_modeset(display))
>> +                return 0;
>> +
>> +        pipe_mask =3D 0;
>> +
>> +        if (old_cmtg_state->trans_a_secondary !=3D new_cmtg_state->tran=
s_a_secondary)
>> +                pipe_mask |=3D BIT(PIPE_A);
>> +
>> +        if (old_cmtg_state->trans_b_secondary !=3D new_cmtg_state->tran=
s_b_secondary)
>> +                pipe_mask |=3D BIT(PIPE_B);
>> +
>> +        if (!pipe_mask)
>> +                return 0;
>> +
>> +        return intel_modeset_pipes_in_mask_early(state, "updating CMTG =
config", pipe_mask);
>> +}
>> +
>> +int intel_cmtg_force_disabled(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return 0;
>> +
>> +        new_cmtg_state =3D intel_atomic_get_cmtg_state(state);
>> +        if (IS_ERR(new_cmtg_state))
>> +                return PTR_ERR(new_cmtg_state);
>> +
>> +        new_cmtg_state->cmtg_a_enable =3D false;
>> +        new_cmtg_state->cmtg_b_enable =3D false;
>> +        new_cmtg_state->trans_a_secondary =3D false;
>> +        new_cmtg_state->trans_b_secondary =3D false;
>
>Blank line before return.

Okay.

>
>> +        return 0;
>> +}
>> +
>> +int intel_cmtg_atomic_check(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct intel_cmtg_state *old_cmtg_state;
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +        int ret;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return 0;
>> +
>> +        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>> +        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>> +        if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
>> +                return 0;
>> +
>> +        ret =3D intel_cmtg_check_modeset(state, old_cmtg_state, new_cmt=
g_state);
>> +        if (ret)
>> +                return ret;
>> +
>> +        return intel_atomic_serialize_global_state(&new_cmtg_state->bas=
e);
>> +}
>> +
>> +/*
>> + * Access to CMTG registers require the PHY PLL that provides its clock=
 to be
>> + * running (which is configured via CMTG_CLK_SEL). As such, this functi=
on needs
>> + * to be called before intel_commit_modeset_disables() to ensure that t=
he PHY
>> + * PLL is still enabled when doing this.
>> + */
>> +void intel_cmtg_disable(struct intel_atomic_state *state)
>> +{
>> +        struct intel_display *display =3D to_intel_display(state);
>> +        struct drm_i915_private *i915 =3D to_i915(display->drm);
>> +        struct intel_cmtg_state *old_cmtg_state;
>> +        struct intel_cmtg_state *new_cmtg_state;
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        old_cmtg_state =3D intel_atomic_get_old_cmtg_state(state);
>> +        new_cmtg_state =3D intel_atomic_get_new_cmtg_state(state);
>> +        if (!intel_cmtg_state_changed(old_cmtg_state, new_cmtg_state))
>> +                return;
>> +
>> +        drm_info(display->drm, "Disabling CMTG\n");
>> +
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_A), =
CMTG_SECONDARY_MODE, 0);
>> +        intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(i915, TRANSCODER_B), =
CMTG_SECONDARY_MODE, 0);
>> +
>> +        intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0);
>> +
>> +        if (intel_cmtg_has_cmtg_b(display))
>> +                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0)=
;
>> +
>> +        if (intel_cmtg_has_clock_sel(display)) {
>> +                u32 clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
>> +                u32 clk_sel_set =3D CMTG_CLK_SEL_A_DISABLED;
>> +
>> +                if (intel_cmtg_has_cmtg_b(display)) {
>> +                        clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>> +                        clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>> +                }
>> +
>> +                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_se=
l_set);
>> +        }
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm=
/i915/display/intel_cmtg.h
>> new file mode 100644
>> index 000000000000..4dfd31906d81
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> @@ -0,0 +1,38 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_H__
>> +#define __INTEL_CMTG_H__
>> +
>> +#include "intel_display_core.h"
>> +#include "intel_global_state.h"
>> +
>> +/*
>> + * We describe here only the minimum state required to allow us to prop=
erly
>> + * disable the CMTG if necessary.
>> + */
>> +struct intel_cmtg_state {
>> +        struct intel_global_state base;
>> +
>> +        bool cmtg_a_enable;
>> +        /*
>> +         * Xe3_LPD adds a second CMTG that can be used for dual eDP asy=
nc mode.
>> +         */
>> +        bool cmtg_b_enable;
>> +        bool trans_a_secondary;
>> +        bool trans_b_secondary;
>> +};
>> +
>> +#define to_intel_cmtg_state(global_state) \
>> +        container_of_const((global_state), struct intel_cmtg_state, bas=
e)
>> +
>> +int intel_cmtg_init(struct intel_display *display);
>> +void intel_cmtg_readout_state(struct intel_display *display,
>> +                              struct intel_cmtg_state *cmtg_state);
>> +int intel_cmtg_force_disabled(struct intel_atomic_state *state);
>> +int intel_cmtg_atomic_check(struct intel_atomic_state *state);
>> +void intel_cmtg_disable(struct intel_atomic_state *state);
>
>I understand you're following patterns from elsewhere in the driver. But

Correct.

>I've always wondered why we use a mixture of atomic state, global state,
>and the specific (e.g. struct intel_cmtg_state) here. Makes no sense.
>
>I believe the specific global state structs should all be internal to
>the implementation in the .c file, opaque outside, with accessor
>functions. The to_intel_cmtg_state() should be a proper function
>(although the constness handling may require a _Generic wrapper).

Yeah. I agree that the specific state bits should be private to the
implementation. Even the type "struct intel_cmtg_state" could be private
and then we would have the exposed interface dealing with only "struct
intel_global_state" or "struct intel_atomic_state" pointers.

The only function that is currently asking for a struct intel_cmtg_state
pointer is intel_cmtg_readout_state(), but that one can be easily
changed to receive a pointer to struct intel_global_state instead (or
even converted to be a function specific to display->cmtg.obj.state,
dropping the state argument).

With that, there would be no need to expose the struct intel_cmtg_state
type anymore and it can be made entirely private to intel_cmtg.c.

Let me know what you think.

>
>I actually have had patches to do this for all the global state stuff,
>but they've conflicted and gone stale. It's hard when basically anyone
>can just poke at the state when this shouldn't really be the case.

We could maybe start with CMTG state and progressively converting the
other guys?

(Although, after reading the entire review, if we decide to deal with
the CMTG only as part of the sanitization, I guess implementing the
whole global state "protocol" for the CMTG wouldn't make much sense
anymore, right?).

>
>
>> +
>> +#endif /* __INTEL_CMTG_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gp=
u/drm/i915/display/intel_cmtg_regs.h
>> new file mode 100644
>> index 000000000000..082f96cad284
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2024 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_REGS_H__
>> +#define __INTEL_CMTG_REGS_H__
>> +
>> +#include "i915_reg_defs.h"
>> +
>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_A_MASK, 0)
>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_B_MASK, 0)
>> +
>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>
>Could make those underscore prefixed, with a parametrized
>TRANS_CMTG_CTL(idx).

I had thought about that, but then decided to go with two separate
defines.

The main reason was because of the fact that the second instance was
added to support the async dual eDP case and not necessarily to be a
common "per pipe" resource like with other pipe/transcoder components.

>
>> +#define  CMTG_ENABLE                        REG_BIT(31)
>> +
>> +#endif /* __INTEL_CMTG_REGS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/=
drm/i915/display/intel_display.c
>> index 4271da219b41..098985ad7ad4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -62,6 +62,7 @@
>>  #include "intel_bw.h"
>>  #include "intel_cdclk.h"
>>  #include "intel_clock_gating.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crt.h"
>>  #include "intel_crtc.h"
>> @@ -6828,6 +6829,10 @@ int intel_atomic_check(struct drm_device *dev,
>>          if (ret)
>>                  goto fail;
>> =20
>> +        ret =3D intel_cmtg_atomic_check(state);
>> +        if (ret)
>> +                goto fail;
>> +
>>          for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i=
) {
>>                  if (!intel_crtc_needs_modeset(new_crtc_state))
>>                          continue;
>> @@ -7757,6 +7762,8 @@ static void intel_atomic_commit_tail(struct intel_=
atomic_state *state)
>>                          intel_modeset_get_crtc_power_domains(new_crtc_s=
tate, &put_domains[crtc->pipe]);
>>          }
>> =20
>> +        intel_cmtg_disable(state);
>> +
>>          intel_commit_modeset_disables(state);
>> =20
>>          intel_dp_tunnel_atomic_alloc_bw(state);
>> @@ -8582,6 +8589,10 @@ int intel_initial_commit(struct drm_device *dev)
>>                  }
>>          }
>> =20
>> +        ret =3D intel_cmtg_force_disabled(to_intel_atomic_state(state))=
;
>> +        if (ret)
>> +                goto out;
>> +
>
>I think the usual way is to do foo_sanitize_state() at
>intel_modeset_setup_hw_state().

Hm... I see. In this case:

- For Xe2_LPD and newer, we can simply disable the CMTG as part of the
  sanitization;
- For pre-Xe2_LPD displays, which would require a modeset when disabling
  the CMTG, additionally force the CRTC to be disabled.

Right?

In this case, I guess implementing the whole "global state" protocol for
the CMTG wouldn't make much sense if we are not going to handle the
disabling as part of the initial commit. We could simply store the state
in a "vanilla" struct (and it would be good if such struct lived only
during the readout+sanitization time).

>
>The above is incredibly specific to what intel_initial_commit()
>does. There's nothing like that, it's a nice pure high level function
>currently.
>
>>          ret =3D drm_atomic_commit(state);
>> =20
>>  out:
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers=
/gpu/drm/i915/display/intel_display_core.h
>> index 554870d2494b..d0b039114e2d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -354,6 +354,10 @@ struct intel_display {
>>                  unsigned int skl_preferred_vco_freq;
>>          } cdclk;
>> =20
>> +        struct {
>> +                struct intel_global_obj obj;
>> +        } cmtg;
>> +
>>          struct {
>>                  struct drm_property_blob *glk_linear_degamma_lut;
>>          } color;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 9a333d9e6601..a126247eb6b8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -145,6 +145,7 @@ struct intel_display_platforms {
>>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D 11=
 && HAS_DSC(__display))
>>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has=
_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->ha=
s_cdclk_squash)
>> +#define HAS_CMTG(__display)                (!(__display)->platform.dg2 =
&& DISPLAY_VER(__display) >=3D 13)
>>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && =
IS_DISPLAY_VER(__display, 7, 13))
>>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->plat=
form.rocketlake || (__display)->platform.alderlake_s)
>>  #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_I=
NFO(__display)->has_dbuf_overlap_detection)
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drive=
rs/gpu/drm/i915/display/intel_display_driver.c
>> index 497b4a1f045f..3e1483814e8d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -25,6 +25,7 @@
>>  #include "intel_bios.h"
>>  #include "intel_bw.h"
>>  #include "intel_cdclk.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crtc.h"
>>  #include "intel_display_debugfs.h"
>> @@ -269,6 +270,10 @@ int intel_display_driver_probe_noirq(struct intel_d=
isplay *display)
>>          if (ret)
>>                  goto cleanup_vga_client_pw_domain_dmc;
>> =20
>> +        ret =3D intel_cmtg_init(display);
>> +        if (ret)
>> +                goto cleanup_vga_client_pw_domain_dmc;
>> +
>>          intel_init_quirks(display);
>> =20
>>          intel_fbc_init(display);
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/driver=
s/gpu/drm/i915/display/intel_modeset_setup.c
>> index 9db30db428f7..737a43916ac5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -15,6 +15,7 @@
>>  #include "i9xx_wm.h"
>>  #include "intel_atomic.h"
>>  #include "intel_bw.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crtc.h"
>>  #include "intel_crtc_state_dump.h"
>> @@ -702,6 +703,8 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>>          struct intel_display *display =3D &i915->display;
>>          struct intel_cdclk_state *cdclk_state =3D
>>                  to_intel_cdclk_state(i915->display.cdclk.obj.state);
>> +        struct intel_cmtg_state *cmtg_state =3D
>> +                to_intel_cmtg_state(display->cmtg.obj.state);
>>          struct intel_dbuf_state *dbuf_state =3D
>>                  to_intel_dbuf_state(i915->display.dbuf.obj.state);
>>          struct intel_pmdemand_state *pmdemand_state =3D
>> @@ -906,6 +909,8 @@ static void intel_modeset_readout_hw_state(struct dr=
m_i915_private *i915)
>>          }
>> =20
>>          intel_pmdemand_init_pmdemand_params(i915, pmdemand_state);
>> +
>> +        intel_cmtg_readout_state(display, cmtg_state);
>>  }
>> =20
>>  static void
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 765e6c0528fb..b34bccfb1ccc 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>>  #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_pri=
v, tran, _TRANS_DDI_FUNC_CTL2_A)
>>  #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>> +#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYN=
C_MODE_MASTER_SELECT_MASK, (x))
>> =20
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 5c97ad6ed738..cd0e25fce14b 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -199,6 +199,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>          i915-display/intel_bios.o \
>>          i915-display/intel_bw.o \
>>          i915-display/intel_cdclk.o \
>> +        i915-display/intel_cmtg.o \
>>          i915-display/intel_color.o \
>>          i915-display/intel_combo_phy.o \
>>          i915-display/intel_connector.o \
>
>--=20
>Jani Nikula, Intel
