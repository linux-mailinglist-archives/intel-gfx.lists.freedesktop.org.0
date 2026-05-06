Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CNjvDJ0/+2nTYQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:18:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7EA4DADD0
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 15:18:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB06310ED53;
	Wed,  6 May 2026 13:18:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dooKUY4O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6B7810ED53;
 Wed,  6 May 2026 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778073497; x=1809609497;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vyDzAYqrb+j/dxfms2DrRQvVeuqr0fiLFsu3fj3J7pE=;
 b=dooKUY4OZnETg7aYaficWTO50aILMgym9O12XCqsmdSrHP4vtsvPvY3E
 XOa3Ek6TXYhq0zxCoNuUTrbC1vt5HbudNW4a0rkVaZOgyob/a7hnoq7WO
 rTOKAptu6+yMd6JskECn5LcUTOLecf8M79fg2qFg3s5y2/pGv10fXgpBP
 NE6IniI2uPs1HTs2OkaomYYnsAi4L6ncpCMDUaKWrvTl/BDDGC7B/L/gY
 1PS3g/R509fv0lySuYaSzm+DnO2yPM4KwsaAzGs6eOkxNYEnlkAZVYqF0
 XNXPuWxjSA8/07mbW0kgV7rog8M0nlRfuRvLp70NfKrJjefryzVIamjWz g==;
X-CSE-ConnectionGUID: OORZJELQRum5S57Gjsp+1w==
X-CSE-MsgGUID: 6hO0zFPyS/CiLZTCCkn5ZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="79050128"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="79050128"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:18:16 -0700
X-CSE-ConnectionGUID: Sk7irUU5QHW/+KzTOGuqnA==
X-CSE-MsgGUID: KE3j6Q0jRSOTccvntHboqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="236250060"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 06:18:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 06:18:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 06:18:15 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 06:18:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gbKdsswBf9rRwH1p6DR70cTNitiIrLulVjOFMwY5Nq6gt+F8QjBj1cmDYxUvLLNBWz+JqUD/ZbNJOfFk2/DNhzS0g6lcqzfzi0/mvN4kcRTAHClQx15D+9B8uD/L0mcdkmlkIDIrSmuJdDBKCxNfXJVBfVa5bEI1wJpiCo1zxgVO7ZbYCxhkM/lhJADOs17Rg14b7FSlzAClIRojEu2cqpGzfF2VzBZUMLktXB7nsSNTYDie94MsLIAqVDwy/D9Sqn11myDErxjNR1zvHtfYNevSW7mLK5s6Hfgif4F59751FTBHtzC1kUCLobC5RVuFbhtyt+PwMrM76/+IiDe4kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PxnAJWSxhJ4b9aH41/T72g4YT/UwVCdIspIK8kSd8NI=;
 b=O3e6PwG/2qL4ctNscwlMkzxMoq+coRXsv8d3tWbLEM5TimLtgRJN0311wPO7Wo9XYh8KTIYDLsA/lQnJ7GprfJ/bexDb/+IZFxaQFRGVCszeLtvFMrTY0WiL14HWLdSVdAlQsmxDsaNmLtLkMGBaUUAn3CUEO5yeWFCC30MmoY67cDTMIVOd10blxfoeu+/+Iaqp1xCkWx7Wy11AVBktoDuoQxzflipKE/k1ajoF4UuwJp8K+p5qoO0fAC5HqJLbjT8+7lIjd5UyIBtm+R74N0dkVAFmktaHBKHoPB8BA88mCmAPJP2hsj//iFqFhddc0yA0RmFYAFdg0jfjHfPi8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF7708D4D9D.namprd11.prod.outlook.com (2603:10b6:518:1::d31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.16; Wed, 6 May
 2026 13:18:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 13:18:04 +0000
Message-ID: <b0da8309-911d-4671-9f64-323f6eb5ed66@intel.com>
Date: Wed, 6 May 2026 18:47:57 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
 intel_panel_fixed_mode() in mode_valid
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20260430131220.3891497-1-ankit.k.nautiyal@intel.com>
 <20260430131220.3891497-3-ankit.k.nautiyal@intel.com>
 <DM3PPF208195D8D1843C2EF191CBC73406EE3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <d9b7108e-2902-48a8-9ffb-08043812400d@intel.com>
 <DM3PPF208195D8D8F1E8766713D06C5C1D6E3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <DM3PPF208195D8D8F1E8766713D06C5C1D6E3312@DM3PPF208195D8D.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0179.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF7708D4D9D:EE_
X-MS-Office365-Filtering-Correlation-Id: 1dca2d7b-48aa-4c76-a1b5-08deab71e791
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: Lf2NCBietpehX+oFnXQcEY7TqgYTb5J/rukvW3O7uCGmfzWjlZYIWiXGbfRoWb5uQkgoGxOkvVv/hBAv0lAqOtQH1sSJWfjilT7qdhc2ERcrIKUq4Vx90eAee5+VvfWhte62EveGU9H02BTZpZCFe8crJDK8uw3S+RFNZnI/BAhgPpupnPxOeZTDXihUFzA/WWjqGPfosZxGp6GrYFh7QjJaU2ioGVb3crnfpk787Ypdwn7bM+32OldRWIDLjVJc3DMfoGRn/LXUdYcktAjVtIHt97SXYwoIBXJf46BsEmPYt1eT6LcFKu1lW7aXW9Q31Q5K4Ik7fJ1JT0VN6+pLWRWlXmgtRN+TT7VW/nJLIJEgsI0JHRwiFt9ltXecXboCvzLUUgkBAjJzskUKXi/l74uaLW/h+hcc5rHabhs5+V3rXeOTi6Zr+pv+XLS3TICyIq/81MGr3PdRJQrQDIT6nhuWZtzFrgsj4Tqh6xXKUdtiXxNJZdOQmhJJvHjrLaXrD+se9VBfH8DGE9oxGlH8XNjq2u3naYa7S6l2fBANTLwrY54VQgoYuLZeKKdoETlZQA1UBngioe9SBp8KYCP/oY9aXvg8zhlndj1A/qUxUA3WT6pEOx5Ba50/EsAkOBUKvZvruFCAJNMnca9jfwkzBEh7JYFywEQ1Cq6Ais4qjxtbfRTYLsTF5vWxDcHWqVUy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckRNTzlMOG5JVmhYSjM1NzRUbU5CSTViTWtIRnNMd3MzRFZ6MnVRK3hPU2pi?=
 =?utf-8?B?SDVFN2QyMmt5SjcvMVNkZ2RUS0FHWlFPWmo4a1YzK1NHV3JqSjZvdVNTcjF2?=
 =?utf-8?B?S1hxVzhhbWlLWVdrQWx6ZU1mTGNQd0szRWZBNWNlQjlhNUFmN2doaTRIUTlF?=
 =?utf-8?B?WWRTbUpjYThGejYxUFFiRm1rMDg5TmtjMTdFWXUwd1BsdEhVUE91RnljUnMz?=
 =?utf-8?B?S0FhZnM1eStVTEQ2M3Q0MHc5RG5wNzZaTmRjY3YxcFdocENPbjd4NXZIMGRp?=
 =?utf-8?B?TGp3L1pPYVM2R3dkM3BzK3JaUDBjcHFob2RSRmV6L09aK3RTMnpCeCtRdmwx?=
 =?utf-8?B?M0xkUENVY0VpbSs1aXZoQnA3ZWFxMFZvL01lZzhoR0RYSFRDRTBMcGMvcnli?=
 =?utf-8?B?MTQwcnlDaU1Md2lpOStXS1d0VlM3T2lXa2t0bDQ5b1ZGelQ5VFpiV1BVeGJB?=
 =?utf-8?B?VjU4RG96U1dnMXJJWjZFZHFYeHoyZkpTaHR1RW8zbmlPMVBSeWUzR3pzVnh6?=
 =?utf-8?B?eHRERG42c3ZaV1JvV2NSV3kzS2ZyZUsrNFRLVmxFV0prZ1MrWmFET1RZTnp4?=
 =?utf-8?B?eXRzdWlVOG5NZzlPZCtBcFppSnVRSHluR3lNK3VZM2c5dHYxVXBuK21IZHdz?=
 =?utf-8?B?eDhYc01pbVE4N2x1NlRMeWRRNVJiKzlQaG4wVVNaSHNFb1RaK21TNCs2bjRv?=
 =?utf-8?B?Wlk1dExlQUZDejhCUkVsN2NUOTdDZ2F1clN5YmpXQWcraGM2azBHN0FwU000?=
 =?utf-8?B?K0xFRThKRFpBUVh5WktxaUpVM2F6c3F4azhEWUQ1UlRZN21JYThjK2pKT28z?=
 =?utf-8?B?REJES1FVTWV2M0JUcmZDSnBsL2g2b29mVXRjVXRIWUNGS3N6a0VLT3JTUkNN?=
 =?utf-8?B?aEV3bVl5MUdPcks5K29zQ2JiQlJrbTFENFYxSWpLdXRuMDBiMnIvc01EZDZQ?=
 =?utf-8?B?alY1UmUzWTZtUUpsSnJyOWlHRmFrNTgra1RCbXlneHFrbGFJb0UvUzdnNjJw?=
 =?utf-8?B?bDBYaDJZVFpBd1dRZUF3K3NzYTZTU1daeHlKS3BMZ0F2M0d2bVc0Y1Y0Nk9n?=
 =?utf-8?B?NzV3VHZWUXZCZk5lZ0tVVU5zSkxYQ2w4NkxWMkowNS9FTHI4cnZuNElLVlk5?=
 =?utf-8?B?SzVXSlBCY25rSk5ZWjQwMWFuYy9VL0ptM3BYTS91QUxXSWlTN1BFbk9tNXlC?=
 =?utf-8?B?cDNwdEUveUR0ZnlSZDkxcENjQVZxd1lPbGNYalZ0UElJN2p1cjFPZ0FFeWox?=
 =?utf-8?B?Q2tQVlBTQkxUa0J1dmt1MUdOQzZPVjRYT1ZHMXNZZm9oQmdtZEZjK2g0WFZj?=
 =?utf-8?B?UER0bTRuOUpyNGZnTzJwWWNJTVdpaERhdnVra2xYU2R1RWNOL2dqTGY0Nmhu?=
 =?utf-8?B?SWZFa2RuZlVyYWM3eGpLaWZJZWN3b09XSEdvNkV2YVBWYjlRSGYwejExTkF2?=
 =?utf-8?B?RDJuekhzd2N4cUVidzljazhRUi81dlFzOGNtUUNyK2w0T3FTOWJ1eCsxY2Nv?=
 =?utf-8?B?V3l4V0VKY3lBVVhhQXdIaUpRaFJJcWttTW8vdHdkSHFvS0FQKy9vUGExdWNQ?=
 =?utf-8?B?MlBPd2J0dmRlUS9XVlQ3akU0QzhGREJaUlI2SGRsQXQ2TnpxOUJ0QVNWRGwr?=
 =?utf-8?B?aXFpWFd5Q1VIZ1FHMk1ZcENkSm1OWkRHMkd1QnRTTTZDVkJud0o3czlRRjAz?=
 =?utf-8?B?b2VPY0dnSWNmUXRGZ250UERxamJaZlJzOFg0Y3dsRTNTUUVUNVkrQ0ZGTGNi?=
 =?utf-8?B?b1QzcWUrV2FiR3BTcjhZT3l4N0tyTnY1aVI5bkFiTXB1MTQxZjRtUUdRQ3Zo?=
 =?utf-8?B?RXFobFpNdzlZanVKeVZJSFJYOHdWbC9mVHJvMFRtdkY0V2tpUHloaUFrekhq?=
 =?utf-8?B?ZUk2QVRRdE5DelZVUDRPamlNeCtyN2lQV3Yvd1J1aTM5MDFYTTRUeGwwbHBS?=
 =?utf-8?B?bUpLOElDYkZyTEZZc2VoQVJGdW1sdHQ1TDllYVE3QWlBMkxRdHpQOXF1bzNC?=
 =?utf-8?B?R3JsUVlBYnhhdDJxNVh0N05XODI2RWFqcGNkV0JIak1VVVM4QUhnTzlZWlJO?=
 =?utf-8?B?NTRIUmVKTW54ZXY1cEx3MHFDUHdSWksxMmJhSjcyUkt2RUJLYjNwWWVmNmZr?=
 =?utf-8?B?VXQ0d3IxVS90RGhnUjJmNW50RUpEd1Z5OGNSZWw3NDlQeUJqc3NRNXhnYUg5?=
 =?utf-8?B?S3Ixd0hQaWJaN0FqSmdFSnV2QUJwYkRhV0pxNC92akxyRU5yaHZUeUpwTGNB?=
 =?utf-8?B?TkV2a2ZzWG1Ram9hQ0E3OVRlYnY4UlJDWU9QSEEvMURyT29DWDIwRjhkcmo5?=
 =?utf-8?B?WXYrWkhtZ1FHc1hQNUhYaTJ0M01kZnZwaWdGUFhpUFF6bjZUQWhiREhoaGhV?=
 =?utf-8?Q?4wXBSNfxRY0WKHtw=3D?=
X-Exchange-RoutingPolicyChecked: g7SuxKmHCSyJH5YiVOSHgVxI39/j9k9NB61SyYazWHixnoaa19u2+rj6BUdKS+fAt00Qw9/ZFDWYdylFgGVSE6yvTwQ+uaJ61JOa6vnDuaLbJ3jaJqRT5eOi80CUelrbUOeBduYYCpssaBKzdD5tXKn6S6WRW1iWbP2whULXgb/2lO+ola9lqappQBlvwdw6Kb4RF00rFIW2P3HmRxfd4LgnldnumS55A+8atrY3d7E4z9nn+f7uSbfgzGRsejXJjKTcQs03Ev+y7Em02YSfTcLNgdlV91jPHVRhHM79iTxtQMAnFNY8pI5vimnY3gZ9FZlzf4k4dgkJhRiqXNNrkg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1dca2d7b-48aa-4c76-a1b5-08deab71e791
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2026 13:18:04.4441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ++woiY2aQ1+cochrrM/PUUYDVsMiKpBZBwzcQ2KoRG9v7ePE4Q1fGoHbOkNFdfhGU/OgOY7Da028Aw+E6H2Odm5+kLaKzdr1thwvAFCvbno=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF7708D4D9D
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
X-Rspamd-Queue-Id: 8D7EA4DADD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 5/4/2026 7:40 PM, Kandpal, Suraj wrote:
>> Subject: Re: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
>> intel_panel_fixed_mode() in mode_valid
>>
>>
>> On 5/4/2026 11:07 AM, Kandpal, Suraj wrote:
>>>> Subject: [PATCH 2/5] drm/i915/intel_panel: Avoid calls to
>>>> intel_panel_fixed_mode() in mode_valid
>>>>
>>>> Currently, most callers of intel_panel_mode_valid() also call
>>>> intel_panel_fixed_mode(). This is done either to check for the
>>>> presence of a fixed mode for the connector or to get the clock of the
>>>> fixed mode, which is then compared against the max dotclock for the pipe.
>>>>
>>>> Since intel_panel_mode_valid() already calls intel_panel_fixed_mode()
>>>> internally, we can avoid yet another call to intel_panel_fixed_mode()
>>>> from the caller.
>>>>
>>>> Remove the redundant call to intel_panel_fixed_mode() in mode_valid
>> paths.
>>>> To get the clock for the fixed mode, extend the helper
>>>> intel_panel_mode_valid() to accept 'target_clock' as an out param.
>>>> The 'target_clock' can then be used by the callers to check against
>>>> the max dotclock.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c    |  8 ++------
>>>>    drivers/gpu/drm/i915/display/intel_dsi.c   |  7 +++----
>>>>    drivers/gpu/drm/i915/display/intel_dvo.c   | 15 +++------------
>>>>    drivers/gpu/drm/i915/display/intel_lvds.c  |  7 +++----
>>>> drivers/gpu/drm/i915/display/intel_panel.c |  9 ++++++++-
>>>> drivers/gpu/drm/i915/display/intel_panel.h |  3 ++-
>>>> drivers/gpu/drm/i915/display/intel_sdvo.c  |  8 +++-----
>>>>    7 files changed, 24 insertions(+), 33 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 8631df908b07..eef85598bcd9 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1571,7 +1571,6 @@ intel_dp_mode_valid(struct drm_connector
>>>> *_connector,
>>>>    	struct intel_connector *connector = to_intel_connector(_connector);
>>>>    	const struct drm_display_info *info = &connector->base.display_info;
>>>>    	struct intel_dp *intel_dp = intel_attached_dp(connector);
>>>> -	const struct drm_display_mode *fixed_mode;
>>>>    	int target_clock = mode->clock;
>>>>    	enum drm_mode_status status;
>>>>
>>>> @@ -1588,13 +1587,10 @@ intel_dp_mode_valid(struct drm_connector
>>>> *_connector,
>>>>    	if (intel_dp_hdisplay_bad(display, mode->hdisplay))
>>>>    		return MODE_H_ILLEGAL;
>>>>
>>>> -	fixed_mode = intel_panel_fixed_mode(connector, mode);
>>>> -	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
>>>> -		status = intel_panel_mode_valid(connector, mode);
>>>> +	if (intel_dp_is_edp(intel_dp)) {
>>>> +		status = intel_panel_mode_valid(connector, mode,
>>>> &target_clock);
>>>>    		if (status != MODE_OK)
>>>>    			return status;
>>>> -
>>>> -		target_clock = fixed_mode->clock;
>>>>    	}
>>>>
>>>>    	/*
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> b/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> index 9005c1f5d857..3a111f041071 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
>>>> @@ -63,18 +63,17 @@ enum drm_mode_status
>> intel_dsi_mode_valid(struct
>>>> drm_connector *connector,  {
>>>>    	struct intel_display *display = to_intel_display(connector->dev);
>>>>    	struct intel_connector *intel_connector =
>>>> to_intel_connector(connector);
>>>> -	const struct drm_display_mode *fixed_mode =
>>>> -		intel_panel_fixed_mode(intel_connector, mode);
>>>>    	int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>    	enum drm_mode_status status;
>>>> +	int target_clock;
>>>>
>>>>    	drm_dbg_kms(display->drm, "\n");
>>>>
>>>> -	status = intel_panel_mode_valid(intel_connector, mode);
>>>> +	status = intel_panel_mode_valid(intel_connector, mode,
>>>> &target_clock);
>>>>    	if (status != MODE_OK)
>>>>    		return status;
>>>>
>>>> -	if (fixed_mode->clock > max_dotclk)
>>>> +	if (target_clock > max_dotclk)
>>>>    		return MODE_CLOCK_HIGH;
>>> Maybe this check needs to be move inside intel_panel_mode_valid() I
>>> see almost all places call this check right after panel mode valid call anyway.
>>> This will reduce that repetition. Also I feel "Mode isn't really valid if clock is
>> higher than max_clk".
>>
>> I do agree. Infact this was the first approach I was thinking about, as mentioned
>> in [1].
>>
>> But as per the existing role of intel_panel_mode_valid(), it is just to compare
>> fixed mode to the requested mode wrt vdisplay, hdisplay, and vrefresh.
>>
>> So adding this check seemed changing that semantics.
>>
>> Also, idea was :
>>
>>    - if no fixed mode is found the target clock is the clock of the requested mode.
>>
>>    - if there is a fixed mode, the target clock is the clock of the fixed mode.
>>
>>    - Check the target clock wrt the max dotclock of the pipe.
>>
>> Having said that, passing target_clock as out param also looks out of place.
> I mean if we already have target clock being passed why not have the rest of the check in there too is what I am thinking.


Hmm, there is one issue with having the check inside the function.

For eDP/DP we use the helper intel_dp_dotclk_valid() to check the clock 
against the dotclock.

Since for eDP/DP we have joiner and DSC cases the dotclock check is not 
straight forward and needed a separate helper.

So we cannot check this in the helper intel_panel_fixed_mode().


Regards,

Ankit

>
> Regards,
> Suraj Kandpal
>
>> In all, I am open to change it if makes sense.
>>
>>
>> [1]
>> https://lore.kernel.org/intel-gfx/60dab503-9180-4167-a0f3-
>> b65c7d54066a@intel.com/
>>
>>
>> Regards,
>>
>> Ankit
>>
>>
>>> Regards,
>>> Suraj Kandpal
>>>
>>>>    	return intel_mode_valid_max_plane_size(display, mode, 1); diff --git
>>>> a/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> b/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> index 405b33aca9dd..65015477abed 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
>>>> @@ -223,8 +223,6 @@ intel_dvo_mode_valid(struct drm_connector
>>>> *_connector,
>>>>    	struct intel_display *display = to_intel_display(_connector->dev);
>>>>    	struct intel_connector *connector = to_intel_connector(_connector);
>>>>    	struct intel_dvo *intel_dvo = intel_attached_dvo(connector);
>>>> -	const struct drm_display_mode *fixed_mode =
>>>> -		intel_panel_fixed_mode(connector, mode);
>>>>    	int max_dotclk = display->cdclk.max_dotclk_freq;
>>>>    	int target_clock = mode->clock;
>>>>    	enum drm_mode_status status;
>>>> @@ -234,16 +232,9 @@ intel_dvo_mode_valid(struct drm_connector
>>>> *_connector,
>>>>    		return status;
>>>>
>>>>    	/* XXX: Validate clock range */
>>>> -
>>>> -	if (fixed_mode) {
>>>> -		enum drm_mode_status status;
>>>> -
>>>> -		status = intel_panel_mode_valid(connector, mode);
>>>> -		if (status != MODE_OK)
>>>> -			return status;
>>>> -
>>>> -		target_clock = fixed_mode->clock;
>>>> -	}
>>>> +	status = intel_panel_mode_valid(connector, mode, &target_clock);
>>>> +	if (status != MODE_OK)
>>>> +		return status;
>>>>
>>>>    	if (target_clock > max_dotclk)
>>>>    		return MODE_CLOCK_HIGH;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> b/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> index cc6d4bfcff10..ab6ba08ac091 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
>>>> @@ -395,20 +395,19 @@ intel_lvds_mode_valid(struct drm_connector
>>>> *_connector,  {
>>>>    	struct intel_display *display = to_intel_display(_connector->dev);
>>>>    	struct intel_connector *connector = to_intel_connector(_connector);
>>>> -	const struct drm_display_mode *fixed_mode =
>>>> -		intel_panel_fixed_mode(connector, mode);
>>>>    	int max_pixclk = display->cdclk.max_dotclk_freq;
>>>>    	enum drm_mode_status status;
>>>> +	int target_clock;
>>>>
>>>>    	status = intel_cpu_transcoder_mode_valid(display, mode);
>>>>    	if (status != MODE_OK)
>>>>    		return status;
>>>>
>>>> -	status = intel_panel_mode_valid(connector, mode);
>>>> +	status = intel_panel_mode_valid(connector, mode, &target_clock);
>>>>    	if (status != MODE_OK)
>>>>    		return status;
>>>>
>>>> -	if (fixed_mode->clock > max_pixclk)
>>>> +	if (target_clock > max_pixclk)
>>>>    		return MODE_CLOCK_HIGH;
>>>>
>>>>    	return MODE_OK;
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
>>>> b/drivers/gpu/drm/i915/display/intel_panel.c
>>>> index 2a20aaaaac39..20c548eea6da 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>>>> @@ -396,11 +396,15 @@ intel_panel_detect(struct drm_connector
>>>> *connector, bool force)
>>>>
>>>>    enum drm_mode_status
>>>>    intel_panel_mode_valid(struct intel_connector *connector,
>>>> -		       const struct drm_display_mode *mode)
>>>> +		       const struct drm_display_mode *mode,
>>>> +		       int *target_clock)
>>>>    {
>>>>    	const struct drm_display_mode *fixed_mode =
>>>>    		intel_panel_fixed_mode(connector, mode);
>>>>
>>>> +	if (target_clock)
>>>> +		*target_clock = mode->clock;
>>>> +
>>>>    	if (!fixed_mode)
>>>>    		return MODE_OK;
>>>>
>>>> @@ -413,6 +417,9 @@ intel_panel_mode_valid(struct intel_connector
>>>> *connector,
>>>>    	if (drm_mode_vrefresh(mode) != drm_mode_vrefresh(fixed_mode))
>>>>    		return MODE_PANEL;
>>>>
>>>> +	if (target_clock)
>>>> +		*target_clock = fixed_mode->clock;
>>>> +
>>>>    	return MODE_OK;
>>>>    }
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h
>>>> b/drivers/gpu/drm/i915/display/intel_panel.h
>>>> index 56a6412cf0fb..23bd227826c9 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_panel.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
>>>> @@ -43,7 +43,8 @@ int intel_panel_get_modes(struct intel_connector
>>>> *connector);  enum drrs_type intel_panel_drrs_type(struct intel_connector
>>>> *connector);  enum drm_mode_status  intel_panel_mode_valid(struct
>>>> intel_connector *connector,
>>>> -		       const struct drm_display_mode *mode);
>>>> +		       const struct drm_display_mode *mode,
>>>> +		       int *target_clock);
>>>>    int intel_panel_compute_config(struct intel_connector *connector,
>>>>    			       struct drm_display_mode *adjusted_mode);  void
>>>> intel_panel_add_edid_fixed_modes(struct intel_connector *connector, diff -
>> -git
>>>> a/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> index e7aaa5b203fd..7843eb13f2e3 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
>>>> @@ -1967,15 +1967,13 @@ intel_sdvo_mode_valid(struct drm_connector
>>>> *connector,
>>>>
>>>>    	if (IS_LVDS(intel_sdvo_connector)) {
>>>>    		enum drm_mode_status status;
>>>> -		const struct drm_display_mode *fixed_mode;
>>>> +		int target_clock;
>>>>
>>>> -		status = intel_panel_mode_valid(&intel_sdvo_connector-
>>>>> base, mode);
>>>> +		status = intel_panel_mode_valid(&intel_sdvo_connector-
>>>>> base, mode,
>>>> +&target_clock);
>>>>    		if (status != MODE_OK)
>>>>    			return status;
>>>>
>>>> -		fixed_mode =
>>>> intel_panel_fixed_mode(&intel_sdvo_connector->base, mode);
>>>> -
>>>> -		if (fixed_mode && fixed_mode->clock > max_dotclk)
>>>> +		if (target_clock > max_dotclk)
>>>>    			return MODE_CLOCK_HIGH;
>>>>    	}
>>>>
>>>> --
>>>> 2.45.2
