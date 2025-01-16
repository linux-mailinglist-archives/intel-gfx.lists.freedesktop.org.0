Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36896A13BFA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 15:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A5C610E1F7;
	Thu, 16 Jan 2025 14:18:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fSWpP87g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED2910E1F7;
 Thu, 16 Jan 2025 14:18:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737037116; x=1768573116;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Qj+n410GoxX7YCbN75ZVoGRbSuzwyDwtcOzIr753Mdg=;
 b=fSWpP87gAr3u+LoHI8WMHupwfQ5O5uwFckiBZuyuUSNTOKAoKMubF6Sa
 AlM3+GLGEg6lcamgsAEdX5ju66iEFr+qwP2qq2GiL1Nfrh9MpWkaHt8qI
 6i9Xh+1yiZNeskDvSzBV+SsenDZY9lrznBaQ9LI3JE4dwIBSDqw5U8LlU
 IhK+0C+RLcNUDpe/ooUJpyhm1fLkwszXdOnYFkffIBcLFLRslBKMVRlX0
 8SxXD6T2+wk0BWRJHsZRddcmcmoSse6WRbxro8vwxTFGOMiMHd3jTIVW7
 I2Dn6ZXT02jtHhLDnUg1xP1SzG2KV6cibHiMbhFGpOm/VJH0kcJMQ9HnO A==;
X-CSE-ConnectionGUID: ayuKOaHjRlmzoKrfNCiU1g==
X-CSE-MsgGUID: TI0lR1qeQIG2CDuTWwseeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="25025359"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="25025359"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 06:18:34 -0800
X-CSE-ConnectionGUID: Y/2JsG4QSpOlj1ASDsv1jg==
X-CSE-MsgGUID: x35ZGMRUTC+0nFiQNCPMWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105967784"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 06:18:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 06:18:32 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 06:18:32 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 06:18:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tg1HP1lxmmifyIMC4xjjlKVQ4LwspYAq3R4DmZa39x8c7NFG9su1hWOQ+UiocSb+o5CHFoRz9rsBnD8ftzcFM/4L0xHuJoXtl3D+4QOHisi1Wf2r60CC6GyOIu1MKBBe+BYfzAnypc8Hk/3N+A+5I/pinq5L+1QL9EPkfJBKgpu8xIHUffmpF73z4Rq8RBGQ2R1MjO2jU4UHockwLkb+AHSkXLKJfjDxYOMnxcTreQH5gATDArvWa8m5Tzo1Yv4sXfPlPqJ2sXx48mPUFnUOTsT0GJbxkMCEtNySq7Ex5Nt4pExigr2C/6GWDofxBkiToqz12ccmntkhhX3sgiNyzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Y9QmyuQ9pGkyIU8m/IihNvVSYQSLjDGSX1NOu5i5WU=;
 b=cwTOhlv2/SS09ydD2AUQcRnv5k6eBG+zFYfERna7JF6moT4xzJfdeH5l0mKS7fgL5WENC6VVnLDt73yQwDDRNWJELPIermCvjtFBlrt4zixQqxHibRzvbUbDfZawI/XSNGTY5RDjs8XV6MNbXuMhcFh3qOKfJcBNtQ4dNCvrQWDVjpASaCxiXBjRSqGW3gpVth43kqUi8muNrRyn30jq0xybWFEAaeSFk1lOSb87e6ctkkNuSsDdcPVcEHS5J9/vwQhw962jZ2VUv/XdyHCG8hU4bxDgPexwRXyqxef/L3sCFAGHhaa9ZdTUzyKAuPybMi3v++8MYFX19R/3w9k5oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7378.namprd11.prod.outlook.com (2603:10b6:208:432::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 14:18:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 14:18:17 +0000
Date: Thu, 16 Jan 2025 14:18:08 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <suraj.kandpal@intel.com>
Subject: Re: [RESEND 1/2] drm/i915/dsc: Use helper to calculate
 range_bpg_offset
Message-ID: <wj2euzzv4bsr5hqx536an4rk2jevlsescamg5hq6z3ywk2xtys@qsh6tgrffirf>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250110044131.3162682-1-ankit.k.nautiyal@intel.com>
 <20250110044131.3162682-2-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250110044131.3162682-2-ankit.k.nautiyal@intel.com>
X-ClientProxiedBy: ZR0P278CA0175.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::17) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7378:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e0210d2-3d1e-4e3f-b16b-08dd36389efd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUd0a0VTRzFOYVFCcjlaM1lxS1pYTVpvUm96LzVQWHNSNGN1c0V1RjZab1Ar?=
 =?utf-8?B?TmVsVk5zM1pWdTVzM21rKzI5SXU0TTZDNTN2K01XUTgrWGl0azRub2RYWlVM?=
 =?utf-8?B?a2ttQVhyV3FvTlF1UmxhTWVwaGxuUG5tdWVJREdnSUZ6ZlovVVZXVWtBRzlp?=
 =?utf-8?B?QmIzOHhaRlRVR3JtenRTZjFVaGE4WWZXTEg1Qzd4eVB5a2tMYWp1M1l4NkNS?=
 =?utf-8?B?aFdLTURPRkRyV0pQZTRldTlGbzVJWEJNbEZza1ZJZXdhL0tuSFh4SHJNbUFx?=
 =?utf-8?B?cGhNeE1MeU52OXdJNDY2U0VQRkNURUtiTlZEL2ltYWxjazBqdjZUMlVXck1z?=
 =?utf-8?B?R1gwWFZKd1lUeGRqaUY1RC8vUzVCOHNGbXNiL1NnV01DQ2JTWGpaYXI3Qjhu?=
 =?utf-8?B?eUNCdDZmbUZjMUIwRXdocmFIZWtqV1JmNDJzVW4wRExhdk1CeHpXYzJPeDJn?=
 =?utf-8?B?S3NyQzZtanlVZTBVUHF0d0NWb0lTSEtXS3J1Q3BsdVBsMlZQd000NlZQd3hW?=
 =?utf-8?B?YTBTRFBvdUxGMW1FL1dDUlJVeVVGMjhvQTdERnpOT2V1Ymo1Mlg5S3BUQWFM?=
 =?utf-8?B?eDJzMzRTWWdIM0djdTFTL1pqYkRlVzViVHFCWTdjQktqdURCNVhWdUNOVGZQ?=
 =?utf-8?B?UFNUdGIzam1vMVg5RHlZOE9VSkhXUzdaT3BoaGpUeDFwUEREdEJhUitFUXdV?=
 =?utf-8?B?YmdLYXhQYnUzeDJOM3NhWnU0WEI0bzhxRUVuYmxqbjZpY1NUVDRJRDNJLzZJ?=
 =?utf-8?B?Ri9uVnZpTDVRMnpVNDZXVGc3WFp5L256Zk1sYjBqZG44S1NjaW5nZXo0SjhE?=
 =?utf-8?B?NGNPdUhOTG1RL0dTRW9qb1Z4UmpSUUpYUTdJRkU0Tnlua3J3ZW9lMFdpU1JW?=
 =?utf-8?B?Y0tnWlBncHppcGhTYTVmMUhOZGxKc3IxNWZOSnlqaFhpM1NNRjhMcWtzOFFW?=
 =?utf-8?B?TDQvbklkTWJXQVhGTUo0ZzUwT1REVXgrUjA4MVFIcGUzRnl3VGZzLzcvZ2cx?=
 =?utf-8?B?WVZYb3V1ZCswZC9CQTJ1Qk9jTmZjSFBTRXExakJVYzFQTXZRaWdXbEoyY0pW?=
 =?utf-8?B?NlFIbEFUWE42RnpIaDFqekQ2Uml6ZlpWOVlzMis3dy80M24wWEh2bThWWllr?=
 =?utf-8?B?QjQ2NG9SWXRpT3dXbWRSQjU3WUVsaTR5SHRGdzNJK3M0WUFvT2VDY2Jtcnhk?=
 =?utf-8?B?bUZUTHU0OHp4NEh5MHMxZlZZelpCYncvUXZwVzU1ZUV2bDdNWWpSc3JyZzNK?=
 =?utf-8?B?Z1NzVjlaNWlvbklFTlNWdTlta2g3UDFsTzVmT1FNdlBpSitucXp1aEpDTlh0?=
 =?utf-8?B?TXpRczNRTWRZcWUvMlgxVkNubmxwdko5RG84MGxPKzFEeHE5MnRleUlSSmI4?=
 =?utf-8?B?U1pjT1VHOUwyQXU0elkwMERoaU5NZUU3TmplRXRvbkpjR2FmVURBdTZiTlA2?=
 =?utf-8?B?Y09LNW51dll0cStZZDF1WklzMkFmNEdrTWlzbzRjZDNMUmdXekVyU21iQzBK?=
 =?utf-8?B?NTZaVGlYQlJWbTB3a080VUplR2p5R3RDZFJtSkEyaWpTWVlPeGtPZ2VlTHNH?=
 =?utf-8?B?a3dQR1dlelBWc01aZ2ZiaHowK3BlZ0JSUFlleFR2ajdkMllGbXRPTjkvWWpX?=
 =?utf-8?B?citibDVRb3c0ZUdtOFMyZklaNVRHYlB3eldsSlRGSVVjWFlsMmJrbnFZcU9C?=
 =?utf-8?B?dVpaMnZmUUlIc0c3cU4xU0luWUVIN3E2R3hpcG83MzE4REQ0cjZyZUdoa1U0?=
 =?utf-8?B?cVlVaVJUalZDTnF2N2Nubk5CMGpTYW1wRlZtUVZDK3VjYlQyMTRYSXh3byt5?=
 =?utf-8?B?VUNWVjBqRktzYkRuYVVoaHBHNGVDMXpIR3NBeEVFdmlyZXFIdVZJSmJTalZv?=
 =?utf-8?Q?mcgz7vc/lRkPz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm9IQVFzRE96Q25jQlNLa3d4dXhpOXZuRTNGNmxFc3Erakl6cEsxd3M5OTI4?=
 =?utf-8?B?WnFJakpaT0JvdWJacDRZZE82ZG11cW9NUm45cFlQdzZwZy9DUmZNdnFRS1Vs?=
 =?utf-8?B?K3pVNFBxN25yTFZmWjkzTkkzc0RGSWQvNEcyd2VkdmtOQ005N0lQTlI3RHMv?=
 =?utf-8?B?U1htTjNhbGtsU1NoQWJKdXRBcUhHbXQ1dmcwaFUwMWtxVkE5eERGSDV1Z1BE?=
 =?utf-8?B?NDErd0JhamUxN2ZQd2VoUzhqdi9pdzFyS2ZtcXp4Qm1nK0l2a0puTTZMdzVs?=
 =?utf-8?B?c3lmOTdGdWVTQlhTZ3VYcFF6YW9EZ2I4TlFNNVJhM1BOUVFoTHBFcDJRNTVG?=
 =?utf-8?B?NFltakVUMzJzM2lzcDJVQ1QzSUR4N2gwYlNTTnNaNGhNMGZhRE1PUHY3UFRS?=
 =?utf-8?B?MXV6T2FrZFF2ZmlZa3ZGRjBRaG9VZ3JHRExKejdXYTRwMmM1Um9jancyNVk5?=
 =?utf-8?B?RDZmc2N6S1JJQkNrblZocDk4UGQrMDhScEtKa2NROTJFaEVScGhhcjVobHRY?=
 =?utf-8?B?eThHN2RIZlZqUzE1bWUvSzB3SHlzZkxCVE5MZVZBNVBFekY0WStVeUtwb1RL?=
 =?utf-8?B?ak1heFcwTk1BeE1ZVENnMnJmRmY2UGFLQ1pqUSsxOFNjLzZuNzdSZTdPR0xQ?=
 =?utf-8?B?ZzF6NEwyQUc3c1ZvbW5RTXlnYThackpzRTFKOThhS251MFJLenhGRmFSV3FS?=
 =?utf-8?B?UDRwNzN0N0dCRk9Od0p2QitjT0ROVXBxTCtLblUySFZJNkNqbWM0VVpHVVdK?=
 =?utf-8?B?dlFCOEJTRk9vMk1uUjFaWW9ZMWhwd0E1QURFazVlcmtoVG5NL0xTRWpwZ210?=
 =?utf-8?B?aWI4WUg1VkFSdHZmZW0vdWtXZ0FOeDhWTXFMdm1PanZFNERlWUkzOWt0SExW?=
 =?utf-8?B?alFOeGxMQjFCbXZsUFhUQXZNdHp0R3RIZG1lKzl1dEsxcUpScjAwVzRKN1NG?=
 =?utf-8?B?ZjBJYkgwWWJaV29FT1dnYXFqRE4xbFFxcmZ3V3N1aE5yR3RIWk9NbU5JY2hO?=
 =?utf-8?B?YnVERUhyQnMraHlra3Q4U0ZrVHltQmdTdDBXa1lkSHA4bEN2NGVnNDRYMVJE?=
 =?utf-8?B?YWdFaWo5bXF0SmZSNXNSZDVuQTBMK1FDdHdIU1lob0hYOXB4cmxEckdRTWIx?=
 =?utf-8?B?Qm5mOUVUMEliUys2bmxCbXBLRUduS3lhQ3cxeVg5bUdWblM5QzdZaTlhOWlG?=
 =?utf-8?B?OWZlakFoQlFOOVpoYUE2Z0FsaWZ3eGVtYTludkV1MnBhZUpnREJXSUFyRk1P?=
 =?utf-8?B?cWkrZjUvc3B5VG43UVdHOEtwNXAwaVY2TTFWSmdURVJPZGFENTBIQ2oyeWRj?=
 =?utf-8?B?dnpRSmhtOHdzUjhBVm5jWHJReGt5dlRFV3pzYmY4TnJGcnMrRFVsV1hYVmNV?=
 =?utf-8?B?dC9LVFpnbUZkSWdKRDBPZzRWTFpaM3NrR1dXRndFRTdpelBXd3NKUXJRdEJs?=
 =?utf-8?B?eFd3c2hXREhVYVdCVFRRankvNXI4bnJKaC9Gc0FjWHhqdGYrbFI1OFpweTBH?=
 =?utf-8?B?STg1YXVVYVhWcUhlZnRmQkNxVjdxSHordVQ5SGtUNldWMXdGK05kU3ZzR0FY?=
 =?utf-8?B?Vld5SEVlSjVjTGdVSGZxUnIvenpDY09WejczaEoxc0JWaDRudFV2ejdUZjll?=
 =?utf-8?B?YU81bmtlWmQrN25paWlRbURoTDBIbVNYQnRwS1cvMlF0RTZSSThpZUFLWEhR?=
 =?utf-8?B?VkNlTjBoZGM0Tzk3bGxpVk8xZ1AxYUJiV3EySHl2TWZvZVJGRkYzZzVhSWxk?=
 =?utf-8?B?eUNkbWhtZktUZERMTkN5Y2lxa0hnYTJKUTVuNXBjUmIzdzEwWlVuY1o2REp0?=
 =?utf-8?B?TlNUNkJOVlFvRkxTTzBIRHpiNHhmMDNmYXM4OWxKdFphYWhuU0Z6aXdlN2Ir?=
 =?utf-8?B?U1Q0d3JWMDZGelppb0tKZFpLUGdsWVJaVVNyNUptdkxxMnhMSHRiaTcyU2hh?=
 =?utf-8?B?K2xqdFQvWjVyOEQybXNrSlRyN2ZIWWE0Ky95M0lOR3dQSW0za1VoQktOUUly?=
 =?utf-8?B?dlpnTWRoU3VjeHZ5cmM0Y2tDa0JmL1NHQlpmYTlRczU1cytSWk4vVGZ1WTdM?=
 =?utf-8?B?dkFyc3pIQjZ5NjVpbkRwWHJPeDZyc0tuU0NLYmh4ejNFQjJPTGIxRzRNL1Nq?=
 =?utf-8?B?azlWdk9WODRoUTFlR29YRVhUQ3R6OVROR3FIVUszYnVCaUNzekNzejR3RFJQ?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e0210d2-3d1e-4e3f-b16b-08dd36389efd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 14:18:17.2678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mL8sXdBfvtU+FHzPW5m1p7M4yJyaLZebpvVNvLK0KN+WhsKhWfkbcOaiBKHPKhNDb+jzTDzPLCzksVVZI1atRt4QD2NXi/hm+KhhzeAUEBk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7378
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

Hi Ankit,

...
> -			if (bpp <= 8) {
> +			if (bpp <= 8)
>  				range_bpg_offset = ofs_und4[buf_i];
> -			} else if (bpp <= 10) {
> -				res = DIV_ROUND_UP(((bpp - 8) *
> -						    (ofs_und5[buf_i] - ofs_und4[buf_i])), 2);
> -				range_bpg_offset = ofs_und4[buf_i] + res;
> -			} else if (bpp <= 12) {
> -				res = DIV_ROUND_UP(((bpp - 10) *
> -						    (ofs_und6[buf_i] - ofs_und5[buf_i])), 2);
> -				range_bpg_offset = ofs_und5[buf_i] + res;
> -			} else if (bpp <= 16) {
> -				res = DIV_ROUND_UP(((bpp - 12) *
> -						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 4);
> -				range_bpg_offset = ofs_und6[buf_i] + res;
> -			} else {
> +			else if (bpp <= 10)
> +				range_bpg_offset = get_range_bpg_offset(8, ofs_und4[buf_i],
> +									10, ofs_und5[buf_i], bpp);
> +			else if (bpp <= 12)
> +				range_bpg_offset = get_range_bpg_offset(10, ofs_und5[buf_i],
> +									12, ofs_und6[buf_i], bpp);
> +			else if (bpp <= 16)
> +				range_bpg_offset = get_range_bpg_offset(12, ofs_und6[buf_i],
> +									16, ofs_und8[buf_i], bpp);
> +			else
>  				range_bpg_offset = ofs_und8[buf_i];
> -			}
I tried to get these ifs out of the for loop, because the bpp
value doesn't change during the execution here, but I don't
think it is worth it due to offset buffers changing depending
on bpp value and I believe your solution is good for what we
could do here:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Krzysztof
>  
>  			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
>  				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
> @@ -215,21 +218,19 @@ calculate_rc_params(struct drm_dsc_config *vdsc_cfg)
>  			intel_vdsc_set_min_max_qp(vdsc_cfg, buf_i, bpp_i);
>  
>  			/* Calculate range_bpg_offset */
> -			if (bpp <= 6) {
> +			if (bpp <= 6)
>  				range_bpg_offset = ofs_und6[buf_i];
> -			} else if (bpp <= 8) {
> -				res = DIV_ROUND_UP(((bpp - 6) *
> -						    (ofs_und8[buf_i] - ofs_und6[buf_i])), 2);
> -				range_bpg_offset = ofs_und6[buf_i] + res;
> -			} else if (bpp <= 12) {
> -				range_bpg_offset = ofs_und8[buf_i];
> -			} else if (bpp <= 15) {
> -				res = DIV_ROUND_UP(((bpp - 12) *
> -						    (ofs_und15[buf_i] - ofs_und12[buf_i])), 3);
> -				range_bpg_offset = ofs_und12[buf_i] + res;
> -			} else {
> +			else if (bpp <= 8)
> +				range_bpg_offset = get_range_bpg_offset(6, ofs_und6[buf_i],
> +									8, ofs_und8[buf_i], bpp);
> +			else if (bpp <= 12)
> +				range_bpg_offset = get_range_bpg_offset(8, ofs_und8[buf_i],
> +									12, ofs_und12[buf_i], bpp);
> +			else if (bpp <= 15)
> +				range_bpg_offset = get_range_bpg_offset(12, ofs_und12[buf_i],
> +									15, ofs_und15[buf_i], bpp);
> +			else
>  				range_bpg_offset = ofs_und15[buf_i];
> -			}
>  
>  			vdsc_cfg->rc_range_params[buf_i].range_bpg_offset =
>  				range_bpg_offset & DSC_RANGE_BPG_OFFSET_MASK;
> -- 
> 2.45.2
> 
