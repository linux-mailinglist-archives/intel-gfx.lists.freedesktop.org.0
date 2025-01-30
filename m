Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA73A22C17
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:02:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01A3E10E934;
	Thu, 30 Jan 2025 11:02:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CXW0JAlN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D5BF10E934;
 Thu, 30 Jan 2025 11:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738234944; x=1769770944;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cdFxAPeQcwgPdMVI46od5JmUtf+wTksPUAb8465slbo=;
 b=CXW0JAlNQAZ5qGrWRpCUzhZymCrhJXG6Xko3Zu/xDWOZQ1kzQi7p9TvS
 U6LFLp7Xik6Rp+8q37+SJEQOL5KmuQoTlZ41hgB0Qdp+nLWtV+iq4d2VX
 PKpDOtDRB+deRCxlELkErz2ImAj8tEC2ZLFrBwdYVNgZOypR5kw60tnrh
 nlXe9d5GfVK0VvjuIa/rFEsoGhESWFWx+eMT26Z4wwzoBj+bNt+0l+Yuk
 jJSm8DmupL/VCk/HTDWn0pNx3GrVeRG0LvbejngFzdGEVbIspo9iF4cn8
 9Fv3LtAvtfeim+4O+1YxU52F9/eeF2w1woFpnqBM6mgXfu00Ns1N25Exf w==;
X-CSE-ConnectionGUID: py0Z1OF8QXSTRYneVMYhLA==
X-CSE-MsgGUID: czroBscrQz61/7dI+pfHwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="50192157"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="50192157"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:02:23 -0800
X-CSE-ConnectionGUID: ugbnKV/wTvW4RkdPpKtivg==
X-CSE-MsgGUID: BIpw1hgoSJCkEqKgTt718A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113301573"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 03:02:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 03:02:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 03:02:22 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 03:02:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JDEqJiNfTZDquJhclLEgXfJl54bnpq/NWX+r+5e0IiQzBh0+vnWHM+yWfNRr2uswtGP34f/101vv8KuNw3QJwFAe0P2DHmaYuvluCsIgDZZbmfBIqrsitelhS1RGRl97G+0EpJsjy1PC+PbV09HS0Avqp906WLN9lMPabj5w4MUeYNN5waERJRnzVgSASdHITNpMz/NrDiyiorgniyE2SLDNyUNlqXpKIvawHaQh2Tjn7Lk7XDyNHzsKT/kYzzJmQvftyFOsjQrShwb4IAM0OxDWvJ/Wn2eqKJArXPbkPaF5Ao6VFR6FUoJqCqZatJT59eVmMfqyWo54K1kJpuKJ0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KQqQr3W5kbY+2jb3ZCW3tEeAy0tBfs9V0DDCvQ2k0eA=;
 b=XWu4vOfERkevnSBa56vbkh2nsQoWriVfv5TAhNgBCcjHLHEZv9Gh09Lhal5Dax2eoyPE5AIX4RwVAUkB9cuWdQq3s4p2oElf7/SpABeR05qOIn51zRkkM/ZKwEK9YGsVEsPUuSDJ2jaNIkuDaC/NP00UFNC2X1LsicUobvx+//+Gy9oN5vlxyUbq7sLDa1qMLQW/pfJgTLatJx2gBUpdaCqtKu6YiYbxK/jEpkcVJit7MBw73L/LXLuq77Q8CaWT8ETougftRF9OPW5UM0LQfyBrHkX3BPypRZ3mpwBD0AIxSKfNNcPuaETF6vXA/rAbEjWPQBenpMMapECamy2eHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Thu, 30 Jan
 2025 11:01:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 11:01:53 +0000
Message-ID: <cb7c915c-23fe-4450-bb49-2cb683ae8788@intel.com>
Date: Thu, 30 Jan 2025 16:31:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/35] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-22-ankit.k.nautiyal@intel.com>
 <Z5QC3VVxxAVe4Yvr@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5QC3VVxxAVe4Yvr@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0200.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6090:EE_
X-MS-Office365-Filtering-Correlation-Id: d12df42f-a564-4b9b-fee9-08dd411d812f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0RZSW1BOVJHZGNUZWN0cEhMV1lIWDVzSjZIZ2RWbzF5Y1BSb0xPOVJTZ0x0?=
 =?utf-8?B?QU1vaGh3ZVJVY21FM3lCTXk0RVhCeUIzdVZWeTYwcy80WXg5VTVOZDM5UHRP?=
 =?utf-8?B?QUUxejBJSER1MG9LM2t5ZDh2UFRjSXFZb1pCOG9FOG5CTUxDaE14KzRRTU5Y?=
 =?utf-8?B?WGZKbUFqWkJheE5JMGRhRjdVRVkvZ3FuckhHVytyVWt6aVQraytmT3c3VnVK?=
 =?utf-8?B?eUZhWFZTanp5RlEyU1ByWVRXcG5JR3UzOHZGcC84a0pBU0s1RWxzOFhybmcr?=
 =?utf-8?B?WmxYbVhLQUZLOHFLdnY1ZVZ6cG42UVN6NUQ5eDBwakExUVgvaFZ3bitrTm9j?=
 =?utf-8?B?ZW1QWW0rNHJHTVBMKzFlV3JaMXQ3bmdtR0FXSXdka1pWUUZXR001TjBYTWxD?=
 =?utf-8?B?RUNZNmhtNXdMWXl0eS9YR0ZhbG04SGxVUWE1WXhoM2lEbW1SbXdsc3ZVK1BG?=
 =?utf-8?B?ME91YWRYVzVhYXFMcHBrdVJrUlZodGsrSStRRHFNMUcyV01JSmZlaTJiNC9B?=
 =?utf-8?B?azlFTWFIYWgyVllsem80OXZodWEvVkJhNWR0NXQ4cVhJdGowY3pBQ25SVms5?=
 =?utf-8?B?S1RZTDU0N3J6Sk5VaVFiTGJOai9icjBFNnQ4Ull5MmNXU0FVckdvcHdMVXNp?=
 =?utf-8?B?UjcvVEV6c0xtMmVVNGpsMjNwMldZUW43UnlDZ3NqcGtyNlpXT1QyNkdLS2NZ?=
 =?utf-8?B?d2ppc1o2R3VvcWp1aHI3QnRRMjRXblcwZVRXQnVTc25rQ1llK1VMMXZRV1lW?=
 =?utf-8?B?ajJtUkxWcnhmd0NKQTMzd1pBZWRoMzhKcVJtRXZEcVlLbTRybTBkanQvZDZn?=
 =?utf-8?B?LzYxVGxOZVY1ZE1oTUswZE5pdlhKbnFtc1NSSkNyaDJrU1FybGdrQ3MwVGJa?=
 =?utf-8?B?SG5TcThvdGo2b1lJZlVtWVg0c1dFRmV1cyt5SERBRU9zaWl5YUdzaHAzc2Rv?=
 =?utf-8?B?dm5lSGJRSlVhcTFRRlpBd1dLVUVVV1hObXBZcmJIQnpvaGV2aWQzVXdKM1Nv?=
 =?utf-8?B?aHQ5TFI5SCtBbDhPK0sxQjBqSjlMMk82c0grMVNidUF5VHp0N25hSk5DNDFV?=
 =?utf-8?B?cjhRMy8xaEdaTDhqYUZ3ZVVuZW5GbGlhelZ5UlZxS2krTGpZODIrcDNTaDJT?=
 =?utf-8?B?ZXBNb3JYTmFMVXhXVGR0b2R5MGhuVnd0ZG5yVnAvSytmUmI0TWNuM1lDOGVr?=
 =?utf-8?B?NmxoQmVEVjdTcTdodEhxdHA5WWs5aSsvYmFHZHRRQldZMjI0bExjVndzVHJ4?=
 =?utf-8?B?WlpPRmVVZy9xQjQ3N3o0Z01iOWZTem1lbWp6ai9CR1F4SFdjRS9GMVFtQWUz?=
 =?utf-8?B?TTZ1L3JEMnRQM1B6NkY2QS8yZEFFQ1NtQ0RwS2Z4RDJXNThsYnVqY0U0UW81?=
 =?utf-8?B?aDJDU3I5dzFyT3pYVE0reGtwRzNtY25yc0FQNld5UlZPL0thc3ZhSFRtRWFF?=
 =?utf-8?B?OWYwMkVrd2hUSkc5UGluVGxhT01oYmNkVGhqaXN3Uk9qWVRkQzBlQ2tWdFdh?=
 =?utf-8?B?TTRocURjSlFJZVhpeHo2NDNORHVadHhhNEtxbS9ETmZobHdKZDNqSEdGV3BQ?=
 =?utf-8?B?THpRMlpjWXI5WXFNTUUrSU1aWkZmaEFsQU0zMTNJRjM5MXF4YzJablZUMmxV?=
 =?utf-8?B?R0J5eTdtYytpM0tobDlQdUZmZUMzSzExNW9rQVovOElnai94TkFHZlViV3Bu?=
 =?utf-8?B?TWpXeDRoMHo2N05xSzcveUZRZjg3eWhHOG5xMzBONFNxUkFxYksvV2laV2FH?=
 =?utf-8?B?WU1kcmEvMW55djF2SUk3aWQ2dEVjYU00bGl3aERRdmRIc2NjclBpSmVQYzUz?=
 =?utf-8?B?cWEySURnZTRaZU1yWklxZTNMSTJGSVlkQmh4QlFqRXM0ZnZDSkk3RVRoNk9D?=
 =?utf-8?Q?OFsdq8VdfiZ5C?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mm9CTkxlS2NwZ3Z6UnJjbDFoU3Zkd1JBMnl3Q3Ezek9mZUxUQVF6V2huZWFs?=
 =?utf-8?B?bEpUOVptRy9pZXdabEgvdElycU1EWXpBbDFoUHZRWXBUQ2Y5N0Yza0NVYXJQ?=
 =?utf-8?B?YWVtaWVpc1VwcUZOSFNBTi9xQTFPWFhWRFFDMThCYTlXVFVJd0hDZEpSa0JR?=
 =?utf-8?B?aG8wOUpxcmhIWDMrd21rN1VTeml5S012RjU3bmx6UmtIK2Q5WFhScDM3WVhU?=
 =?utf-8?B?RjB0ME92Z3FrbEpnVTdrU3pXUkIyUnR6QldNS2c2RCtsbExYcnFRWXllUzNq?=
 =?utf-8?B?UDRsRVFJOVNoN0NhU3VHOGJXL1BVUm9nZitqZm1hTk5OVVNpSlpISTJCSHkw?=
 =?utf-8?B?bGRUS2xxeDlLaEUvYzduUFY0c21UaEoyRmFIdGFIVi9TQkM4YTJwK09pbFRu?=
 =?utf-8?B?QjhoOTZxTnFVTGJDVmczeWdhOHc1TkVsT21IQXl1U3VUYS9LdnpEUWR2WHJZ?=
 =?utf-8?B?VFBWYThUVG9vVUxEbnc2RTdJN3VIeFBuRzFrNmhxaVM3RS9SR2FFa3E4cWZV?=
 =?utf-8?B?MVVyOUJMbWw1UnVyY01KcmJBa0tKOWoyQzNQQlcyOFQycm9CNmsxVS83YVJI?=
 =?utf-8?B?UFZWSDJjbW9DUHZraXg1TjhrRDdDNEpWY1AzRk5JNXdXU3k0ZitFZDA4VjJk?=
 =?utf-8?B?ZWkxVnA3TC9kVldZelprNU0vRHU2c2MyTTQ4aFIvUWxpSUxpbjNQZW5GNkVF?=
 =?utf-8?B?SkdDQkUrN0ZremZaTHh6L09hdGxhT0YwcHp3aEJRUmFHVEkvTGRpUndjK28w?=
 =?utf-8?B?QVY5KzZlc1ZaeCs3QjlUVWg1ajV3SnlxZ1FYWFlpL0UzREN1VE5rOXBxWTY4?=
 =?utf-8?B?QnFnYndGeVdzUU9iaWRFRW9GMndPWERjUkUyRDBtR2NTS2tDczJYNWh1WVZ0?=
 =?utf-8?B?MnFrVWxtejZ2NTdwMmNpMkhGV0tVUWo5eGFkOXFrTlg5TG9KREhjZmdmMTVD?=
 =?utf-8?B?OWZjdVJ3aksrWndiUDZGR0szTWlFYW43SHFaRExVVk4xcDRHUVNZNHBqc0gy?=
 =?utf-8?B?UmhhaEFLTWVJSnlIK3VubmdIZFlZSngyUERIMnlYb1gwYzJqcGFlYVQ1Tm9G?=
 =?utf-8?B?N3ZGaEtCM2JuWUx5UHQ4U2dqWmhKN3R0bkFFQW9FUmp4dzRQaEZGR3o5K01F?=
 =?utf-8?B?V3lISjNTaVp4MUpPMGFLdEpOeUU1cFQyaUdzcTBhQUY3OEhNeXl1YlBraTZT?=
 =?utf-8?B?czRXVjRhckx0R0wvbnh4RU9iR1hEN084QzdNOGtOcG1wTXc2MTVZTmpBbWJw?=
 =?utf-8?B?enhsUVk3U1QvNjZMWThqL3dxWng4S0xqUHdMa3FCSTlUb25RVStwL1Z4MUlT?=
 =?utf-8?B?RndvYTZXTzRZeFg3N1VQL1ZiY1RNV3diMmkvQzFCTy8wQzlkdnZwa0RxWEdW?=
 =?utf-8?B?M3BKS2lGVnpLNWNUVis4S0F5RlYyN056eWhXd0c4T0szZXhQc3pLSEd4cWtM?=
 =?utf-8?B?djg5ZmVrcHM4M2dsdDI4U2FqclFiRmhzdFVmMHFma2tLQ1dIbDYzSGlxbzNE?=
 =?utf-8?B?RXlWNkx0ZUh0bDRuV1paSUFzOVRtQk9vZ2E3RUhiOFAwT2k2TUZPbmhJWXk5?=
 =?utf-8?B?cG5GTVpoVXRaY1Z2WWxlK1dHL1p2cXVoOE9mMnMzbFNTOE82MUQxbjdRLy81?=
 =?utf-8?B?cFdZRTJvYzlSSE9iL3k0d2pVOUY1aHBOSXdmT1Q4U0xxSXBiS1dQUW5mWlF1?=
 =?utf-8?B?MTNOOHdHU29SQ1BkVWFiMFhmVGRlZWZpbUdhcmd0S3MxbWUrYUlNTU54N1R3?=
 =?utf-8?B?bEZtaW9rTmNQZU9zaDh5RlV0VWZmNUFhSzh3Z3pCd2NDNkwvMzBuQ21TemVH?=
 =?utf-8?B?RCtlM01LdmNaZ1ErYTBabVkzSElaWEJTTFJSV3NSYWlSVUNtb1FLY3U5VUR0?=
 =?utf-8?B?emFwbnYxQ1ZVMHNTR3B0V2IrUHMvcU16c2dOZFErZXZ2bTlwdlFKQnpIcUtn?=
 =?utf-8?B?ZmhLNENKZ2xVQXpZanpGRGN4dnF1YndRU1ROSUo5bWg0VkJSVWxUWW9WUXlF?=
 =?utf-8?B?dkRZWHRzZXJPd3NDc0d5R3dqSXIycEJBbHcwRnBnOFAyd3lrUWQvS0xoZ05s?=
 =?utf-8?B?S0VJN2w3cm5NZjdYRjFnUnErSFd4QzNnR28yTWZKNnFxUy85SkVaZU5kbDh0?=
 =?utf-8?B?V0FscHVKZ1ErOXZMZndqelAyaFBrdVJsNWZhOStPUmZVbkM5R1NXUGFPdFNI?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d12df42f-a564-4b9b-fee9-08dd411d812f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 11:01:53.7681 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bfQi1wPB+DOxeJXiRnBR3aN2bDngYPZ6tfvq7YYQCFQpNxHGNzTQZUGHJXtdu9VdQCUsD9njq/9F7G7SFxDDitrJOm6daclsPe/2XBzyw+A=
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


On 1/25/2025 2:45 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:30:06PM +0530, Ankit Nautiyal wrote:
>> MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
>> refresh rate. When using VRR timing generator for fixed refresh rate
>> we do not want to ignore the mode timings, as the refresh rate is still
>> fixed. Modify the checks to enable MSA Ignore Timing PAR only when not
>> in fixed_rr mode.
>>
>> v2: Initialize enable_msa_timing_par_ignore to false.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c              | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
>>   2 files changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index d48a3108f363..dac953b2af31 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2281,7 +2281,7 @@ static void intel_dp_sink_set_msa_timing_par_ignore_state(struct intel_dp *intel
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>>   
>> -	if (!intel_vrrtg_is_enabled(crtc_state))
>> +	if (!intel_vrrtg_is_enabled(crtc_state) || crtc_state->vrr.flipline == crtc_state->vrr.vmax)
>>   		return;
>>   
>>   	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DOWNSPREAD_CTRL,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 9cb22baafeeb..b8063807fd34 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -724,8 +724,14 @@ void intel_dp_link_training_set_mode(struct intel_dp *intel_dp, int link_rate, b
>>   static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>>   					    const struct intel_crtc_state *crtc_state)
>>   {
>> +	bool enable_msa_timing_par_ignore = false;
>> +
>> +	/* Enable MSA TIMING PAR IGNORE only in non fixed_rr mode */
>> +	if (crtc_state->vrr.flipline && crtc_state->vrr.flipline != crtc_state->vrr.vmax)
>> +		enable_msa_timing_par_ignore = true;
>> +
>>   	intel_dp_link_training_set_mode(intel_dp,
>> -					crtc_state->port_clock, crtc_state->vrr.flipline);
>> +					crtc_state->port_clock, enable_msa_timing_par_ignore);
> We only set this during link training, so this won't work for fastsets.
> I think what we want is to just always set this when the timings are in
> the VRR range.

Got it, will check the vrr range here.

Regards,

Ankit

>>   }
>>   
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
