Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC9DA2A448
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 10:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A7FD10E7F8;
	Thu,  6 Feb 2025 09:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RdyoZ6ry";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF0A10E2E3;
 Thu,  6 Feb 2025 09:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738834096; x=1770370096;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=b1xUWeO683zGJ6OEYw86BX7iA+K12htiU4MsHEBEfXM=;
 b=RdyoZ6ryWecWt7o4zaHvieeFeR6efD74PsopWWQih2a4NwMXrhO8PKx1
 XoxfgfMLN4yHW8HQOY36kAIerXsAqweNTsg+2RSG2JqNSFABZtlvwkvlN
 vA04wX1n2nl3iCvfme6Neb/o6C4vRjah8qWRvLLlOuWcLbwzydV26QEBb
 d0BXs7ZqxypMgHNCP5g/2dlPuLlBJ/LjTxGsvolAkLVmSBCXC9ewG/GrL
 DvNcwkDuGOvJL4EkZlywuSSSoyFaIS0L+1m3zXgyUc0gom3XKfCGmlGgv
 sX7qrOehYkXMDYhUFoZxSYj+xMis1rwibiqKVId5ykRH23dGaociJLILI g==;
X-CSE-ConnectionGUID: RXObLP+ARnKoe1IIZLQXbA==
X-CSE-MsgGUID: 5fnduqxWTmyyvQ07seEqzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49673513"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="49673513"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 01:28:16 -0800
X-CSE-ConnectionGUID: ipD7Zxh2Tea5tOhz8dgAyQ==
X-CSE-MsgGUID: Sj8jZGwjQ/SzIG/EjUgOPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116351362"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 01:28:17 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 01:28:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 01:28:16 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 01:28:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K1bi+DSQW22QdZ0TWrMUH4x4MCOPT+t8jEJBEYRWDjcMqwBgsWQEcY/AJs/mdHjNJFTWVC0h3gw/EhC7eTE2XXhENW0S1D/hDDPbegs+qu3P3IYpKhrFl7vafj6bUCrDlAYJf3VG6XTEcItf+iFT5k72NknbL30msWVXki/LA/CBD4oRdcPdhTh9rRzMpJwZFkIRrFNRe3UkCOkg7XtJJyJhKx4vp5bLH6IW25YDQKK5zZZfZC+qemr33Z29SyV2e3gync1SjdBbLqKHtXVuThZBLcU606xub17zNZqvaDMJQrIvaZMSEPWJpEqWjpila0XfqYdVaUIOXR4rLlE9wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TmNyaj+QOy/q8tgk99wvQhYl9VmcJrmaRZJGCaLjk/Y=;
 b=FkiuDtlVpfAvHzhxiXXme0uGqQIuH321ermKPkI0TV7iPcXGHIrYuWxJUPIw/dkv2f053hu8yAS04UDmcEDaNzGt4zeOmrAH6vpJz40tjOgt8v69lhYafnaFZK/pj8vWW80RSMfWW4Zr66p1SaR+Y8Jq//A/m0hE0IJQriwucWmPJhmfQ4q9hx4xrXE6aiaOIVMObI+/+k5sSyR6UEWgyeyzsWd1XPvECZx8hnaGyx4EJY6RYPhwf/u2bgbX4Tgiyq1VE4XlcKH13DLELAMoJ8OrgAvFwrdtIIy3c2+dzfudMwWqP3asglDYIO2gxehomwrJmkFQEtj0Gd2FPiz0pA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5174.namprd11.prod.outlook.com (2603:10b6:510:3b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.11; Thu, 6 Feb
 2025 09:27:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Thu, 6 Feb 2025
 09:27:31 +0000
Message-ID: <0fafff1b-73b2-4134-b90a-217a4dab58fe@intel.com>
Date: Thu, 6 Feb 2025 14:57:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] drm/i915/dsb: Introduce intel_dsb_poll()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
 <20250130184518.22353-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130184518.22353-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::32) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5174:EE_
X-MS-Office365-Filtering-Correlation-Id: 5675fc55-5871-4197-92b4-08dd46907acc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1VPdktCZ3Z6NjNTRjY3T25lZTIxWjNqSmVyZXRLV2U4YWtYaGxxakJBYUph?=
 =?utf-8?B?b0x4c2RDbTQ2a2o3ek5ycXJRWUdKZmJWbGtrUXdXZk9wYVNzckxEQldnZjZz?=
 =?utf-8?B?NUdIM0I0UzR0Nk9xbGxpckRicUM4eHBvLytZRGhSa0RSWU13dm9NNGwraDdy?=
 =?utf-8?B?L3U1TGhVVHhBNElhaHk1Snp3TldCenhHU0xha05BdGxlM0F2K2g1bGZibkZB?=
 =?utf-8?B?SXJXbkxPVDd5R1NSdEN2MVRCUXE0R09tT05CbytqNzczbWRmc1Ixd0d6bVBM?=
 =?utf-8?B?OVpKQy9aVEFIb2ZmTUhxbjZOK1VYcGtqdTNWUG5vT2I3dGNDYUtNUUJXWHNU?=
 =?utf-8?B?WFdWblRqaHZiaDBrdzhKb2lVcGMzdVZmRzZLOHc1aTBmTVIyUlpwc3VjL2VB?=
 =?utf-8?B?ZU9SSmdaYW96S3lXVzk1SzBJcGsxOUIxdjU3VUo0ZGF6aUtZejJxS29MS3l1?=
 =?utf-8?B?cWNMcWlSZ2Vpa0xoZnp0TjkwQitBWkhoemE5SHpuS3dxU0trNXBSOEZhdTVx?=
 =?utf-8?B?UVFWZFgvdHkrQllTNFBzcVZuSnVsZnNWeE9oVHdQalMzcWd0R083cWl0ODJY?=
 =?utf-8?B?WEVHbHBUdTN5V3ZwS2x2RkRDcHZnZFE0K2ExS2Znc3ZkSkFUYllJdDFydXB0?=
 =?utf-8?B?Mkp6ZDJJTldIV0FJS1Q1UVJIT3NucXRmODcvczl4RGJhSzFPN1c5TVUyZ3g2?=
 =?utf-8?B?Ykp2Q3NkUEF6bkluLzJla1BvbFdkVk5BUXViV3hPNFFXZ2xKZHdPdXErVkV4?=
 =?utf-8?B?eXphUmsweSswbTVPMVQyR0lnUEhTVHg3ZzBaeEwveDVVdVoyMTRTbGV3OXQv?=
 =?utf-8?B?SXdaemlJQ0c1SXlPWmU2NTRicnp4RXVaMnljNFhrRnBHWmRqVERmMkxQWDJK?=
 =?utf-8?B?dTRDdzJ0QlgzdWJzT2liaG9KcytoOHljZ3U0YklEUU5haXVSanlGT3pmY2Mz?=
 =?utf-8?B?QU94NVdpRnVkMERQeGh4MmZuaDdud2JaeEU4dXdnTmQyYlpCNXl6K0poOVFF?=
 =?utf-8?B?emFKanl6M3BzR3VMU29jUkpkM1M2cXo1alovakVVK2xrUlB3SS90dHNwbUVj?=
 =?utf-8?B?bktLRlhDZHFIcGJoRnlRNkw0cUZxU3JQQ0lvb2dNTDl5ZElRMHNqUmh0REoz?=
 =?utf-8?B?NHVlK1NyNUd1bS9TUWdJcWpaT0F5dmhORFZSVUFhd2YrWElsd1dZY05zVUZX?=
 =?utf-8?B?cGRsMHU1L3gvMXVlOUJpL0FZS0pMakRMZTI2d1pTaVBPYVBTQTROLzNqNy94?=
 =?utf-8?B?eDYvWUNlaGVhU0dCY2lWcThwTnBrYzdKNFA4aTFkMDFIOWpMMVNOdHpSSFZT?=
 =?utf-8?B?NXNTM1R0ZkJMNXAxQWtrbkU0UzNqeDIwQ1QxM0FrNzhoUmhjMGlMZzNYYVFv?=
 =?utf-8?B?N05ObXEzeGRTdGlvRTloaWNqYXNyK2l2NXJqUjZyV1Q3T3UyVGRReGZ5cjdk?=
 =?utf-8?B?WGo4QjZZV1VxaFRLaEViQ2d3WHJ2NU9aZEQyQXBCcVpTNytQYUtqMjE4dlNP?=
 =?utf-8?B?b0FnMnZLVmFBZ3dydm1VZ2xrcmRaNkpvaFR1ckhsL3NzL0YzaHJBT2IxZXdU?=
 =?utf-8?B?UlVVWVJuVWM2Sy9ub1VPMTAwYjlJYXV4Tjc0ekxOQnlRSmNFUFZzWnR1Vmkw?=
 =?utf-8?B?SUNpVDJVTmVTREYyQWxNTCtoaVRSbWZNQ2tDR2RqMW9aSUdjamFSNW1uUVB2?=
 =?utf-8?B?TGJyZXBjVTdiRnlURGR3VzFGd0s5ZGRDRzVRNHZXMUtIaVNqZjA5b3h4aHYz?=
 =?utf-8?B?Q2tPNHV4aDA3eGF5TXBkTmlYL0czRkM4enMyV0RXWnpUUmMrTjV2VTN2aUQ1?=
 =?utf-8?B?aE01RHdxYVBhL1FWcElVUCtDYWVXemUrQ0lNODN4UHJXdEJpVFlMbzBheWRv?=
 =?utf-8?Q?bshxyR3cn6LLn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDdLUDRQNUdYYkl6N3NxeGlJTnBMcjh6WVRuT3pPTEJLMlFhTk1zMFEyNncz?=
 =?utf-8?B?TFdZZVFkdmEvQmtjcklDYXpYaUp3dmtFU1B2YitBaDlJZ05HMzlldytPL2d1?=
 =?utf-8?B?M2d4NktIanU4dEVYMUtWNzNBSk45NGNHd0d6OXJsRDNqK0NmaUxvMmJDRy9S?=
 =?utf-8?B?V2RMQ2k0TkJFdFp3R25vUEFIZk11TWp2S2d4T0RaeVhmbUZ3WFNwcWQ3OGd6?=
 =?utf-8?B?NXN2NU1KQWVza3R6cWNNeklKWk1tS2N4UE1pUFd5blJBVkxLa3IwRFU0WGFl?=
 =?utf-8?B?a1JUWmdPbTFrTFo4VCswMnRJQVZnSERZOG9FcnE5a3U2Mno3bTAwZzNsQmZF?=
 =?utf-8?B?QitzbDlqODRqWWI4bmR3QjVzdzZtZ0hXSVVMTUQyaCszVldDb0t6eElxa3Q4?=
 =?utf-8?B?Q2lZa2tITlV3eEkvelU5RlhCbjQ0dEJpODNpQm5scGNpbkxNMUdPSE1aMWFS?=
 =?utf-8?B?V20walBYZTV1dmJkWmsrRlZpSXEra01naTRwd1VLdDdXelZhcno2Nmxsb1Va?=
 =?utf-8?B?dUdaSmFrZG5QRjhRVXNCWDUrWm9nb0FYVjBpeDhPcG5yQVEvY1lTYUdLRWwz?=
 =?utf-8?B?cVQ1bldNUjVQSW1Va0pmSmpmM21KMTZ1RmZqSXJOUHhTL0QwSjhJM29CZXA0?=
 =?utf-8?B?ai9MNE5FZjVYWEw0a1YwVXAwMzFtQmIxTmhYQlk1bXFraTMyZzBzRUMxM2FC?=
 =?utf-8?B?YWM3Mk5YdWFWaEgzTXBWS1Fpc0hOTWVtUlRsRVNkODFicUtaelQ0eGVSaHhp?=
 =?utf-8?B?U0ZTVHVKSkl6Ulk4NlJqSEpXelBJS2k5SzVkSk9qWi9RWVNRSGJLWUo3UGcy?=
 =?utf-8?B?NitablczNUdiVWR5VXlJN1lFRW5EdEpTN1p2d3dkNWpUOHJHQ3lFM1hZb1BQ?=
 =?utf-8?B?SmpzVXUxUW1WNWMybm9mMVFQTjRiekFFUUFNaGkzMmFFVWxKdk1oVmJCM29Y?=
 =?utf-8?B?ekxoZGhiN2t6TS9kbktPYlRDdStRdUd2OFlKSDdIY3BLNTZOTkhrNGV2cXlx?=
 =?utf-8?B?cGNGVVpDcDFpdFJGeWxaUFYwWWNhQ1pWeGoxZTMrb0E2bVpyREhIY3JXc0FY?=
 =?utf-8?B?bVJQcUIyK05ScnVPc3ppR1VaMlA4WFJGTDdZOUoyWHY5bzRJQ0pqSVMvc2ZJ?=
 =?utf-8?B?dENmVjlFa1g5b1VJU01YT29hMFk0NnlLajVOTm95ZTl2MmNHdXZiZUliZ20r?=
 =?utf-8?B?ZlBhL1kybDNvdnp3ZitDZThOd0tid3JtclJpR0dNeEQ2aWRxSWJMWGJIVGRN?=
 =?utf-8?B?T2h4cFVlQ3lZT0ZKNERtWThnazQyRFd1RVNTVFo3Y3ptYjJDdS8xUDZOTEZY?=
 =?utf-8?B?UTcvYVE2b3BsUG40N1JTakFMampHNkoycDd2amlhdCt5TGlWQzdtOCtVRVNK?=
 =?utf-8?B?WEs3alZNL1VObnhvM1VEQS9TNllaandvQzlGQ0I2bmV1cTI1Vlp2NTZjSGgv?=
 =?utf-8?B?RTdVNWZnN2tBSHNSczJKYzJNeWV0SDdjS2hoN2VRMmxrWnNFS1p1Y25lbWx5?=
 =?utf-8?B?RmRsRE9hT0lzbzRvditNL2o4SllBR0UyT3F4RFRDOGxXT2g0MThtT2h3M2Ra?=
 =?utf-8?B?b1JZYlE3Qm5PUVhsZExjaThJVElvN3RocG9Qa3VmZ2FJamJOWW00QlF2Wmcy?=
 =?utf-8?B?NXFiUW40RTkxY0I1MGNiUG9URXI3ejdHTFlRYUtrVDhINTA0UEJCMml5LzlS?=
 =?utf-8?B?QTU2WlVHOFF3Uzc2MUJsN1hLamtoL29mM3E2d2p2bUFTcmdJNjBZaFBUb2VX?=
 =?utf-8?B?VXhKV29tSXZxM1RnOWlKK1RFWnpwSWxaOWNHTFludUFmV2VDVk9rUzZFMzBN?=
 =?utf-8?B?Sjh5RlNobTJnR3NDQksvTkVDYW1zZlN2VTRxMVRZM0pEdU1qOCtvYXNNT3o3?=
 =?utf-8?B?TlRQWUoyTFU2TVV4cGM1Tyt3cXVTWGN3a3gxdFB4NkR1dUJWZFREUmhOQk54?=
 =?utf-8?B?WDZlRk5oS0lpeC9vcTlMVjJ2U1A4cUd6dG5ZZXErcHJFK3gxcTU4R2FrdEp0?=
 =?utf-8?B?VS9haWV6RHp2TFUrN25BZ21pVkhIMzl3REcvNkxaT254dWx4bmRaMU5VSlRw?=
 =?utf-8?B?NlBtNytTRnZ6aGlEdEQyMXA4WThBMHNRbFNxaDVWOVhjZm05SlF5VFpkOWI3?=
 =?utf-8?B?Mk1mY2t1eHhBNjF6MzBydEYzcS9Cejh1QVdHNCtheFRRYXgwUjEvRThOVlBZ?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5675fc55-5871-4197-92b4-08dd46907acc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 09:27:30.9479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nbTENAqDbCMN1G/LLpetBr1yQPgMCucl50XBJ8X11ClpjBAGp2nr4jL6emwLi4FOO5x4OmcK6THbWQVhR7gq+4MpQ8a+PVb1Duqi0v8OuYo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5174
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


On 1/31/2025 12:15 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add a functiuon for emitting a DSB poll instruction. We'll allow

s/functiuon/function


> the caller to specify the poll parameters.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c | 19 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dsb.h |  3 +++
>   2 files changed, 22 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 2f2812c23972..b68ee125afae 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -452,6 +452,25 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
>   			   start, end);
>   }
>   
> +void intel_dsb_poll(struct intel_dsb *dsb,
> +		    i915_reg_t reg, u32 mask, u32 val,
> +		    int wait, int count)

Perhaps `wait_us` to convey that value is in microseconds.

In any case change LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +{
> +	struct intel_crtc *crtc = dsb->crtc;
> +	enum pipe pipe = crtc->pipe;
> +
> +	intel_dsb_reg_write(dsb, DSB_POLLMASK(pipe, dsb->id), mask);
> +	intel_dsb_reg_write(dsb, DSB_POLLFUNC(pipe, dsb->id),
> +			    DSB_POLL_ENABLE |
> +			    DSB_POLL_WAIT(wait) | DSB_POLL_COUNT(count));
> +
> +	intel_dsb_noop(dsb, 5);
> +
> +	intel_dsb_emit(dsb, val,
> +		       (DSB_OPCODE_POLL << DSB_OPCODE_SHIFT) |
> +		       i915_mmio_reg_offset(reg));
> +}
> +
>   static void intel_dsb_align_tail(struct intel_dsb *dsb)
>   {
>   	u32 aligned_tail, tail;
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
> index da6df07a3c83..4511d1a1a187 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.h
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.h
> @@ -54,6 +54,9 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
>   				 int lower, int upper);
>   void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>   			    struct intel_dsb *dsb);
> +void intel_dsb_poll(struct intel_dsb *dsb,
> +		    i915_reg_t reg, u32 mask, u32 val,
> +		    int wait, int count);
>   void intel_dsb_chain(struct intel_atomic_state *state,
>   		     struct intel_dsb *dsb,
>   		     struct intel_dsb *chained_dsb,
