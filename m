Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC285A21B69
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 11:58:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C931710E79F;
	Wed, 29 Jan 2025 10:57:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OGFb6zGV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6055110E102;
 Wed, 29 Jan 2025 10:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738148261; x=1769684261;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jzpWi/sZ5iyv7wmXTeE229gBgJBycRkC2nqDYRpIZLA=;
 b=OGFb6zGV1aS7PuyEt+BmM7KwfIvxFZE+iA7cv7wjbk62h9JZuIHUNVU6
 sIAWwmYKe1V3hSNy2qfsqsOYz9Sa5SxQn3wFj/f0yVu0K6vX2BdpBEJYI
 OgDQT9NLpdKMDwrFXBjIs0LlqQTg583RSblINSEXs9hqnQkOiI8n9hK4Q
 wtQX2hD0aSX2VUiIPCHwF72mkas4ej8PWPPfx4rBJLtwn5iyynKSNG7WS
 h94RGp1v/VWJkN0Y2cbm8ulBMzrIHYLtLcmMOvJnEUkL3jkUBNrth6/BB
 QaUU3a/0kSS6YAayzsP4SrmjfoIL+Yyqjx/93vgcBb0RnpTU523fTehK2 w==;
X-CSE-ConnectionGUID: tCX8UGHmS/60nyyrtULhDg==
X-CSE-MsgGUID: vz22RsDuRESpO3dqWDUjCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="41493949"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="41493949"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 02:57:40 -0800
X-CSE-ConnectionGUID: r56kr8sxQd2SCov642eFzw==
X-CSE-MsgGUID: 5hygM/8TQ+2VRgghj/aD2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="109587250"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 02:57:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 02:57:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 02:57:31 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 02:57:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hwepCKdizBKPDacV7dazPFw5BY/DqSZ63jLg8JJ6eyXSxX2rNF32WxOBuiOz3h2lnY5B0GMvQnv6snDyFmqF92zEoLUMyZeoejPdIlNNH8WA4EqZElTdzbPn/eygKty7H/pFqcM0GLNZx8KlvOFz1eOhSlMiFgbAk0ASsMBx4CB+rIjGUeBGs6QW6oDyBd+5IBcZjjYRCjc6glZXk5LpiS13x3/52QSo/b0CZQ+zCiADRONGK5yYtxev+GmnnP9GhHRXOC4bp8gm7jQg3hIaKaEF072Oq1HAssJebYBwSbl7kPWL76GSP2VhBRFM/y4sp9bxWPONvDZfryDAh//emw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ThciWo206PDpuavJ37eS17gD6WmpPapicJDFwNmGGxw=;
 b=lXZfQn0FGPxrXlOKElnLDp5UlgFkbSFfeQLS/kU7sSr9a0/6HmtHF37NihC0ELtxqEZCHs9drKQ202/ADMWLiXOD5Y+ItHL84+9V0MeTMBP/gFhTSFfkDtqgCuSQYT5w5vz/phojUu6aQDERu1udIkxulMxQ+w64NVwxUdhKmiIySR9HljayZbHBXR5vTQWgCXtKmiyz9OGhYx+ZStJaY9CcvmK4C43F1t8b+Xtupwmix2c0h+N1iRsRdxzJWkOkyFiESbHJw7qZ+tiRmA4CGxm8g6kRtSj7H+Uz5viXGp7LmzladU33RiH+bsdh67gVilzmf+XU7gMDefkZyaM+2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 IA1PR11MB7272.namprd11.prod.outlook.com (2603:10b6:208:428::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.17; Wed, 29 Jan 2025 10:57:28 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::d3ba:63fc:10be:dfca%4]) with mapi id 15.20.8377.021; Wed, 29 Jan 2025
 10:57:28 +0000
Message-ID: <90765c32-b652-4a5a-b047-ed7c55e13f82@intel.com>
Date: Wed, 29 Jan 2025 16:27:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t v6 1/2] lib/igt_perf: Add utils to extract PMU event
 info
To: Lucas De Marchi <lucas.demarchi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
References: <20250127223301.2819108-1-vinay.belgaumkar@intel.com>
 <20250127223301.2819108-2-vinay.belgaumkar@intel.com>
 <ci2sl6gcfnwqd7o7pi4js5sduwx22szch4lx4sghugixipexhb@4ajmfxfbngr5>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <ci2sl6gcfnwqd7o7pi4js5sduwx22szch4lx4sghugixipexhb@4ajmfxfbngr5>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0115.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::14) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|IA1PR11MB7272:EE_
X-MS-Office365-Filtering-Correlation-Id: 44487ba2-db39-4f66-86b3-08dd4053b860
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VC9sN2N3d1JwTkR3WXFzQU9kSUs2Z1JiWHBxOFJWTWFmbVFwRTl2Mlhoa3E2?=
 =?utf-8?B?SGdBMGZjMUxDZUpaSFRIR2FxTXZ6VjVvQVFuKzJvODMxM2JEd1lQdFUxWjdB?=
 =?utf-8?B?cEZnNkFEZE1EcC9mYSt0MHk3YmZwYVZZWU01VlkvNk01bEs0NldXVHEwR1lN?=
 =?utf-8?B?NTVvSVU1ZXRyYWY4TnBzSWFobE9iYWpyNGxLTVpwNmdyQlMrUU1UalAwTHk5?=
 =?utf-8?B?MkZnTkU5aUx6OUIxdHdnL0FveFRBcjBaUnc2MjgzK01NSGVveW9ZSlNDTkFz?=
 =?utf-8?B?b2dxbUwwSmZKbzBFUWZEdzFJUHpSUWJzZ09ibXo0RGp5UDFFeDVnSWlHc2pW?=
 =?utf-8?B?aVg3aWdreUgxUTBHcXFxS3FKN3ZSUXZQVEw0elR1d25lL3hyZnpKSUJBVFg1?=
 =?utf-8?B?YnBzbTZSd2JHbEpSdExab1JaQTQ5citDejBYOUhMU2xHcjQrb1NPZjV6LzFk?=
 =?utf-8?B?aE9NNDBjU2NpN1lRNU9jYjdNZEtFYm8vM1pkbnVSMzg4YUZ2NmNIdE9XbEJP?=
 =?utf-8?B?dVJPdVFDVnBhT2xGT3h2ZGFIcHpsc2FlN0I3eSt5WENUYjBQRnRvZ2xvV210?=
 =?utf-8?B?cmpER1VjREh0SzlMTGRkZHJRdHlPdmEyeWtmSzNxUzJmOEJ2RWNock1oRDdL?=
 =?utf-8?B?dVUzdVBBSXFhRU81Mm5rVyt0RGtnRmQ1dFgyWXk0cGVmbFVOS3NrZUJVaW1z?=
 =?utf-8?B?RnpFVGdNOG9nOVhxKy9sakhUMTZCajZ5WVhJSzJSL1BPQWtRZzhHcmVxaWtS?=
 =?utf-8?B?N3BsUG81dU1ZdkR4dUxiZUZhN2Z0SCtWS25ObEUzbjRrZVNtaEplNThaalhS?=
 =?utf-8?B?ODlKN0tVUlF5L0twZ3Y0TmlmUXZSbWpXSlNpWkExdTZBTVpIOUpZVU9lUjU2?=
 =?utf-8?B?d1p6dVN5Zk5JcVBPbHkyeXFGSUltOFowVmF2Sm9mZkIzWFUwQmNZUU9rbnBD?=
 =?utf-8?B?OFc2VExxWHJqUDhveW84ZG5kRjNUS2FHd0FRZnhaa0ZSRUh0U29ZYmtaTUJC?=
 =?utf-8?B?MWNRS1hoanJPeFIzSXIvQkFLYkhCTUhkZmwwSXI0cmF6S25WRGIvSlFocno0?=
 =?utf-8?B?cUhTb1dkOHVwK0N4T05oYy9OWHhrdFZjbWVBTnluOSt2UjU2c2cxdEtwWHhv?=
 =?utf-8?B?TUkxM2ZzRGxXdTRhZzExT1lDRUl5L2FHRCs1b3laUXNxWkR3cmRIalRKOHpa?=
 =?utf-8?B?OU1TWXVaeGs2ejBzM0RzdjBpTWlJSk5hMU9lWDR3NHhWOHVNbmgyQURtaGdL?=
 =?utf-8?B?T0Vyb1Vvc1VIR0R1ZXlDN2R1VDgzdDFxRXNHTXBvMnhnRVJRYTlwa2pEUzhL?=
 =?utf-8?B?NUFKOHRwTHlPRmRhbThMQWRsWWlmdHBPY1c4Mkx3NHFDYllWNDk1U2VVeVVL?=
 =?utf-8?B?aDVjTmdZbVo1MGwySEY1VUJzYWFidVlmSU5wV3liK2VCT0UxenZJUDkrRGYx?=
 =?utf-8?B?UVFKUHkweFJsRkV4NGNuRGNtYnpXMGs0VjdtcXZBOU1uQkdQckJheDNXcHNr?=
 =?utf-8?B?VnpOODFHSmwxL1BCMUFvQjRNMU1FTmtBbFJPN0tHWE9maGQyS01XNXVuSGhO?=
 =?utf-8?B?cXIvaVlmenZSanQ5L3JHdzFzTmpYQlhObE1hWDZJWW1KbitZSjlxRmx2QURU?=
 =?utf-8?B?OWpvWTFrUmVaeFRwM0Y3azZ2L2lwMXJLREVGL1hsL054NjJCQ1U3WEI3Tnht?=
 =?utf-8?B?TGgvejhsK0hlTW9SdnZiNnhzRUZxbW1zOUx2OVI2VkRvOHhlcUJpemJYOTY3?=
 =?utf-8?B?dGl2N2VYdDVmUkIvWjZEUWZ2WW9BMmhDNFRKY0c1eEQwU28rUkNvMUFxY3ov?=
 =?utf-8?B?eUU0eGVuVHVJaVczSVppdkxldFpZT0pIaFNFbTdOT0lpNU1TR0QrS1gzU3I5?=
 =?utf-8?Q?wT1zx2Oy61+f8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0xhUWxpVnIvWkFGRWhFSEY4djEzVVNPdUxFeStybU5NdDVrZGxXS1lnVksy?=
 =?utf-8?B?OUFmSkFUdUNuNitGaysvVG1qc3U3N3lGbVd5bGZuVU90c3djTWtYNmtKU1JS?=
 =?utf-8?B?a2N6d2pabXgrRkJlN0l4cHUzeDNhcG40bXpaOVYwV2hnNHlsY3owUEY3cm10?=
 =?utf-8?B?Y0ZqdVZ4bW1LSkMxTSs2VFBVYnlXRmg4N0FIUmZZRGlCbXQyMHZzTG4rTUMx?=
 =?utf-8?B?TG9ycGR0Q25jSm0wampRRnk5MHkyNFZwdmViUFB3TDhSNVMzc3JyaG1jRWtr?=
 =?utf-8?B?bDVQRmpyWkxWSnZvcUQxTHNXVGpYZUhzZlV1R0NKZkE3akZpL1hhZDVUaVpu?=
 =?utf-8?B?d1p6d0d5TFZqVHllWXFPelZIb3gzdWR6Umg0QWY5K05hdjN1SWt2VDV1d3Zi?=
 =?utf-8?B?ZUFUaTRHS1NyS1gwZEFhYmFKK0ZBRDF2cUVYNFBMYmxHenMvUjNhSDkybEsv?=
 =?utf-8?B?M0xZMDlsZFFKdHZXNkxNQ3VuQ0czOXRFSXFKR0swQU1TekN4SytpQksrOWhI?=
 =?utf-8?B?b25rZnJpL2dVNldRcGdnNEM4Q2NwTWN3UGFiOGs4VkhNWXJpdlFZVDV2UVV5?=
 =?utf-8?B?RlNEWVhlTjFJejR0TnJheVlQRmEzdXpHbmhmKzVMRVpIOHg4Ri9RUGRNQWdC?=
 =?utf-8?B?RzFUV09SVmsycDN4TEUxaG1uU3RqSUtFM2NhWE9vSkgvaFNMS0RtT1hSY3hq?=
 =?utf-8?B?R0VCQ2VwclB3ZWw5T2pCVHBXdndOditXVEgyekNjeHRnVC95Zjh0TmFNWXRQ?=
 =?utf-8?B?Q2xsUnNCZXFDUW9JaG9WWGVRbVluUzh5UFR1azV1d2JyTTkvYzBNZkdxKzNq?=
 =?utf-8?B?UEpERUlFUERPUVdNVStxMnNGc3VZSlc3c2owdldMWS9JMW1hRzlLdHR2OW5X?=
 =?utf-8?B?TXZONlFDZWpYcHpMaGx5c3ZPdThrOUc3Q1pQNS9yWDNqSXludnYxTlphVHhG?=
 =?utf-8?B?WkJDYnZYUWt3OCtYNmVMcmRlbCsxMnFpYWRXWDRCaEVtNURmU05EeGtVbzlO?=
 =?utf-8?B?TjZ5SEF2OHg2d3BvRmJ3ZHduMmNETFYycFdLYVdJa0s2MmtSbnNPQ0llRW94?=
 =?utf-8?B?cHV4U1VET2pnVWUrTEpZVWxXOWVrR1lqYlB2SjZma1o5cllTUEl5WkNVU0Mx?=
 =?utf-8?B?NDFoY1NxRU4vRTVKVHQ3RW1DK0VZU0tzamxiRDdmZjR4MGJOV09lRmovWk9D?=
 =?utf-8?B?QzR4UlFPRkR6ZkhTQzV5b1NNbVdKQ2hiSkE2a3RWYkg0cVNzbFJhQi9GMW1t?=
 =?utf-8?B?R01JQ1RIUzNPNnhNVWFUWkh4cmRrUlhvbXY0a28yZnJJeEk4Sjd1am9sRXpQ?=
 =?utf-8?B?Q1l3ZWdvamJHYjVsWVlla2QrK2lVY05xYlNZVmJsd3l1dHpCaUF4eXA4dkJn?=
 =?utf-8?B?dGJFZDF5K3ptaXNOVTR1WVdsOWZCVFB3S0ZIMHVTMVYwbmo3d2duRmYrdTg4?=
 =?utf-8?B?R012bERhQXVMSDNaUXUxRnRMOUtOTDE5UGliTmhadEFxd2ZHNWZ2Tmw0OUwr?=
 =?utf-8?B?OHpQenhPVmxsc25vNjlwdjl3WGlTYzhLSWtKaTUxQmFXUnhvT1hMaXhocVZj?=
 =?utf-8?B?QzdWYUN6MXlqZDhxL252RDJ4TzVFZ1ZMcSszZE9aWWtaUmUrQ3c1ZWh4c0N0?=
 =?utf-8?B?V3UwZmM1NFJZNkZoQS9YNGpQbSt1NktEczlPVDJDbFVXV3VVOGNzdTJHbXhl?=
 =?utf-8?B?QWdHdnBrSDBkR2x4WkhmcHY3NWxtRjFSaHpYc2J6dTVWdEJ5dWR6ZjJmVnNl?=
 =?utf-8?B?S2plZDZQQXhTVkNRWUVEUGoxc2VpaGFxMm9lbEl6SFJNWk1jdUhnTHY0TXhI?=
 =?utf-8?B?SEp6d2kxMldGdFNzSU1XQk9mOW5PS3FRYlFXUVhzVzlrRmN2Y2dueFFxbHBF?=
 =?utf-8?B?Y0ZFWXZmVGFzZGFPbndhbUt0a2FaSXBxZ0tUQk16YTFEeno5KzZDVG90NVZX?=
 =?utf-8?B?RnFzV0pBMHl5ZS9RVWtUTURhY0NPVTkxRHhyVU1veW1SdVNUTmp6THFpTXJZ?=
 =?utf-8?B?VGN4SHNBdy8yQnhRMkhpMjJ2TC8rSG1FT2ZiNit6RU1YUFNueWVVYzNueFRu?=
 =?utf-8?B?bHdNMngwMVdua1ZUKzNQSWxCNm9xUlJ2YVZCMXNwUmplcHFtQzlZZ0hEWmsr?=
 =?utf-8?Q?cbWOs+Tazc/+OGEflbbhK1bEs?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44487ba2-db39-4f66-86b3-08dd4053b860
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2025 10:57:27.9820 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iOOOvssWGL5jpEP7U/iZEp5mqyVqWaZ5911oxP66Oqy+jOztNHnFlZYy05TsGZSRiL/xHb5EIX26DhdgOo9y4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7272
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

On 1/28/2025 5:00 AM, Lucas De Marchi wrote:
> On Mon, Jan 27, 2025 at 02:33:00PM -0800, Vinay Belgaumkar wrote:
>> Functions to parse event ID and GT bit shift for PMU events.
>>
>> v2: Review comments (Riana)
>>
>> Cc: Riana Tauro <riana.tauro@intel.com>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>> ---
>> lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
>> lib/igt_perf.h |  2 ++
>> 2 files changed, 72 insertions(+)
>>
>> diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>> index 3866c6d77..7e81d5516 100644
>> --- a/lib/igt_perf.c
>> +++ b/lib/igt_perf.c
>> @@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int 
>> buflen)
>>     return buf;
>> }
>>
>> +/**
>> + * perf_event_format: Returns the start/end positions of an event 
>> format param
>> + * @device: Device string in driver:pci format
> 
> driver:pci seems wrong and is not true neither for i915 or xe.
> This is actually the pmu_device:
> 
> /sys/bus/event_source/devices/{pmu_device}/events/{event_name}
> 
> and
> 
> /sys/bus/event_source/devices/{pmu_device}/format/{field}
> 
> 
> 
>> + * @param: Parameter for which you need the format start/end bits
>> + * Returns: Start/end bit positions for a event parameter format
> 
>      Returns 0 on success, or a negative error code on failure.
> would be more accurate to the int return of this function
> 
> 
>> + */
>> +int perf_event_format(const char *device, const char *param, uint32_t 
>> *start, uint32_t *end)
>> +{
>> +    char buf[NAME_MAX];
> 
> it seems this was part of a previous review, but I don't understand how
> NAME_MAX is related to the buffer size here. You use it for the entire
> **path** size and then re-use it for the buffer content.
this was to avoid numbers and use existing macros instead.
NAME_MAX or PATH_MAX anything should be good based on the size required

Thanks
Riana
> 
> Well... don´t really care much: as long as we don't overflow and when we
> do we fail accordingly, should be good enough **for IGT**
> 
>> +    ssize_t bytes;
>> +    int ret;
>> +    int fd;
>> +
>> +    snprintf(buf, sizeof(buf),
>> +         "/sys/bus/event_source/devices/%s/format/%s",
>> +         device, param);
>> +
>> +    fd = open(buf, O_RDONLY);
> 
> O_CLOEXEC
> 
> we have igt_sysfs_read() that could be used here (note dirfd is ignored
> when path is absolute).
> 
> not really blocking this as is though.
> 
> Lucas De Marchi
> 
>> +    if (fd < 0)
>> +        return -EINVAL;
>> +
>> +    bytes = read(fd, buf, sizeof(buf) - 1);
>> +    close(fd);
>> +    if (bytes < 1)
>> +        return -EINVAL;
>> +
>> +    buf[bytes] = '\0';
>> +    ret = sscanf(buf, "config:%u-%u", start, end);
>> +    if (ret != 2)
>> +        return -EINVAL;
>> +
>> +    return ret;
>> +}
>> +
>> +/**
>> + * perf_event_config:
>> + * @device: Device string in driver:pci format
>> + * @event: The event name
>> + * @config: Pointer to the config
>> + * Returns: 0 for success, negative value on error
>> + */
>> +int perf_event_config(const char *device, const char *event, uint64_t 
>> *config)
>> +{
>> +    char buf[NAME_MAX];
>> +    ssize_t bytes;
>> +    int ret;
>> +    int fd;
>> +
>> +    snprintf(buf, sizeof(buf),
>> +         "/sys/bus/event_source/devices/%s/events/%s",
>> +         device,
>> +         event);
>> +
>> +    fd = open(buf, O_RDONLY);
>> +    if (fd < 0)
>> +        return -EINVAL;
>> +
>> +    bytes = read(fd, buf, sizeof(buf) - 1);
>> +    close(fd);
>> +    if (bytes < 1)
>> +        return ret;
>> +
>> +    buf[bytes] = '\0';
>> +    ret = sscanf(buf, "event=0x%lx", config);
>> +    if (ret != 1)
>> +        return -EINVAL;
>> +
>> +    return 0;
>> +}
>> +
>> uint64_t xe_perf_type_id(int xe)
>> {
>>     char buf[80];
>> diff --git a/lib/igt_perf.h b/lib/igt_perf.h
>> index 3d9ba2917..69f7a3d74 100644
>> --- a/lib/igt_perf.h
>> +++ b/lib/igt_perf.h
>> @@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
>> int perf_i915_open_group(int i915, uint64_t config, int group);
>>
>> int perf_xe_open(int xe, uint64_t config);
>> +int perf_event_config(const char *device, const char *event, uint64_t 
>> *config);
>> +int perf_event_format(const char *device, const char *param, uint32_t 
>> *start, uint32_t *end);
>>
>> #endif /* I915_PERF_H */
>> -- 
>> 2.38.1
>>

