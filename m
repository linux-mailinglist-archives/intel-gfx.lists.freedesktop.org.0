Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CHrnCYHtk2mN9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:24:33 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE95148B61
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 05:24:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD1D10E435;
	Tue, 17 Feb 2026 04:24:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i0eOdsyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D20010E435;
 Tue, 17 Feb 2026 04:24:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771302269; x=1802838269;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=auBe5QmcPssk/QzeWHbQGISjSNXlgqR9r5G627/sAo4=;
 b=i0eOdsyWkiNM0qPqc6Va7qU/IF0VZjWNoe/NLz19ouO9ugNkmcb3buNY
 7ZjghKt3m+34M2jtfCK1imUdtIBBWdqdAy0AcPpxkO8i2R6brakp1wnup
 yzxLWTO04kQuCIJulicOSwXsVj+JtT4K+XyJEDGcM5TRLg5buumNhLRS/
 4FwkF/KtY81vRMN9cJspQNO9NWhozZG17B3i3+klA7FnCMP2RsTLZQ7r2
 c1H7ZlEqEsWkObyeI5hizOoQDBwv9DmAzWodfmmSTTZ5xOK0vJIJSOaaM
 LwPtsrSvW0U7mXo2uDdG9jrVuEgtxeMpHMf7RfNFca9D4zpQ7qjmO4Gin Q==;
X-CSE-ConnectionGUID: im1NEnEwRd+37i4fnAC+Bg==
X-CSE-MsgGUID: YFW0BeaISb6feZhXt/oO6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="72080579"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="72080579"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:24:29 -0800
X-CSE-ConnectionGUID: GydRizwwTB20J9lrmF7zNw==
X-CSE-MsgGUID: 91jVuErKT0CQsMQfsoagtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="213601542"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2026 20:24:30 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:24:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 16 Feb 2026 20:24:28 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 16 Feb 2026 20:24:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GU6qolaEeDsAefOc6l+JFSSCNeDNel2i/849QpYWc7JtkTYPbeE03+LqvPDiuq+SWmd+hkqEWWfOEYcQy6v+6EFhquEKkPN3fU30l/zxOTDkVQ32tMcvWo3GkrI+wHTr1eF9bIc5H1072sIPZVBehuSf3JgiFIAIa7bzjOIfRqympnJ4UpCSzlImkjtkGeYKaMxpEJYmELxoj3En36yjM5I0x9STeS4+D3Bflri9lDnnbvKE0a1HEnBH5V7scyDWmcnLpLhvZhfDpujNQiU/7OfbgKTDIcEtsa8IkyuiSzvIIynGqcGRLEAIc30X42J8a7mdE/eYiOZl+XVQotydUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LiRB+Ea+WevGIJC8WWahCYdK/6pfOL6/Caf+vm4NKDg=;
 b=Pn2LoaYQDMEV5pnZTGri8SBrMj6MsfoLmynp5j1Uyy2DKfNdB7dj6NfLPTpQhLV/WOlSiFJwmCHqrTFxRfqWNr81wzh32ZJLAivW+O6fhK0lfUMmUA00glPYTSQNuwNBxvCR/SrfTzM1SGCMu/hO8KTgtIi4kAFC7kx61y89b/caC0NQAJJbihbtZvkT4ckHCtmAjbFQDdQvqrfE6g/lCd5XXUuCBnSAMmci+LTB2TF5pu7fHmtGf1O/fGSXP1+X8co/yDlKL1r5gyGJ1a5mPADWgzPd4E9Ro6F5kXpP7uog9VXUmh8aB155oMem6tdOLkZAV08wj4hdEiZBRm60LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7813.namprd11.prod.outlook.com (2603:10b6:208:402::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.16; Tue, 17 Feb
 2026 04:24:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 04:24:21 +0000
Message-ID: <29d194b5-743f-45eb-8a67-0f15614554ea@intel.com>
Date: Tue, 17 Feb 2026 09:54:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] drm/i915/dp_mst: Track min link BPP as x16
 fixed-point during mode validation
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20260216070421.714884-1-imre.deak@intel.com>
 <20260216070421.714884-4-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260216070421.714884-4-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0149.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d7::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7813:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d43d9a7-e2fd-4426-5bd1-08de6ddc6c7d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlVOUXZzb0ZCZTlVeTNCVkJDeVVwWmF5S3Jad1JZZmh2aG9PZ3RYSFdlKzJK?=
 =?utf-8?B?WkF4TXJkZnV3TkltY3lIMDZyd2FPdEtlMnNJRDVHenpKeVJDNHB3TkxyWGZm?=
 =?utf-8?B?R01PNzFDT1dvcWw3Wng5akpta3Z3R3NySkpJSHRHUWg0S3VJT3VjZWkzOGhZ?=
 =?utf-8?B?QjFmcWVPWlJQVU1sb0tkcHlsdk9UQXpXcmo2T0g5VVhsQ0Q2OTkyQjdoWHNJ?=
 =?utf-8?B?ajVtakRaMFp1WW1HS0JjUENnOGNZeHJ5YUhGNVdpdlViK3VjR3N5U3M4M0pV?=
 =?utf-8?B?ckJrOW8vb3ZTOUp6K3k5b2gyR3ZVWnl3ZzVRc0ZyZGIzM2NIMDU5bDJuOTVk?=
 =?utf-8?B?eTZtVXQyTGhYVjZWQ1FhcEhMMnMydThLeWthMFFieWY0MUg5RC91allpVVA1?=
 =?utf-8?B?V1BrZUg4djhrRnhjQ2w0djBzYzVFYmVwYWtVMXljYjM1Uk5MbDFjNlpsaUEy?=
 =?utf-8?B?WmRJTGhpQWJxcnhSUXRwQm9Kcm1BTmllU1gzN1ZFYUtvVk5ldnd5QmNFbjRp?=
 =?utf-8?B?OFVodTFtaHpoOW44QnVBZVRVTVozeGZ0QXZiWXU3M0ltUkRTZW1tcnliZ05T?=
 =?utf-8?B?QVJ6Y2wyOHFwOC9DcXg5aFVkT0ZtMjlSSEF5bGFlc25RaVlwWlhSVTM4U3ow?=
 =?utf-8?B?NlN3cjU2UlMzUXpPQ1Q4bkRHQlRnVllFVXN1czRvbFBVeThHcTNWRmFvUDRP?=
 =?utf-8?B?enRBQlFmUTF0RG9BRFA5NnhjQ2hRMEd0bmE3bGt0Ly80Z1ZkTk9jMzUzRnZN?=
 =?utf-8?B?VXBOK3FIWm5oZVpDNUw3ZDZCeElxbXJJSlc5Ni9HRlUyVURqOGkycnhUYXh2?=
 =?utf-8?B?RndIdTMxaWgrQlR0SGo4Q0V6NzIrT1VoOWF2OFRRT05MbmtHZURkQy9qTGM5?=
 =?utf-8?B?aHNnR3hWNDlRcWJxQ0VzZFQzclJKdGV0VWl3SmZTZVcxNlpWQ3AwdzN1VkZ5?=
 =?utf-8?B?czRMWjVpY0t3ajc2YmJ0TE9BT1Z6VHpxNzl0M1Qzdmpoemh2cWEyUithKzZD?=
 =?utf-8?B?VDFXQ2F1dEk2MmNYT2RZSElIUHc0eVpWRjlMQmtwQStqMWg4TDNwcHNJTGNM?=
 =?utf-8?B?dktUQWlEdlhFRzY0LzNSR1BXTXJ0NEhMZG5ZQi9VdTZVMDMyY2QvSTlSUmpQ?=
 =?utf-8?B?cmZ2TUk2SXpSMFVQUi9OQ09JVGNuK2swMkxMbXdSVW1sN040aXQ0U2pJQTJp?=
 =?utf-8?B?L015dEpGbGNCVnR4QVpvUDJQUks0YXdRR2tjelBGbjJCemNNSkpNWm9zNm95?=
 =?utf-8?B?UnBscnBzL0NHb0F6b05jRnVscjdBTC9JWUV0dEdoWjU5UmdZRE9jNnhSWDFZ?=
 =?utf-8?B?SkpXRm1KaGpDRlZvYUszWVRDRzhIN1VscG1WOWFnbDA5eUlsUmNIQ0wwRlpy?=
 =?utf-8?B?SysrTHFSWERiQkRjRTZLS3dWSDFlNkJhZlp1bjNjWXVrREIyMU9nNEpYVC9X?=
 =?utf-8?B?RFhlSzN4VXZXWDdSamlvZ1lSK3hTVjY3Vmc4a3lyRjlmWThFYU1kQmZSOHF6?=
 =?utf-8?B?YmFIaGtDbGlScVpwTEVyYjR3VFVHd1pYYy93QlFSR3hhM2NuQitrMVI5SXFL?=
 =?utf-8?B?czdHU2VhRm9jRVRrNGZxVnhxVGpkQ0lqL29TYndORWZ3azFIb1ZkREdKU0E5?=
 =?utf-8?B?RjgzVzVrUmV0RFNkZUF5cXRvTDMzUkMveFlsU2I0d1RYSHBQVzNKWnM4Umg4?=
 =?utf-8?B?L0Rjd2IvWWlBNzA3a09wRFUybVhXUDJFRlhPRVlUSUsxOWcvdDV3bXdEZHl3?=
 =?utf-8?B?aURFRzIzdE94SjM0UW0rajdCMFVWbXYzaEplT2RFQzZTaHdQdmhBak9ZZjZY?=
 =?utf-8?B?UWhxamtCL3VLY2REMEdTOGhsZXlOc0NxajQrT0syWUowZXp0Y1Y2WXl3eUxW?=
 =?utf-8?B?Kzdybk9JUllaL1o0T2lOQi9tU3RjeU14S0lZOEZSa043eHlwaEZIeXpSdTJ1?=
 =?utf-8?B?UDZWMFRDQVZPTHpEejdBV0ZodWlSSEkrMUI4TjVnL3djditxU09FMDFqWVVo?=
 =?utf-8?B?bHFZdU9FekI4UHdlMWc2K3ZkeE0zaWNpMkhtVFFpZHZZNmZCc1R2UEQyMWZX?=
 =?utf-8?B?dlh0bEg3RWxjZy93c0JKOVpVdS85Qk03MWpNZFFMQks3ZUJNWm4vTTBDbFd5?=
 =?utf-8?Q?70Fg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MW1Mb1NSNGlQcHF0OERtdmpxQ0FwRFFIcmtaVDRuR1htK2dUQURzRnlGUWhG?=
 =?utf-8?B?SlY5NnlPSVRUc2d1eUQ5NmQ5eGN2dG1aQy9icjZLWW51NjNwYWVSbUVaSWhO?=
 =?utf-8?B?MS9HTjk4Y3JrTjJWQTBrVk4wUWl4NnMrMU9aWmNtWCtlUTN2TkN5dE80UFRF?=
 =?utf-8?B?TDlpVlVpZElBbkFySW9wd0JoMjM0VlJKYTVHOWkwZWV3L3lkNlFNcDg4d2Fq?=
 =?utf-8?B?VDR2SW13VUZGRy83NG9yejVCRVQxSHlvc0dTNTc4QUI4YVRTeFMyNWxNNnMr?=
 =?utf-8?B?SFZIdGQ1Y01DaWVHWm4yUlRyeEIyR2doN2hhdHIySlJDY1ovdlY4Z0x6WUlB?=
 =?utf-8?B?TWJUMVErVllQaVJKUHVxaUd6LzU3bnhyM0UzZHI2S2d5aXJ3Vk8reXZQU3Ba?=
 =?utf-8?B?bjlBVk1DZnNpYW5xMDA4UUcrcWtjZDZlZjg0ZU5Nd1ZGc2lWUGhxV3pVL3Vv?=
 =?utf-8?B?UUd0NER4enN6bEphRE9QQUJ1SXFFamJGQVhLVFIvcjQ4NWdwd0FHaHg4YXpM?=
 =?utf-8?B?YStvV3VIOEc0VzhRWEhFaW5wUEtIWDFjMlBXajdJQ0JUNSsySWF5YVdmTURj?=
 =?utf-8?B?UEYwa3hGRTJqeklIZXdhQ0ZVZ3dMc0lmRFZBZ0FmVWoraUxhV0M4dlNLYzNp?=
 =?utf-8?B?a0Z6Rnk4QXF0ZTR5WWg2bC9QUUlNZWRUdzAzckZFNTAvandzUUkvbHdyRmJu?=
 =?utf-8?B?R2JjT0U2ZCtJWWxrajUveFV5c2xxdVpqcFo4Uzl4SmJoQnR2bHM3NDVOUTls?=
 =?utf-8?B?U0M2OHhhWlhkMWU5ejlaL09oS2ozSmU3MTlZcFFvTWRKZjB6TnB1citDbnhB?=
 =?utf-8?B?bTBtSzloZER2TlBrR2NHa0poU1NYL2RFMGNmSWJ6ck9ybnRnMlZ1UmsxNkpw?=
 =?utf-8?B?Z1k5K3RGeVoydG5tdzJVZEpPN0w1cnlLMU1QdHpmWFJGYkV5bnMwR25sWmt6?=
 =?utf-8?B?bkt0R0NPNlNDYmtrNFk2N1BpM09NVDBZWUF2YkdveFRJNCsxMFdzN3NlT0hp?=
 =?utf-8?B?eWFDNzNQUm05Ykt0SU9QK1FLQzRhMnhsZlBoT3NocnlQNGdVekYxZzVsa3Vj?=
 =?utf-8?B?NUZpcEpsMThpUjE0YzVOWnMwdmVWNkdrMnJLaDIyKzc2SGJkVmNGNVN1YXF4?=
 =?utf-8?B?YUF6RmxLY2I4dlF0bmxWVHNCcGw5VHdpR2J4bXgrb3hadzBHQ3dzSDVDUXM4?=
 =?utf-8?B?RHh5SFdpZWdnSTdkRCtVN1lZVm4zQzRtK3RPNjNCeW9iRTV5Wi85WVdFRlhh?=
 =?utf-8?B?VG8wVE5nLzhrczlyYzRad0ZYNnA3Wk80NnVVcHVucGRkZHNRdk84SnQ0NUQz?=
 =?utf-8?B?allQUC9jWERCZnMvTGxFV252MWNhdkFDNHkrUXMxME54eXpTbGNDRmZacXFy?=
 =?utf-8?B?NkJJWVVrakgvL2FpZHhHeHlqZXAvaHdSY0VXeUxZa3VIQ0RiMTdpdnYrUVJ3?=
 =?utf-8?B?NElyVU02cnVsby9QUDZGWnBXNk9LbWlVYkJrVzVhRGY2S2lRRndQTXlOUEpY?=
 =?utf-8?B?cTRhYjdvWDRORU10bUZxdlpjM2t4Umh1TUlLcHRVMTViK1duSEtDYmNteGZo?=
 =?utf-8?B?NjlEUG9Qelg0N1VTbXlIOUtyRHdvWkluY0tqNUxlNXZLSWNtc0RIcTVXUUpY?=
 =?utf-8?B?d2ZCbnFNWktFZ3FDQXlXWmdIU3Q1N2dHUEFJSVdDUTlqa0JrQlplbVcxTmhY?=
 =?utf-8?B?aXNYdmdLWHhMa0toZlJTdldXa2laTElROEVPQW9EalFFZDdTeTk0M1g0b0dE?=
 =?utf-8?B?TjZrcXQ2OXFoMmV4MlVuK2QwZ2xoa2crZjlaaWszQ0dWR21JVE9GMG81ZU9a?=
 =?utf-8?B?c2prYmNHbnhKeXNFK0tSbDNaVTMvVnlyajQ1ZEw2WnFxL1c5bWZwejViSFlF?=
 =?utf-8?B?dnhONkdxd3YycE9FTVl2aHZsRXJQZGgwaEUxbzIvWXI4enloSnlsUCtweW1R?=
 =?utf-8?B?ZkFOYzBYS29iYm1YMG81azFDM0FxaHF2QS9EbStOSVMyT3VTK2tqVy8wU2Mr?=
 =?utf-8?B?bmwxLzdiRFN2cTlJSGJVdUx3SWdHamluY3VPR2FvbWlZbm5XTG94dXgybVps?=
 =?utf-8?B?SVZrUUt2UnlMNzNmeG52Ykd6QzU1MGdJbTZ2eGd1ZHFaaVU4QUNaa1Z3OG10?=
 =?utf-8?B?VXFXYzNhQkd3aVM1U2sxVVBSR2tNc0NaSW90R2g3YWpFYWxnVnc4cThrT0xM?=
 =?utf-8?B?RkRnQXk4UmVPQW5ybWFxamoxdUVjbkIwWlZsRFMxcWRzUVJqTmkwVzB3UnRV?=
 =?utf-8?B?VzRhT2N0a1JwSkhSa3ZQdkxDbm1OeWVZaklicEpOQm9nNC9wTTBiNnBSeTZ0?=
 =?utf-8?B?KytSQUlaRjllOFBCMHpkcXJIQzRyVk5iZ0R4YTg1OHc4ZVVndzNiVmhaMWMy?=
 =?utf-8?Q?P+Lo3XXPa2Hc9sgg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d43d9a7-e2fd-4426-5bd1-08de6ddc6c7d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 04:24:21.6695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HtjqrR7Clx97EQBQSssSqOkdY2e/assCX8WaL8woiXyMgyawtB6l3ACcmSWrWgAuAtyjDEgg5zJ2uoo+YuFVexIkEyWiCCu/UwL1AqXnH6o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7813
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AFE95148B61
X-Rspamd-Action: no action


On 2/16/2026 12:34 PM, Imre Deak wrote:
> Track the minimum link BPP as an x16 fixed-point value and, for
> clarity, rename the variable storing it to min_link_bpp_x16.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 29713075e4135..7ca2e2245fc70 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1463,10 +1463,10 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   	struct intel_dp *intel_dp = connector->mst.dp;
>   	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
>   	struct drm_dp_mst_port *port = connector->mst.port;
> -	const int min_bpp = 18;
>   	int max_rate, mode_rate, max_lanes, max_link_clock;
>   	unsigned long bw_overhead_flags =
>   		DRM_DP_BW_OVERHEAD_MST | DRM_DP_BW_OVERHEAD_SSC_REF_CLK;
> +	int min_link_bpp_x16 = fxp_q4_from_int(18);
>   	int ret;
>   	bool dsc = false;
>   	int target_clock = mode->clock;
> @@ -1498,7 +1498,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   					       max_link_clock, max_lanes);
>   	mode_rate = intel_dp_link_required(max_link_clock, max_lanes,
>   					   mode->clock, mode->hdisplay,
> -					   fxp_q4_from_int(min_bpp),
> +					   min_link_bpp_x16,
>   					   bw_overhead_flags);
>   
>   	/*
> @@ -1518,7 +1518,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>   		return ret;
>   
>   	if (mode_rate > max_rate ||
> -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp << 4) > port->full_pbn) {
> +	    drm_dp_calc_pbn_mode(mode->clock, min_link_bpp_x16) > port->full_pbn) {
>   		*status = MODE_CLOCK_HIGH;
>   		return 0;
>   	}
