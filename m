Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 034A48D174F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 513D810E09E;
	Tue, 28 May 2024 09:34:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z/cJ21Yy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F1AE10E09E
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716888878; x=1748424878;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZeSEfmf+aar0mD/lZL9kkD09+ioKoRNjV1y2gg3mja0=;
 b=Z/cJ21YyMVDLZBJIDhQBrL/B2eKs7DGbY3gMyKhzXm4qq295WslSgT5H
 yrAVWeg2YkjDEv+NAFXwMx9nHtdZ7QAC9Bf6u5AXMk0V2BSmApDV/g5dr
 KsyowvLMehpGt/QIXRRPcKQzJh7gn9q1eM3WqoteG1HU1wjZTfhnNt0oX
 DIkwSQSNCKWtN6lay673663MIR8swUaV35o+xCK1kc4UIwDCOAtKy9YgK
 ZCDqioUcuRkSb2ieiSpkbBsKqGn8JqrBg7ESivoK1GfliIFCpKpj1zYM9
 VNKn2b9CU9tHY3Sex2DM82pWpYi3EAkCE1cLG5geszwuCqcsp3Ea48ihC Q==;
X-CSE-ConnectionGUID: KU/HjjHSThG3A++AuViSLQ==
X-CSE-MsgGUID: BWIFHY0URQiK14nswJXBLw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17010349"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17010349"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:34:30 -0700
X-CSE-ConnectionGUID: MOneWiiZSeeDxsoRsnsvNA==
X-CSE-MsgGUID: WGjAbpGwTp2zxgEfvTo5vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39450321"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:34:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:34:29 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:34:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:34:28 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:34:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=beLkwIrO3QwUDH/Vb6dauAoCTSMzm4IRBpoBRZtKXMAPX+Ez4lSZos6Du/mo83mm9RHyLN5KxHeUAI4cDtHE0bgsFnAqgjfsyp5UX3oiZ72x8I0iU7GA3qzZYUc1zzwnvLkwt5HbVLMORNLaS3fWlcOAuBGxgWQ5Max6Br23Qjzw80obPwKD3plOzHIIbxkl3tooBKPi2iM89V7pl8fryuv827ZrRbuPz4pYnsjWW6jszuL0n8eXypvLocxo5yxxidml7W15sCnz4iLn4OivRaKM49stLyf63/MDl2t9haam0C1E4ZYpiu97gr+lg7KwjPRaLxfwVZ1bfqLlqggzuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qJju9anYhQ9YQtIb4Wq827yrgOnT0ap9rbP1DaxI6qY=;
 b=gSyILHYIie6QenIEfm1N9GWSljtJeYR88GuXrAj0xZIr2OIs1TvXRcjXl5JC6sNyxyAuCOxq/WZPmsEyRCyXSTBodufGt/GgJeiNlyOy7HhPGozA1ttFEr1YoDRuEf8uoTXRBEpcToM+6W1mP8sd4ezdqopIN+911g8o4IWIRTfb1gj5xZB6+9rg9z4v+pMbItDfTFyi/y+MPdPil8eCTyFzPif+NNuAVqJqOTDXjzEQzWRTmcKCVF70j6nYAqCwAxXxI1bYIXNjUweixf8CS3s9l6yD70xmfIddF8nwmDlZOlKEQF+mMyJhaSs7RgxEQ7HQPXHnMJQG4kh9Xfbrog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6777.namprd11.prod.outlook.com (2603:10b6:510:1c8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 09:34:21 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.017; Tue, 28 May 2024
 09:34:21 +0000
Message-ID: <4d3e0a8c-7bd8-426c-bcac-93ad38af2227@intel.com>
Date: Tue, 28 May 2024 15:04:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/8] drm/i915: Compute CMRR and calculate vtotal
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240524102432.2499104-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0082.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6777:EE_
X-MS-Office365-Filtering-Correlation-Id: 3ebb313a-a5c6-4112-b731-08dc7ef95a83
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzE3THVLQUwwK2wwUjV4dXNwV0lXUWJ3NkVhbEczeVAvdDhlSTZoNDBMRGtv?=
 =?utf-8?B?Z3RRMGRxR2N5TDdxdVJxd0RBd1ppcExMNUlYc0VCZnBUcWZEbm1vTFErZmdx?=
 =?utf-8?B?bGJsTUxDNGxVLzI5VzB0Y0paVVRNSHRpd2FBaXBjWUhvVDc0aTVQd3A5YUVJ?=
 =?utf-8?B?bUNMbWMrZ3FUZ0piTytYRXNSaURXUG5yUms3V0o1eG5ZUmtIVWVnYXcxTGx4?=
 =?utf-8?B?b2w2L2JZck1Dd2V0RXV6emkwMEZmYXhjUWdtcVRia2JkQldVaFdueUhFQS92?=
 =?utf-8?B?N3ZtL2VyOWdISlY4cUdSWGhXZDRZNFkvWDFIcXlKMGFWZElBWXJ1bkpYWEZj?=
 =?utf-8?B?NVNIU2cxQldmWGVpZHBZQjAySU10R215VnJ4NkJLRG5YMXI3dEdQS3lhaE1S?=
 =?utf-8?B?N2Q3bW5OV3hkeHprMVB4N3BPQlFyend0SU1jMG1MUzFPY1hDSU5mUEpGUXFV?=
 =?utf-8?B?cm1jc2FGTFZFbUU0Nm5ka1g2WHZzSGI5c091SUlOYnF5UVdGU3BjampVVkhn?=
 =?utf-8?B?OE5hNzJkU3Z2QURycWZYNDM3Vmt3ZHBJcEQrL21QMmNxd1d1bUhLMGpzWFJk?=
 =?utf-8?B?UmhLM1dxUGxjQ05IL0x1R1lFT1ZvRDI0NlgyZytrR0NkeGZNZkduR3A1R2sv?=
 =?utf-8?B?Z1ZPWksxRys5aEFPU2ZvbGtsL055bzV6K3g0UzdqdXNCUVRwOUlEMUo3c2JH?=
 =?utf-8?B?WWxIMC9acUxkOEJjaURIbmZqMVRlTlFsK1piSWJIdjFBeHR4UXVVblN4dzNZ?=
 =?utf-8?B?NG1xM1ZjMStyM3BKTVZnYUZYR05adkFkd2xBWFAwejRyUURBWWtFZEcrd3dh?=
 =?utf-8?B?RE1JMWFWYXIrM0Q0M3JvaWZRVEVCOXd5dDNJZ3FpaXlLbE1OeTdkSThEUzlM?=
 =?utf-8?B?WWVFclNxU0wwZVh5ZklqeVJpSUZxczBzZzFPeTdBZUYyTjRIaXc4M1hyQWRh?=
 =?utf-8?B?SEZWbUZaYUs5Q29lUDBUNmU2dGdPbENSYTZzWWV2NFZJcVd2YisvcTVwU0x3?=
 =?utf-8?B?YmhOcEg3Zm51UVhaditoSTRQc21majgvdkIvY0p6cFA1STFuWnl2aTc1TlYz?=
 =?utf-8?B?QmFqdkJTaWd1NnNnOWUwcE03Vmp5OWNDU25kWkhFZm1oSlNyTVc1Nkg3ckpV?=
 =?utf-8?B?QkJZTEFwV0lBWFY1UFVGelRLaGJOdTdVK3JwbFJ2dXp1bVIwUmpSVlUvNS9R?=
 =?utf-8?B?WnZ2WlFVNElqeFpkTGhhUE5IdlFnbkZJVUx4alYraVFaNjd0QmVXWEJLUEFD?=
 =?utf-8?B?WXlJT0dCZ2JFQzMxbG50U2t2dFpqY3dtTzZWMUNrMmUzdkpHZG4vUmlVOEF6?=
 =?utf-8?B?dXIwbUZxSUtUQ2ZIK01UcndXNW4rZXhBejhoOEx0MnJ0R2lwMzhNZSt6bDVJ?=
 =?utf-8?B?NzcrZkVzYjJYazVxYXpla2VSU1gzbFFMZ3AySnZObDJodmZ2UHlScVNsVVBl?=
 =?utf-8?B?ZWFsUmlZbVJOdW9BVGFXSkh2Z0N1WkRrN3IwWk81eHBOTlNjSkU5VzFtbnoz?=
 =?utf-8?B?NjVlOG04SlVlWDMweTlwTy9JNmoxV3RhQVlCRFlaQTRIN094dFJNY0xVT3Uz?=
 =?utf-8?B?SlYzQVVnVFZaM3NQMksvUFNKWkJxLzFxREZQZy9Rb3NFYVlvbjFMZ3pVVHNC?=
 =?utf-8?B?L3FQeU1CTStwUk41bFNkdHZ1ZXE0YXYvcmJrNFBzVy9zanRhYldKeklFSVll?=
 =?utf-8?B?NWJTblVWN2lYVlpDMG0yZEIyT3hkV3ZCcEZCaTRyd1pSK3d4dVFaT1NRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ylp4cXVNR1N2K2pZU3ZxdUNrZnNEZ1RKT0NrKzFvaHFqWWlDNmZHUzAvZkFh?=
 =?utf-8?B?SjVwaStlcjFZQzI1U1RYMjd3WE1hVG5VL0piRUlXYWpodXZTMm41cmY0NjRa?=
 =?utf-8?B?TWRaTVV6RThFdDJXOVRrUnZlYzJzMG03L0FmUjMxTGJscU9Id2h1WGwyenRN?=
 =?utf-8?B?b2lTU3ZYMXc5RnFaTnZMNE83c0NsbG9kY2dSNU9KN013SGtQYTA3MUo1L2lk?=
 =?utf-8?B?ZHAxNVNkUTVMYjNtbk8rNVFsQkcvS1FFd3pSRk5HMnRSVnBOYUxxeDg3N3RP?=
 =?utf-8?B?VVFWKytwb29INEEzQWlIWkJJb3ZlbFFrRk5OaGlQWE9SWG9LOGpLS24vSEU0?=
 =?utf-8?B?R1NLMHQ0ay9hQ1VpZkJRTml3NDR2dW5IeEhvRzdQRlZqSlppSEJ4VE9Ua3FV?=
 =?utf-8?B?MzdjTm5QdDBld2FocmtxdVZFRUZLRlRmTGIyZURJMkxvZG5FdThWZ254Tjla?=
 =?utf-8?B?bHYrc1Fjc0x4OVF3NmJpa0FNTWJ4SDI0RDlvR2YvQVFqU2kyaXpMQlZSa2VI?=
 =?utf-8?B?Z3UvWkNYRlV4cmVCbEZXdWNsSGhkQnErVE9uUHpxYkRncWR0S2MrYUFmOVJB?=
 =?utf-8?B?Zjljb1QwUlNXNkVRdjdHTmhaVFdkY2xyVE5ZeHBnQWwvMW0yNlRaUTFBVEJu?=
 =?utf-8?B?bUZtTExpTjduVWwxZkVCTHhRWDNqSnFQY1BvQm5XZGtOUHIrazV2NXlPTUp0?=
 =?utf-8?B?OVBTdEFxREJha1hIeXFTVFlIUmdwbHprZ1FlZHYzaFkzd3ZETFJUUTJxMEZC?=
 =?utf-8?B?YjR6VmRZN3hEakhTRGlHNURKTGRyWmtZTmtnR2ZwRHRUdUJhSmF3dndLSmJN?=
 =?utf-8?B?Wko0aU5PZmh6dzJFd2Q2UWtUWlpvc3p6dDEvd3NRMEFTY0grOFh3dU9nckxh?=
 =?utf-8?B?NVoyVC94MHp2ek5KbmlYbVE5anc1czNoRkw4SFp6bHIyY2hLZUV6SnEzWnlu?=
 =?utf-8?B?UnNvakY4a3JGOFNJNDRtM3pGZkpMUk5CZm41NjcvWUlHVjVSRERmaXhsb0kz?=
 =?utf-8?B?RTRoQnltVHlSdWlMczBIS20yK0ZVVldTNnJYb0I5Uk9jR2FZRGQyQXNTMEJx?=
 =?utf-8?B?Y1RZVjFNd2pNcDIySEQxR1gyVUV6RmtFbTV3VXUxOXNBUE9FenB1N0pISFBw?=
 =?utf-8?B?L2xLd1dzdWJoVklYMVVsZTFwTUExMFlXQkZKdFNHbmo2aHVoK2I4eWl6RWhU?=
 =?utf-8?B?L3V5ZitvU1l1Y0F1UGd2Z1ZnZUVrdnpkZTRnbGYyY3dxb2k1OTZ0dE9uVzFm?=
 =?utf-8?B?WG4rRlMrVSt3SU9QTGQ4amtTaEpTemhwaFZsVEdTMTdiTDB2VG5VMzlTek5x?=
 =?utf-8?B?bGxnaysyUzdzeEhqMWtFUmozMTFheTlvZ2ZGYTZxdzhDVEZZY1l4bWNTeDQ3?=
 =?utf-8?B?aTJvYnc1eWk0bHplR1FleEhMcFNlRTRFRnBIYW52NTBTOWZoZWhFcmh2MVI5?=
 =?utf-8?B?WTc3ZTI3VTNIbExhNTUrU05GeG8wTTdPM3BVcWpJWCtsT2NHS1FyVWdPU05M?=
 =?utf-8?B?N3hyRjdpamV3SG1UbjFHQ0FMdTlKQ1NnYmk3bTVNK1hRL0prcGs0dmlZNlFl?=
 =?utf-8?B?SmhwMjI2V01CbUdtOE1VZE4wWlh1OG05Zll4VFFFeCtZVGlmREpUMFpMMklv?=
 =?utf-8?B?ek91NWFZeS8vQkR5Qi9pQmpLVDVERjZscjRRVm5ucVlRWDVzMGcrdDVzNTNE?=
 =?utf-8?B?UU8zWnlkdFhIU3lreFdhN3c1ZDR1emRWZE94cWlzZytqZ3phdXhCbXVrZk9Z?=
 =?utf-8?B?ZzNuUy96MFRjV2w1ODJRS09SbWdvQi9VcTFlR0JZZHdXMmVRYk85UXZCSnVY?=
 =?utf-8?B?aGpRcHI3Y1BVMHJVTmkyV3JNcEtBTmlWcFNnQnM5UktPVytiZ0lEajNCb0dH?=
 =?utf-8?B?UGFkd3hPRXZYSDNLbTVGTXRUbTRRcEhXaXJRb3dDL1VnaGxvVjFJZm44MmQw?=
 =?utf-8?B?SG1EcE1Kb1BtdUgrWGZURVFBa09hK3Urb1FVYUpPZytpTVp5YklwU05kTGhz?=
 =?utf-8?B?UUVtTVZZZHcxNlNTUkQrYlVsa3BGRTFXZS9GRW4xOUVHYnp1eDJKdVpHM3c1?=
 =?utf-8?B?blpZVVI4V2srVDl1M3JkaGIxSHBXMTJSOUw0Rjl3bnVSOW1ZQisvMGZDd05n?=
 =?utf-8?B?RThlYzl0MWl1MGVrMDFmYlZJUE4xODJPT3pnYmtRWlN6aUs1RFFDSzh5MXcx?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ebb313a-a5c6-4112-b731-08dc7ef95a83
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 09:34:21.1381 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0LzwcDqKJlUCOB96sP4Vy95Pwic9CVePXYCHvXDSaGPbzrqSpifC5NPQrSlZ0WGSPaIo0i99Y/HO7PvD4hq6lvs2lDCaMJ13GD/zNxl+oE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6777
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


On 5/24/2024 3:54 PM, Mitul Golani wrote:
> Compute Fixed Average Vtotal/CMRR with resepect to
> userspace VRR enablement. Also calculate required
> parameters in case of CMRR is  enabled. During
> intel_vrr_compute_config, CMRR is getting enabled
> based on userspace has enabled Variable refresh mode
> with VRR timing generator or not. Make CMRR as small subset of
> FAVT mode, when Panel is running on Fixed refresh rate
> and on VRR framework then only enable CMRR to match with
> actual refresh rate.
>
> --v2:
> - Update is_cmrr_frac_required function return as bool, not int. [Jani]
> - Use signed int math instead of unsigned in cmrr_get_vtotal2. [Jani]
> - Fix typo and usage of camel case in cmrr_get_vtotal. [Jani]
> - Use do_div in cmrr_get_vtotalwhile calculating cmrr_m. [ Jani]
> - Simplify cmrr and vrr compute config in intel_vrr_compute_config. [Jani]
> - Correct valiable name usage in is_cmrr_frac_required. [Ville]
>
> --v3:
> - Removing RFC tag.
>
> --v4:
> - Added edp check to address edp usecase for now. (ville)
> - Updated is_cmrr_fraction_required to more simplified calculation.
> - on longterm goal to be worked upon uapi as suggestion from ville.
>
> --v5:
> - Correct vtotal paramas accuracy and add 2 digit precision.
> - Avoid using DIV_ROUND_UP and improve scanline precision.
>
> --v6:
> - Make CMRR a small subset of FAVT mode.
>
> --v7:
> - Update commit message to avoid confusion with Legacy VRR (Ankit).
> - Add cmrr.enable in last, so remove from this patch.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  1 +
>   .../drm/i915/display/intel_display_device.h   |  1 +
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 99 ++++++++++++++++---
>   3 files changed, 89 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 803360fcb0cc..f7e82d1e2bf9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5437,6 +5437,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>   	}
>   
>   #undef PIPE_CONF_CHECK_X
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 17ddf82f0b6e..b372b1acc19b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -71,6 +71,7 @@ struct drm_printer;
>   					  BIT(trans)) != 0)
>   #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>   #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
> +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
>   #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
>   #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
>   #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3b250e92af98..3fbedd7366bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -12,6 +12,9 @@
>   #include "intel_vrr_reg.h"
>   #include "intel_dp.h"
>   
> +#define FIXED_POINT_PRECISION		100
> +#define CMRR_PRECISION_TOLERANCE	10
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	const struct drm_display_info *info = &connector->base.display_info;
> @@ -107,6 +110,59 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
>   }
>   
> +static bool
> +is_cmrr_frac_required(struct intel_crtc_state *crtc_state, bool is_edp)
> +{
> +	int calculated_refresh_k, actual_refresh_k, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
> +
> +	if (!(HAS_CMRR(i915) && is_edp))
> +		return false;
> +
> +	actual_refresh_k =
> +		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
> +	pixel_clock_per_line =
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> +	calculated_refresh_k =
> +		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> +
> +	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> +		return false;
> +
> +	return true;
> +}
> +
> +static unsigned int
> +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
> +{
> +	int multiplier_m = 1, multiplier_n = 1, vtotal;
> +	int actual_refresh_rate, desired_refresh_rate;
> +	long long actual_pixel_rate, adjusted_pixel_rate, pixel_clock_per_line;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	pixel_clock_per_line =
> +		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
> +	actual_refresh_rate =
> +		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
> +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> +	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
> +	actual_pixel_rate =
> +		(actual_pixel_rate * adjusted_mode->crtc_htotal) / FIXED_POINT_PRECISION;
I am still not clear about this part. isnt actual_pixel_rate simply 
adjusted_mode->crtc_clock?
> +
> +	multiplier_m = 1001;
> +	multiplier_n = 1000;
> +
> +	crtc_state->cmrr.cmrr_n =
> +		((desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n) / multiplier_m);
> +	crtc_state->cmrr.cmrr_n *= multiplier_n;


This seems wrong: As per bspec:68925 this should be just: 
crtc_state->cmrr.cmrr_n = ((desired_refresh_rate * 
adjusted_mode->crtc_htotal * multiplier_n);


> +	vtotal = (actual_pixel_rate * multiplier_n) / crtc_state->cmrr.cmrr_n;
> +	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
> +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> +
> +	return vtotal;
> +}
> +
>   void
>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			 struct drm_connector_state *conn_state)
> @@ -116,6 +172,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	struct intel_connector *connector =
>   		to_intel_connector(conn_state->connector);
>   	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	bool is_edp = intel_dp_is_edp(intel_dp);
>   	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>   	const struct drm_display_info *info = &connector->base.display_info;
>   	int vmin, vmax;
> @@ -160,18 +217,10 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
>   
>   	/*
> -	 * For XE_LPD+, we use guardband and pipeline override
> -	 * is deprecated.
> +	 * When panel is VRR capable and userspace has
> +	 * not enabled adaptive sync mode then Fixed Average
> +	 * Vtotal mode should be enabled.
>   	 */
> -	if (DISPLAY_VER(i915) >= 13) {
> -		crtc_state->vrr.guardband =
> -			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> -	} else {
> -		crtc_state->vrr.pipeline_full =
> -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> -			    crtc_state->framestart_delay - 1);
> -	}
> -
>   	if (crtc_state->uapi.vrr_enabled) {
>   		crtc_state->vrr.enable = true;
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> @@ -183,6 +232,25 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   				(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   					crtc_state->hw.adjusted_mode.vsync_end);
>   		}
> +	} else if (is_cmrr_frac_required(crtc_state, is_edp)) {
> +		crtc_state->vrr.enable = true;

I think it will be better to add crtc_state->cmrr.enable = true; here 
instead of a separate patch.


> +		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> +		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> +		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> +	}
> +
> +	/*
> +	 * For XE_LPD+, we use guardband and pipeline override
> +	 * is deprecated.
> +	 */
> +	if (DISPLAY_VER(i915) >= 13) {
> +		crtc_state->vrr.guardband =
> +			crtc_state->vrr.vmin + 1 - adjusted_mode->crtc_vblank_start;
> +	} else {
> +		crtc_state->vrr.pipeline_full =
> +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> +			    crtc_state->framestart_delay - 1);
>   	}
>   }
>   
> @@ -323,7 +391,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	trans_vrr_ctl = intel_de_read(dev_priv,
>   				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
>   
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	if (HAS_CMRR(dev_priv)) {
> +		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
> +					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> +					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);


Since vrr.enable and cmrr.enable are not mutually exclusive, this simple 
can be:

crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;

if (HAS_CMRR(dev_priv)

      crtc_state->cmrr.enable = trans_vrr_ctl & VRR_CTL_CMRR_ENABLE;


Regards,

Ankit

> +	} else {
> +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> +	}
>   
>   	if (crtc_state->cmrr.enable) {
>   		crtc_state->cmrr.cmrr_n =
