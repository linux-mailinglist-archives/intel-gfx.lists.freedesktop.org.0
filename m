Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACCAC068A2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:39:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF9AC10EA94;
	Fri, 24 Oct 2025 13:39:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jis3vvJG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812C210EA94;
 Fri, 24 Oct 2025 13:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761313174; x=1792849174;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=i3ptayCBkiESO/2AuKLqvSttoFZIAkS2tCug4dWNV2E=;
 b=jis3vvJGTH8Ob7hJl6Am1FY52UY5iEU6PKh7RurJ5zIW7cXFw3TZtOz/
 jzFSoUNuYp1uci23ZyOadOU1uE+FJCSHSm4Th0y9s+6fROfxmtVd666c6
 PWlphAJF+V0Ug4o87kzrs5OY4EkLtHRdj0pOS24t/hzJverPJPvURv++k
 QYmTqrTLwXLyG2z0s1wPZwy5GS8yqZnqmiwJxnFfK6MeEL4A1p/JVE54G
 At207gzBjqlNWpSURuq6xi7SHjAc6rhrUo/0N/RrH7rt5fR6RUhpQHkPs
 9KGq2kDTc7mPKfmPny8BJPVgAiIb5ULQQV4LN0KowA2vhROdil8+So9+Z w==;
X-CSE-ConnectionGUID: EtxKyO+GS3G8OBLYrKJOIQ==
X-CSE-MsgGUID: FPljeA6IRI2or4s/AmUtJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67359919"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="67359919"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:39:34 -0700
X-CSE-ConnectionGUID: T3lPBrzqSwWJOlU9a9G1JA==
X-CSE-MsgGUID: ycw+igoWRf20YyWVe14GmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="189678279"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:39:34 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:39:33 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:39:33 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:39:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=b6TkYCpEgj1WjiswVAd8cem2z6P55SgcgsYLq9JYgRF58Ngfv7vbAvnh9i+THWqiIHuym3l39UHYN2zV3fTDtYPPWsKpSMM3TwhRAe5LWEXWHxOXFyC3j15Gz0QMEu/uNVRtTVz12tCjLw8Gci5aOTwkdRsOX91/K/KvRIsRawlpShv/y+7QNVZvmE9zwubhxRrJbFU2+E6+oCn2O7wsASAl291sEk+bTuhfoqjIxFzrAgKhY1hU2CG70Xcwii+AVuUEq43OAT7dA1tYGE+3HpUD+4V55bPBOdMDRsIVXYemuPaek6UBISN/Yovvnop0Xx/t6RyYZHjQRWieQTSQ9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aDbIkaCgpifDehHsLXqqaljWNBZ/KSm3T/18J/fIqSo=;
 b=cEY+Fq3fO08F8sJ3ByEmRrznvuBOYiCbzgZ0vwFkPQiDxPtB2fQQg+P4KAprpNCJFybmKCatTtNNSrF6urKrJ7ArJb4IutkaHPtn6wanhC7389QObmbjSvWf+OOlKX5sL5olWboql2ZgtS6QYThWBf0LHqgbW7bBHE3BuWvadZf8cHKDvI2LUyVJjuEoP/M2mzhzlBjTPA+9geDgEME0Q3pp1ftDFvwAM7u/SZaSV2lJrlz7pZtjVjOz/GSIU9UFMcz/YSCiY6ImGt9RicKg6L+GIYgsCQMk9qT+i/Zid0Vqf4sACt4EpcP/IZVz4aF51oiU0ZiQ/2HQ9qR8FrgYlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM3PPF1939049CF.namprd11.prod.outlook.com (2603:10b6:f:fc00::f0b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:39:26 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:39:26 +0000
Message-ID: <323feb7b-94bd-4158-94ea-02d85a463369@intel.com>
Date: Fri, 24 Oct 2025 19:09:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 10/22] drm/i915/vrr: Move EMP_AS_SDP_TL write into
 intel_vrr_set_transcoder_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-11-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-11-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0206.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM3PPF1939049CF:EE_
X-MS-Office365-Filtering-Correlation-Id: a261199a-ee0d-4bf9-ce98-08de1302bf91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R25FN3lGZVZrM0RoUjdycEhtRWk1Q2hFdGZTcEJrS2d2cW1SYXlPUkRBZnIw?=
 =?utf-8?B?VnQvbVVJemFrRGdQOUFuSkR0bzJvbVQyQkVWM1RRblRlWHF1djdna2h4bUtp?=
 =?utf-8?B?Ri9kWGVYMjlZd3pmK0dlVUdiVWFHeWRSRjNUNWNLQXQrM3RzMk5RU3k3K0ho?=
 =?utf-8?B?b1J3bHRORlZlY1hDRnc4bTB0cHl6SS9tNjUwY2IwVVFaOFhrVkJodzJSbGpT?=
 =?utf-8?B?QUZtenFkVDJwWkdlQ3doNU5ack1JU0FZYnNWNHJuMElDdnhTNmJGbU1kZTJ2?=
 =?utf-8?B?NU9MZi91YVZYeThCUjM4NG0yQWIyTHVHNXgwdm83NytaUjhBUm9WUG43dExw?=
 =?utf-8?B?Q0VXMlJ0Y3dFM0lseWl1Z3FaYWFydXEyYTdtQUcyeHNvK0VvbjR0SzN1NEV0?=
 =?utf-8?B?b2FuYVZuSnFMaFFzU2ltSE1pTmJmc2RJUTN4WVZmSXFISmd2ZU9RK2NxS0Nz?=
 =?utf-8?B?c2FEbVZEYU80YkRNSVBYc2s2TWhiY2VuZk15SFlpVks3VFdqOTZYTVgyNXpa?=
 =?utf-8?B?a3ViQk9vT256S1p2eDZpY2VrM3RNTFloemx0ZmhKaVhKRUk4bzFXdkpQOElk?=
 =?utf-8?B?V1FMTkFpdXJJTWlWNE9KY1paUDRVR0w5S3YveWdERXNpT25WUktrbzdyVFNq?=
 =?utf-8?B?bkFPSTJkVXhVdmxFQ1B6Y1FkTlloNm00OUNXOXczM2xjWGZmcW5IdkVIbm5t?=
 =?utf-8?B?TGhJRzJhSUtNYjlQZS83WU9tZWdXb2ZMUWRBNWw0dlRRREJKUjV3a0poaUNK?=
 =?utf-8?B?NFZhTnZCWXorL3BBVENyb0MxeUlkQ2dDbFNzZG9XVGR2dXZaTzcrUThQSkNG?=
 =?utf-8?B?YkxQallibzhyb2dtODFJcnUzOUt1YXAyZmtWeExoam1FOGlFN295QmFhWk1a?=
 =?utf-8?B?cVdlemZncTR3N3h2N1BRc1JwdG81cjVXQ0twSXBVcmlzWFRMaEFvTkhVQjM0?=
 =?utf-8?B?eWtZdFBqTFdFdEM5Wk45cEdFMnJ5WGRhbSs0dnJLSVZmNk5BNzhuTW5lZGF2?=
 =?utf-8?B?ZzQ2NUoxakVudlpOT3U2RncrZ20zeXAza1RWN2YzTzRxOGoxbkxobDNpeHdy?=
 =?utf-8?B?bTBLM0ljTExPWkhGcVRzK2djK0c4YmpuWFhwK1hKaTJWZ0Ewc0hKbTJVZ0Jk?=
 =?utf-8?B?ZXF1dFN6Z2ppNXVtZlVSNFRGUmpPOWZKTENseWxseVk5RFhqL1Fuc3Z1R25S?=
 =?utf-8?B?VlRYVjZwUlV2Zi9UbTgxc3pWVTBBSllOVkd4QnYzT2lDclZBUzNmdHpFYzlE?=
 =?utf-8?B?Qk5WVjVWZVNyMjZvbVYvWVN1d1dGS0VKUVEzVTA5RVgyRVNTV1lKK1VVaC9k?=
 =?utf-8?B?UnNOVGRIRUh3a0JHTXNlRUtDcDJTcGoreERSZ3dZUHBneXhxM0s3UFdtTWJt?=
 =?utf-8?B?YjFMaGZiWjZ4amZkVnVrUzY1eW1aMXhla1hPSklhOTc2cDV0bmhqcUliMm4v?=
 =?utf-8?B?M3FBQVZCM0VzbVNqUTViV2VSOWtVODQrYkVyTml3a3ppc29xakZkQXBCZjE4?=
 =?utf-8?B?eUF0aVRadnR4UkxUVkphT3BnYlFGRmdGeDJzNEVMQk1TMUlndjI1VFRoVDdT?=
 =?utf-8?B?SmdCNUluck9VZ0t2K2xRSDJsWFUvVVZPdDFXQVpWWnV3WlZ0UmttVU82L1NE?=
 =?utf-8?B?VjQ4cjczVzA0RTR0MndrTk13aSsxSkMxQ2Z3ZW1QN1FCdG1LNFhrUjgvczNu?=
 =?utf-8?B?cVI5WldUcXpOd2xBLy9uZCs1dHV0NnUrRmg4OE54TEpBNjg0TnBMa0dsLzR4?=
 =?utf-8?B?Z1UrSmV2M2ppdGJRU0ozZXpBYW54a2NuMFJjdVZ6MStpQU4wSzRHT1JIRWxL?=
 =?utf-8?B?Z04rcjRJQW1HZ2VIaXNvK1V6eFAwOHVzUks3bGRUUDBrSnRnblh5dEgyaU5F?=
 =?utf-8?B?UEg5cU5UbTExZWJTd0crcGIvSDlwM2t5T0xuNDh3TTErYVk0MmNHZVRjZDJS?=
 =?utf-8?Q?tpf7KEI+oy5Tp1xSApvbK35IPqacrXiL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U21zVXVFUEdlNGhaU0s4MzR4NVUzamZ2RTJFWVhMQnd2OTN6WWFzSkhjN3R4?=
 =?utf-8?B?OTE4SWFvY3MxelhBTXVVRjR2WWd3Zy9iYzNzeGhTejkrczVibHgxS2daclhv?=
 =?utf-8?B?REMxc3QvUXoxRjFMbWw3a21TVWZpWW11MWlqTGY0M25HZnNRd0tVTzRJSW9Y?=
 =?utf-8?B?WjBzSDhMZW1YUS9UaUladkhDUlcvZmhyM01RcVZSdnRjdmgxbWcvakhBTi9J?=
 =?utf-8?B?NFBtQ244dnJLaG1TUHdHc1lQVjNKS2p4RWo0bjNsQjZwUm5CcjF1Uk1Wbjdk?=
 =?utf-8?B?NG0vWFNVQ1FGZzRVVERXMzdjaHBDWEFPa1ZKRGNEcEY0OTZiSXpLWnJ1Q2tD?=
 =?utf-8?B?aUl0dlY2MS9ZcFlLcmxxR0Z6QXZrc01MSGoxQXdRTGVWN1RKK09DUTZXUVFF?=
 =?utf-8?B?cm1wMkcyYkNuRWNiQ0RuM0drRWxiTDd1ZjJtS2xyMldQMWVtbnFHLzJGL1p5?=
 =?utf-8?B?VEZEMkxmdmxYK1lyR243djNSaCtuYms1TDZ4Rzh4aHVONmhOaUI4cndXQjU0?=
 =?utf-8?B?WHpiVTZnRENyNDc1bW9YUkQ0SE1SWW5LeURzeVE0SllINzFwYTFocXNxdEpZ?=
 =?utf-8?B?ZTl0MnRFbjZUMC9MWEVxdEoveFJzcGREMGZjRU5Ib2kyb2Vub3RYWkR1R3cx?=
 =?utf-8?B?VDkvM2dFTjNPN1ErajVHUXEyUEpzcmtmMVk0dkwwKzRNNW9BK25TMEZVTU11?=
 =?utf-8?B?R3RKQmJKcHZCU0lWcWcwWmNmRVpZRU1SL1NWd1BZZnh6d1J2V3hpbnBtOEZ1?=
 =?utf-8?B?K3ZGWWYzTmgzV3lJb3BsVm9rYllHNEcwamEwZ0RIQ1MyQ0c0eklmQ1dWUTht?=
 =?utf-8?B?L2FXWVpZRXdzMWdWYTYwcm1tbnhtemhlMlhIQXd1aDRvc3VqU2oxMHNxTzA3?=
 =?utf-8?B?ZkxCazFTSlJWUG1jclhDTXA4aE1YNWp6VXZMY0NucmczMHJOaGFNS01wd05z?=
 =?utf-8?B?QWtZeTl1ZUo0MWg4WnlvMkhINzdkRXRKZjZzanlsT2VPQWxmbDl2cUo0eDdl?=
 =?utf-8?B?UEtxQzVwczYzRE9BNUVsdnl1VHJsTHU4V0t4eVpwZ09KNEhHZ3diVG53UEl1?=
 =?utf-8?B?bTkxZS9DS2h6OXduOWZGTjdZb3VYWVFmREpwUVJ4Z3pjdEhaSkd5dDFwTTFN?=
 =?utf-8?B?bElqdjNWc0Z0aGs0RXVScitqeitQbGxEcng0d0kvbnk3WTlKWWc1bElRMDhE?=
 =?utf-8?B?WUF3V3VtazVBcEdVZVVTbzJCNFQyTG1PMFJUK0RUaStUbGxhaGo2WDY3RElR?=
 =?utf-8?B?VnFoWmlOdU9na2ZxT1FDWDdhWjdoVHpFUVFrU2JYMWMrT1U4NngyYzBBNExw?=
 =?utf-8?B?Mjk0QjAvQXA1RTJzRDg3MkdyME5WbVB4blpZbGlTdnR3ZitaLzNqWlhBT0RJ?=
 =?utf-8?B?V2owMGhaenFPNFBVbjZGMmNaVU5YYXMzcS9LK0dyL25YSkEzeTdLZ1RObUJ5?=
 =?utf-8?B?ZzhOY0RhaEtoR0RVcDVyVDJuOWEwb3hBSGJlYkJUV2hnLzl4cEJMRmVCeStE?=
 =?utf-8?B?bWtSL3lmS1VDeUR3N1BSdGZ2MUp2ekV6RlhHbHVBcGVuZzJjL1BheFR5SmdE?=
 =?utf-8?B?eE1KUnFvbGtHNExYZGxNa0xiQnhZK0YvbUw2eTF3ZndrOWZ2dS9NZXdoRm5i?=
 =?utf-8?B?NTRHWW5RSXVOanNCb2FPNWNEbitkVmVqSU9uSURmb3VIL1NSVVpKV09Ud0Zs?=
 =?utf-8?B?SWFDTHNtMVVZNzJ5VU5yZGMxQk9lOG5GdjhwaEpmSE5Qc09Jbk9JNmlzOXRa?=
 =?utf-8?B?L0FxdHNtU3BDa2VRN3M1WkRBTnkybFNDZFQzNUlwVHJTYVo5enlNK3BXaTRr?=
 =?utf-8?B?d2kvK2UwMUtaVUM5bDZJbkVRemdha0ozUnZrL3ZYZEdydC9CV2RsOWEyV0xU?=
 =?utf-8?B?QWJyTDFvRHRwQjdsNlpWQ2hpN1duT3JSNU85NVdVYmFINDJhSlF2d0hScktF?=
 =?utf-8?B?d0Q4M0JubWtZSWtRZmZHM0tTOHNBY2dsbEx1ZEM1WGZXMCszWHlLV1RSdDRZ?=
 =?utf-8?B?NDRaZEN3aDFURThNdnBnZnRBSFZ3NVpQMUVLZHRKZHAzNUIxemhuc0hpZERR?=
 =?utf-8?B?N3Rza3YrZ3dkYm9DYVdabFYwaVg3SDNZcXBJZUFoSkxpb2lpS1ZiVXRhWTVz?=
 =?utf-8?B?cTQ4Uyt4V01aa3VIWmREZkVBS0JiR3JHYXpERlFRS2I2cDhUVFJhdUhuWW5H?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a261199a-ee0d-4bf9-ce98-08de1302bf91
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:39:26.4764 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CuaUerOgoNGFBX7MeAV8Y5aKWO/yplMsa5Iu6xt41Keos7QdjShtc7wgVKFrPfHOrA44mBZwI/eVtTfPNVu4VB96y2P3JdLLv4wysrVKuho=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1939049CF
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> EMP_AS_SDL_TL replaces the TRANS_VRR_VSUNC for the purposes of

Nitpick: typo TRANS_VRR_VSYNC.


> setting the AS SDP transmission line. Move the EMP_AS_SDL_TL into
> intel_vrr_set_transcoder_timings() since that's where we write
> TRANS_VRR_VSYNC as well.


Not related to this change, but perhaps at some point we might need to 
come with a policy if there are more SDPs that have configurable 
Transmission lines and DB point.

We have VS_SDP_TL for PTL (we do not use VS_SDP currently), and some 
more for NVL.

>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 35 ++++++++----------------
>   1 file changed, 12 insertions(+), 23 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6e8f8e673312..562a5feadaab 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -571,6 +571,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   			       TRANS_VRR_VSYNC(display, cpu_transcoder),
>   			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>   			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
> +
> +	/*
> +	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> +	 * double buffering point and transmission line for VRR packets for
> +	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> +	 * Since currently we support VRR only for DP/eDP, so this is programmed
> +	 * to for Adaptive Sync SDP to Vsync start.
> +	 */
> +	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> +		intel_de_write(display,
> +			       EMP_AS_SDP_TL(display, cpu_transcoder),
> +			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>   }
>   
>   void intel_vrr_send_push(struct intel_dsb *dsb,
> @@ -649,25 +661,6 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>   	return false;
>   }
>   
> -static
> -void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display = to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> -
> -	/*
> -	 * For BMG and LNL+ onwards the EMP_AS_SDP_TL is used for programming
> -	 * double buffering point and transmission line for VRR packets for
> -	 * HDMI2.1/DP/eDP/DP->HDMI2.1 PCON.
> -	 * Since currently we support VRR only for DP/eDP, so this is programmed
> -	 * to for Adaptive Sync SDP to Vsync start.
> -	 */
> -	if (DISPLAY_VERx100(display) == 1401 || DISPLAY_VER(display) >= 20)
> -		intel_de_write(display,
> -			       EMP_AS_SDP_TL(display, cpu_transcoder),
> -			       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
> -}
> -
>   static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> @@ -710,8 +703,6 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   	intel_vrr_set_vrr_timings(crtc_state);
>   
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_vrr_set_db_point_and_transmission_line(crtc_state);
> -
>   		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   			       TRANS_PUSH_EN);
>   
> @@ -773,8 +764,6 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	intel_vrr_set_db_point_and_transmission_line(crtc_state);
> -
>   	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   }
