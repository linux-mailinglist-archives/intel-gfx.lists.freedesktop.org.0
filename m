Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27EFEA06513
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 20:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C372810E17E;
	Wed,  8 Jan 2025 19:08:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c5/iK1XF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3578610E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 19:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736363311; x=1767899311;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/V5J+3muWzA4I4uWCPbToQRgD5kf4a2jiBYqYVfG+j4=;
 b=c5/iK1XFyX+xFk5plENNDSNjx7xy0URy7eGTq92tqH7zVDQ0y4mx7kAY
 lrNhaOhWftJ3ozCI9mt8Nyg/Kgs/dZ3jBskwbnzDIcNN8gKevwUMg9IB3
 hffqjx6RyWYX4DTEcFczAAWZeqxlICOyJfTs1p7RKv/Pc+xz9bhbBcBBx
 MN7TIAXP0OecntFJPe8MYvzbgYIG6vgl3KHB7SIwFJ+QgVJO+3LECgvct
 wL4qimvsPv2oodxBlNp/aUoVf7r84NGc7m3orqKBP4ixNmMh9J14gBku9
 OyzSLhI8CtwVelHNqkX10AutyK43Lnzv21ZDqVRIhwHUfBT58NgylakXY A==;
X-CSE-ConnectionGUID: 1luxOfDfSBy87mS3uW534A==
X-CSE-MsgGUID: yuYWviDkRmqFynVbrxfycQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47963023"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="47963023"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 11:08:29 -0800
X-CSE-ConnectionGUID: iZZhAjqDSNm96mKtnyuiAQ==
X-CSE-MsgGUID: gHnZVuozTtqUfwfJBh8xPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104056589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 11:08:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 11:08:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 11:08:14 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 11:08:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tKz3w/dLQodRAxvBYVsQPrPsQ2IeiuILiRylcx39y7/3HlwMKyYJV2pV8C7dO0lXSR6kTyqJzdePjMWsdzHlUJqKwB2pS73LJmuB7vhEezG3MrNDdC15/yiV7TLqv+qGViYwKDrMkCjkI0RsbgBiYk/hyPk+UY4mAuFmNzRxnReh1fVzWGqqnae4anWlOsFXEBmVru6hZxTMI30XtXdaP8BH0DPYGdgu0i9V2+F6lZSVTFEJikX3R2YA6pD2xV8ieeKSuncKbgcNm5RssB2+e9CI/LeinwyEk2F1Sn+Zw+r9X1YFbMj9tj6bj4nXN/99LQVuWGqljtptSyaHEkdCIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BRwCmF8gyNMcovhLaK44dhCDeJRiBmTaXneZFoo3Q0Q=;
 b=TWWeJgIUyIQEE77st+cjD4dcu/x6R2KSkxSAxllguPVkmejDhgzsmW49Uq4eoMtASt+vB+28rANZahI8gRDYe760dVPRzlCJCWPF3EY54qUSbJCHIKq7nyLydFDltOICVKZ294z9rU+OlVA73xIFJStjw3KHFyJRNPGEIf7FRyEOL9ooSO3yQxr0ER0e5GLv17PKYgWYMpw5j/J2/nYRzUlsVQ4ety7w7P/yKT2+72dRC5QCA7rV+M7ZbB5XijORAKgE3TW+4be4qPbVRu3HmzLdJTvTwTe2zjbzV6ozqe1ZkGKRvwKgIiOT1pLFXT8iuhR3SO3a1vNg49QlhhDO8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by IA1PR11MB7296.namprd11.prod.outlook.com (2603:10b6:208:427::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 19:08:11 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 19:08:11 +0000
Message-ID: <c355cf38-4caf-4d97-9d4d-ae7304481d2e@intel.com>
Date: Wed, 8 Jan 2025 11:08:09 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] drm/i915/guc/slpc: Print more SLPC debug status
 information
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20250108141318.63823-1-rodrigo.vivi@intel.com>
 <20250108141318.63823-4-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250108141318.63823-4-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR05CA0023.namprd05.prod.outlook.com
 (2603:10b6:a03:254::28) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|IA1PR11MB7296:EE_
X-MS-Office365-Filtering-Correlation-Id: ac76d04b-b328-43f5-2142-08dd3017cb60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QnovRWI5VHBlWG5QbHYrdXkvdGNBVWtTTEtmeHF6dWVjN0lOS3FFL1JMNWFO?=
 =?utf-8?B?MVBXekVtOWFZamMrem1nWlMxeFVoY2s2S2tVc0ZOQnhRTlVMem05aUtpa0JF?=
 =?utf-8?B?VW02Rno4dW52bERQbnMxZXhiZ0V3OHhyTEVnVnFzeXJRWjYzUXhVbHhzUEFl?=
 =?utf-8?B?MGJvK1g0R3BzYXBtSkFNZ3ZhUWpYWnJETDI4QklkcnU0bENFU0lsTXFkUENQ?=
 =?utf-8?B?cU5wMk14UStMbVlEYzF5Y3JYemRuRCtBYjNvSjNjU3FqQmNHZ2xTN2tzcUhi?=
 =?utf-8?B?ZUw2Uml5VU9ZT3F2RVhkZ0ttYVRGQW9NOUIxNm9UQ29BdlVjeFIxeS90Y3N0?=
 =?utf-8?B?Q3lEdlowbU14N1F3N0pxQWxkbXZWYWhnVFBPVUt1dUIxK0dCQjdPalVMYzVm?=
 =?utf-8?B?eXZPZWE0MjFYcThEc2QreDV5VU8zMzJ5dFBPdkZqYjFoVzJnVkx6OXI0T1Yz?=
 =?utf-8?B?VG5tWUFla0JadFJJV24vUFFpd2xoaDkzVk9Rc2ZtSExrSE40OGVGcWdjZ001?=
 =?utf-8?B?OXU1ZC9wM3hmUFV1N2NVWHFNY1I3ZmtSUkNiaUQ1VG9oVDA2OElDdnFNNlly?=
 =?utf-8?B?WU42RjBwRWdzWG9ITWhKMVVPcDdxc0Z1bXRIVmZWcTZFbUNhOU9NMDkwdXZH?=
 =?utf-8?B?UzZ2VlJWb3FQSXhvVTlyUHd0MzZFOGFoaHU5UzJzTUc5bWlCUG1vNGJCRlpP?=
 =?utf-8?B?dGdoQjV3cXBVZmh5NUtUM1oxNHNuZktSUWtCdGZQOE44MU4xaFYwdVB2eENI?=
 =?utf-8?B?REZFUjFrem1TcTNTdTIyVTBsVmRGcGFValB2ekVKaEEwNmFJbkp0bzJ6N2ti?=
 =?utf-8?B?ekc0SVF5Vnd0U0dQUGgyeEM5YVBhaTJGSnBPdzY0cXNBV1BoYjdjU0JXMU5H?=
 =?utf-8?B?UnFYbE1YSlE1NTRXRnVRMVpBU1dscmovci8vRVJSWld1bjRNdUlGOWhHUHQy?=
 =?utf-8?B?cUM1WmNITGx5NjZYaUMzTW9ERGRLL1B4bVRwNWREMjNsZG40VnYweDFicllv?=
 =?utf-8?B?a3FsdHNHQ04rSCt3YVd1YWozc0xkdmhOQVlkc0hQMzkydGhtSGQ5a2lzdEhN?=
 =?utf-8?B?M3ZzSTQxZG9YVHQreEd3aFg3Q1dMN1RwRXBzSWdpVDhPdGo0UE1TWWg0S25q?=
 =?utf-8?B?WnFnVUwzN01XTlh4SHh3OU9RaXFiUGxZWjZUdENtUUViQWY0cEVaSTcvV3dB?=
 =?utf-8?B?eThmQWV0TTJVcFJOTTV0OEZIM1dQYzN5MjFVRHNCb2pubjFQdEJqbGhjZG9M?=
 =?utf-8?B?dzN3SGRtWGpyMFgrVTMvMXN6UXgzME9YNTR1bmdlcjZRVUFhQXVQVUUzTU5p?=
 =?utf-8?B?dTlOaVo0cnMrQ2hnTjBCcElSZEdMZGdzREM0U2ttSEFxNlRIRlBoSVRaMGFU?=
 =?utf-8?B?R2tWTlhvS1dQdUl2NFlTU3U0ZFM1Q2UwNlFhS045aEFGaDkyYktnRy80K1dE?=
 =?utf-8?B?bVZESFBqZlh4TG5xRlFxL2Rmck5DSWZrTHBDNHNmVmtSelhiR2VpMGpyNXp6?=
 =?utf-8?B?MEx6eDZNaC96alpZVGRRaEJoVEJqWm40clBqM1ptRmhzMWUyVW5BaWVGWEUw?=
 =?utf-8?B?VnNFWWtpR1o1bVlueUxmUExLSkpNNzAwVVFWektPZTlHdWtNOVBNL1hhMld2?=
 =?utf-8?B?RGdNTGdublVWS3pTK1dZR29MSFNRcmZ1VmJTNTlxeFJlRUlJSndyU3huTFpE?=
 =?utf-8?B?TnhSUUNYWHZOWG8xVFZTNWJmWk1CQmtiWEZtNnVXMlEzSGh6T1UyNmhWbGRO?=
 =?utf-8?B?clozbnUzSXd1R3BnK2hGTi8zWlBPMWJ4bHd4SFcxdk1HdUpFcTdTSHg3NWFy?=
 =?utf-8?B?ZDFLYlV2bHAzR0tZU3R5R2JJajZwZmx2dmZKRFRZZ24rQzNvNXVLRjRiQWpR?=
 =?utf-8?Q?I2wxul0bkswVU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TlBsd1lxcmZVcFYxNG9mSklFR09aZTJMQmk2RURnajlJNkJHazl1RjZTcHBa?=
 =?utf-8?B?MGY5OUhPbTVsNEhhSXRTQlVUbXJrK1M4VklwWGllaXFjMlcrK0dydEQyV29t?=
 =?utf-8?B?QjR6c1dWalAzVjQ0OS8xOTFGcUx6OXpBTkg3ODVLNjVqVHhpS0E3OGRGTEdi?=
 =?utf-8?B?QlorSWNOUWdxSlVQQ0pDaVEyRmZSdlczVjQySU96eHN0T1NqaXRaVUFNZ2Vx?=
 =?utf-8?B?Wm0xMlV2eGVOS2hleEF1S1BWb1FCb1Jnbld5YWUzUUdGOTE2WU5lQWRrWGZT?=
 =?utf-8?B?dGhMcWNiNjU5eG5QT2drTzVyck8wT1VlV3lUa2FJOVY2T2V2MWlkVW5Qbi9k?=
 =?utf-8?B?RnN4VTdTUStIbndaU1hxc0JkSEJGb2NKMEFLS2dTYVB5NHdYS0xsR1lwTm12?=
 =?utf-8?B?TXI5Q1NMRld5T2JXWkE0elU4eGpSZjF4ZkxTQTVMQ3hxVFg5ZXZCYmFtRVNm?=
 =?utf-8?B?MldRT0JWNE1ZVXJaOEsveTdPWUpZaFgycGFlOVBBYjE3eEZLcWhEQzFHQ2pY?=
 =?utf-8?B?QU9FY1JKZHRTMjU5Y3FnN0VyNXFhQlpRUk9pUDU3RFVFL2dtMzVZWVFVTEpp?=
 =?utf-8?B?TjdkNkZkQW84emJkaXZ0UlNuSkM2MFV4d09WazdnRXFpekJLN1pqTTVSTUh4?=
 =?utf-8?B?ZzFBNjFZV0owN1E3TDh2ZUlqK0RXZDdRYlFOVHZRbVMvblU0MEdxUXBzMXhR?=
 =?utf-8?B?dm54cFhRZXRoalRWOGk0R0g3L3BzSVNNR24zOU91MStEeVZnYmxSbTRZR2Vy?=
 =?utf-8?B?SVhiUzFKYnRUOUYzaFVXTTRQZ1VjQmhxSnYrUHd3UkR1K2poQXFjUXVoeVI1?=
 =?utf-8?B?cUt6alhZZXJYZTlMa2plY09zNjN1Z1Z3bTR1Q2FFNDU3dGtEVlZITXhweVJ5?=
 =?utf-8?B?aFppQ0YxWXJ6UjZCSjAvNXp3OFZRbUtNWGVpOSswU2l2MVYyZ0F6RlNlcndn?=
 =?utf-8?B?dDJTMlJPMnVSdC9CL1pra3NzcFhIUnZ0Y2svK0Z4ZlBNMmRyanBjai82YnRT?=
 =?utf-8?B?QzZ3UFFhNmlXV2twSXdKdCtCN28vcnJMRmdrMzdzTlhRRENUa2ZSZDFLNG10?=
 =?utf-8?B?RHJjbWxrckptMUhOUU1MOUl0QjZJOWpGU1g5WjlOQms5Z1UvN2dqTGhwZFQx?=
 =?utf-8?B?Y0hOdnd0SXFJWGF5ODcwc3lEbm9JdUpUdm41UkdoaklEajFrUzQyQmJmYVJI?=
 =?utf-8?B?b1lieDFCNE54WGpVN0JPaHUvUGxGZ21hZUJVazBUVm96UEJ0dVI3ejFJc2hO?=
 =?utf-8?B?SEhtVERsajBQaGgwOGtvZEpydS9EKzlIRXVPNlRTOTB3eit2VENUWFBBUTJZ?=
 =?utf-8?B?cnZvcFpoa3JRYmlkc1hrclFpNWptVy9Land0L0xuVjhBWmp6VVFsZ3RDVnFm?=
 =?utf-8?B?NEVqOVQ1bXM5V2FCaStPbGtpWGFHcThHN1Zibk1ZZEdXSHEvbE5wbVBPMGlU?=
 =?utf-8?B?ODVDaXA5Z2tHeWhCTUNNaWlOVkUxN0pJZ2I4eDRrNDV0VDJrUmE3bFZBc01O?=
 =?utf-8?B?czc3SWlxNmQvdGh4Ykg4OHZyZkRZQWdndGFuQWtvM0Z2NittMVk4cjhmbC80?=
 =?utf-8?B?dG1ScUFBYXRJUURVSEN5aDI4WDl3WFdqTHRzNTRNeldRNEtwOGJwNUpqRmRC?=
 =?utf-8?B?Mlc0blFMNEh2SnU1cnZObUJqUFdIMjFBWldjYlpiSW9PY0x2Q3ZZb0NYN3g5?=
 =?utf-8?B?UjBjT1dqdUhjenpDZlBzSG5iWG1lSGJBaGhDbnloWTBEWmNVVkNHNEpYTXg4?=
 =?utf-8?B?Tlh1aUEyb1hZM0pnOFl2UVI1YWhCWGd4TDlNcThnZ0E2U3pMakc0N0twUEJJ?=
 =?utf-8?B?UmJlc0NDcTBnL1ZFT3ZwcWZNYzIwTWNtcDZUREdGQ1hFbUZEMTJzMWYxaHpz?=
 =?utf-8?B?MXN2dGNNcHJIVlE5WEFsbGtmbDdKbjk2RGlZaU8zMVdXRlhzWExOc2dwUFZT?=
 =?utf-8?B?WE9BbWJVM2tXbGlyT0EvSmg4QjBldHUrMVozVjhEQW45UTZmc01mcjFma0Mr?=
 =?utf-8?B?cGd3NkxVQjZPWVN1Nml2bGQ5cnFpRHl0RUgyMnFQSFlUenR2SDFiZDE1cG9n?=
 =?utf-8?B?NVVJMWhyb29YM2FHbTAxaWNhRmNpdlRweXhUL1BEbXI2clIraVAvY2JPOHVP?=
 =?utf-8?B?MnAva3lITnpTaGpRbGhXQXR5c0VIVkhNMDJpcEJGalJDdkZiWFRqOFV0T21J?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ac76d04b-b328-43f5-2142-08dd3017cb60
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 19:08:11.3119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3FZO8vqrVWdlU71lppycLiKXi4xFSmD8+Qu4ljL/gpusOcLTDYH5wK+b4UvIjDyjqorFb9EaqVgpPZnjZ5BT/Az3u0tysPW9vCcDSPu1zYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7296
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


On 1/8/2025 6:13 AM, Rodrigo Vivi wrote:
> Let's peak on the Balancer and DCC status, now that we
> are using the default strategies.
s/peak/peek
>
> v2: fix identation
>
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 +++++++++++++++++
>   1 file changed, 17 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> index 722da8a7f852..7a9a79fb46fb 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
> @@ -774,6 +774,23 @@ int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p
>   			drm_printf(p, "\tSLPC state: %s\n", slpc_get_state_string(slpc));
>   			drm_printf(p, "\tGTPERF task active: %s\n",
>   				   str_yes_no(slpc_tasks->status & SLPC_GTPERF_TASK_ENABLED));
> +			drm_printf(p, "\tDCC enabled: %s\n",
> +				   str_yes_no(slpc_tasks->status &
> +					      SLPC_DCC_TASK_ENABLED));
> +			drm_printf(p, "\tDCC in: %s\n",
> +				   str_yes_no(slpc_tasks->status & SLPC_IN_DCC));
> +			drm_printf(p, "\tBalancer enabled: %s\n",
> +				   str_yes_no(slpc_tasks->status &
> +					      SLPC_BALANCER_ENABLED));
> +			drm_printf(p, "\tIBC enabled: %s\n",
> +				   str_yes_no(slpc_tasks->status &
> +					      SLPC_IBC_TASK_ENABLED));
> +			drm_printf(p, "\tBalancer IA LMT enabled: %s\n",
> +				   str_yes_no(slpc_tasks->status &
> +					      SLPC_BALANCER_IA_LMT_ENABLED));
> +			drm_printf(p, "\tBalancer IA LMT active: %s\n",
> +				   str_yes_no(slpc_tasks->status &
> +					      SLPC_BALANCER_IA_LMT_ACTIVE));
Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>   			drm_printf(p, "\tMax freq: %u MHz\n",
>   				   slpc_decode_max_freq(slpc));
>   			drm_printf(p, "\tMin freq: %u MHz\n",
