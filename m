Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16022A18DDE
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 09:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E7B10E69D;
	Wed, 22 Jan 2025 08:53:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NaIJBe9T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCE4D10E251
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 08:53:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737536035; x=1769072035;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QjaJR8Fy7QU7Ni2xNU5t1VTgbApPvTIkq1+617Hzjxk=;
 b=NaIJBe9TqRo1STXfcy5wNKHcmjHm1xkU6XvD7SKXqu7UtdApC9zdj+MY
 ObfQZT1Qa1vtgN70aJtjtLvUapYn17KAJyoT/CkHNZl1k9/nMxRU09m4D
 gjX/CKlJGri2uxqZAFXBQ3ehS/FE9IR/DWFjUvDFC0cCgncPZKmEQouPW
 nGnfXrJq7hxszHTzEvEz40f9g1KF/GW/1TzkLaZkUBGDn5MGarPAX12ot
 RKf5ErSdKBrOFQ4K9FXX6GhDgXXBoZlwHTVOxFiv+kTDzT3maB0TEqqb2
 FU5M1JCiuqIpt0gwPocLjpbaLkcmVbA+UwBY7HyuRuBXXg01ST8W52T5J Q==;
X-CSE-ConnectionGUID: OGJiKlW2Q7aHj5j3wjvwAA==
X-CSE-MsgGUID: bo9kbmWjRomRNhEl/AP0lQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="49379984"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="49379984"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 00:53:55 -0800
X-CSE-ConnectionGUID: O8E4GMlcS56g8vOAD3MSDQ==
X-CSE-MsgGUID: rZzUPqj6THy7vuVDcPkQ5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137912901"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 00:53:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 00:53:55 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 00:53:55 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 00:53:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e0DwcvhMSJEpZ6022rrYt05SQzz+1PoNpUiL0Bv27z1ZTGonwLdRv0X9u3absR+nvmcsh5O7dmQ/JfXDFpw3kYYClxRNOePWXQFPUPr7D/b/NogCx57CnZKrPnbeaQZaZyTYErDHNytwGYjzNklGAC0n5CQeQcsYUpfXakrNNYa2dt3LL/Gm2fwwuPOAHYcvXRuYTCWoQv7rahH03/DaLR2U2LWwC8oxGbqEAg4v2Nk02WelkVeG2Zs9OOiNGqRRXmeeumF87LRmN4yWq5qHJuUL0+5wcRerMdI4gb+IWLOPJPddp5+DHk0dTySYyspX++zKPX/spNaP532I2s23jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PYKSGaB3xGu5kXGUfc9S+MUPKJGLgabgL9NT9HOmdVs=;
 b=AsdV5ZedazJnXcy6BTjNltYPWYvjDav2VqIZJHdMrIG6wlq3ND1lIcUAkK9SsPTw6Mu801aXVHjwJEM+AMXIoBBisBsBA2hFmaEv62aOQBsLmlYmQySCeJymnNKhr5glaCbOGjXopRMxs6wU+p/kAbD5KkZzi8Hk3XBe3urotJ9ZFMDxd4InSGyXDxYzQQH+pSQxnrb3fXcqxLtEihg9slPD1NujaGQH7eLQnWZVKciKSA9/dGa1P7nsKQMvI9jp0Wl0NnZawO65bAnLao4d0E46BE3gASOkazvnmrhW2oaMCjedscWvXykjbciZU8LfEJ1zyePNxnl0t8Y4TkjO7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH0PR11MB5015.namprd11.prod.outlook.com (2603:10b6:510:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Wed, 22 Jan
 2025 08:53:12 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%2]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 08:53:12 +0000
Message-ID: <31537a0b-6f0d-4035-9c29-4b1bb3d4d908@intel.com>
Date: Wed, 22 Jan 2025 14:23:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/selftests: Correct frequency handling in RPS
 power measurement
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>
References: <20250113095912.356147-1-sk.anirban@intel.com>
 <20250113095912.356147-2-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20250113095912.356147-2-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0185.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::9) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH0PR11MB5015:EE_
X-MS-Office365-Filtering-Correlation-Id: bc36cdc7-6a45-4ae8-03c0-08dd3ac233b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3ZpZDh5dGZFQmUxQms4QmcyZWUvRk1ZV1hTWEpaTENXMjhaTW5OQWZnMWpD?=
 =?utf-8?B?MmluUjFIK3NEdjMvWjJCRUt0Z1B3eWdiZ0gwTVJ1NGk1SU1XQ21YV2xlZWNW?=
 =?utf-8?B?bFlBV1NTRVdPdGlKdjMzc1g5WDNLa3dWdjR2TnVCYjE3d01YaFZpY2Vic2xX?=
 =?utf-8?B?YzRPNTFVT3llWG9DcEJmc3ZwV3phZUtoM1NSQURuTkpJMWZEU1VHaGEvSjcy?=
 =?utf-8?B?cnl3eU0rYW5yWFFNd0FvdGRWdTJwK2RTQkw5VEZmbWkxK0VqSHNXa3YzNkNU?=
 =?utf-8?B?QWF6b2ZxMmZQQm1scjdsVmk3aTVqSW04R2wxWFpWVHE3QVNTQVgxZ2NJZ2dt?=
 =?utf-8?B?WFlwNWNPaEpMZTRLZ1pyWG80Q09vTlIwa3VCZVVzVWtxdE9UQmxNd3hmYUlB?=
 =?utf-8?B?eXpwM2hTd2l4SHJVWkVHeVJaM0daTHB3Q0IrTUdHNU9hR1B2dHlrNlJWb2ds?=
 =?utf-8?B?cXA4T2NldUdvWHdtRm8xcXNvMlBxMjh6aHFUZ0xUdVVhYktWR3g3bml5U2dM?=
 =?utf-8?B?N1l2Y3RnNGhDMnNrWFBCekRIcUFENnNEZllvcUEzRHVnOU9HOThjcC95TVBn?=
 =?utf-8?B?dUh5ZlJWY080dDdJQ0RscUtET1FMcEVyYWRvMzRhK0xTdktNdmtXSXNMenVa?=
 =?utf-8?B?b0NPRXY1WE9wUG1qQ1QzNUE4OG91aDZ0ajJSemN4VUxJbHYxaStXa0x1VW5U?=
 =?utf-8?B?MkJaUFdmYVl2c2N6NVhMbW9zVjdEdXoxRWtoUElOOWNLWnpncW5IRUV1dWVl?=
 =?utf-8?B?TVBCM1M3OHF6VVlwTUFZMUVzQ0hRU0NHNFBLQW1mU0ZLdUV0TTZQRERBVUx5?=
 =?utf-8?B?YUxZQTMveW1GUnpZSEpSQ3doUGxrdXdRcTY4QW8rNmFDWWpNTUd4bjFocVJD?=
 =?utf-8?B?SFQ2YndqWGtYSWh3T2IxSjFOVE5UN0QvdVNDNzNGcnRGYXp0bk56OTVGcjZ6?=
 =?utf-8?B?YnpqVDgvVFM0VEdWTVRMSFg1SThZUnY0ODBDZ3d2RUJJRkxtVEZQemZKL3My?=
 =?utf-8?B?VkpwM3BodyszOVNOa3RrbDBQQVo3UHhNY05rMW9WZGxGQ0c3UThhY29kZ2Q0?=
 =?utf-8?B?eUc1RUl5eXpIVDEzSEpYQVFaUDZWK0dGYmpjT1BCU1ZNb3o5ZzQ5YytabDMy?=
 =?utf-8?B?Uno1K1h5K1RuenlhYVBvcGJJM3krR0I2MkFZeG5yKzVoVkpNQmRyVk83aVNI?=
 =?utf-8?B?WW9mZWpLRHBVQS85b01nWHBBYnJwK3JnQ0wyQnJSTkJNNmVwbW1ZZDhnT01t?=
 =?utf-8?B?eWJuS01ZYjJzYTlPTG9BOHJwajVWeDJCYlEwNWtGQXJkSDZoUlNqWEl2S05U?=
 =?utf-8?B?VGdvOTVtOHVsbjZOUUdmYmtaOFU3SGh1UmdPOFY0V2liVW5oNEVVOHdoZ1J1?=
 =?utf-8?B?c1ZxKytqVE1pd1NZVmw2eTlKck53MlFZVStaSU9IRk5RdldmK2VHQ3o0VTlZ?=
 =?utf-8?B?ZTNmQU1aTlBzYWZCMnFIK3RqcVozM1laVGhDWTJLTnFaRnQ1dFdPclRoRmJB?=
 =?utf-8?B?MnNnMXRjcXJISEhoRVEwTzJ3blFpL3UyT2N2eFkvbXh6RzZZZzZWMFV5OVBr?=
 =?utf-8?B?dXpwUnlRWTlZNXp3cDlVMm0zMTB1ck5neXFoVmJRcXhMcEI3eVZ4aERRSDVU?=
 =?utf-8?B?eHhzZnNNRm1Wa3hKeFBhQXBBeGtob1JWUGxHeU1GaFBoVm1aTFZ5c3dCbyts?=
 =?utf-8?B?dFdGa1VmVy9IV1N6RmIwVVQwdHYvcXEzY0FHS1ErbWxhSTFqRjJ1eDZBWmFP?=
 =?utf-8?B?ZWZTcGw1ckhUSDlmenAzQnpYUjBPanVUcWIyWHR3bmNydDJMRzd5SmxiTGpS?=
 =?utf-8?B?MHkzWU1aYVpjZVFZUVFJeGtVZkpNaXBuK3hmelhlRjVPQ0VNRmVrNlF5SkJG?=
 =?utf-8?Q?wNoLwvL1v4Ws9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alB6QmY3UE84a3g2Tm5wNDVYdVdsTjk5Q3FCOEhXeUhCVnhMdjZGR1huRzhL?=
 =?utf-8?B?cUU1VnJHNkl6SmNpRDZmMFJrWHN1d2EvbHBXU0cwbmFWRXplN0JxMU1kZ0k0?=
 =?utf-8?B?M1AvN2dmdkVrempMVjBOOUs1ZTF6bVA3Wng0YnlvaFR5ekR0allsN1NwNG1N?=
 =?utf-8?B?KzFPd2lyaWs1dFRiYlpuTmQwVWUxYk5RMERaNnJVbjFPRDkyNUZCVmcweVlI?=
 =?utf-8?B?VkpFQUM5RFVWb3hhUmNFMnhhTGh1eElxY2RyYVRJNWlXWEJyY1pwZjk0RHpq?=
 =?utf-8?B?WW9WdDZza2dUWGpkd2JkZEVnNTdhMEYwL09SNmtGQVJhM3l0SkJ4S1V4dmhN?=
 =?utf-8?B?eTNiU2NpdlJ0VEpPam5qQTl0UjVRU1RzY3hXWE10RHVQVnM2bUhpdlMvOTA2?=
 =?utf-8?B?RmFJQnAwaE96MXNFMzU3UVhTbUVQaU05WGpQQ1ZndUFvTVRwTFRDZTF2SERD?=
 =?utf-8?B?VzRzdE9tQWFjMFB3djNyZHZrWkJyZkwzNUYvelJhcnV0RHFjVXFJSVpsTnFB?=
 =?utf-8?B?azdWOFlMbmhvOHRkcFNkdi8xeEN3THdtREovMWRHWjVVY05qUHRDMkU5NnZ1?=
 =?utf-8?B?alZWWmFhQTdqdmNyQ3VlT0hnamxoZ1hTR0RidWw0cjRmaFVoMnFYKzE4anhw?=
 =?utf-8?B?cVZQQ3FlOTZHMStNTHZ2RmVJTXhUSFNRMjNESjQvbFhYYnV6T3E2aTVSbUpa?=
 =?utf-8?B?RGI3c29ZWERQeXlzVVl0akQrNEdIQXpPZytLYjlBS29ZRE9uQWdwditVT0t3?=
 =?utf-8?B?eVNNV1ZOUWg2K3ppZ3RTWkxERXR0TU9GVDV2aDN6Mm1aS2Z3dHRySklQS0Vl?=
 =?utf-8?B?cGZwbXJxM3FFS2tZRmdPdThrTzVBSnNSYWNVbmZKeTBKbWF4ZVh4eWNORlRF?=
 =?utf-8?B?cHlHKzZQZ2xoeTRsWVdCd3pLZmpQdG5aOGZxdU1BY0NVamF1L2RUb3JqZG5r?=
 =?utf-8?B?MDhUZGJWU0R0SWhBRzNqRXl5Rml3WE1XcEllVitJUCsrREswZjFHdjZyRFZ1?=
 =?utf-8?B?Ym9EUkxOL2ZtbEhld2tUNktLZXlZblMwekpncGJxZDJ0YjBOVEgzdUZHOHJX?=
 =?utf-8?B?TTRZRWpPRWYxdGJxK2Y5MVRKYlZOampQZWc2ZmtxTW9RRjRCWWJLTGZnQVRN?=
 =?utf-8?B?dGhzWWgxU0tydGl0Lys0NWtXWW11ZG9TTE83UTVsNTl6K0Nyc2VEeitScWZM?=
 =?utf-8?B?SklFT1hLYVZPb2JFWEU1MHBVL0ZodlNRaDFCZEJ2R2k3a2lPUGdkVUY1ZVZZ?=
 =?utf-8?B?dTNadnNEaEY0UUNCZXZSNWR1eU1pRTdMUXEzZFJtbk5qVk1YOVFUSk5kcm90?=
 =?utf-8?B?dkpKWFdIbkc0STNxMExsOTJvNDhySUpPZ2E1WVBvYnNXWUtZd1MxSi94WWVz?=
 =?utf-8?B?bkxMRkN6cm5KaGo4L0FUaUN0Y3JHeXNQd0pHbmpwVitPWWJHWitUb29KdWN1?=
 =?utf-8?B?SmZhSjQ2UXl3dllXMkxoR0Nwd04xdWZqQ0U5VVZJbEpBTllUMmRQNzF3REo3?=
 =?utf-8?B?emZBc1g4YzBYM1FqTUpncktFVHhuZG52Um9oQTBpcDh3RDRlK3hPOERXczFh?=
 =?utf-8?B?cXUydUE5c2RMOGtzN1RHN2R5cURCdHRuaThSKzVFOGE1ZlYxSy94a2NNdVcy?=
 =?utf-8?B?VC9WOVdmcERIS2pBTDA0ZHc0M1cxVFlLK1JLOFEzSElVN0FQeFVJN1A5Vm1n?=
 =?utf-8?B?cEZQYTZhTWtrclA4QzNJVUxnYTBXbnd5U2NLUWRIMlZqOVRkVTVJQ2g4NVRE?=
 =?utf-8?B?MEQrcGcvWFRBbzR5eXRhVUNjOGw3OFBheGxJQVBnMk4yOFVIdHEzaWJUMzR0?=
 =?utf-8?B?eVdDbTJPcVhSWERCYjlTU1o3Y210cVlpcDg3dDhPZi9lT1ZFOXkvdmVRRHUv?=
 =?utf-8?B?M3hOTkRNbjI5QnpjMzFKL05YdjM3L2FYMHg3V3ZnMU1KM0ZLR0VZanFXc21S?=
 =?utf-8?B?ZW1sbFlnYmNyZWdUVE9ETjA2Um8xWS9iWmZucHJaQzRnRCtVa3BiNGFOaVNN?=
 =?utf-8?B?ZWN3MWtwdXR5NHdCdTZwQU84YUNNK3h3SERZQTF3M0kvRmFyUnFvK1pyakl5?=
 =?utf-8?B?bWh0NExwOVl4ZVNrTDFmVm9BdzduU21vMnVGK0hsT21KT2x6UzgxZ3RWSmdH?=
 =?utf-8?B?cnZabnltM1IyaTZIRTdSblhnRWZpYytyejV5M2k0S2xSdzJqbHZVdXY3YU04?=
 =?utf-8?B?Ymc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc36cdc7-6a45-4ae8-03c0-08dd3ac233b5
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 08:53:12.3480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IubgDNAJOxCN6T9726R4+1wGCRcNhHhXXRRKQCGdXIOoh2HF71ITuy9pebtVrL43oBenNgiQzr4hKPuW67F2uw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5015
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


On 13-01-2025 15:29, Sk Anirban wrote:
> Fix the frequency calculation by ensuring it uses the raw frequency only.
> Update live_rps_power test to use the correct frequency values for logging
> and comparison.
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index c207a4fb03bf..32a4b0aa710a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1115,7 +1115,7 @@ static u64 measure_power(struct intel_rps *rps, int *freq)
>   	for (i = 0; i < 5; i++)
>   		x[i] = __measure_power(5);
>   
> -	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
> +	*freq = (*freq + read_cagf(rps)) / 2;

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal

>   
>   	/* A simple triangle filter for better result stability */
>   	sort(x, 5, sizeof(*x), cmp_u64, NULL);
