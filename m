Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65CA79F88FF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 01:33:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C99710EE08;
	Fri, 20 Dec 2024 00:33:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X7ejgJ2C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2610510E4D6;
 Fri, 20 Dec 2024 00:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734654789; x=1766190789;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=nPsLR5zOIN0bRlTJ8Sb9kQGIF3p+RXe20/nsgz/Z4fg=;
 b=X7ejgJ2CZlaXFtM5ni7be30CLv1cjb4N5WlSstInTTSoZz3XvagnjpMb
 PxLdWrpZFR7xyS0BBtbuiukSMRXz2D9V7vmdjf1qoh/C+3oPPEJsI9D+0
 G8XU6ROiPXPYVmU0C7ehHgCERP9rbmen4qUYuhhG3/OkXGCVHG3sfsZ8G
 An2e4EMiFi54hAJhs+McaoNXBQjjlfU/MOyqgJCuPl+nemKqtcEkPc7WG
 EGiMpnKD01URUIhIl1ro+hnqNsxEhwZrGu8uRcgLNGtWOEvTdXep6gtBP
 j8Cv5AG19mRzSI8EwFaiH0uBgLvZFClcLPh86iHAokJr/e+JWgIH9XqlI g==;
X-CSE-ConnectionGUID: H//omanHSuyhTK3gJ4RgKQ==
X-CSE-MsgGUID: P+R7R+yKSTGAhvUgWpgXHg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="34914634"
X-IronPort-AV: E=Sophos;i="6.12,249,1728975600"; d="scan'208";a="34914634"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 16:33:08 -0800
X-CSE-ConnectionGUID: viYmeEsSTdKErL5TdzfC2Q==
X-CSE-MsgGUID: sADinCF4RhWkPDVZjejumA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98190063"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 16:33:09 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 16:33:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 16:33:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 16:33:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mu2Qa6NXgNVemIklmWA94mfPPe/YT3BYfPZxjJ6tCjVGzYMiSmSx4RD/EUGQryGm/XhSyktxJmiYSgyyPvX9yAGegz2MSe2aah22lD6vn8hvssMv3DBO8O3JMbw3ovVhEqGfU/v1KN2EfkgxaFte2ppze5iX2kTzDx7aLKQhukguJJ6Ckoxptjj/XnedfWfZsLr0OVQ+78lJ6QLvhRz0w7x+Zt4o+WKQV+57ILF+/YhSi1zt9hd3DxYOxErCIM9hZ/dRpGL/Naj52wUJ2j8dnGc7Gz43GnvE6BoAeeBStEEG+MuJK1mzTx5w1n6S5uaWSNTEbYz/R9X3hPByb9WsCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OOw/nXTGmBHSiS9ODsQbCwMpq9RaAP03G+GNYQLCQNs=;
 b=AXqojK8kMtQgJqCy2c+hMmEOtJrkuZYloSvCpvSdRjy7INI4Lvz6vm7v7qI5EPOMCCHIOlNgiXabvJOL2W1yOnBLnS+Zmh/RolUwY3L8eqX7IV9gEK7BEzQEuSUYC+IxmCjBejQgTZ3OmeFbHJ+pu/OiQXpcQgCu51chaqT5OFoTOwfYyo0dTSRVoV0RX/dYWpf+qOgl8hNgmmDb6mDdB9WjbIcLaxe7ZzVxeiChRKrPpi2y3JJ6MVe68oHwTBMqpViPbi/T4MBFSUh9xZ29pf2mMLnhI9kdIN1cwdddkTNhFiQV6fvjE6N2h/APd8zG6wywvU/9MjtiOCEWgUX9Sw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by BL4PR11MB8800.namprd11.prod.outlook.com (2603:10b6:208:5a7::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Fri, 20 Dec
 2024 00:33:05 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%2]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 00:33:05 +0000
Message-ID: <bd023aff-5dc2-4b04-8f85-66d34371c76b@intel.com>
Date: Thu, 19 Dec 2024 16:33:03 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tools/gputop: Add GT freq and c6 stats
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>
References: <20241216003238.2953498-1-vinay.belgaumkar@intel.com>
 <20241218192752.6qe6osmuprxpicd4@kamilkon-desk.igk.intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20241218192752.6qe6osmuprxpicd4@kamilkon-desk.igk.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0199.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::24) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|BL4PR11MB8800:EE_
X-MS-Office365-Filtering-Correlation-Id: b1e52b1c-c860-4436-ebe6-08dd208dde47
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?THRGVlhPeXpzM2d3TzBleHVBUlVmT2dyeWtObi9YbGxGbVRHY3ByNSs3Q2dG?=
 =?utf-8?B?TzFaZnhyd01pU25GMEtZRWNPL3VkZE05RXdCL2cyNEUzdnVxTWNzZWlOQ0kr?=
 =?utf-8?B?N25FdDZjT2FtMUpvR2xadno1WFNxb2IwVktTWlI0cjBCU01YU0ZDbUxIdHNB?=
 =?utf-8?B?eWpIRW02d3gvdmxYYTlRUjZ5WEdhN0NyTlpiWWtKQ0tybmxnN3FGTGRzc0VE?=
 =?utf-8?B?eTV1MUNxRTl5REQzZHJPbVY1NjRteDluYWtmbU1NanNKQ01DdEFzOFU5cVlu?=
 =?utf-8?B?ZDc0WjU0VW9wQ3FSaW1VeE9JSW1ZdFU5MVVidENNQ3VYZmlXUVhZWjAxYmN3?=
 =?utf-8?B?bFR2NkVoZDFKM1kzTTYrc3htQ0pJeHRLeTV6ZnFRTU1IQi96UE10TFF3U0Mx?=
 =?utf-8?B?cnVEZUlkaGdneFdtdUM4bFFzcHd5a1NSZTQ4QWYzMVREdUJXUnV1b2NxV1RZ?=
 =?utf-8?B?NGpudUJZaVRFZ0ZhbHZacjZET1NiSVZBTUd6VG5sWUxkRm9veUU0alhvRFBt?=
 =?utf-8?B?amcxTzJSODAxcVVlSjhXejh3S3VIdnB1eVlRdFFNZWM5N2oyT1FlSTJjMkhP?=
 =?utf-8?B?RlI5VzFINEhuRHlYQjQxQzhVSDZSNTNhWTBkUzVDemtHclVlNjZzUFhDVTNw?=
 =?utf-8?B?eWJwNk1Sd29LcFlTdTE0UDdMTmhvcFdrQ0NLMG14Wk0xY2UzVHdRd0N6NFRB?=
 =?utf-8?B?NE95NVMyTGtMWnN0dlBKU3RxcndNeHBUeUNDQmRHcGxGbzMvbW5hS2Zxa0RE?=
 =?utf-8?B?ajNWSHZkYTBQRk1XS1FHalQ5ckZhNGZJVHJMNXpIOE94UGJmWlpPK3JPcE9s?=
 =?utf-8?B?QnJXWnBGME0ybHNDVGdvd1hBZ0Z3aUw4eW1oL3RvUU9uRFJqUDk2UmlpN2tK?=
 =?utf-8?B?bm5URlM5blJLTUlZSUpTUmNldGZRT1ZRQmlobmRiQWtqYzhOM3dRTTZOQUZw?=
 =?utf-8?B?OEIyTkRGb1VYQk9zUkR5N3p3UUtrakhrUFNoMUtzOFBiQjdIL0VKZVJqNTlJ?=
 =?utf-8?B?RUZYU0VxcnFTUm9hSHVnUTZlNVM3L1hrZkZqNlNhWEJVZDBhU1ZzUHE1d3Qv?=
 =?utf-8?B?VW5UbmJDR3NLUGZTYm9nb1lkWnAwc1pYc3lvUzRoNnBNdkt3V3Rwemd0S3E0?=
 =?utf-8?B?bVl4TDdOenRsajJId0czbVN3aUdsMGlnZnVIYVIyVWNsdTBJMHZ1T0twNWlN?=
 =?utf-8?B?b2NTekJUOGtIZVlYb05vc0dsS0ZpeHlSSHFxRHdOdGNOSzhsSjFjbHZsa2pJ?=
 =?utf-8?B?czArM3hwbzh4TVZYSG0rQy9CY2srbmlkcjJHZHcyeEVsTEhhbGlxZW5Sb1hU?=
 =?utf-8?B?aU14dWIwWmErbXV6TEt1ZkFyR1NsZzlZclFYQ2R4eVlSVGtGcFlvUU53aUFR?=
 =?utf-8?B?bEFPby9uSVo2aHI1cFBzUmRwVDFsZmIzSm5Ld0hHaGpLbnZ5WFQwOWNsNGNV?=
 =?utf-8?B?bGIxY0dINWwraEVLTnp4SWhiK2Y5N3VhZjFNamVkaStDaEo5bTJFSFA2WE8x?=
 =?utf-8?B?dEpPYWk0ZUxPQjZhUFRVNjRxQVU1U1lMSU83VjBpanZmZmkxQVlOWEFVNk5L?=
 =?utf-8?B?ZFVCTTNiR0o5SXoybHkrODdoQVJHNjJXVkFmdm9PaS9MeitueTQwZisyazZD?=
 =?utf-8?B?NSswV3pwbUgxZGVSc2RYTkliejZaNDR0QmtOTitpcldPb3lqbitUbEI5TTBO?=
 =?utf-8?B?NW8rMUtkVWZFaDc4RUkxWkdwbEhYWCszblF1UC96RG5ydXViRFlnRHFCejlV?=
 =?utf-8?B?OElYVTJkUTV6WG5SZkJlNktOK3BMckt6QSt6NW5iTUQyalU0SDR6WkhieFYx?=
 =?utf-8?B?K1hKVHNqSUhrUGlBMFk3UkZBOGU4S3BnZWUyaFVuMTNSdm01QXpJTWR6Z3Y3?=
 =?utf-8?Q?dk0ts0lGrRdgq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVE2c2dmZUtma1lUaUNvUEh6UWtFcmpLTXE2dlo2Y2hxN25DYUlLaHhJZWNw?=
 =?utf-8?B?SEJyRGI4NDJWN1Z3L0kzQUg5L2NCSmhZUjY5eWs5UnBNc09TRnJuVG1jcjBN?=
 =?utf-8?B?U2NOcFBBSk9iWG9FOUkrSG8xY09BRUJsV0s1K0tCQTlFRjhvSWcwSm9CTndp?=
 =?utf-8?B?NG9hNUJKbnZTbHlJYWxXQVFVM0xjK1NybFQxN1VHY1NjMVE4aVRvcmw4bVl2?=
 =?utf-8?B?MS9YWklUQU11b0hmSklKOXJpRDJhWmRRRFVmd1hkajBITTVGSUpnTFhiVnFB?=
 =?utf-8?B?RDNYZk5oSlZRYmJUY1BTOVRTaW9hR0R2Y3FVVHhVak12d2IvNHRUMC9FZlY4?=
 =?utf-8?B?ZVYvM0xGVTNGR3RkdmoyM3dvUUtBU0NsNFJ0M1dWQzQ0V0hPVnUvQ1NuNklH?=
 =?utf-8?B?MXZLdnBZOTZpTWFrSWhialdlY2NLY1NYTHRpT043SVVVcS9WZ3FMWUEvOTRs?=
 =?utf-8?B?dS9ORVpQU2pBTVR5WGp3ZmZTVWlaSFNoUHJLTUREandHdms4cVBVdWpsd2d2?=
 =?utf-8?B?a0s1NDM3eDBndk1naVpaRXpmamNNL2NoWitoeGdWZWo4Qy9TREVXQ3o0eHhG?=
 =?utf-8?B?NXZWL2Y5SnI0TURKaUNjQ216cmFrU2R1MjJISUFIWjlYVkEvamRibmRTSllX?=
 =?utf-8?B?eitVdHh0ODBHd1hKZjBiQ3hKUW1rUmhQVzZlbE1hVHpOTHZqUFprYy9kT0tr?=
 =?utf-8?B?dDgvN3NxU3pjV0pHRWJNN04rVFh3YWNZblVMUGRGYnBjYzM3VS9pMDdQQjBu?=
 =?utf-8?B?WHVzOW1pZjlTaE12YjNaRDJVV0syQWtOSmFISHRUWFQzd0hZeHRHTDdtUSti?=
 =?utf-8?B?V0NQZFNUbUJmTldOTHQzdjAvVnV5TVY3b1JBbC80ZEdvREdqMHVSSHhNYUpj?=
 =?utf-8?B?M2puM2xENW0xU1lieGgyb0JaNE1weGZJZ1Vwb0EvOFIvWnArOUJPbE5aYUVv?=
 =?utf-8?B?THQ5YXRTRmJmSzV1WEFwNjFITG5SRjByMStkWGp4YWIwM1Frd3R3UE5OcDBC?=
 =?utf-8?B?WHl1YTE5ZTFhTGR4bCt3NWdZcnE2R0pvbFBUWEtKMlMyeVZ1c3MydG1sMEZq?=
 =?utf-8?B?SUc1RVZ5b1dybG9aZFRheS81OTNUUTJpUndIN3Z6WFVkU2JPakJDVDU0aENT?=
 =?utf-8?B?VEdkdzNnWUNWTmo4THJIVURYV2pUN1BXVUdtS1JOK2N1Rmx6MmdYR25BRnJF?=
 =?utf-8?B?bGRWOWYrL05WRmowdzBvRXNKVHI5aGp4YWIwUFAwOE9hMS90Mis2aDYvRzhM?=
 =?utf-8?B?M2JQdmFVaERBVktydUlXQU8wWU92TG8vdFRJMHlaSkkwVU0yUExiSGg3SkFs?=
 =?utf-8?B?eCtPa0xFUEo2K0xaUnVKS0t0TktodDVZQmt3SU50cmZtaW1RWmtPL0dGamtu?=
 =?utf-8?B?Y0dRRXV6TkY1SzhPTm5sUytYbHdoVG1rdW5TbHJoaHVYelNFVHBlQ3RoU1ZE?=
 =?utf-8?B?NWNZaVVXNzllbDYxVWNKNFRrdE9nVGpFbU1qcE9vNmlBenZxQWRWSUtmakxt?=
 =?utf-8?B?clFobjgyaWRpbkx6QmlXS2ZkNHBJcVFEbG5wWElYUkNhSitYSzFDMlFFYkVw?=
 =?utf-8?B?TS95dEY0akNjanFFZzNoUUtDbmF2dXA2T0krK3lqZzdPZW44eDd1Tm82TWo4?=
 =?utf-8?B?dkVWUFUzK29hbnRrdlErb2RZZG9iN0ZOaHIva3d5eGVsY3RzcnBWSXNrbkhC?=
 =?utf-8?B?RlpIT2ZUdGZCYkJHTUJjZ3R0WlI2MTBGVWVSczlORXo0UTlzK290alZyU1FE?=
 =?utf-8?B?RXR3eW1JRkswWGdxYW0yQS9rYmlmNW4vaDdicEVFNERPNEtVZ3J5M1o1VTFI?=
 =?utf-8?B?YUpveElndW0wdlpQVnRQb3J5RFA5UnM4SUJKWHd5SkhmcDJPUUxKVHY2TGo1?=
 =?utf-8?B?WmJRL0hNNmtNd2NXMmdnNFBJdFRMalBxVlQ4OFlDdVhZMEtENjJRYlQ2UnMx?=
 =?utf-8?B?Yk51aWhoT1FPL2tlZTJDNkI3Tk5pbTBOQmxUWjhzdElCcE5wRzl2cjNWekw4?=
 =?utf-8?B?RWowQ3BKY1lBSStCRGM4TC9mdnZnS3FWNFk4TWxybUNWQUlHbEs3OU1nTzlS?=
 =?utf-8?B?azkrU3gzb0lmakt0UFhrTVcxUWZoTVd2bXZoM214ZFk1R2RmV1piSHJ0R1du?=
 =?utf-8?B?WGc0d1BaUmthZUlCMlI2YVk1Z2EwUzVoeVhVMEVtSGpLcm51K2QvK3lCWmZk?=
 =?utf-8?B?RUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b1e52b1c-c860-4436-ebe6-08dd208dde47
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 00:33:04.9764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4mTeIMXsGmkZ7a+61Be7U2aOJI66dmfbMY8BvjpzqRpWXxJod8AY4eR9JFZ4nJTGVfNnlnKTQZ1umAsmNvhKqvcHZvDndIO8bA131su1Iio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8800
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


On 12/18/2024 11:27 AM, Kamil Konieczny wrote:
> Hi Vinay,
> On 2024-12-15 at 16:32:38 -0800, Vinay Belgaumkar wrote:
>> Add GT C6 and Frequency support. These will use the PMU interface
>> and are displayed per GT/device in the header.
>>
>> GT: 0, c6:  94.54% req_freq:  750.63 MHz act_freq:    0.00 MHz
>> GT: 1, c6:   2.75% req_freq: 1200.71 MHz act_freq: 1112.66 MHz
> Will it work for other drivers? Without pmu?
Yes, If it doesn't find the necessary PMU paths, it will skip PMU part 
and go back to printing whatever it did earlier. The pmu_info is also 
stored as a void*, so other vendors can add their own pmu_info.
>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>>   lib/igt_drm_clients.c |  17 +++++
>>   lib/igt_drm_clients.h |  25 +++++++
>>   lib/igt_perf.c        |  57 +++++++++++++-
>>   lib/igt_perf.h        |   2 +
> Please split lib changes into separate patches as they
> could be used by xe_drm_fdinfo test.
ok.
>
>>   tools/gputop.c        | 168 +++++++++++++++++++++++++++++++++++++++++-
>>   tools/intel_gpu_top.c |  18 +----
> imho here also it could be splitted into two patches each for
> separate tool.
ok.
>
>>   tools/meson.build     |   2 +-
>>   7 files changed, 271 insertions(+), 18 deletions(-)
>>
>> diff --git a/lib/igt_drm_clients.c b/lib/igt_drm_clients.c
>> index 858cd3645..add2696fa 100644
>> --- a/lib/igt_drm_clients.c
>> +++ b/lib/igt_drm_clients.c
>> @@ -19,6 +19,7 @@
>>   
>>   #include "igt_drm_clients.h"
>>   #include "igt_drm_fdinfo.h"
>> +#include "igt_perf.h"
>>   
>>   #ifndef ARRAY_SIZE
>>   #define ARRAY_SIZE(array) (sizeof(array) / sizeof(array[0]))
>> @@ -164,6 +165,7 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>   {
>>   	struct igt_drm_client *c;
>>   	unsigned int i;
>> +	char *path;
>>   
>>   	assert(!igt_drm_clients_find(clients, IGT_DRM_CLIENT_ALIVE,
>>   				     drm_minor, info->id));
>> @@ -190,6 +192,18 @@ igt_drm_client_add(struct igt_drm_clients *clients,
>>   	c->drm_minor = drm_minor;
>>   	c->clients = clients;
>>   
>> +	if (info->driver && info->pdev) {
>> +		snprintf(c->device_events_path, sizeof(c->device_events_path) - 1,
>> +			 "%s_%s", info->driver, info->pdev);
>> +		path = c->device_events_path;
>> +		for (; *path; ++path)
>> +			if (*path == ':')
>> +				*path = '_';
>> +		c->pmu_fd = -1;
>> +		c->num_gts = 0;
>> +		c->num_pmu_counters = 0;
>> +	}
>> +
>>   	/* Engines */
>>   	c->engines = calloc(1, sizeof(*c->engines));
>>   	assert(c->engines);
>> @@ -262,6 +276,9 @@ void igt_drm_client_free(struct igt_drm_client *c, bool clear)
>>   
>>   	free(c->memory);
>>   
>> +	if (c->pmu_fd != -1)
>> +		close(c->pmu_fd);
>> +
>>   	if (clear)
>>   		memset(c, 0, sizeof(*c));
>>   }
>> diff --git a/lib/igt_drm_clients.h b/lib/igt_drm_clients.h
>> index 946d709de..9d5b966ee 100644
>> --- a/lib/igt_drm_clients.h
>> +++ b/lib/igt_drm_clients.h
>> @@ -56,6 +56,22 @@ struct igt_drm_client_regions {
>>   
>>   struct igt_drm_clients;
>>   
>> +struct pmu_pair {
>> +	uint64_t cur;
>> +	uint64_t prev;
>> +};
>> +
>> +struct pmu_counter {
>> +	uint64_t type;
>> +	uint64_t config;
>> +	unsigned int idx;
>> +	struct pmu_pair val;
>> +	double scale;
>> +	const char *units;
>> +	bool present;
>> +};
>> +
>> +#define MAX_GTS 4
>>   struct igt_drm_client {
>>   	struct igt_drm_clients *clients; /* Owning list. */
>>   
>> @@ -86,6 +102,15 @@ struct igt_drm_client {
>>   		uint64_t last_total_cycles; /* Engine total cycles data as parsed from fdinfo. */
>>   	} *utilization; /* Array of engine utilization */
>>   
>> +	char device_events_path[300];
>> +	int num_gts;
>> +	int pmu_fd;
>> +	int num_pmu_counters;
>> +	struct pmu_counter freq_req_gt[MAX_GTS];
>> +	struct pmu_counter freq_act_gt[MAX_GTS];
>> +	struct pmu_counter c6_gt[MAX_GTS];
>> +	uint64_t ts_cur, ts_prev;
>> +
>>   	struct drm_client_meminfo *memory; /* Array of region memory utilisation as parsed from fdinfo. */
>>   };
>>   
>> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>> index 3866c6d77..14c362515 100644
>> --- a/lib/igt_perf.c
>> +++ b/lib/igt_perf.c
>> @@ -129,6 +129,61 @@ uint64_t igt_perf_type_id(const char *device)
>>   	return strtoull(buf, NULL, 0);
>>   }
>>   
> Add description to each new library function.
ok.
>
>> +int perf_xe_format_gt_id(const char *device)
>> +{
>> +	char buf[150];
>> +	ssize_t ret;
>> +	int fd, start, end;
>> +
>> +	snprintf(buf, sizeof(buf),
>> +		 "/sys/bus/event_source/devices/%s/format/gt_id",
>> +		 device);
>> +
>> +	fd = open(buf, O_RDONLY);
>> +	if (fd < 0)
>> +		return -EINVAL;
>> +
>> +	ret = read(fd, buf, sizeof(buf) - 1);
>> +	close(fd);
>> +	if (ret < 1)
>> +		return ret;
>> +
>> +	buf[ret] = '\0';
>> +	ret = sscanf(buf, "config:%d-%d", &start, &end);
>> +	if (ret != 2)
>> +		return -EINVAL;
>> +
> Why only start?
we want just the number of bits to shift. Changing the name of the 
function to reflect that.
>
>> +	return start;
>> +}
>> +
> Same here, add description.
ok.
>
>> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config)
>> +{
>> +	char buf[150];
>> +	ssize_t ret;
>> +	int fd;
>> +
>> +	snprintf(buf, sizeof(buf),
>> +		 "/sys/bus/event_source/devices/%s/events/%s",
>> +		 device,
>> +		 event);
>> +
>> +	fd = open(buf, O_RDONLY);
>> +	if (fd < 0)
>> +		return -EINVAL;
>> +
>> +	ret = read(fd, buf, sizeof(buf) - 1);
>> +	close(fd);
>> +	if (ret < 1)
>> +		return ret;
>> +
>> +	buf[ret] = '\0';
>> +	ret = sscanf(buf, "config=0x%lx", config);
>> +	if (ret != 1)
>> +		return -EINVAL;
>> +
>> +	return ret;
>> +}
>> +
>>   int igt_perf_events_dir(int i915)
>>   {
>>   	char buf[80];
>> @@ -180,7 +235,7 @@ int perf_igfx_open_group(uint64_t config, int group)
>>   int perf_xe_open(int xe, uint64_t config)
>>   {
>>   	return _perf_open(xe_perf_type_id(xe), config, -1,
>> -			PERF_FORMAT_TOTAL_TIME_ENABLED);
>> +			  PERF_FORMAT_TOTAL_TIME_ENABLED);
> Please do not make style corrections in a bigger patch.
ok.
>
>>   }
>>   
>>   int perf_i915_open(int i915, uint64_t config)
>> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
>> index 3d9ba2917..f1c433657 100644
>> --- a/lib/igt_perf.h
>> +++ b/lib/igt_perf.h
>> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>>   int perf_i915_open_group(int i915, uint64_t config, int group);
>>   
>>   int perf_xe_open(int xe, uint64_t config);
>> +int perf_xe_event_config(const char *device, const char *event, uint64_t *config);
>> +int perf_xe_format_gt_id(const char *device);
>>   
>>   #endif /* I915_PERF_H */
>> diff --git a/tools/gputop.c b/tools/gputop.c
>> index 43b01f566..2c2f2f471 100644
>> --- a/tools/gputop.c
>> +++ b/tools/gputop.c
>> @@ -29,6 +29,7 @@
>>   #include "igt_core.h"
>>   #include "igt_drm_clients.h"
>>   #include "igt_drm_fdinfo.h"
>> +#include "igt_perf.h"
>>   #include "igt_profiling.h"
>>   #include "drmtest.h"
>>   
>> @@ -76,6 +77,170 @@ static void print_percentage_bar(double percent, int max_len)
>>   	putchar('|');
>>   }
>>   
>> +static int
>> +get_num_gts(uint64_t type, uint64_t config, int gt_shift)
>> +{
>> +	int fd, gt_id;
>> +
>> +	errno = 0;
>> +	for (gt_id = 0; gt_id < MAX_GTS; gt_id++) {
>> +		config |= (uint64_t)gt_id << gt_shift;
>> +		fd = igt_perf_open(type, config);
>> +		if (fd < 0)
>> +			break;
>> +		close(fd);
>> +	}
>> +
>> +	if (!gt_id || (errno && errno != ENOENT))
>> +		gt_id = -errno;
>> +
>> +	return gt_id;
>> +}
>> +
>> +#define _open_pmu(type, cnt, pmu, fd) \
>> +({ \
>> +	int fd__; \
>> +\
>> +	fd__ = igt_perf_open_group((type), (pmu)->config, (fd)); \
>> +	if (fd__ >= 0) { \
>> +		if ((fd) == -1) \
>> +			(fd) = fd__; \
>> +		(pmu)->present = true; \
>> +		(pmu)->idx = (cnt)++; \
>> +	} \
>> +\
>> +	fd__; \
>> +})
>> +
>> +static int pmu_init(struct igt_drm_client *c)
>> +{
>> +	unsigned int i, num_cntr = 0;
>> +	int fd = -1, ret;
>> +	uint64_t type = igt_perf_type_id(c->device_events_path);
>> +	uint64_t config;
>> +	int gt_shift;
>> +	char event_str[100];
>> +
>> +	/* Get a sample event config which can be used to find num_gts */
>> +	ret = perf_xe_event_config(c->device_events_path, "actual-frequency", &config);
>> +	assert(ret >= 0);
> Please do not assert in a tool, handle error gracefully.
ok.
>
>> +	gt_shift = perf_xe_format_gt_id(c->device_events_path);
>> +	assert(ret > 0);
> Same here.
ok.
>
>> +
>> +	c->num_gts = get_num_gts(type, config, gt_shift);
>> +
>> +	for (i = 0; i < c->num_gts; i++) {
>> +		snprintf(event_str, sizeof(event_str), "c6-residency");
>> +		ret = perf_xe_event_config(c->device_events_path, event_str,
>> +					   &c->c6_gt[i].config);
>> +		assert(ret >= 0);
> Same here and in this for loop.
Yup, changing all of these to return a value instead.
>
>> +		c->c6_gt[i].config |= (uint64_t)i << gt_shift;
>> +		_open_pmu(type, num_cntr, &c->c6_gt[i], fd);
>> +
>> +		snprintf(event_str, sizeof(event_str), "actual-frequency");
>> +		ret = perf_xe_event_config(c->device_events_path, event_str,
>> +					   &c->freq_act_gt[i].config);
>> +		assert(ret >= 0);
>> +		c->freq_act_gt[i].config |= (uint64_t)i << gt_shift;
>> +		_open_pmu(type, num_cntr, &c->freq_act_gt[i], fd);
>> +
>> +		snprintf(event_str, sizeof(event_str), "requested-frequency");
>> +		ret = perf_xe_event_config(c->device_events_path, event_str,
>> +					   &c->freq_req_gt[i].config);
>> +		assert(ret >= 0);
>> +		c->freq_req_gt[i].config |= (uint64_t)i << gt_shift;
>> +		_open_pmu(type, num_cntr, &c->freq_req_gt[i], fd);
>> +	}
>> +
>> +	/* Saved the pmu fd */
>> +	assert(fd > 0);
> Same here, handle errors gracefully.
>
>> +	c->pmu_fd = fd;
>> +	c->num_pmu_counters = num_cntr;
>> +
>> +	return fd;
>> +}
>> +
>> +static uint64_t pmu_read_multi(int fd, unsigned int num, uint64_t *val)
>> +{
>> +	uint64_t buf[2 + num];
>> +	unsigned int i;
>> +	ssize_t len;
>> +
>> +	memset(buf, 0, sizeof(buf));
>> +
>> +	len = read(fd, buf, sizeof(buf));
>> +	assert(len == sizeof(buf));
> Same here.
>
>> +
>> +	for (i = 0; i < num; i++)
>> +		val[i] = buf[2 + i];
>> +
>> +	return buf[1];
>> +}
>> +
>> +static void __update_sample(struct pmu_counter *counter, uint64_t val)
>> +{
>> +	counter->val.prev = counter->val.cur;
>> +	counter->val.cur = val;
>> +}
>> +
>> +static void update_sample(struct pmu_counter *counter, uint64_t *val)
>> +{
>> +	if (counter->present)
>> +		__update_sample(counter, val[counter->idx]);
>> +}
>> +
>> +static void
>> +calc_c6_pct(struct igt_drm_client *c, unsigned int gt, unsigned long t)
>> +{
>> +	unsigned long c6_diff = c->c6_gt[gt].val.cur - c->c6_gt[gt].val.prev;
>> +
>> +	printf("GT: %d, c6: %6.2lf%%", gt, 100 * (double)((1e6 * c6_diff) / (double)t));
>> +}
>> +
>> +static void
>> +calc_freq(struct igt_drm_client *c, uint8_t gt, uint64_t t)
>> +{
>> +	uint64_t req_freq_diff = 1e9 * (c->freq_req_gt[gt].val.cur - c->freq_req_gt[gt].val.prev);
>> +	uint64_t act_freq_diff = 1e9 * (c->freq_act_gt[gt].val.cur - c->freq_act_gt[gt].val.prev);
>> +
>> +	printf(" req_freq: %7.2lf MHz", (double)req_freq_diff / (double)t);
>> +	printf(" act_freq: %7.2lf MHz", (double)act_freq_diff / (double)t);
>> +}
>> +
>> +static int
>> +print_pmu_stats(struct igt_drm_client *c, int *lines)
>> +{
>> +	int ret = 0;
>> +	int i;
>> +	uint64_t *val;
>> +	uint64_t ts_diff;
>> +
>> +	if (c->pmu_fd == -1)
>> +		pmu_init(c);
>> +
>> +	assert(c->num_pmu_counters > 0);
> Same here.
>
>> +
>> +	val = (uint64_t *)malloc(c->num_pmu_counters * sizeof(uint64_t));
>> +
>> +	c->ts_prev = c->ts_cur;
>> +	c->ts_cur = pmu_read_multi(c->pmu_fd, c->num_pmu_counters, val);
>> +	ts_diff = c->ts_cur - c->ts_prev;
>> +
>> +	for (i = 0; i < c->num_gts; i++) {
>> +		update_sample(&c->c6_gt[i], val);
>> +		update_sample(&c->freq_req_gt[i], val);
>> +		update_sample(&c->freq_act_gt[i], val);
>> +		calc_c6_pct(c, i, ts_diff);
>> +		calc_freq(c, i, ts_diff);
>> +		putchar('\n');
>> +	}
>> +
>> +	if (val)
>> +		free(val);
>> +
>> +	return ret;
>> +}
>> +
>>   static int
>>   print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>>   		    int *engine_w)
>> @@ -92,6 +257,8 @@ print_client_header(struct igt_drm_client *c, int lines, int con_w, int con_h,
>>   	if (lines++ >= con_h)
>>   		return lines;
>>   
>> +	ret += print_pmu_stats(c, &lines);
>> +
>>   	putchar('\n');
>>   	if (c->regions->num_regions)
>>   		len = printf("%*s      MEM      RSS ",
>> @@ -219,7 +386,6 @@ print_client(struct igt_drm_client *c, struct igt_drm_client **prevc,
>>   	}
>>   
>>   	*prevc = c;
>> -
> Do not make style changes in a big patch.

Ok, thanks for the review!

Vinay.

>
> Regards,
> Kamil
>
>>   	len = printf("%*s ", c->clients->max_pid_len, c->pid_str);
>>   
>>   	if (c->regions->num_regions) {
>> diff --git a/tools/intel_gpu_top.c b/tools/intel_gpu_top.c
>> index a608b894d..585e2acec 100644
>> --- a/tools/intel_gpu_top.c
>> +++ b/tools/intel_gpu_top.c
>> @@ -52,21 +52,6 @@
>>   
>>   #define ARRAY_SIZE(arr) (sizeof(arr)/sizeof(arr[0]))
>>   
>> -struct pmu_pair {
>> -	uint64_t cur;
>> -	uint64_t prev;
>> -};
>> -
>> -struct pmu_counter {
>> -	uint64_t type;
>> -	uint64_t config;
>> -	unsigned int idx;
>> -	struct pmu_pair val;
>> -	double scale;
>> -	const char *units;
>> -	bool present;
>> -};
>> -
>>   struct engine_class {
>>   	unsigned int engine_class;
>>   	const char *name;
>> @@ -724,6 +709,8 @@ static void pmu_sample(struct engines *engines)
>>   	uint64_t val[2 + num_val];
>>   	unsigned int i;
>>   
>> +	printf("\n num counters: %d", num_val);
>> +
>>   	engines->ts.prev = engines->ts.cur;
>>   	engines->ts.cur = pmu_read_multi(engines->fd, num_val, val);
>>   
>> @@ -735,6 +722,7 @@ static void pmu_sample(struct engines *engines)
>>   		update_sample(&engines->freq_req_gt[i], val);
>>   		engines->freq_req.val.cur += engines->freq_req_gt[i].val.cur;
>>   		engines->freq_req.val.prev += engines->freq_req_gt[i].val.prev;
>> +		printf("\n GT: %d, ctr idx: %d", i, engines->freq_req_gt[i].idx);
>>   
>>   		update_sample(&engines->freq_act_gt[i], val);
>>   		engines->freq_act.val.cur += engines->freq_act_gt[i].val.cur;
>> diff --git a/tools/meson.build b/tools/meson.build
>> index 38b04851c..9e6c8546a 100644
>> --- a/tools/meson.build
>> +++ b/tools/meson.build
>> @@ -70,7 +70,7 @@ endif
>>   executable('gputop', 'gputop.c',
>>              install : true,
>>              install_rpath : bindir_rpathdir,
>> -           dependencies : [lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
>> +           dependencies : [lib_igt_perf,lib_igt_drm_clients,lib_igt_drm_fdinfo,lib_igt_profiling,math])
>>   
>>   intel_l3_parity_src = [ 'intel_l3_parity.c', 'intel_l3_udev_listener.c' ]
>>   executable('intel_l3_parity', sources : intel_l3_parity_src,
>> -- 
>> 2.38.1
>>
