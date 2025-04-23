Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1717BA98042
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFCE10E408;
	Wed, 23 Apr 2025 07:15:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z8ku4qst";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BFBF10E408;
 Wed, 23 Apr 2025 07:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745392533; x=1776928533;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=apy4woGB3ih1Q4EESrB26Egpxv+ZIQ3hcFEHOLtI1ow=;
 b=Z8ku4qstCw5t0AB/FQBiBPLL1E4xefsMu8pdCRObMr6PwC5S1/lGNLzR
 AKGo2YL5auY+oDRerk7b8vxrGyUehhVpo8eGxUj55tDyTs1UnbblAHv9W
 f/9rQEmBkWMv61G/NcuU2EaBIhy9uC5bFkmBGvmoQgi00vYiotNFcrziD
 akwStXXgvBTe1tKx9xeTSz3hEh0+PQF07fSLBvjkYUy1Y58sDLvJw/LSD
 RF+U6gOtQuJknt3X88UwRwSiERUzB3dw5aIFqhx4/VJ9L9x/hIyWKyrf1
 nlMR2r7KF8ZcqVynuBNzeWluF2Q9xwY0nR7T6xmct/ddP+wYqYK/DqGu+ Q==;
X-CSE-ConnectionGUID: KuW62D7iS92/jbwX1T8snQ==
X-CSE-MsgGUID: WetiVgYuRSCryGyN5FCgoQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46985567"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46985567"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:15:32 -0700
X-CSE-ConnectionGUID: MbsAkY+OQdS7C/joet9sSA==
X-CSE-MsgGUID: fdlNveMMTFWmFL3R8DMuow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="155442054"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:15:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:15:29 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:15:29 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:15:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IaqW/CByuZg/dyDwWWpKdxrtqUECf652QJDLj4lAaC03Wq6WP0HwnzPr01utn8TPGasyZ8URGkNbyOVckgd0k1LvF+vnQuxtkRDVMKi+AVaeyzfRpHlgHEBdkpx0+2U2AP7GebX42zLRDSSxd4atwDLAiw5Zi4Y0yzYde4kuCzACnx8tDvdRUz7RGKC0wlmSVpg1aSXLqy2L7G0PFtGwzxMxDyX7QrEQNMeXVEaxe4hk5Fq2vC+91u0s1KlkzG4YZucYW3iy3a73V6CqmF35Pbcy4xqChL3VEaTeeg0StB/JP4zC6qxBT+k6BDpIPJlFzOP1Jk2jUAzv4d5XvCnTRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cl8Q1pagagfY8dTWDSVPteUEkCusnSxJ4LOe9tn01fk=;
 b=eDeclzmVE4+NC29+PFAtRRrhQNSDeqeYr0q5VRlFviG57Yx351SHelAxrnhEoCmoczndHroFSqxa2MJKf+mLVaYx6b/2K4y3oJhRpbJO/L4pGE2NpScRYlkmC1jYIpiqtzhbXCI2Bu/FN4CYhVMmJQMVeQvDznw6jeAqdT+0oB4r9O7L5Nm/8TnbnuHlXcgFZEoQBMQuOMwDE0OunooiCyzcvoVRM1fsYb3aRh6isEcbw5lCRsuLzhesWwD9bxBjmMd/s7uMlslLEXxHytLrAVO5O4PQZdw/omA36bUNdKBRKJM0S4ck4VRYs/NXwVojBcNX/Fk5jkyg4LGklUG2tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7717.namprd11.prod.outlook.com (2603:10b6:510:2b8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Wed, 23 Apr
 2025 07:15:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:15:12 +0000
Message-ID: <caf09a4e-a175-4be3-ac94-7bb55cfd372f@intel.com>
Date: Wed, 23 Apr 2025 12:45:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/13] drm/i915/vrr: Implement vblank evasion with DC
 balancing
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-9-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0156.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::26) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c5bff89-4620-457c-2863-08dd82369633
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2NNSUxyVUtlOHBpWHRHVE1BR05hdW9ISUNXZEw0V2NNRzJ5VmVDckRRYVUx?=
 =?utf-8?B?OGdtQkdVN1RuMUdQam0xd3F2b3F1cm5NTWROVDZzOUxIbm1EK2FwR3d4RFpD?=
 =?utf-8?B?cHVTb1BJWGNWS1h1WGVBbXRobDZLbmpDZ0pDbHUvRkpRanRsUlNZSGs1ZTJ4?=
 =?utf-8?B?cVZOc1dGdzluOXFZSHBIbHJoUFdoL0w4dW5jUnQxNndSM3haTi9hb0d4eUI0?=
 =?utf-8?B?aEJJL3Zwdkd0bHBJYzNtT29zL21IVWUxNDQ2TC9UOUJaNTVUUWJIcTZiTnNo?=
 =?utf-8?B?VHg4RUhTQ2x3eDFxbGM0ZXVRTGIvampXZmdHcHJzV2NzZ0tHeHljU1lic1N3?=
 =?utf-8?B?WnRCTkZmNzZvV251M3RQOEppV00wYXRoRElGSlBxZWNuUFdmYk1qT0Z6aU9E?=
 =?utf-8?B?emkzRU9JNWRSZUNFNnhCbG1mdXBXS0pOVHlkZEgrUjk5NUpseHJwd2YrZEhE?=
 =?utf-8?B?RGlNN3pOYW90STQ1TG1lQWJzK25VSFpHQWUrVW8vbFRETm0zQlZINks0Y1pj?=
 =?utf-8?B?MGplUE1BZnMrZG9vdWc5cmcwZmg0Sk1rRTlseFNoTXNZc1BpTVJQeXZyYXNN?=
 =?utf-8?B?cFk1bWxvRWI2bEdFQVVhUjQ4S2luUk02ZTgvVlltb2JJQjY2bm9Zc1dTSWYw?=
 =?utf-8?B?ZHJxdzlmWktKS1h0NDk5QWkycXBxK09hSDMvNTZ6Y2RaY3diQ0dRajl4WHor?=
 =?utf-8?B?Z3M4NFVqSFpXRVBFcmIvVjQvSitJRE92ZnFOTHFSWldJejdWZ1hoSkdKY29W?=
 =?utf-8?B?Ymgzb2NIc3hQNXhYOWdNWmFCTytUTXZraFk3NDZKdVJmRmtGcEFiOHlhdXRD?=
 =?utf-8?B?QkMrK08zaUFER3BLY1lpSDMwZDJSOGlJdnBhS0xSL1FGdkVGUzRCVG5qaGtz?=
 =?utf-8?B?NjhGTkxIRkI3OU9IMkdkSjlGckVNQzQ4Q1RDb1oxUEhVbDlRTUNZR2N5aVZO?=
 =?utf-8?B?TXdXZVBMUmRHT2RUS0hDbC9rNkpzMUtDdVI4OWZWdm1BRzl3QnBpNVRoY3hK?=
 =?utf-8?B?VWNMQU1mSWZyRURaRUtXU0ZZcHozbHdsWmgyaXMzckE2cHVCcDlwL3FvbDdt?=
 =?utf-8?B?aDJSVmJmb0dRNTZ2R05tSjg2UHEvRER6V1pyWFlyR2l5WTdKNzBXK1MrMFc1?=
 =?utf-8?B?ZE9TTm1YU1diN0dudHlkTUlydmEvOTQ4SkFWa0gyVURUVERGSkxldkhrMmFK?=
 =?utf-8?B?L2xYV1dTMXdYL1hJV2xJYnA5dFlxbDFaOExZWHk5dUpleGltdlBEOXdjcStv?=
 =?utf-8?B?cHp4dWY5RzZLZ3BReDZLTTdxSjljQXhGQjVxSExQaCtqa0hScms3SXJwd2hw?=
 =?utf-8?B?NWY4cENwci82R2VpT1U0cjI3YVd0SS9GZFdNcVVZd2RoQUl3eTVZSG9CblpL?=
 =?utf-8?B?UEkwZUcxczY5dmc1b3BjMUZMVUc5d0NKTXlnK05WYXZQelhVbUhRN1RXV0xB?=
 =?utf-8?B?QnFxc2c3WFNUYms4MC8wdThpeXd5b3p6Sk9pWmpsbkZBMWR2eXByK3RQVm0w?=
 =?utf-8?B?cnhFL2pINVhIZFFHcmZkN0xDNEI4WWM4b1Z3T1FNSmRrOG5lM2t5Q1RHUmg3?=
 =?utf-8?B?WXdJM2tlU2JCMGFBS1lIbnh3MFdJMmk2cTRTWERYQytYaHI0L0Y4azBYTGk5?=
 =?utf-8?B?dzFadEtJWlgyQXppcU5US0N1ZDVZejhmZkhrTUo2T3pWMFR3dTNCdzYrNXRy?=
 =?utf-8?B?RCtLUHhWNmVHTE42V0RTV3VwdVF3NXRwNitBZzA3WGUyeVhkMGpsR3VFcjRR?=
 =?utf-8?B?aU5pVVcvSTZrMm5EN29VV0d0S01KVWxvamJuRDhMckZaRDJLeG9neEE4VVo1?=
 =?utf-8?B?dktyV0RoWWx2b3BQVHpHRUk5c2pRZks4amJaUkJoZUdhZWtUTGJhR1hrdGdS?=
 =?utf-8?B?K1g2bEQ2M3kxaVZCNFFaS1dyWUh5c0NiNE10dEhRaFQrUkE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wll3eldKZzIvNUVMa0pvTUM5U2lNbUphRERFeG40MmxGaVNGb2VBTWZydEZj?=
 =?utf-8?B?aGZkZ0ROQVZSTnVjbnV1NHovakhwVitpZUtvdVRaTFBTZWJHY2FqMVduUk9Q?=
 =?utf-8?B?b1M5UFBWY0pocFcxOG1DMVZzOTNXVzE1MCtLSzlHeXNsU3JSbk82NGNnekNQ?=
 =?utf-8?B?NVBTWkppL3JxZUVMdU9oMktOd1JWbncwWDVYSUhoa2VOcHFTb0JXQmRlL2Z3?=
 =?utf-8?B?cHVPcXd4Z1M4NzJMUmc5eS9vbktkczAvT3pvL0tpamd0UXdzUnQrajlJSndo?=
 =?utf-8?B?NFVhdmhxdHp2cFBrYXBwTm9MT1NpT3lsczkzcFAweWN4YzJyRTVJYmpmVzVR?=
 =?utf-8?B?RDQ1dU10ZHhtanlGWURRODVTVS94blA0bGVjdVk5Q0VLU0EycEI5NU5HYlR6?=
 =?utf-8?B?R09EbUZBNWd6Vm41Y0JIaWdHYjcwaUJoWEY1ak9RbGE4eHBSNWpVRVhtVjha?=
 =?utf-8?B?L1RHZ3QvWW0vQTFsVnMyZXdoYmI4R0Z2dmRVek5KSkR6NmVXOVM5ZkNJeHV3?=
 =?utf-8?B?VDdJOC8zTHJMbk9DQ1NpekhKOG1iT281K3R0MHQ5aVd0U1RJMWZuN203Y0Q1?=
 =?utf-8?B?OVRnN2krcTByTFFacnFpRklFaElPWkxHZlkvT1VmeWJKcXJoVXN1aDZ5WURn?=
 =?utf-8?B?ODBtL2ViWll5R2w4MWpxRkFkOUt4dUpQLzhHUHd6bFlORWIzZU83SlB2Umpl?=
 =?utf-8?B?UFB4ei9GTDVZRk9iN0tmWWxib3VML2NTNWJCMVRlZENYczBnRzZ4Z0gvb0FS?=
 =?utf-8?B?SEZFSWduWVJ2aFNVYzVKUU1lR0VtOFV5NlJyYStwdmlCKytxVndrcTVzMXl2?=
 =?utf-8?B?Q1pOMUdUTEJ6bUtualV5ZmpncWY4bW5DbU80bXVtamNVWEFiM3JxWk4yQVky?=
 =?utf-8?B?akRYRkVUNXhjRFdLWnVtdmVLWG9JR0xjSzVGcWZTbW5zTFEzcU92ZGpFRUkx?=
 =?utf-8?B?YlhQU0FuTnhtTmxHWVNXaUFDOTZoYWZDaWswOStoQWwrbEttY0o2THc1NW9Z?=
 =?utf-8?B?a3YrWEl6L3BhRDRidG9zQS9FbWpJOUxUd093eDNlek11Rll5cTlGQXYzdkVZ?=
 =?utf-8?B?VXRiM0RRczI4TU5uTXVFK0lFK2hFZXExaHAwbHNZVU90U3lQMHowbUhYTjVa?=
 =?utf-8?B?R0UwcDI5NE5vL3U2dlgxUUFXVVRHejN6RDdMSUVkMVpONzFhSVF1RnE1dE5k?=
 =?utf-8?B?alVQNjdSV1lVSTcxZ05Ub3RYNEVPZ2lWVEhNSXRxKy9ZbGtURUJ2L2lzRHEz?=
 =?utf-8?B?QzFBSVlZY1BieEk3SEFOYU1hWEwyeVFkOE9hRXBTVW0wMHprZlpHK2NYblFr?=
 =?utf-8?B?RW1OZGg5N2UvRCtQcGtCVmVWNnVsaFRhR0publFiN3BPUkovRDNTT1RNMHJy?=
 =?utf-8?B?WFBNcG1jcVd2eG5UbitrWTRnU3FER3hreVNDcjhhbHlpK3gyd0prSWhnWUZk?=
 =?utf-8?B?QW0zaCs1YXZuN1dpUzNYKzZjSytxSmxxeERPOW5YMVJOckovSDhyQmlEcFcy?=
 =?utf-8?B?b0ZDVzlxK0dqY1UxUERLRDZUbGYxbStDMDQ4RlI5MGhOOEduUWNSOFpUTmVI?=
 =?utf-8?B?NUNmSkhLbHdETjRiTWJzdHVMbXhSMVc5eU5LdlY4K3gwaVJDSW5OcGFadEZz?=
 =?utf-8?B?Q0wvdHZ4OTFNcXEzZkVkZmM2ZkFqUm8rbU1mblFZZGJIS2g4TnNKTGpNbkZ5?=
 =?utf-8?B?eUZ3cVhiQUcyQ3dZbUFERVJOZXFSMXNYczR0RjZPZ0NZL3JKNCtWOG9kbDVr?=
 =?utf-8?B?Y1lSUlpGSG4rQ09oTllyVDNOcGZPR2F2aVEyNVljdjgvYjMyNGVnQTRNSjhL?=
 =?utf-8?B?UjlHNXV6ZHVrZUFBU3pJdGlGTWdHTVd4TmcxMm84U3FNT254Y1g3VG8reVAx?=
 =?utf-8?B?a3pvTG4vVTcwOUF3UGxOSDVzenVpaXd2eFpVSVJKcGQrZjRHOVYrV2dDeHNt?=
 =?utf-8?B?WWpnaVh5MmNhY0pUdVJXYzVRa3p6MkE0aFRoWnVTWkU5RzVEUXRwRkpXNHJK?=
 =?utf-8?B?bTBMODBFWmVvaUc5RGJnbWZiYzgrWEY0ME9sYnkxN1E0bjErRWNQdk9IQ0JY?=
 =?utf-8?B?VDNJQ2R1V0JZdUpPOWtmejcwakw1QVA3R3ZlRVdZZnEyWThTbjVsZmtuWTJC?=
 =?utf-8?B?c09TQnJwNktrd3RKZWFueDJHd3VEUTZvZmNmNCs5YVJialJxK0dmVHVDUmV4?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c5bff89-4620-457c-2863-08dd82369633
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:15:12.2100 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jgV7tSpuA/+NODdDIg5AY/DKPX1CHCmwVGVRz1CN4jpIoPktZTp61PtRxKD6t1wlOXiQ34paLSYyp53UwWbDbmbUIeR7oHGqIgpipmWu55o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7717
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Add vblank evasion logic when vrr is already enabled along with
> dc balance is computed.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c    | 31 ++++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_vblank.c | 26 +++++++++++++++--
>   2 files changed, 53 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index 72fe390c5af2..ffd10ee96e29 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -577,7 +577,36 @@ void intel_dsb_vblank_evade(struct intel_atomic_state *state,
>   	if (crtc_state->has_psr)
>   		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT, 0, 0);
>   
> -	if (pre_commit_is_vrr_active(state, crtc)) {
> +	if (pre_commit_is_vrr_active(state, crtc) && crtc_state->vrr.dc_balance.enable) {
> +		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
> +		int vmin_vblank_start, vmax_vblank_start;
> +
> +		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +
> +		if (vmin_vblank_start >= 0) {
> +			end = vmin_vblank_start;
> +			start = end - vblank_delay - latency;
> +			intel_dsb_wait_scanline_out(state, dsb, start, end);
> +		}
> +
> +		vmax_vblank_start = intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
> +
> +		if (vmax_vblank_start >= 0) {
> +			end = vmax_vblank_start;
> +			start = end - vblank_delay - latency;
> +			intel_dsb_wait_scanline_out(state, dsb, start, end);
> +		}
> +
> +		vmin_vblank_start = intel_vrr_dcb_vmin_vblank_start_final(crtc_state);
> +		end = vmin_vblank_start;
> +		start = end - vblank_delay - latency;
> +		intel_dsb_wait_scanline_out(state, dsb, start, end);
> +
> +		vmax_vblank_start = intel_vrr_dcb_vmax_vblank_start_final(crtc_state);
> +		end = vmax_vblank_start;
> +		start = end - vblank_delay - latency;
> +		intel_dsb_wait_scanline_out(state, dsb, start, end);
> +	} else if (pre_commit_is_vrr_active(state, crtc)) {
>   		int vblank_delay = intel_vrr_vblank_delay(crtc_state);
>   
>   		end = intel_vrr_vmin_vblank_start(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 680013f00fc0..eb74d08d6690 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -644,10 +644,30 @@ intel_pre_commit_crtc_state(struct intel_atomic_state *state,
>   
>   static int vrr_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	if (intel_vrr_is_push_sent(crtc_state))
> -		return intel_vrr_vmin_vblank_start(crtc_state);
> +	bool is_push_sent = intel_vrr_is_push_sent(crtc_state);
> +	int vblank_start;
> +
> +	if (!crtc_state->vrr.dc_balance.enable) {
> +		if (is_push_sent)
> +			return intel_vrr_vmin_vblank_start(crtc_state);
> +		else
> +			return intel_vrr_vmax_vblank_start(crtc_state);
> +	}
> +
> +	if (is_push_sent)
> +		vblank_start = intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
>   	else
> -		return intel_vrr_vmax_vblank_start(crtc_state);
> +		vblank_start = intel_vrr_dcb_vmax_vblank_start_next(crtc_state);
> +
> +	if (vblank_start >= 0)
> +		return vblank_start;
> +
> +	if (is_push_sent)
> +		vblank_start = intel_vrr_dcb_vmin_vblank_start_final(crtc_state);
> +	else
> +		vblank_start = intel_vrr_dcb_vmax_vblank_start_final(crtc_state);
> +
> +	return vblank_start;
>   }
>   
>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
