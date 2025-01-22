Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E98A18E20
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 10:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468DB10E69B;
	Wed, 22 Jan 2025 09:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZBRCofj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7EB10E69B;
 Wed, 22 Jan 2025 09:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737537094; x=1769073094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=h9Az+q+25D4oNq2VxA4Gz2OBwgvclqtw1H1UbOm4tdA=;
 b=jZBRCofjC4/gIcHY3oKFmwLeWDAcOKmii2WUdgv9b33qpsmcM3Dmpfsc
 wOHr1RaFTpYWhw/41zOCNnOAdFHcRSAMKFKBtU2pdfM7FpGKKplcefEBA
 KvVj+n0MAW/baAOZIDG1CkV0aFDSluQlZekMRJwVIdehlqVc3wxXo2D7z
 mj9LHGBcpJtKs8D+b4xqBhEoC6V7ovlj0XLHe0+b/bQYOhjQ6iJbwiAAI
 9/2OHP+seGxto9CSCK0ZSGI6UblbXZbU771Wgi86htnAxude4lDsaX2DF
 yObxiyeIoDFBA6UzlaeJ5C2ZqvcllnDBti7aGJ4UHixb2foe0j63Q67SV Q==;
X-CSE-ConnectionGUID: rgMVDd5ZRcuUcL4w2cfCaQ==
X-CSE-MsgGUID: ArYatoaWTMqRlmAVmWsWlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="38136340"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="38136340"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 01:11:25 -0800
X-CSE-ConnectionGUID: 7qfvAAbCRKOP1KEsCDggdg==
X-CSE-MsgGUID: 9ZsdruetTgKipbNLOMgylQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="107001431"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 01:11:24 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 01:11:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 01:11:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 01:11:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mDodp07RTlgDu8uAZ+jjb9BBd6U9vctF4UUfxqsGZCgc9/1yG+y2bNtCGiZVi1n1SSZyrfNFIQm+cSza8IbKCM1ViF46VFKyi+VY1CDjEmNT2lU871AT7mr7S0Ygw9ijru2co7Z0R4qBQI17ls4Evhzk8fppnnKXYQh+/M2o4l9H02h0LqNY2feEJ6ygwQJVw89M3kM6C5b5L495iyFtZdL9Oj0Awvzk4gWpLAZSFu4xeD5nNzKSOAw6kfNONwkU1jHUJW2aojAVv/XzUah6OJp7lZVUb7skT08yUbm7LRUBU4OXx8DGk6oyMMN+KG1sfphChRg8TBY0v53FEPNXrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1KuVBklhmuH2apyoitRRWQMWKklYX4phclWkeGMMF1M=;
 b=rRmoeWEouxrX5IB3XS/stx3612NmrM5sleDqVF8UoukUF0qCbX/EJSUXDS+Wb16oqY/RbCQE2je3nCkDfc2cfFeIpkWJHcsrh53Uf45Ksg6A2RJyYxkKAuvy8JxvNaFGRzfC8K4jiIqjNLpgz/zKyUAvQJ2tgj8GSYQZgw9qfLAheLLnobg8ahWuZmo0D9qxht3HfrRNyIyIiOH1Qa9Il8uJZ2g3VViUyDaa9qdv2KhFdwu1nGDp0PLdG0d4TlBlVtAFEUQNvZ9zOyJZ/VLEbT5NkoJSkvznAnD5bJj/KUR87YEysDjjrNI8XfiEeIkv2E388gqxmvO1YJb7i1iWcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA3PR11MB8075.namprd11.prod.outlook.com (2603:10b6:806:303::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Wed, 22 Jan
 2025 09:10:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Wed, 22 Jan 2025
 09:10:40 +0000
Message-ID: <5848e8d3-8b0f-4d98-bc19-ba21b13444e5@intel.com>
Date: Wed, 22 Jan 2025 14:40:32 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/5] Add HDMI PLL Algorithm for SNPS/C10PHY
To: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "ddavenport@google.com"
 <ddavenport@google.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
 <444eadb3d664c4624c70d8205770b28e75b2061d.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <444eadb3d664c4624c70d8205770b28e75b2061d.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA3PR11MB8075:EE_
X-MS-Office365-Filtering-Correlation-Id: 03e2c641-8fb4-4168-8f93-08dd3ac4a428
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SlBmU3R4REFpcWYzRU1hZ3h1L21YZVVNekVCQlAvVG4vREdDdmpXT3hRclVv?=
 =?utf-8?B?WDRqQW1JeEtYSHFYRitaZjZFUlZ1YWs5REVLNlB6dEliZDRFd1YwY3RWUWk0?=
 =?utf-8?B?VTlvR1VVQzVoZ1ZJaGFiSjlHNEpwNmp4TXpyUVI0MWppWWtpZzlTMHJtN3JV?=
 =?utf-8?B?UDZibWp1VU1iNWNQdjNZWUhKY1FWdnoyQzFKNEFDUDZxMStxVThiVDhDK2NK?=
 =?utf-8?B?aUFDK1p3d0hiaGsrWWVFVkZDNldVOWx4TjZqcEdROWlCWkkwTTNCQW9GYmtP?=
 =?utf-8?B?NExTd1hKNnQ0eGxKNTd4SmRJOGVFdHI1NVVBSitKeE1BRHZwWFRsSU9Gand6?=
 =?utf-8?B?bWQzMW00NEdLbWhJRFJRV3pEem1tUjR1NWJXT0FLcjBYWHVUVDV1K2tpTllP?=
 =?utf-8?B?ejl0cG5yQlFqSEg3V0hST0dQUTN3T0RBME5ITm41QU5nK0xWMXhqbzVwSlow?=
 =?utf-8?B?dzQyYW9IM252MnkweWFhUVkwQTJUTzJDZWw5RVhyemhSdUM1NFFzZiszT3F5?=
 =?utf-8?B?VVo1M2xPWCtOZ0hkUkFTRWlVdFBWczZ5ZS9XeG83aTR3cWNWRU9SZ0tqcmNj?=
 =?utf-8?B?NUVORUV5UkhuWEoxeVJQV3hmL0d5RjFTREZWclk3S1VaNitjK2tFM2xqZHlo?=
 =?utf-8?B?UG5yRGYxZGZGdEljaVo3WmhnU0xZVktoTWhmSmx6bVJUbDBwa3RaQVE5MUNy?=
 =?utf-8?B?YUFOdHFzeVZhWTRRRTRZTHlkNWI3WHhLNVVqU0d6NXN0MHZqbUdPckF4a2tT?=
 =?utf-8?B?a0ZQMmJBOUxTOXJ5cGZSMWRBRjVqdzl5dmIxNzlndVRHMHFlUEJ5TzR2cDlY?=
 =?utf-8?B?Z1k3TTZzY05aZmF5bWxEMUQrMmJVSmNJajYwVUgxV1RjYzcrN1pFNUlSbTNl?=
 =?utf-8?B?TndvQi94d09DRG9sOVNKcnRidHpQdC8zUGVvZDU0WnlEY3FLUkwxaXh0cVJt?=
 =?utf-8?B?eHNyRG1Kb2YyaFkxRVZzLzZia2NsZEVvUWJRUGc3eXpPU2U2VlNEWUNNdlg5?=
 =?utf-8?B?b2JRUUovayswVHhQU25XRVF2Z21BdWY3ZlNQcFNUWGdPMGFzRkg1b1NhVWFv?=
 =?utf-8?B?RUQ1WlJTWmxQUVdTdlYxM0FQTUZ6eVF5dTNWeXc4NHJ1NUMwdkRYRmVHYXg1?=
 =?utf-8?B?QkJyR28xajJtN29oRkNxaDdnZGUzZVloYXB2KzdUdUFKRk9UUWpwZEFiWHRU?=
 =?utf-8?B?UmhuU085YmJKY05KbDhsc1hRSlNvT3QvcklBNGNoRzN6ZDR1bTRickxtRDVG?=
 =?utf-8?B?RzJ6QTJFSkw2akMvQkFSUmdXR0xpY2F2VGxucnhQTnljaXE2S1B1eVNRbGJP?=
 =?utf-8?B?Sm9ObkNiQUljK0JPNS9FSHNLYmUvL3dNa1JHWGlBamEwUFoxdlI2WkVLNFNn?=
 =?utf-8?B?bHZJTTdrUnpUL1FWRUNXRitVUDlzQjZITmxYbnVRZGJ4WHVzS1NteSsrT3gv?=
 =?utf-8?B?d1BjZjMvdEZGOURzb1djc2dmQ09aZUt0anZYRlhBanRtQlZ2WjZTV1AyS0xj?=
 =?utf-8?B?SzhVY0Z2YzNGbmlrM2poR3l4WXZsdXNvVXREWTBTanN0VXgvUzlLbXJhN0RI?=
 =?utf-8?B?NEEwaEpaZ1lvNUx5N09FYmZXcTQ3NjhrYjBXUWMzTnErZ21aYlJnYVFDNVpa?=
 =?utf-8?B?S29CYTE0SlZzSkxmdThkNytrOEduYVJXYWg0VC9aMzBoRmZlZE8zeklOa3Qw?=
 =?utf-8?B?bTIzTVcrd2Q0K0dBSEE0RjZmYzkyNWRrOG9wTnBTQlQ5ZlZWdHBRT2pHRS84?=
 =?utf-8?B?ZTVhbUlsRkh0NXY2WFU4TDd1clBJbm1BOTZnNi9CcGF3QWxsWUhadzJQUWFO?=
 =?utf-8?B?VGNSeTVReVBjakRuZkZjUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ay80UTloc3lLU2t6VU1rZml3SkxTK0I1MjhYdTBFODFNUWN0TnhkRVJvVUtL?=
 =?utf-8?B?T3VFS2tUYysxS0pmNGhDejJJNkRIcXlEU0oxbDUvbjZMUWZQZGgxcXNqeGFu?=
 =?utf-8?B?VWtlWUFIMlgyQW1nUFM4ZFNHL0NNS1ozT3kwdkpxcVVMWTArTTM4ZUpHMnkv?=
 =?utf-8?B?SXZOSGNhb2pHRHFEdzZJYTlscS9oOHBjNzRiNXhYd3pOZXExbFYrNUlkU05F?=
 =?utf-8?B?TGRPcmQ5OG9KUVBuZXd4dFRrMVYxR093NUVJa1ByWEVxK21Vc0xkQTN6SWZD?=
 =?utf-8?B?TTR2STlJVXBNUHVtcXUvVkZGcmJTTFIybk92RzZtNmJhT24zUjVGZ2l3ZzU3?=
 =?utf-8?B?bXZkZkE4ck1NRy94eWwzdS9DSkRYYW5YTHZObFA5SkJGREx3OEw1R0kzeGdy?=
 =?utf-8?B?UURvQm0ydjhpTWErUnZzYXFmNVBuMzV1cHFEYW9nTVJVczNNZFVrdC9CVWx1?=
 =?utf-8?B?UEZKWUxyZnZtQkk1QW1jSzgyNC94N0RESWp6a0k1SUpIMFlncWpFVklkczd6?=
 =?utf-8?B?OHRIc3E4T1N1MDY3ZHU3c0tSK2YxRVFoWEpGZ05jbWhIcU9yUFdUbXpDb2tz?=
 =?utf-8?B?ZmdEYm1kZzhDd1BkV2tEeW03YlYwNGRWeDI0emttL3VObmh3dUd0aGFCVzNP?=
 =?utf-8?B?UkNZN1pKOHBnNWJOdjcyM3duVWJYN1pGRlI1Y0lxUHZYUElmSXZvN1ltTzhU?=
 =?utf-8?B?c0lHRzBVM1VwVnA5MStGSmk1aFFOaEZpejdDTUkzeVY4Kzc2UlVZendMU2dh?=
 =?utf-8?B?MC9tTWxrcTZDT2h0VGNSS2hldHNWVWhjQXJjYmlFemJOQjQ3ODljaHJoUWZn?=
 =?utf-8?B?cnQ4MU9BNVpialh5cTh5VkZCQnlkK0JWeEhKSUxtenRld0NEcVJWQmtpRHcx?=
 =?utf-8?B?S3pmZTlCRXI4bCtTdjdwSTVmUVpFbDhpTDY3MERod2dlMXRLV2N1MEFJc0Rw?=
 =?utf-8?B?ZGhHY1NXaHBIaXhjTFQwR2M0ZzZDSVFveUJaeDlDQW9RYUdKQ21xZ0NVRUt3?=
 =?utf-8?B?bUoyRnBzcktJeWZNL01BTUpWL1p1SEgyUEYwKzZiNFRXMDlmQU5BazJoZC9W?=
 =?utf-8?B?MEx3OHFhNWpTVFFyanBaaG0vYXlNM2swdmtzTjU4YnMvZkllOFozRklGZ0lG?=
 =?utf-8?B?YkRRM2tiZ2hRcVp5dEdWTVhvWXRnRExQVThnZmN6MG1FMWVmUFVlamcxVSsy?=
 =?utf-8?B?K2tSNmk0WU45aUF6ZkxTNXhiTERRTFpYbDhsUkkyQW14aHJiaEZERmVIeVlP?=
 =?utf-8?B?a2ZQMis0Vk0xVm56dU8zSXY2WTcrMm0reUtRN3Z3aGxJYnJPYWhwTkt0amtV?=
 =?utf-8?B?bGZBMnVFK2NxNFA5ellhYzMrMHNBWE1LaURvTHQ3Y3lJSFhaelFRRmhMMkRI?=
 =?utf-8?B?d0NYdGhROElxWlpJdmR5QWt6NENaT1llZit1Tkt3d00rYUZWSkJJS3B0UlJF?=
 =?utf-8?B?RTNqcTBtRXlCVFhySHN4SHVtQ3RHTlZKZms0Q1BEaC9iM2FoVUJBc3F1NHJz?=
 =?utf-8?B?cldtYXdqU0NzS3BEdG8wc0tyaTFJWk10UGpST28rUVBPMjVQbUczM1FWSjlE?=
 =?utf-8?B?cVhGSFZWNWZ4NC9CdGhhdlhxem9YSWdFZ3ZIQ0xSeGQvdHpMVnJndWR3ai80?=
 =?utf-8?B?My9XSkVlMmtEdjhlYVg5V0cwd1V4bjlGN0tmV1U1Y0p1ZjZ2Nm00WGljVTBD?=
 =?utf-8?B?R0hUTWtkZWVXTkxEVXRDbGk0L29SNUFJS2ZOWHd5Vit6ZE9CSnJZR0h3K01R?=
 =?utf-8?B?RjU0Sk1pMGZkTzlCMUFmREVERHBnbDVuaGxHRnkzcGZPanBhM2JQVkhXbkpS?=
 =?utf-8?B?czZxZDc4Ri9CNFZhTEtyeStVY1lqdjV1aSt4YzBLOEJFcE94aGpVNzVGeDN1?=
 =?utf-8?B?WjdXbFYyNzQ2aDdRNGFPVk1yMVJoNEpiS1JtQkNKL3RIVDRObkkxY0pEWmt0?=
 =?utf-8?B?d2RCclJJVmpETTFzZ0JRa3hsdzhNUTQvaExpMlhNaCtpRUo2am4wNE9wSUxZ?=
 =?utf-8?B?UkVPYVE4V2NadkdCQWNsWjBqVzRLWkUxQmg5THVVWWxWbjNDeEpQcGNmYlZZ?=
 =?utf-8?B?YVFZQWNjUXdlbjZhaU5Zdndnbmo1RU1xZFFXdmtKZDQyL2QwejF4NGRWYnpL?=
 =?utf-8?B?TlVTTzVLY1lGUXlFTGpSWWl5OWxyUjBrc1BSdkx5RE82N293Z0p3bVA0VXU0?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e2c641-8fb4-4168-8f93-08dd3ac4a428
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 09:10:40.5549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 66Z94PKgBQ24RARliZuVpyAZwKY1t3jc5xzmRTnmO7xBVNLafDsc/EBvt1QeKzciwg0mv9ag0nfio0J7yj7ekPsuIZzuqj1uLk1fDe07+CQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8075
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


On 1/22/2025 4:15 AM, Almahallawy, Khaled wrote:
> Thank You for the series.
> Tested a modeline that is not pre-computed and able to see pixel clock
> calculation done correctly and the analyzer turns on:
>
> adjusted mode: "3440x1440": 50 265250 3440 3488 3520 3600 1440 1443
> 1453 1474 0x48 0x9
> crtc timings: clock=265250, hd=3440 hb=3440-3600 hs=3488-3520 ht=3600,
> vd=1440 vb=1440-1474 vs=1443-1453 vt=1474, flags=0x9
>
> Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>

Thanks Khaled for the testing.

Jani, does the series looks alright to merge?


Regards,

Ankit

>
> On Mon, 2025-01-20 at 09:51 +0530, Ankit Nautiyal wrote:
>> The HDMI PLL programming involves pre-calculated values for specific
>> frequencies and an algorithm to compute values for other frequencies.
>> While the algorithm itself wasn't part of the driver, tables were
>> added based on it for known modes.
>>
>> Some HDMI modes were pruned due to lack of support (for example
>> issues
>> [1],[2], and [3]).
>> This series adds the algorithm for computing HDMI PLLs for
>> SNPS/C10PHY
>> to work with all modes supported by the hardware.
>>
>> The original algorithm uses floating-point math, which has been
>> converted to integers while preserving precision. As a result,
>> the values in the existing computable tables are very close but not
>> exact. Testing with DG2 and MTL on various panels revealed no issues.
>>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9722
>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10654
>> [3] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10956
>>
>> Rev2:
>> -Change the name of the new file for HDMI PLL algorithm.
>> -Fix styling issues and bit refactoring for readbility.
>> -Fix issues reported by kernel test bot.
>>
>> Rev3:
>> -Modify the names of helper functions to align with filename.
>>
>> Rev4:
>> -Rebase, added Bspec references, and address review comments.
>>
>> Ankit Nautiyal (5):
>>    drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for
>> DG2
>>    drm/i915/snps_phy: Use HDMI PLL algorithm for DG2
>>    drm/i915/cx0_phy_regs: Add C10 registers bits
>>    drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
>>    drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>>
>>   drivers/gpu/drm/i915/Makefile                 |   1 +
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  49 +--
>>   drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   1 -
>>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  24 ++
>>   drivers/gpu/drm/i915/display/intel_hdmi.c     |  12 -
>>   .../drm/i915/display/intel_snps_hdmi_pll.c    | 364
>> ++++++++++++++++++
>>   .../drm/i915/display/intel_snps_hdmi_pll.h    |  17 +
>>   drivers/gpu/drm/i915/display/intel_snps_phy.c |  37 +-
>>   drivers/gpu/drm/i915/display/intel_snps_phy.h |   1 -
>>   drivers/gpu/drm/xe/Makefile                   |   1 +
>>   10 files changed, 427 insertions(+), 80 deletions(-)
>>   create mode 100644
>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
>>   create mode 100644
>> drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
>>
