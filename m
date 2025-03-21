Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABDFA6C1B4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:40:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 673C110E802;
	Fri, 21 Mar 2025 17:40:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="air/dfwR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1428210E802;
 Fri, 21 Mar 2025 17:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742578818; x=1774114818;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KD7090iubcEKuwqBeQ0X0FIYubFdbgL7qROu37WuRdY=;
 b=air/dfwRQ1U/1/zhs6n8W19NqXnhZ0hAzFKybWUd0l6lHaL9+HBj7Rx0
 YoN1RZ8din4psYYHz7I9mDT0PbTPFBV+oEN8AOGE+sUCV/xiT8rab7kH9
 WMtsRDVcL/74MB//mTD8Fpadu4lvjNRKU6JPlCtoeIfGwp3ZxlasRPq1l
 HDxqNbETlXCznNVBtaYts1J4+trwRsuPRTedAka3vZme7bSDYMGdClxN0
 7/tA+vGqKQ8ixYiyAhokHuS2W+/J2VbS39mZIfgwghKjD/vqDH7iutkP2
 jp1w5dEEf5lH7opb3uf7Idl6iQr44HVkQEVgVYIZYPq78makrBcB0uK/R A==;
X-CSE-ConnectionGUID: aRjyEd+lQ5GCOqCH9JAD6w==
X-CSE-MsgGUID: Nt1Dh2edQqK4PvGwKCvqLQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43867841"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43867841"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:40:17 -0700
X-CSE-ConnectionGUID: UhXNI0VmQfS11XmPiUq9Tg==
X-CSE-MsgGUID: jn4gjbkCQG+CsDn+zdi4og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="124240534"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Mar 2025 10:40:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 21 Mar 2025 10:40:15 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 10:40:15 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 10:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kD4ez2KMXQj23faGM1EIvrPQXfDqdYf/AlpbPf9yiEaExEuM+ijRFIuYGVONMMGOEK7on426+v+fxILMd0IZxqUISIFO0aGoYoHWTNqdSHpDj7JzJHmCTyPMHsha8robTa72ORuYgp4qkd3z17WGHu8Zgl4DjdeR+st3i1BnjcOPA11ROZCC4LKB9ypsj/qpEcCwXXsYt619sSVhq8CZG7YyZLD6Ks5n0BSM6Uk23HrdGt7alDmozi83eUSPYWqHb16CMFeAWVHww4c/QlqXbn+OuRA9msrbmS76eXXzYrDt4OSkuyHGg98Fye1pwk+bggAKxlYivtyQCYwKb7M/mQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZqlPDTk4VKLJeR0VC5V4XyQdfkYHInjdZ2y2qjQ6Z8=;
 b=YRgoSfWQC06Sxnm1Hvt9bUtEZVSD5krfSr0bGxD0aIn+6vt6MyWDh/uSnkREZ8A13dj6Efjs4SfBIow62FirEkTgWNnpuA7Piu18rQFlDF5Bwp4G/FTYR16WKfAsf2Tx/leERLlvk5KLOanTVfqmTHCzu6vsuUCeG3kYOFWZRPUCWfSuJx7oKm2zugdLGtqGQslR1siSUXlZ7hiDNEMI9wZh83qXDy27cPxY6puWm1ELMQ8c9ACiTTgviM7CaQh3+nGHOzVKB222V2/1yHK5MZzxrHS0kohvLSjxATt6zkJj53bjF4zcYmddE/LgiLzp494gSthVvfRKVsG8MhFoFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4597.namprd11.prod.outlook.com (2603:10b6:208:268::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Fri, 21 Mar
 2025 17:40:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8511.026; Fri, 21 Mar 2025
 17:40:12 +0000
Message-ID: <f87ce829-e83f-4e5e-b9ae-bcb63cbf2fcf@intel.com>
Date: Fri, 21 Mar 2025 23:10:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] drm/i915/vrr: Avoid reading vrr.enable based on
 fixed_rr check
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-3-ankit.k.nautiyal@intel.com>
 <Z92jIvuSzV257-VZ@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z92jIvuSzV257-VZ@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0032.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4597:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d086703-78c4-462f-7c4b-08dd689f6e69
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?c0dDZ0E1aDBSZ0dDVkFjejlTT21qZDNVV0ZMZTE4WCtGank4c0JBS1dvRzhB?=
 =?utf-8?B?ZldtYWl4bitBQnJHL1hmNlUrdnVWd25XczlXUklnYnZ2ZzVUWUkyQmM3S2RF?=
 =?utf-8?B?eUpobDV2MzBwV1pDVDF6dFZ0azRQOTBSR0JFRmJ4Z0JCUmlqRzl3RkRtbkc0?=
 =?utf-8?B?TFVOUzRwczlDYW9Cdm1kU0JYbVQ3SkdIOWtiODJCRGQ4Y2FpZTd4SHAvOEdG?=
 =?utf-8?B?eTgvNWJhaS9aeUszYk8xNVJpMUU3Ny9Qbk4xVWRPajN2TmJJMUQ0Zm1Pdm1k?=
 =?utf-8?B?N2NzcEwwQjVuSmoydm92OVN6em9DYW55QmFzL21NR2VIQmRMRFRueCtBeXJN?=
 =?utf-8?B?UEhGc0hZZVM5Tk5PUjJJS1FLNXdwV01pTUppVXNyTUZLZlM0T0kxWllib05C?=
 =?utf-8?B?ZnUvdWJZTnZnMlVUdmxmVm5lSERUTWdib2ZIbkFqd3lWcWQ4M3N3bXp6am5l?=
 =?utf-8?B?aDlZTlY1TU96T3I5MVo3eWMxaFJiM09hcVpDZVlUcHczblhWbmgxUG9JUSs2?=
 =?utf-8?B?Z1NwM3ZSTDllN01JRC9RZ1k4VmM5cGZIYXJrN2ZhYWRId1luYmhDdkJQU0py?=
 =?utf-8?B?UTRmd3FBYlFZSzZ6WFdxRjUrelgxOGl4WFBEZ3ZsS2dZKzVEamwxRU9sNWVB?=
 =?utf-8?B?VDRPWEpFWWVXcDdWSGY0UzI0Q1NTOU9vU3FWbVMxVzJBL29TM25OTmdlVEho?=
 =?utf-8?B?eE1nRmNtT0JLRUd4eXltUVByVFdhV0Mra2swbFY2NlhFZEZZZFZFa1dBWWN5?=
 =?utf-8?B?ZWpkU0NPVUg2V0xUcEM3Ym5LSExWWmFHUyt5bjBZZVBqb2w2T2d6Mk51S05z?=
 =?utf-8?B?QVNsYytERllNTjByejYzVXg2b0YvTDZwbFh3Nlc5d2hFZDRLdXBlUytybFpw?=
 =?utf-8?B?ZENsV2lzWWFQMzdhb1BEaFRDN2QxblFvQTVtTkkvK2VpblV3UmdiSURpUWxX?=
 =?utf-8?B?dFpIUk5TTEwyc2s2NVYrK3JSdlVYL3ZTM1FBZ1NrV0k0UWZSZ2RvWFR5ZjJI?=
 =?utf-8?B?MEZRRVF3QlAvSElHWGFFTUhHc2lnMHdVK2xqeHZJRE5tMmQxTjNpMmFrbHF3?=
 =?utf-8?B?QmRkU0VLclVyTlVrMGpxQnVLM1B3NjgwNER2Zy9DOWIwWWk1bGE3dVp0SmVN?=
 =?utf-8?B?VndZUzRVTnVYdStTYUY4NEx5em9iRlUvQjJDVkZGbmlMdThodW1jRnhQWE9j?=
 =?utf-8?B?ZDJ4Ymd3b3k2UjRWb1IrZ3BVS2EyUXovYjF2akgwdmhTdDRvMklwSHY2dU91?=
 =?utf-8?B?eVZQenhhUTdLYTQrN2xsMkRFeHRoUlFZUkh6SGxOM3RSU0ViY09CTnljRDcz?=
 =?utf-8?B?REFZZDhyUkhlTHlnc3BLeWtWMXVUbEpnSkVtOGZyanJsZ3BOaXkwR1p2ejAv?=
 =?utf-8?B?UXhFNmZDb3lXWGRLMURBSFBLcUVaK1pJb3lnbXVXazFoRTJub1FKSUNNY3JS?=
 =?utf-8?B?K0N2SENXWVNKbFgyM2tjVDErbGlpWFNqekN1MU1MUkN3WjFKMmdGQWxtbFhN?=
 =?utf-8?B?RDVTYzNBZFpXZ1QydGNMMlF2V0U4dmJkVzJDaTFWK0JvUnZYbGQrdDM0ZGVE?=
 =?utf-8?B?SWk0UzRmNTNxRlRrcUdTSFB3ZW1Lb2ZSK0U1eXh6TVpZcEh3MjdaQVZnd1pM?=
 =?utf-8?B?V0oyQ3pQK3dBMUljUDdLZWFNb3B3NE9NQUFadDAzZnRoelc1MExNUmdIenEy?=
 =?utf-8?B?bnNBc0l6NlhIMm1BdDhVOUdpcHl5VDhZUnFNUGZaNDd5YVE5a01odXloNUZh?=
 =?utf-8?Q?XBjIpLg0EcAVh2KFCqsfjCdd5w1kpNKgM44njYl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K0J2cEcyelY3QWFhNHVneHJOWEg3MXNjS00raU80Vzc3NFRxQlBHekNqd3p3?=
 =?utf-8?B?NEhqeTRTeXlMNTJRY1dJREVZRmo5NWpBeklHbkpxREFydlk1RHFFL0pNN3Ja?=
 =?utf-8?B?RDh5WDhPL3JRSGhpaURSR0x6T1poRmliMGovb1FOalozaFBjVnVuUVpGa0tx?=
 =?utf-8?B?emNNeG5xVFhYSzc1TGU1WmVSTDhTRk9PcnVseFA2WDZBN2VreXlVRHlDcVpa?=
 =?utf-8?B?eDlkc1NoUnFYZXdPcktPK2xlbU1PVy9MbmdiMkRDMVVQTU5LQ09GNUhZNm54?=
 =?utf-8?B?TXRaOEp1cDdibGJJcEVtc1BSWmNEc05QSjV3Q2x5d09yWlkvU3JBUUFrQkl2?=
 =?utf-8?B?MThCZjBJcmthUXZNWHMzYUJ6Zy8relVMTkUyeUtEVFJZbzlZdTc1U3BsM2N1?=
 =?utf-8?B?RXJyY3dvTnloTjJhbC94Q2pwRjFFZGNYWGNTZkxrdStIbUVhMFlIWGlkbDUw?=
 =?utf-8?B?NjNmYk5Rd0hiZnF1ZHNyUjYwQWZtT3hEc2tlcllRZk00b2NXcTJkWE01VVZZ?=
 =?utf-8?B?VVRxUG5XbnBjM2xXTnUyUmJUYjdjRlRhaVlEVWJTYVpGbktEUXljVEJZUkVh?=
 =?utf-8?B?Y09WS2FzSGlLaTZuTzNxTnFZanRaOHdPMFZOWTF6Uk0yZzZOeEpXdWtaUmdo?=
 =?utf-8?B?SlFoc0REY3ZqNWtQN2ZUU1ZESkZqcEFjYi9ialp2ckNMK3RKNmVUdEVJUkxJ?=
 =?utf-8?B?cFVPeHJ0aG1sZEw5VjFkRXVQeTUvSGdhYzZmNC9QWFhFYWdGc3dlQVArVEw3?=
 =?utf-8?B?Tmw2MkVkK3JUbnJMcTRhOUg1RUw1REJqeVJtVzdhZ015N1pOVEY1NldOOWky?=
 =?utf-8?B?QlMxNWNVdmN5USt6dkhxaDFxY3lxRThheHZTYkhaWXBQTm1NbjU3SVV6bHNq?=
 =?utf-8?B?REhTSExqUkZyanRTTmtzTUlVM2ZzMzUyVEwvM3FDOWpzNk93UTFTc1BuQlNB?=
 =?utf-8?B?b2RYblBQby9PQjlmL3ZuOFVqUW1FbzRzTElPU0Vtamg3TTBVM2Y0VzNuTXF1?=
 =?utf-8?B?eFdjOXQrMlEzRFpRcmdVZVYwNEc0MHNnUFEzRFl3QXp3VEkxMzQzRUQvS0k5?=
 =?utf-8?B?eS80NDlVR08xc0xhdFJKY09pa3JOQ2FQa25RbERwTU9TVzJtajd4RkZ5Z3ZW?=
 =?utf-8?B?cmpYelkzWE9KTmFWZGM4SXUwNjJucFFDd0JpNmlwa1I0aERzUGxoRmJHcFdr?=
 =?utf-8?B?K1hneGdDMkh1YU1qd2FYY3VQN0FydEVmLzRYS0hPb082ZmV2OHNRSXJYUzda?=
 =?utf-8?B?NG9aRTlheWkvcXRWMHFRd3Y4Y2RwSEFmWEJuZ0FnK2w0aU5yVHpBcjB6cnVa?=
 =?utf-8?B?VGY0ODYxMEZkeWFxOHlEb1l5SzBqS2J5UUdRVTlBcWp1NHFGam80UHZxSUs3?=
 =?utf-8?B?cVZtb1lKT2tVTlk0QStuc3lOeklaTk90VTI4SThqeFBGdmJoZXhGSGVNOWdO?=
 =?utf-8?B?YTlBSmNFSUh3SVVhcEZZTWx0SHFzeGt6aTY1S0tNQVlvM1VrVHJTUXVPeGpR?=
 =?utf-8?B?VnBsaHVMQWZIQ0VuaXdjc1JGbHBDN2ZVMkZXWWtkVUtwbStiRC9VenllbVVt?=
 =?utf-8?B?eU9Edi9sbUtweGp6c3hFb01KZW5jOHZyeGpYbTdqSVpBemg4MkdzMTNJNFlQ?=
 =?utf-8?B?VG1Pc2dweVZJa0d2ZElFS1pOaFdJT1J1SlVjQ21WN2RKcWI3RDBMdkVZM2pC?=
 =?utf-8?B?Ym43elJ3MlEycjdTVmtPZU5zSS9iSGxuSzFYaTd2OUNqMFdudmtLcGxZUEYy?=
 =?utf-8?B?UWYyaDlBWEU3Nk1LdjFUZzQ2cng0K2F5VnROSE5VNGtHYXNML2FYUVgySDF1?=
 =?utf-8?B?ajNpbXBaYUo0V1ZhcXJvWVZDb0tpQ0tqWjlVU1VZaFRyeFd6OE1XTmNEam5k?=
 =?utf-8?B?ZFVQd3piWmg2MGVRYkZRTVdsVzhHUWtFcjVKWUp6a2hyaVpkMlFZR2VRRHBn?=
 =?utf-8?B?VHJEWGlGbEFXbW1UOTlEM3YvL1lMQms4bDhXWVlkQnBwNy8veE5tTmU3ZUlB?=
 =?utf-8?B?anBjNVJTdmZZYStMODB2T1pmN2Z5RTdBWWM3dWliU2JEVldTMWk4SVk2czkv?=
 =?utf-8?B?V05rQzhCVnl3U0dFbnRnSGI4Wjg3c2FTa2ZGL2hVbVkzZFZjMHlsemhzd3dZ?=
 =?utf-8?B?WERHTm1kVXZKUjJPbkpTdUo0VUdGQ1cvdTJHTXgvcHZNdytYaEQvQzZLbGdO?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d086703-78c4-462f-7c4b-08dd689f6e69
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 17:40:12.2214 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKGA/38GIVpnTwO4vRFYsDytvF8S1YnRJdGhfHVCZez66cupPRB9CB6JRNu2aXLyTzbNlwxtN3DaAnIePst+imYOIyQdjd86wua8znNBdYI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4597
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


On 3/21/2025 11:04 PM, Ville Syrjälä wrote:
> On Tue, Mar 18, 2025 at 01:05:26PM +0530, Ankit Nautiyal wrote:
>> Currently, vrr.enable is intended only for variable refresh rate timings.
>> At this point, we do not set fixed refresh rate timings, but the GOP can,
>> which creates a problem during the readback of vrr.enable.
>>
>> The GOP enables the VRR timing generator with fixed timings, while the
>> driver only recognizes the VRR timing generator as enabled with
>> variable timings. This discrepancy causes an issue due to the
>> fixed refresh rate check during readback. Since the VRR timing generator
>> is enabled and we do not support fixed timings, the readback should set
>> vrr.enable so that the driver can disable the VRR timing generator.
>> However, the current check does not allow this.
>>
>> Therefore, remove the fixed refresh rate check during readback.
>>
>> Fixes: 27217f9d1856 ("drm/i915/vrr: Track vrr.enable only for variable timing")
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 3 +--
>>   1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index aa65a6933ddb..6bdcdfed4b9b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -657,8 +657,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		}
>>   	}
>>   
>> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>> -				 !intel_vrr_is_fixed_rr(crtc_state);
>> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> Doesn't this break the state checker when we use the VRR timing
> generator for fixed refresh modes?

Yes right, but currently those changes are not merged yet.

I have something like this [1], when we add support for VRR TG with 
fixed refresh rate.

[1] https://patchwork.freedesktop.org/patch/643470/?series=134383&rev=16


Regards,

Ankit


>
>>   
>>   	/*
>>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>> -- 
>> 2.45.2
