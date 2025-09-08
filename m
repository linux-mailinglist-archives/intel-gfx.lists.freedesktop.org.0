Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5487B48DD7
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 14:43:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEA3A10E507;
	Mon,  8 Sep 2025 12:43:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T5jp5skM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B4710E507
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 12:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757335414; x=1788871414;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:date:message-id:mime-version;
 bh=RPw3x/CsGZ+uCwjgfGQXrod5SkL6Pk62CXCzu1INeU0=;
 b=T5jp5skMcBHy9Mf5ephOQGgK1qEsy9WKcIkCE5vsUovsIvG8yjC/KOBg
 CxDmuCFLx2N1fm1g9oi7Upeg9U6exiKeObubjf/2qTesfQDuFdJ+Fvz+m
 o4LZRESdifWlAHkbgwsbemGLmeFTxKEk4DUn9doJysf3LOA2Ez1lkVMfQ
 P6YAdIaZKBzx0ZZ8S3MB/dqn3ouWQt7e0Va5TRZqESVkvp74yBA7ga8hQ
 3qPEOnY4as23UWgGFZU2pnANHFQD1kdH2V4rZWEmcmT8yPqxdeBviy+11
 uQVY6QQQbQKISkxtzPlAzanvb3/DE0EAvsA1Fz6M/Rw20IEt0CTQk4ayx A==;
X-CSE-ConnectionGUID: Y+9K2eUxRpOw+1c7e/mgAA==
X-CSE-MsgGUID: daQZM/CDQGyIF+/IjQBlZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11547"; a="59736879"
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="59736879"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:43:32 -0700
X-CSE-ConnectionGUID: RTNiLCbmQSiFrxFGQVnxDg==
X-CSE-MsgGUID: BupUYSk2RmG9aMv0YwOtOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="203750641"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 05:43:34 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:43:33 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 05:43:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.46) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 05:43:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WaBFrn1k1oSkYj/Cm0T3LYKbUppaKk+QstyL0G4an7NBvG2qzKCQ45KrMtfVnVWqwcu20rSq0SZCIA6r31Ceg/ltID/ltUr1GxFTjEe/nLqv1WIhArJePu/EE3GmvDeUz5/f74OwqNkquwQ38rwLqf2FbNCsmev5xK2XevpCl4b6yjMcprP6TZ13XK/DXoApkXdX7/EKqRYZDYOS/7/i4pMk2JD/WLTYMlCMiJQF+RLI4Gk2fylhPqOT5dcHem7bUpDO0Lru2f5nIS/j/EV0zalsW5yzYdrk7Ht5i8JRfPi6n3wHxbU+2SuQc7k7jZFJ4sV+4ju/0PEKeyLOtBiZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z9+SaZPMWh9idz/sIRogTZ5iBAWlFercWDktGTBb+PI=;
 b=D/B4RkDvQWqTv+HrKggHfkXbYL71nXYB5v/q+3CGp/fCKgN2wrptOMCGW8cRzAWg9PQGTMiIzHth4pC+UHHn2rq/BRXKTxccoecaZNCA9Iqt5zlwd90SIoU3tJ2sYdB5T6ofAHP0hHVZNtF5BTAWv54Scinl+NMJv8RnOeOITO4tiFni8k+gu+Lq3qTI4iNRpWdH+OKTOAqShiaDahTW/mKHPJzunQ8QRG+lEL3SIACtvSiFqh/+bD+BQK6zHYfFBHEKoVoDiNCyCwG7IH98ID3lNiJT5rneWPqKrp5sDvhW5ScDkxtxRx7wjnEOH6i+odG6ySz0lNTCcskLdN+nXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ5PPF1A7C623DA.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::816) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 12:43:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 12:43:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250908073734.1180687-5-luciano.coelho@intel.com>
References: <20250908073734.1180687-1-luciano.coelho@intel.com>
 <20250908073734.1180687-5-luciano.coelho@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/wm: convert x/y-tiling bools to an enum
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Luca Coelho <luciano.coelho@intel.com>, <intel-gfx@lists.freedesktop.org>
Date: Mon, 8 Sep 2025 09:43:24 -0300
Message-ID: <175733540458.1838.2290402876913223031@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0196.namprd05.prod.outlook.com
 (2603:10b6:a03:330::21) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ5PPF1A7C623DA:EE_
X-MS-Office365-Filtering-Correlation-Id: e5dc0f57-9f6c-4282-4087-08ddeed54f5a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dlhGTSt1WXZ5dU5BU0UyUW5IUzdtbEc3YlpWYitTS2JVTTVFRERFa0U0R1Vs?=
 =?utf-8?B?ajg5clAyUUFBNk1vUUpZQnlCWWNtSDk0WEo1MFJOVWVTVnlLd0pMSnpCNllz?=
 =?utf-8?B?YnZKYlFsZ2d0L2RiQWFNMEljOHZ2cDdwNjhzWVlWVVBTdnJOTTh6Mys0K1l0?=
 =?utf-8?B?WEd5QThSU3FLTWM5TnlsR3NoaVNDb3AxRTNnYTRCc2g1dGR1MDZyQUhjUjV3?=
 =?utf-8?B?VTBubmIyUTVpQ2h5aS9Ec2pYbk80cjVSc2U2bXZSVmZOcnp2ZUg4aGYvT2xz?=
 =?utf-8?B?TVkrdjRXcU9KZEFiOVEvWUJTRWdzcG9IbGlKV2VlckpxcDlnNTZJelZnN01I?=
 =?utf-8?B?RnZjRnVsbmlHVjVud3FXRC81ZU9PeXB0T3RwZDQ5V05XOTlSQU42NlpZa3Ro?=
 =?utf-8?B?cGJ4NitaSnZ4aWpReFQwV3I4NVhZWWlPcVFBNnYySXcvM0hPeENwNjcwaUV3?=
 =?utf-8?B?Z1ZmcmhhQnpQRFV3MkEzdkFINmJsNzhqditjNWFnY3NqaDRvTmp4a21HMlJJ?=
 =?utf-8?B?Q004WjA1enl1ZkVvRzNzcTRSZDVGOFlJVzU5MDA5cHgvbFBtQ3FCa2YzSkNl?=
 =?utf-8?B?bTF1OUVTOHB4ak9HTmR1YVRoTTlyVWJQTnpqMVZDNjNpeVZ5TnAwMEFOTW8w?=
 =?utf-8?B?MHpFdGpyMXptNmk0alQ4UjlLMjByR1MyYVRuNUUySmxKZ1V4N0MyaEN4cGdp?=
 =?utf-8?B?Y0Vzbkt6TjdZUEhtMlJEcDJsenVySnNsck5QTlpENWUya2hoVGZYYTBrT2lq?=
 =?utf-8?B?MFJMcjFqbVI5eXJQKyswVmlnQUdzSFhHVkJtL21mYWJudEExOW91c2NsaDBG?=
 =?utf-8?B?eWROSG1QUTZWOTBVRll2OW5wRmNuc1hLazI4SGlEQklRdHorYTF2MXRuenUv?=
 =?utf-8?B?UUEyc2xTSzhydWVnc3pWMHVXREIwbW1Ka0dNUHJ1UUdXT3paSVJJSUUwKzZQ?=
 =?utf-8?B?Nks2L0NRTTRLMlJlSDZyUENaaXV6QU1RNDV4bmpkVFM1ZER6a1BiT0hXRks2?=
 =?utf-8?B?SlJGT0FxRzljVktBRE5TN1NBZ3FFazdMVE9GelZHT2IxNHljaUVKMWV1SG51?=
 =?utf-8?B?RG1oUGZCNDM3SzZmWC9Ha1d2bkJjVSs4VU9ZY1dxZzVodVJQRy83NTJSQUhP?=
 =?utf-8?B?RXBqTUU0TXU1Y2FMREhVVlIzWmE2WkUrbWMwM3JveGtaeVh1U0pQQ3NHcCs2?=
 =?utf-8?B?Mk9yNWdta2t1M3liejRVcDFGekl6QTUwa01sYkhDWGhOemNJbTM0cmJ0TXFB?=
 =?utf-8?B?MVJhbnBVeGhieTRZYzRuTW02QjdOdE02MlJ6a0ZoK215akZzT2VyZStKWnM2?=
 =?utf-8?B?ZTVoMHBjbEY0UTRtcE1jRk1kVSsxenc1Unl2MGs1OCtmZFBLSzJqQVR6SUVq?=
 =?utf-8?B?d3NOd2ZINm0vM092V0RGTDRhaUpGOXVFUUg0bUIzODdxRGdxdy9NbmNlL2tG?=
 =?utf-8?B?bEp4eXdlc28wd0hNSldFWTVUdFlPaXhKbGVuL3lHNDhuVkVxbzltNEtocHVu?=
 =?utf-8?B?WFRqWEZvWFRiM3Z0aVNGS1dsbGtjYWlnbTg2eitGbWJIRG1qaWM0Z2RNYjQw?=
 =?utf-8?B?cjc2RE1FNkpEUFEvUkVzWEsrTGFNZUNHMWdVd1ErNllRM3AwVG5qcGE1TzFK?=
 =?utf-8?B?V05JZnlyQVJGTnVJRkRaK0p5NTlUZjlLallkdE5OM3ZoYW5TL3lCaGhBZFdR?=
 =?utf-8?B?OXZGc2c0M2Z4S0RZRXhmRHFYRFBsaVJZL2VlOFFuQjhqSTRVUW9aWlBjTGVK?=
 =?utf-8?B?RkNmcUMrNTRLY0hnWHZINjlPc0ErN2U0Um90QmZIc1VGSjYwTzFDdzJMZVVr?=
 =?utf-8?B?UEdySmlnOGExVDJnT1U1NXNxUU5Ja2VhSHJTdkoxMjUvcFRUdDh0MXZLT1p3?=
 =?utf-8?B?bk15dkhVemVIZXNrZXU5enBET3lPRmdGRDVKVmwyOWlxVFJNNWxJNmdrczhz?=
 =?utf-8?Q?MOXwwK986vQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1plL2VsYWloSUhGcHl4emRZSHBHNzBvYStubE8rMVJLc3kzYytXR1lHWWVD?=
 =?utf-8?B?VG9Ob01HQnpuSHFpS1Y2UDg2aUdBY0Nvc2YyK1pVdklySXJQTE44M0w2TEw2?=
 =?utf-8?B?QjRTSGZpWVREa21CeHRPZk54TkhsMjVNSDlwMnFOQXNtdmRaQmNTOERSVys4?=
 =?utf-8?B?UTI4Z3dBOHNTZnhjUmkrNW04anp1Nisvc1ozWE1pelJnNVluQUFnaHJUZWRx?=
 =?utf-8?B?Wml3TzRDdERybmdBeVBIaDk1QzcvdVV5UURJdk9kekNqZDQ5RVZZNFVxR2pM?=
 =?utf-8?B?OG5YV3VyZVRWTC9QdEVKSWd3ajVDazNuSDBySUNzRXVtc0tUbnZwTXdUcDVm?=
 =?utf-8?B?TmdFOUVSdG9lYmtCc3RDbzNQd1A4TEo3OGtqaTJCdFY2NFdlbHZjc3NZVUEz?=
 =?utf-8?B?QXJUeGFsaC9sUkt0V2ptejQxR2tsN09FSmlxdEwyMk1oaUNmc3ZMRVR1WHhm?=
 =?utf-8?B?cVB4MjVxT1BySExVdUFxQ2Z2TDdjejdzTEFXL25EdHlBNE54TGhuaFlsNnNx?=
 =?utf-8?B?NmhUcjE2ZGhtcktkNDR5YjNSa0tnSHVST25RcVBvVzZqREYwNGk5ZDB0VW8v?=
 =?utf-8?B?Vy8rQzh0Vm4yVzh6VEZQWjhUMEhKRkdOZ1hyeXhqemptOERKckk1ckJiWDI1?=
 =?utf-8?B?NXVkQSs3c0VTWk9PYlBuT0twVjNBQUFIMHBGbEh5VUwxVis4Umhnc2dpY0p0?=
 =?utf-8?B?cUo4cXVTekNGRDljSXRBQVFJTzJtc1BYZ1FReUZWSVRiNHJ4SFZYNTVZSW9B?=
 =?utf-8?B?NFBuN0hJNjRzcVp3TC9kamowbEROZ2JPcGJqTWVBTS9iTGtSL1ZWM1I0aHdo?=
 =?utf-8?B?VzIyY1dIZVpNaVoyVVk3V0YxVSs2NVppS0NScStRNGJqTG1wVnJaN2p4bDhr?=
 =?utf-8?B?am9LQVZoaWwxd1AyajBJMWpjSjBTTDR1bVlTZHd0cHJubi8yWkRMWTJEZjBF?=
 =?utf-8?B?Sm1wRVNLTXc1QThsM28wSW5URHR6TFdka2cyQVFNZmZEd0ZQRkJrbjJQWnB0?=
 =?utf-8?B?WXRqNzRiVDU5ajUrTEtwZWRKNHYxb0NMemlZd25vMS9hZmE3VmRwa09rU25s?=
 =?utf-8?B?WEI4QmVrZXpRWFhzT09EdXBkbGpvUFpPOTRucE94MGJGMU5mcVhHeDZ4ZTdo?=
 =?utf-8?B?NzV4U3FBWS91UzBFeVhYQjY0eHNDVTl2NDlCUk42RTd1eE9YdjI0U1F3SDFM?=
 =?utf-8?B?azRvZ2cveDBRTndKcldybVFPWjZ2cUptRTE3b3hHaGJKZk9TVy9DSmQwdzNQ?=
 =?utf-8?B?Y3o0b3JYVmpRRjUvWCtzWndLNHdjam43L3JudWpUWU56Q29IeVNiTmVYMkMy?=
 =?utf-8?B?M0xsQUwxRzVBMXZBeFh3SWJnWkNtOUpTQXM2MmxuK0NmdStkcjZuSnBLUWd0?=
 =?utf-8?B?R3MxcTB1akRJSjg2cFlpNHhaQit6dkpwRmVscWlUM05FY21NZWpKVnh4b3J2?=
 =?utf-8?B?ekcxZlB2by93WW5FelFycmpDSEhWODdiaHVURmF1bkdoQWRKR2ZKclMzK2RL?=
 =?utf-8?B?S1ZIREhqT0R6T1l2WE1hUDQwQkU4NGtoU2hvT2pMeU1qaVk3eXY5a1FzcjBR?=
 =?utf-8?B?M3ZwbHF0NEc0aWJqaTRLckxaVFd3dXdaK0lZM012dTFhQnp2TVFlWU40YUl3?=
 =?utf-8?B?LzhCRlB3NmVQTFhrN00vNmlXUnR6eWlyKzhhMVZzaWM1UnhhMGJJaG15eDV6?=
 =?utf-8?B?ckVwL0JFclJXN2kyU01KazhKdlB1bjVmazNnckNPN0oxcW5OeklMM0I5c3Fa?=
 =?utf-8?B?WFdCVndpaU8rRHZ6YzdFVTlZbW5aQ29vaUJvYjJyMTRudUNUSmNsZXYzcXl6?=
 =?utf-8?B?aHRXZGpXMG1FRWFqVXFSMkVHV0plREtIZHpQT3Bhb3lpQThHeHNnN3gySCsv?=
 =?utf-8?B?aWYzK2FQdGNKczZnMklYSk1GVWtwUGhsY2g5VEpCbVNsUkNWVkdFL0FKb2xp?=
 =?utf-8?B?Y0s4b2wvcU5tSElIOEtuL3FHT2lLTFZrbmRTTUkyTHNxOEV6MmVuY0xJTmFo?=
 =?utf-8?B?YmdoMHFnU3NzSjg0aU1PeFl6am5sTnk4QTFVQ01QN1ZZaVVXd1g3bUVXTWZi?=
 =?utf-8?B?NXpodzRRUlN4REVDZktWbGgrSW1mVnhKcmg1eGRRZE5UcG1JWE5hZVdHek5F?=
 =?utf-8?B?UG80V2VuWmVkeTQ3b3dBMlF0S0J6aW9FYk83bzBSTGkrUmc3L3RaKzE2TC94?=
 =?utf-8?B?Wnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5dc0f57-9f6c-4282-4087-08ddeed54f5a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 12:43:28.6794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HJjKV2FAHf6bGUWobhQkWex6xkt4t0BsLeoQ2YEfzKxrUzERGc+jJIRjIf6q5z148Bijo7U3zrRD8lizJWr9/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF1A7C623DA
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

Quoting Luca Coelho (2025-09-08 04:35:33-03:00)
>There are currently two booleans to define three tiling modes, which
>is bad practice because it allows representing an invalid mode.  In
>order to simplify this, convert these two booleans into one
>enumeration with three possible tiling modes.
>
>Additionally, introduce the concept of Y "family" of tiling, which
>groups Y, Yf and 4 tiling, since they're effectively treated in the
>same way in the watermark calculations.  Describe the grouping in the
>enumeration definition.
>
>Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>---
> drivers/gpu/drm/i915/display/skl_watermark.c | 35 ++++++++++++++------
> 1 file changed, 24 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/dr=
m/i915/display/skl_watermark.c
>index 0ce3420a919e..dd4bed02c3c0 100644
>--- a/drivers/gpu/drm/i915/display/skl_watermark.c
>+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>@@ -53,9 +53,16 @@ struct intel_dbuf_state {
> #define intel_atomic_get_new_dbuf_state(state) \
>         to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, =
&to_intel_display(state)->dbuf.obj))
>=20
>+/* Tiling mode groups relevant to WM calculations */
>+enum wm_tiling_mode {
>+        WM_TILING_LINEAR,
>+        WM_TILING_X_TILED,        /* mostly like linear */
>+        WM_TILING_Y_FAMILY,        /* includes Y, Yf and 4 tiling */
>+};
>+
> /* Stores plane specific WM parameters */
> struct skl_wm_params {
>-        bool x_tiled, y_tiled;
>+        enum wm_tiling_mode tiling;
>         bool rc_surface;
>         bool is_planar;
>         u32 width;
>@@ -618,7 +625,8 @@ static unsigned int skl_wm_latency(struct intel_displa=
y *display, int level,
>              display->platform.cometlake) && skl_watermark_ipc_enabled(di=
splay))
>                 latency +=3D 4;
>=20
>-        if (skl_needs_memory_bw_wa(display) && wp && wp->x_tiled)
>+        if (skl_needs_memory_bw_wa(display) &&
>+            wp && wp->tiling =3D=3D WM_TILING_X_TILED)
>                 latency +=3D 15;
>=20
>         return latency;
>@@ -1674,9 +1682,14 @@ skl_compute_wm_params(const struct intel_crtc_state=
 *crtc_state,
>                 return -EINVAL;
>         }
>=20
>-        wp->x_tiled =3D modifier =3D=3D I915_FORMAT_MOD_X_TILED;
>-        wp->y_tiled =3D modifier !=3D I915_FORMAT_MOD_X_TILED &&
>-                intel_fb_is_tiled_modifier(modifier);
>+        if (modifier =3D=3D I915_FORMAT_MOD_X_TILED)
>+                wp->tiling =3D WM_TILING_X_TILED;
>+        else if (modifier !=3D I915_FORMAT_MOD_X_TILED &&
>+                 intel_fb_is_tiled_modifier(modifier))
>+                wp->tiling =3D WM_TILING_Y_FAMILY;
>+        else
>+                wp->tiling =3D WM_TILING_LINEAR;
>+

Hm...  I feel like x_tiled and y_tiled, just like other members of
struct skl_wm_params, are more about represeting *properties* of the
framebuffer/plane that are relevant to the algorithm rather than the
tiling mode itself.  Invalid combinations of values would reflect a
problem outside of the watermark calculation.  So, I'm not sure we
really need an enumeration here.  If, in the future, we end up needing
to know a tiling-related property that could be common to different
tiling modes, the enumeration would not work for us.

On the other hand, we do reduce the number of members in struct
skl_wm_params.

So, I have mixed feelings about this change.

>         wp->rc_surface =3D intel_fb_is_ccs_modifier(modifier);
>         wp->is_planar =3D intel_format_info_is_yuv_semiplanar(format, mod=
ifier);
>=20
>@@ -1716,7 +1729,7 @@ skl_compute_wm_params(const struct intel_crtc_state =
*crtc_state,
>                 wp->y_min_scanlines *=3D 2;
>=20
>         wp->plane_bytes_per_line =3D wp->width * wp->cpp;
>-        if (wp->y_tiled) {
>+        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>                 interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line *
>                                            wp->y_min_scanlines,
>                                            wp->dbuf_block_size);
>@@ -1732,7 +1745,7 @@ skl_compute_wm_params(const struct intel_crtc_state =
*crtc_state,
>                 interm_pbpl =3D DIV_ROUND_UP(wp->plane_bytes_per_line,
>                                            wp->dbuf_block_size);
>=20
>-                if (!wp->x_tiled || DISPLAY_VER(display) >=3D 10)
>+                if (wp->tiling !=3D WM_TILING_X_TILED || DISPLAY_VER(disp=
lay) >=3D 10)
>                         interm_pbpl++;
>=20
>                 wp->plane_blocks_per_line =3D u32_to_fixed16(interm_pbpl)=
;
>@@ -1820,7 +1833,7 @@ static void skl_compute_plane_wm(const struct intel_=
crtc_state *crtc_state,
>                                  latency,
>                                  wp->plane_blocks_per_line);
>=20
>-        if (wp->y_tiled) {
>+        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>                 selected_result =3D max_fixed16(method2, wp->y_tile_minim=
um);
>         } else {
>                 if ((wp->cpp * crtc_state->hw.pipe_mode.crtc_htotal /
>@@ -1870,7 +1883,7 @@ static void skl_compute_plane_wm(const struct intel_=
crtc_state *crtc_state,
>=20
>                 /* Display WA #1126: skl,bxt,kbl */
>                 if (level >=3D 1 && level <=3D 7) {
>-                        if (wp->y_tiled) {
>+                        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>                                 blocks +=3D fixed16_to_u32_round_up(wp->y=
_tile_minimum);
>                                 lines +=3D wp->y_min_scanlines;
>                         } else {
>@@ -1889,7 +1902,7 @@ static void skl_compute_plane_wm(const struct intel_=
crtc_state *crtc_state,
>         }
>=20
>         if (DISPLAY_VER(display) >=3D 11) {
>-                if (wp->y_tiled) {
>+                if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>                         int extra_lines;
>=20
>                         if (lines % wp->y_min_scanlines =3D=3D 0)
>@@ -2015,7 +2028,7 @@ static void skl_compute_transition_wm(struct intel_d=
isplay *display,
>          */
>         wm0_blocks =3D wm0->blocks - 1;
>=20
>-        if (wp->y_tiled) {
>+        if (wp->tiling =3D=3D WM_TILING_Y_FAMILY) {
>                 trans_y_tile_min =3D
>                         (u16)mul_round_up_u32_fixed16(2, wp->y_tile_minim=
um);
>                 blocks =3D max(wm0_blocks, trans_y_tile_min) + trans_offs=
et;
>--=20
>2.50.1
>
