Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 794E3A22C27
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AC1E10E936;
	Thu, 30 Jan 2025 11:04:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VfxAvnrk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E624F10E935;
 Thu, 30 Jan 2025 11:04:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738235065; x=1769771065;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6A2+ggBURH66Ga6NuzNvIR+DsaAPECF0Y9Qyi1Ehjms=;
 b=VfxAvnrkFXtK9QyutWCPj6YttCgnB/a2gkgIBMbvOd8/xpwxL4lvbAxk
 cse8NiK381BPUdmHgVlzNbVwskxrnbY2jVDTqgwyR11J2XRZRMq3ToGKX
 LEYu/Yk3f+zczYiS0UjIb1Pi4u/3PQwZ9JauB9GC5ei69U70995ZKr1my
 y3ZCbBx3HM7AOT+m0uWMUmv3RW8hTL7ccMbdYf2GiQoDuI47qmlMdZOsw
 J/jahRKMzMx+Tkchm11diHyxM8DL6X/OC1Ts/Oq55oWVJNwnhZFd1buUJ
 dcgVcTCfdqxrJQvXvB1maXzDI/YACm8+GlU2H5G8s4uWL+nHpdkX2R5iv w==;
X-CSE-ConnectionGUID: q7dT+mjkRtyMqWgBn4CZHQ==
X-CSE-MsgGUID: 7Czaz81wQbas8iXL7WENGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50192437"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50192437"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:04:24 -0800
X-CSE-ConnectionGUID: sMQHu64ISWmiYBEkVOWRpA==
X-CSE-MsgGUID: EbGcUguATwue20oMsgnvpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113303178"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 03:04:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 03:04:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 03:04:24 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 03:04:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCmxiFvPoX5GBNHElHG6Sv5wnCJuDwNjhg5tyrWwdTTlG/9MyW9NJYJxPL+zl8gFAuxEqg34baXn6j02BgcPaM5KRjaJSjxgSmSBKCZqdUTyJHTQ/xXwCfO2KNMlDH1slqVB1zjfvIOm5LM6Az90qWcKAiGzlEPasP/RmsGbDdY0v+4sFJxzd1BY4RV961j9CbYctD2TkPxXCIHhz5D9Kcb7S8ySHmLg5AcZh4CDOi8xGMy79sgLS750I3f6u+bGOlqJBvu6x41FAYM/ZDKztYisJbagkwEhaGqfEXNg1UfBkFfoncA5UY9uJHQ3A2nHHbctoS2ZlZt6PTloYApDGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A1w8DjKhoTiSY4mAO93HZgp50p0KgpeGeMnJeUccqec=;
 b=Apm+p0gyQIx4yMzRS9PBp13n3plDY1P/FeO2BOGiG5dsvieyRWcy963Cx2pSJ5nEt96I9DyZtOwjN654t1a+TZDP32RJDY76tb1jfGPC0GcBlgNSlas5ceeVpGKV0lVaWw/5GQWlIag8AjQP5bhrSUjGLvQZ+uyhvl46hTG5LywFMJOo3bT7ke3Yt4KKVrXyEVKlKjhJd3m2RfdnXP1j7F3V+KPfcTZ88my0KE06y7RI+SUkVfHFY3a5wZ9PFlbLtfuohrEEa7ALOyDZ263yxMRqj5nJ4IwF8i9UVQ0xy8xYSicswnuHe+P8EenH5ab3NFJwdY4LSuDpsOsZ25fdYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Thu, 30 Jan
 2025 11:03:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 11:03:55 +0000
Message-ID: <56ee9d0b-40ad-4684-afb0-c512f62edecf@intel.com>
Date: Thu, 30 Jan 2025 16:33:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 24/35] drm/i915/vrr: Adjust Vtotal for MSA for fixed
 timings
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-25-ankit.k.nautiyal@intel.com>
 <Z5P_kL0H97Nynnbw@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5P_kL0H97Nynnbw@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0170.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:26::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6090:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e98b277-03fb-45e9-83c4-08dd411dc992
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVkzODhuSzVvUHNKNktMVEd5K2xVSVZpTy9TclM5SGdUZjNvT3dZTkNqT2do?=
 =?utf-8?B?NVJCZkkyczY2bWppVUQwb2hjQzdxYVB2NDhIaU1TOFRGU0JxRVFtQSsxOUZ4?=
 =?utf-8?B?b3RtdCtnM1ozRTRnZlpTc0ZvOTl5b285dlNuT1lpNGdKK0QxaCtQeUlhU3ZX?=
 =?utf-8?B?MGg4TEZ2d0hzQlNFc1dRZmNZeURja1NEVjNjYnRFYVhlSkpCemhoRnBJYTB2?=
 =?utf-8?B?SjZtM0NtVnVjM0drTEZJTWE2cDFlR3FJWWEzcWRpcEt5V0ZpbGhHVG45UVZG?=
 =?utf-8?B?Z25BdG94dzg5TnFsdFMvdXFSMTJkQy9wdVRiL3I5VitRWWVvQWswdm4xL0hk?=
 =?utf-8?B?M3JDd2ZjbGpLM3g1Z2Z4QnNRbXlsQkhZWkdIUkZoRStPR3N6UzhNWDh5WlU0?=
 =?utf-8?B?eFZZcGlXK1BnN1NrWkVNV2Z0bzVGOTR4dHZyaytUQTRYMU1qdHphejRHLzc0?=
 =?utf-8?B?c00wNUxpeVdCU29tNi85TFM5cTk0Y0ZBaHRPYVpWMmwzNlZ6TW5XMlAzamRC?=
 =?utf-8?B?eEcyTVBkUGU4citkSzczSlVTbmNWVTBBZnVjR2trYmloMEhlSXdYbnhKRGk4?=
 =?utf-8?B?UnN0aXB5WlRnSjMwQitlZnF4dVpvYXl4cUZhT01kNGFLZGpkZ2U5MFYzK2hZ?=
 =?utf-8?B?UDdCUWZYMC9mYS9IaW1ZcitDSHMyUFF5NnlMcGdnTk4vZk5peVFTd2FlZS96?=
 =?utf-8?B?NGpYUEs2WU5aMmFZNTdHMitHaCt2KzA1Uyszb0hrVHZXVXBtcmpuQXhjRWpD?=
 =?utf-8?B?aGhTT1I0MTlZbEZGT25LemRCcW5kMXdzVnhGUTRxOThONitqeGhldU5sM3dO?=
 =?utf-8?B?TEozaktlenliL1ZsbnBWK001WjdsRWcxSFhoeHMzTW55anVkbGp0T1FKbjBa?=
 =?utf-8?B?S1h6UWJ1NFpCZUZDL2lKaXg2elVWM2JFdFNoZzdlMjZkYU9ZZmVrUWpBSEJy?=
 =?utf-8?B?R3g1OGU3UldnbUVXN2pvRjRnbDd0NWRsM0tSNmx6RldzOHlnbDdLb0VaMFRD?=
 =?utf-8?B?OHpxSWZPZlY0UE8zbExqWHBRUSt6NTFNQlMxbkpsZy94cmpMVEU2VzRidThi?=
 =?utf-8?B?NmxrMmVQVGYzaVdGZ1NKZ1RlOUVMUVduSERtcEdSZFRucjNXd1oxOWtvVW1V?=
 =?utf-8?B?WHhFc2JFSzNuem5nQTV5NlZ1cXEzZFBmcUk5WVVoTmNTNTYxQWR3d1NhVXVO?=
 =?utf-8?B?OHNlbm00RFRDVDRwOXhwTE5TZVhqRGRORDVrdDBtRlFBWlFhK0drMjhXbk1x?=
 =?utf-8?B?WkVuRFRxMk83L3BTbGJCRzF1V2l4NjI3RmZwVHF5QVJhdTFWL29DaWwvdTcv?=
 =?utf-8?B?ZHlPZWhLdkE0ajFURkJSOWFkVWMrZzFEL29UZ0dDaWdpb3AzWWFROEpYT2t3?=
 =?utf-8?B?RWpqL0J4Q1lCTnpqajEwaWlGS1d2VW9aNjFvbFNtNWVJQTdGMnZkOElYV0NH?=
 =?utf-8?B?ZmRwYTZLNkVRWHNYc3krQ1lHTzlQSVhOMEZTSkllME9Ka1VidWJRMkF2Wk1x?=
 =?utf-8?B?QkxYQlFmRURBSUtpRWtDQmVIKzR6dnkvUE9EeW8zaW05NFZNN0NVbUNRVGl4?=
 =?utf-8?B?OHdnMWFaVUhzNDZ3eU44bGYwVDdIbEpxSWlyckhjSTZZN0J3MHZjZ2RyMFpD?=
 =?utf-8?B?M3dHOTl0bklaVk4wWUk3N1RuSHRZTXhaR2MxWXNMd1M0a2ZDZ2lYdUs2ODhS?=
 =?utf-8?B?NnRSaUtLSlppNHp3WDF6U05kNncweUx4blpCeGJBYTArL1BHaDl6VVcvbUFH?=
 =?utf-8?B?ckx6VzJvSmE1T3FtanhjbGFyZUNQL2NNY0xHQ01iOWVvYUw2VU5EbitQbzZT?=
 =?utf-8?B?UWxPWXZ3VjIwMU5tbGhUMmZPMmhFU3R1SVRwTk16V0gyMUJPSW04QWhWUjdy?=
 =?utf-8?Q?aS8BHUTEypeZn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVBqa09qeGgzTUJydlk0S1p6NkIvSEw1S2I3ekJwZ2EwVHE1Q1V0aDZvZi9j?=
 =?utf-8?B?QUg1cDJwSmEza1pCaHZNU2x3cXdvKzNjVXYzYlVMUFFiTytOME9XWVlzK2xx?=
 =?utf-8?B?alVLM0dZRUZPajhqYkpPL3huUHU5akR1MnJsT0JUNHJOVkNPZzNZWjRabHpY?=
 =?utf-8?B?WDFscnFBaXBiUVdJN25pUUdiYmgrQTUxV2hYY2t5WUtzdVorUmlwM0tWNDYy?=
 =?utf-8?B?R05ENk9pL3AxcmJBODVmdzVpWVBqakhZc2dHSjMxYStLeUJobEIwbW1DS0V4?=
 =?utf-8?B?Z09rY3FVZ3FJdTFlMTQrVTJLTkFLclowQmxlOUY1Y0FpMDdKUkdhRFFXd2lj?=
 =?utf-8?B?aWF3TXBFS2JwQjBaL1pXc0NZcW83K2d5NEdiR3h3WHNDWDllOEplL1k0eGdq?=
 =?utf-8?B?WktVY1U2QzlSZFZCWkpWUWkyeDN5MW5mNHBFaDNjKzA5QnNQTHBFY0FldDU5?=
 =?utf-8?B?VCtvQ3JsK2lNV1hRMnFsTFRUQWtqdmdBYkJWYlFJTElxTVhiRy9xbDZEQUZJ?=
 =?utf-8?B?cVdJWnJLVzJ4TlFzL1QrbFE4UzBQN3VsajFQWXZJOVhkZjlDQ2IzTDEzUWli?=
 =?utf-8?B?akFKajJFNlBTS21iOFYvWjdWYzVDeU50WmpjVG5xK2lXVUlZdWEyUXdvVWll?=
 =?utf-8?B?cE8wNnhpcDBsSTJ1eXlyVFdkWUtNOXJIZi9FVHFuQzlaSkxYME0zakxkdC9s?=
 =?utf-8?B?SEVWVGhwY2pwdjZJRkd2RzdKdTdaRkdhZUppZ3JJc0ZDeFlTY0ZjQ3FuNmxq?=
 =?utf-8?B?RWc0d3g1NTl2UTlHbjRYM1F6QWFLQXZHbkhIQ0YxdEl2eGZ3SXd2REZyclpC?=
 =?utf-8?B?MDJQQ2kraG9SMDRpUi9hL1lqMTh6Ly91cmd1U1NZcE01dGkwL0xJYndnUmxI?=
 =?utf-8?B?R05pR01mTzJrczRpRXlGWENvRkdlOGwrYzZRaVdCcmI4VDNxRWI3dm5oS2ls?=
 =?utf-8?B?U00rTkV3Y3drUmNVZ3l4aG5nT1NSb3R0b2dDc3Z6RWpiajFVZjd4ZmRVOVJm?=
 =?utf-8?B?WmpSNTUxWGY5YlJOcit2elNFMzV3YTMrbG5sVlZHc0NJakpIOUtFb092SGJX?=
 =?utf-8?B?Z2htOXZleDRFVVVWNUp2SVEvcUE3UThoODhTWlliQ3Q3RHFKNTBqemRhRjh4?=
 =?utf-8?B?RjhXQkZMdTE1TXlKNzlhOXIwZXZ5WVFZVlROTXY2dWpxdUxoZ041UFRLUFFZ?=
 =?utf-8?B?RG10VGFhVHYrZHZOak0vTldZL1JWZTVxMWtCNTBIc0VvaWZ6R0tkUWQ4WXFm?=
 =?utf-8?B?STA3WWU2bFRGOW5meUVXelNDT2h4V1FJMXpIUVZpajhzakNRMzVoNjB6MVE3?=
 =?utf-8?B?M2xTb1prUDNia2s2SG9FVW1zbVZENEVvWjM1MHl6RjlQQmxxc1ljcXdRc1pU?=
 =?utf-8?B?QXJQaEVtSk1NTGZFbmRHYTRxcnhuSUQzVENodG96U0Iwd3VhZkJid0lBWWZH?=
 =?utf-8?B?enozWjNCYmVaVFlhNkVBN1VxSjFTbzg1N3BqZ3hNSms5dE9hSnRhMU9ra0pt?=
 =?utf-8?B?YXNSK0l3WDlpLzlDOEVBbC84YnNFMmlCUGFyUDhNZitXL21GK3dkUXpRYm5i?=
 =?utf-8?B?dUcyK1RZVHdGSUxveFJzQnpMcDYwTUZTVDd4elVNWEtZK1RTbEtGdmUyRzZK?=
 =?utf-8?B?TXZob215Nmk3RXhCK3lrVkJJR1Z3NlZuK1FlbUwzczNISzZTYTBSMk5jclRl?=
 =?utf-8?B?ektvaE1vNUNzWWhJT29BRHNOQWJaSUViekx1SnhFK1d2dTVwbzFnTDQ0bENx?=
 =?utf-8?B?ZFNyZ1ZiWlRkWGRib0pNVFplTWFBQ05BRTNpUXFubnA5SzFFWitBR0pINjBS?=
 =?utf-8?B?c3c2SnZPNk15WkpYc3UzRCtOOXFKNGRVQ3FHbWJQYVlaVzNUTWdvVy9JdWFi?=
 =?utf-8?B?T2Y1SWU4SU5IYjF2QjFlRlpHTmdzZVNZNGgzYnZBTEY3SXdoVmJOTVJrVmJP?=
 =?utf-8?B?cDMwSnhTNjk5bGVlelBEMWI5ZmE1di9UeStzcFhOaWF1SFUxd0dxMzRJdmNm?=
 =?utf-8?B?UGsxa1RXdkkvUkJJRmlxNzVZNzZCR2NoSnlCSnFibDJjRU5UM1dnZFRvTkpH?=
 =?utf-8?B?OUZ4T3paYmtNM3oybWxaSWt1RFBLMjc5bU9icW4wTU11aUhtbFpOTEM2U1Rp?=
 =?utf-8?B?TVRCZzY3S0pSblBqZmovZGNwMkd5N3F6Q1RSSFU4ZVBDK0FidTQvS0s2Rllv?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e98b277-03fb-45e9-83c4-08dd411dc992
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 11:03:55.1637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eJTPWgOr2dPVPQtcHR4s4lNNyAVq4B+fqk7gPpJuNuHt/qlDqKfN94ojFbT0kFash6c4w4YbBIuAZxxgQ5SDFv2Z+KPfNMZ9Z8laBp2YvLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6090
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


On 1/25/2025 2:31 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:30:09PM +0530, Ankit Nautiyal wrote:
>> DP sink uses MSA timings for the fixed refresh rate mode.
>> For using VRR timing generator for fixed refresh rate mode, the HW prepares
>> the Vtotal for the MSA from the VMAX register. Since the MSA Vtotal is
>> one-based while Vmax is zero-based we need to take care of this while
>> setting Vtotal value for the fixed refresh rate mode.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 14 +++++++++++++-
>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index f485c3e35d68..5a1b0d61c483 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -264,6 +264,18 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
>>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>>   
>> +static
>> +int adjust_vtotal_for_msa(int vtotal)
>> +{
>> +	/*
>> +	 * DP sink uses MSA timings for the fixed refresh rate mode.
>> +	 * The HW prepares the Vtotal for the MSA from the VMAX register.
>> +	 * Since the MSA Vtotal is one-based while Vmax is zero-based we need to
>> +	 * take care of this while setting Vtotal value.
> Hang on. If the hardware is broken enough that it forgets to put the +1
> into MSA then that means we should be increasing vmax if we want the
> proper number to appear there. But that would actually just increase
> the length of the frame and the MSA would still be off by one.

I was observing blanking on the DP panel, when vmin,vmax,flipline were 
set to vtotal and MSA_TIMING_PAR_IGNORE_EN set to 0.


When I had tested with DP analyser, the MSA seemed to be invalid as the 
timing taken from VMAX register was 1 more than the required value.

After setting VMIN VMAX FLIPLINE with vtotal -1 the issue was no more 
seen on DP panel.


But we are already writing VMAX -1 into the register. I'll check again, 
if I missed something else and get back on this.


Regards,

Ankit


>> +	 */
>> +	return vtotal - 1;
>> +}
>> +
>>   static
>>   int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>>   {
>> @@ -274,7 +286,7 @@ int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>>   	 * For this set the vmin as crtc_vtotal. With this we never need to
>>   	 * change anything to do with the guardband.
>>   	 */
>> -	return crtc_state->hw.adjusted_mode.crtc_vtotal;
>> +	return adjust_vtotal_for_msa(crtc_state->hw.adjusted_mode.crtc_vtotal);
>>   }
>>   
>>   static
>> -- 
>> 2.45.2
