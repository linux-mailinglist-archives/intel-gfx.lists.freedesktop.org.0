Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 828AAA98086
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:22:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0DE210E407;
	Wed, 23 Apr 2025 07:22:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDBwq/yW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E3EC10E0C6;
 Wed, 23 Apr 2025 07:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745392919; x=1776928919;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Aw9OpAkj+3Ox6rJQBO3LLDwgcQ5UW9kdN2H78QdTL9E=;
 b=JDBwq/yWD7BWsQQy2DoDQfhQz1CQlb02JpvWIjW3IgpRje6itKdfUKB5
 /17gqOe47HsjrqbY30w6q4+K+Om7aThWM+A8FT4uLUmZcgcC0nCDtVuzm
 tVsHMtGenSS7/s5UOEhDVKThBBWYGXAkRk0M5ko91EXYEUgtSF5M9tSyN
 FO23064N9QJiwa7FhqLcU6aCejKQG7UGh3TOqcShD4AJ2TqfEVGSBK2ZQ
 R0hTU5opLSgDXPIBg0pk/tf9yunC8PaC6oXxtIfdQ5d4CUv1BqPr/SsKJ
 q9LzUdaVwHVF4qfIS7te2nvPFNxHTfCjH3MjwTF9rqcVuOKO+9wNWxGzF w==;
X-CSE-ConnectionGUID: qyF9tbKnSb+aOGCXkHmbbw==
X-CSE-MsgGUID: Zr7tflyTTQaGYgY2QxYufQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="57957756"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="57957756"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:21:58 -0700
X-CSE-ConnectionGUID: Y8wlM4XRTa67HEq9oXF3zg==
X-CSE-MsgGUID: djKXU78aRYqdyayxEp8gwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="137227623"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:21:58 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:21:57 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:21:57 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:21:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=COqbbXREnNteNpTaNZVeeoan64d8YBzuryel2QGtgD1LVxeoVUremdgUhbpUP9ifb2wnhPt+iqWMiZiciS5FguvF2zpfdEm66HL21Rd/Ed457/YBlLh6o9v2doIGdWpYotKahmi9FALKgtJ7q4nUC9PsDNq+KagX+htgu78R0B/uaWfkSIvDswGJYImPf48xJuCVhPW6WVhU6VP0XekMpFCxgsdiCtvbiZF+FcpjVFUcO8F0lnDq85OyE041pGRTmIGsWJBEoC3rlImSzvRz7i48dPi7XoOoMUdhTOKuscpf/tUn5yhsAs8nNB8MT5HkHBdkXDj8OWFtq0KPvMehjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5ntHIxTb3GvXLwGTE662YZUWv6OsiKmPbc3BwkSXVKc=;
 b=Y3ITmBOf/BAz1+CuMxNk88MeBeTUZc00rwTYNKqwGqgrkrWUyXIGAsZtVUhVfXfKy/NPDRy4Af5bbb5TYVl1YBccALSjWSIfEzGmd1cnEmf71beqqv9Rmf/vUAW96Zd+iwDvArO4MSWU6SbMANUOQ9DsVkQPHyyTAF7PLoff+EolIUqN+luYetQJuElIiq4T7BfnCK7U4rtcz2ZMjo5PVu5/2ACOH69YfBz7iub2gn2vob8dRWUJUOPC9XGAOhF36GnBqF62JoPfrlmHk0hGoE7ng/BjaGaoMImplsKVtSKfaTCq2AjCAaZ74iAcglpCDXMEcBG5d4HzbozaE2+8JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7717.namprd11.prod.outlook.com (2603:10b6:510:2b8::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Wed, 23 Apr
 2025 07:21:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:21:49 +0000
Message-ID: <348e155f-9ee6-4326-8141-2a70af550867@intel.com>
Date: Wed, 23 Apr 2025 12:51:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/13] drm/i915/vrr: Pause DC balancing for DSB commits
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-11-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0080.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7717:EE_
X-MS-Office365-Filtering-Correlation-Id: 462376c3-e83d-446d-9456-08dd82378319
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VFY1anZkejZMQXFMZXVpc1Mxck0ydTBnSUNiRmpIUUFGVFdhTzJwVUpRb1ls?=
 =?utf-8?B?S0dHWHVRNnM2QjNHMlJidHU0SFNPcENpZThmWHVUSk9tSGx3MHVBcGEvQVdU?=
 =?utf-8?B?M3NnUDhpYXhSL0NMb3lBQVpHZmhJYTljMlVZSWpOWmxHODYvODk2bmZJakFP?=
 =?utf-8?B?L09FWEN1cXJEaFhZVFc5VjBWQzBqamhLM3pGcGpsNEk3S3JGUmhsYlpSUzl1?=
 =?utf-8?B?aWM1YjUyb0NGNzkvcUV5VHNyeUR5cHhXK05TVG0xa1RIWmNqeHp2WjJObFJR?=
 =?utf-8?B?ZTF3Q1Fvb3hBMFZGbXJPU3JyK1dlTCtVNTliRE5NLzFIdWxFS0VYNzhWQWtp?=
 =?utf-8?B?R3VwdGpiLzRDMjZzTTRHMHJyd3ZjYmh3ajd5NVQwZ2hBZjhEcjVkQytRY1Va?=
 =?utf-8?B?MTVLV2d6MmNxaHhBZlB1MTZ6bFdIejJsVit6VnBWQ29YVi9zQ2c4R0dxMFln?=
 =?utf-8?B?N3JCUXF0RmJ3NGNoNDl0R2ZreTlrd00rMDZaWmJ5OXpIb2NBNmNGaklzT1ZU?=
 =?utf-8?B?a3p2SEVobU9naWNjMUhBUUZpSEx6YWJGV3BWU2o0dUFMQStGYUM5NWpRbGRR?=
 =?utf-8?B?K2ZwN21HQ3BEekM2dEJwOThyeUtsSzhKUUM4QXhkMDdNZ21xcGVsQ0oxSktt?=
 =?utf-8?B?VEFOUG1Wb0Q0aGRUV3pLSEx3OVlGYnEyVHBPTlRtTjBxWGJ0RVdoR2JKT0Fh?=
 =?utf-8?B?SkNEUDJ2bDdzVzE4VnVDY0lSUEkxSlhwVTBUQUZkUXRvZnd2Qm1Id0w5NWFz?=
 =?utf-8?B?dndTVjYwaWRDWWI0aTVnNVAydjhORVFKMTdTNUxBWktDazZRcENocTFkTjFm?=
 =?utf-8?B?aXJodHpTRy9pQTQ1MnVYTUw3QjdZaUtLaGx2SWo0L1MwaXhjcGw3REVkTVJV?=
 =?utf-8?B?aW9VS3RFZHZKYkoxK3pWVU1mVVlpa0RIdFBsVTZudW1GaTUyLzBRR2xMM2JC?=
 =?utf-8?B?ZnVwSkExSG9ZbVZVcEkrNExiQlh3L1lVTWpsYU9NZFM4dTJEUHJjSWxSTW1F?=
 =?utf-8?B?TXR6NExlUjNwb1JZN2tPcyt4T20vS3pKUWVDRlhUUnpybzBJRlNkL1BPQXRn?=
 =?utf-8?B?aFJEQmpGSVllcmRDb05yUFBsdDZIU3FPRElVbWVJQnNqOCtLLzZ5ZVEva3Zp?=
 =?utf-8?B?QXpGUUlhWUdDUDExYkN0a016N3dSNFZLb2l1UUtCTk1ONENXbkhIajZ6dmVW?=
 =?utf-8?B?N00rTFR0Z0dKQ1FLVVdycXg1UW4zTXJ4dzJNbEZtWjlad3ZEaDBOR0l2RUE4?=
 =?utf-8?B?Nmh6a3VDRnE4NTBXc1RyNXJUbHpHNFlIZ2dVOUpUK0pWRGo4Q3FUVUcxQm1k?=
 =?utf-8?B?OWNibnA4VFV2ZHhlU1QvSW8wbUhPNnlqRndJQnNobUg3N3FFRTlCWmhDSTM1?=
 =?utf-8?B?VzQ3bzFlY3pTVllxU09mcEpsR2hHTTlGZzFyQ3BldEpaNkp3cUtXcDRFRE5Z?=
 =?utf-8?B?Ykc3N25mSEFqMDUzNFFuc3hkZXZzcEk4UlRsVGtUeGlQR3p2dVFkSUE2NnJi?=
 =?utf-8?B?dk9IVjMwVnU5NnlDQXBwdkdDMWFkL3dPQUQwOEdoSzBrNjNTWk5RcHI1Wml2?=
 =?utf-8?B?azcwMFhoQ2ZSUHFvNG1NSUdtc2xqU2VrOENLSHdSVzJkZ3JUcTh4elJiY1h6?=
 =?utf-8?B?bGFTMkc5YTZCeUgwa1dVRDlOdnYvOFltUVEvVnhtRlRQdlJZZTJwTW16WnhJ?=
 =?utf-8?B?VGhVdEF1d3IvaVcvWFV4eXJCYWlmb3BXR2JZM01HUklwQXpEWlhpM2RhYWxU?=
 =?utf-8?B?WjJLM1dibWk3TkxGSUh5L2xrSkNDUGVsRU92M29scWYxb20valVVYjMvdDQw?=
 =?utf-8?B?UGx6Mkl3c0MveUhRdk85enZmNU52VVF1MWFQYy93RzFHbUk4cU4vcVF2U2Z5?=
 =?utf-8?B?UkF4bDNHSXJ5aDlUOHNHUkJoQVdFVGMzMTA0VXpmUkxIS1dFY0dndEEvWTVG?=
 =?utf-8?Q?GPYA3NoUXr0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkFZUndDdzAwZDVBTkZXZUtweWJWVUNzVHBuSDkxbFVHYnlsVXZ1TmJMT1RV?=
 =?utf-8?B?M1BXOW80UkZlK2lTeTZIanoveVlsVXFGNzlpRDJ3YUxRRFhRUWtNa21GT3Ja?=
 =?utf-8?B?RnVsNW9HRVJWM0ZCeDVuaC9Ba0RFK3Z0R3p0Z0NkUUwzRm5kUkhuOHEweHdT?=
 =?utf-8?B?b0x2dlJYSVo0YTllemNiQWlJVGRIMHdvYy9lbW5WRVJRYnZrbUxZM0FUckFj?=
 =?utf-8?B?RG9EMk5ycGYrRnVNZzhlNTJNMlBudFJZamlKZk95VC9zRUdsdENQc2xRTmEv?=
 =?utf-8?B?b3RXQkN0andkellMclZsYTRaOFE5YStBUFFWbEtROUdXTHU3V0tvTkJOQ2Fx?=
 =?utf-8?B?WHhKakdFSmJsZFlIeXUxMWxsM0c1S2l2TFZHc0kvbldjNHpiaVJaUmZzUlA3?=
 =?utf-8?B?YnhBb0ZyK0QzNmZKR1VPUkx4TmJDUHpsTWQ0a0RGL2RNVklZRXB6RVlaTnVF?=
 =?utf-8?B?TElMdVo4eEwyb3dMMWRqdTJpS2V3Y1ZibW51U2lJamR5dGdrY1dGRWRObjJL?=
 =?utf-8?B?QWVjVEI2QzlRYnlsY1RZVmpkaFBEc3lrKzJuZVl6MHhtVkVYVG05MEtsek5I?=
 =?utf-8?B?VU1kZnM5WW5USnIxYzRrUU5vVDhXUytWaEJIQW5WWlEwNi92RFcxbXRxVStr?=
 =?utf-8?B?NnFNcHJLOW0wSS8vQVlTVzcwRHNDL1FZTjJRMmNJNWtaVVk4SDhreGJkUklL?=
 =?utf-8?B?SEZhT0lGcFhyUG5LYWNlTUZ3cXdVc1JiNUVqT09EMDhKcXJXSWRhUFpDS0to?=
 =?utf-8?B?UUNoajVlTXA0TGczZGJFUFJWbStNYnhuZ0paYkNmZ1dKK3JCZHY5aFhacEho?=
 =?utf-8?B?ajRpNUplZHc0Tm54NDdWOXA1UTBNckM0a2NMeVVwNUk4cmxScE1CZm81cEYz?=
 =?utf-8?B?ZlMvMzN1aDhmNUhYY2F2RGNFUy94SzJUUXBBT1pFdDBPWUJsY2Njc1V6UU5W?=
 =?utf-8?B?aHp1Y2ZCM2tIRFA1c3AzNzdpYTE0RmFtRzA4d0FNdzNxcDdyMWhoa0kwMHox?=
 =?utf-8?B?VVFyOVN3cVZlaEtwNTh3TTNKTWF3eW9XckZ0bnNybExXOWROeWVSRVg3OExj?=
 =?utf-8?B?T3hUQ3JrMXk1MVNIelpRTVQ3M2h1Mmd3WDVHQldCVmIyQnRiSXlUajBBN3JH?=
 =?utf-8?B?clp2eHMwMCs1VzMrMmRzRlpKTkFQaGtFSTZ1RmRUampYbk84MzkwOHoxUTRy?=
 =?utf-8?B?UyszY0hjdDUzaytiYU41b1g3MGV2djdJdS8rekVmODlHRFduT0MwdDRLb1V2?=
 =?utf-8?B?cEp0OElSVXJ5UmpVMHlVSS9WZmdyend5d01iZFBuTG5ZQ0U2c2paN21Ra0hs?=
 =?utf-8?B?azM4Mkt2RjdsS3ZkbUZkNytFSTZka3JsdXZaODg3N1QrWVZxU0lhUFVvREdn?=
 =?utf-8?B?bEdQMzh5Vlk2bjdIOTJRY0loOW4xU2haMUNPa3F2UmlhV0VYUWlOemdpNCtu?=
 =?utf-8?B?UEtINE9rUGNpSTVtUWlLZkw0Q0JxTlZrVitNTXlYSTVhdTdBWmpFNlREU0Vm?=
 =?utf-8?B?TFI1c0pHRmtOay9XWEQzN3lMWDNmd2wyU0FNaWhZUXY3WDRwakVnOVRPVk82?=
 =?utf-8?B?RG1mWFNiVmtWb1RMbXk0VkF4ekFwTm95MGF3QkppcFdxMzhQL2pEOVJyaWlj?=
 =?utf-8?B?M1VFWUtxSFFQK045WkprQ2t6UjNFMEJpZUllbWNJQjJRVFd6c2dZVE5XR2xq?=
 =?utf-8?B?QlZ0UE9RUXI1N0hKenkrSHQ3MnZoN1VycHZyNVZobTQ4MlVFelMxTytTUmNU?=
 =?utf-8?B?cThmaEw0UlJCTGo5UXlZZk1iOWo0MG1KK0l3RldQL3ZOaWhiV2pDRlh4azNv?=
 =?utf-8?B?ak1EcmU4RUJTMElmUGVRZ1ZFbXlkaE5XaFdCVTNKTTJYbHNaYmVsOGd0SG9N?=
 =?utf-8?B?VlczaVZsY2dKb2tmako5N2lncEJvQU0zRjVyaVR6WkpxUWlGTzB5NFNCL29u?=
 =?utf-8?B?bTdRSmlhUVFDQzhMU3JmQlUzMjY3b2VMdjd4c3lvdDdsQWxMemlZQjRVQ0hR?=
 =?utf-8?B?Wm9iZWR0MjVFamJjK01uNFpIa3FrNWVNbGdxc1lnSzlnQldLSUU4T3NBU0xv?=
 =?utf-8?B?Q3NZK25PeXNQR3JOM3lrcjJCMTZNTkJ5SGxHMnRaU1EwczFBK3ZGTWtrV3lO?=
 =?utf-8?B?R0JvYVpGejJRYzkzNitiWE9XOVprWDRrT1hHVWEyL2pLeCtMcTlwdkNjNHlR?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 462376c3-e83d-446d-9456-08dd82378319
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:21:49.4507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BcrCJKguM3xNGdLBRMlMpzkVgKhSioTX4f+uWW4dhRFcLMkOYZZ8rpt6rCaYR/sC3zfzgWFIKye8Qlxw+UiesasrUKTFgdueueGiWy/8UEk=
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
> Pause the DMC DC balancing for the remainder of the
> commit so that vmin/vmax won't change after we've baked
> them into the DSB vblank evasion commands.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  | 13 +++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 38 +++++++++++++------
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 12 ++++++
>   3 files changed, 51 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 33c09999c42e..274d01552ccf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7194,6 +7194,17 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   	}
>   
>   	if (new_crtc_state->use_dsb) {
> +		/*
> +		 * Pause the DMC DC balancing for the remainder of the
> +		 * commit so that vmin/vmax won't change after we've baked
> +		 * them into the DSB vblank evasion commands.
> +		 *
> +		 * FIXME maybe need a small delay here to make sure DMC has
> +		 * finished updating the values? Or we need a better DMC<->driver
> +		 * protocol that gives is real guarantees about that...
> +		 */
> +		intel_pipedmc_dcb_disable(NULL, crtc);
> +
>   		if (intel_crtc_needs_color_update(new_crtc_state))
>   			intel_color_commit_noarm(new_crtc_state->dsb_commit,
>   						 new_crtc_state);
> @@ -7230,6 +7241,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
>   			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
> +			if (new_crtc_state->vrr.dc_balance.enable)
> +				intel_pipedmc_dcb_enable(new_crtc_state->dsb_commit, crtc);
>   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   		}
>   	}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 383024dc2784..fb96d03bbf03 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -9,6 +9,7 @@
>   #include "i915_reg.h"
>   #include "intel_de.h"
>   #include "intel_display_types.h"
> +#include "intel_dmc.h"
>   #include "intel_dp.h"
>   #include "intel_dmc_regs.h"
>   #include "intel_vrr.h"
> @@ -598,7 +599,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 ctl;
>   
>   	if (!crtc_state->vrr.enable)
>   		return;
> @@ -609,20 +612,19 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.vmax - 1);
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       crtc_state->vrr.flipline - 1);
> +	if (!intel_vrr_always_use_vrr_tg(display))
> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);

This doesn't make any sense. Perhaps a typo.


>   
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
>   
> -	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		if (crtc_state->cmrr.enable) {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> -				       trans_vrr_ctl(crtc_state));
> -		} else {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> -		}
> -	}
> +	ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
> +	if (crtc_state->cmrr.enable)
> +		ctl |= VRR_CTL_CMRR_ENABLE;
> +	if (crtc_state->vrr.dc_balance.enable)
> +		ctl |= VRR_CTL_DCB_ADJ_ENABLE;
This seems to be doing couple of things at a time. Is it possible to 
break this into 2 patches?

Can the setting of VRR_CTL_DCB_ADJ_ENABLE bit and setting 
ADAPTIVE_SYNC_COUNTER_EN in reg TRANS_ADAPTIVE_SYNC_DCB_CTL be a 
separate patch?

Regards,

Ankit

> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
>   
>   	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
> @@ -639,18 +641,26 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   			       crtc_state->vrr.dc_balance.slope);
>   		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
>   			       crtc_state->vrr.dc_balance.vblank_target);
> +		/* FIXME reset counters? */
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder),
> +			       ADAPTIVE_SYNC_COUNTER_EN);
> +		/* FIMXE configure pipedmc DC balance parameters somewhere */
> +		intel_pipedmc_dcb_enable(NULL, crtc);
>   	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
> +	u32 ctl;
>   
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
>   	if (old_crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {
> +		intel_pipedmc_dcb_disable(NULL, crtc);
>   		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
>   		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
> @@ -661,9 +671,13 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
>   	}
>   
> +	ctl = trans_vrr_ctl(old_crtc_state);
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		ctl |= VRR_CTL_VRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), ctl);
> +
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -			       trans_vrr_ctl(old_crtc_state));
>   		intel_de_wait_for_clear(display,
>   					TRANS_VRR_STATUS(display, cpu_transcoder),
>   					VRR_STATUS_VRR_EN_LIVE, 1000);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 2db477325c83..a88fcd69111f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -63,6 +63,17 @@
>   								     trans, \
>   								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
>   
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_E			0x6B4C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_F			0x6C4C0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
> @@ -71,6 +82,7 @@
>   #define  VRR_CTL_VRR_ENABLE			REG_BIT(31)
>   #define  VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>   #define  VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> +#define  VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
>   #define  VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>   #define  VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
>   #define  VRR_CTL_PIPELINE_FULL_OVERRIDE		REG_BIT(0)
