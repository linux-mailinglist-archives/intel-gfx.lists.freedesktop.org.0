Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D225EBFFFBE
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:43:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0C510E8F0;
	Thu, 23 Oct 2025 08:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SEVFj8Mu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2E5310E8EE;
 Thu, 23 Oct 2025 08:43:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761209021; x=1792745021;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9ON0xvOMVBts39RUsEjY4Baf4MEWZdszxZ2vAix7MDc=;
 b=SEVFj8Mu9YPnT3caGIZjagEUeUDGf9ZkgkjB4+KUcSoJjzibsug8UbrP
 O22iZhUaRe3bT1P9BCd0Gwv6ohciwJNRi+uOslV5oCCmnNIqyCD7jOK67
 s5BCyQux/xw8ioZMkZ/FVXxS4uy+Pyi4nU+EuCoHU4ovnvQzZ7wJZ6jDy
 6c0rbPtUnXX9eL7Vs+VDscpsFqa3qNyGWvU2IrqP007B7Yl5wpQ3NOeOR
 QfsL/J3MisKEBkWeuHRgaN5jGG/ycu/xayd51Vss4XhDmFCM4jT6UucWb
 jxoXsH/M8BbXuCURMR76msj5YvANSgCRAFu+YmOG6iZxURfIkGLeYWY57 g==;
X-CSE-ConnectionGUID: kQO5BA65QsS91EhHB6dhZA==
X-CSE-MsgGUID: 5a7fO3UuTrW9Vp3W5h9/JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63076191"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63076191"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:43:41 -0700
X-CSE-ConnectionGUID: 7WPx5EYMSTu7Xg4Ien065A==
X-CSE-MsgGUID: z1XbNeEKShCD6uo5vNmw2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="221293796"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:43:40 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:43:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:43:39 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.63) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:43:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HxVjb+OGkrdwX5JrPFW6tFSugKzCSMvUDblRiSD5D1asniLkg+rrYibGC6FbEGarpRoK7pxLbuAiJYbeshCaIzB1qwHnOAly937ZmHkza8XrjaHIWJQV9NP8bRaJAdqFpD08xgh3b4W68ZcpEv3oSQlTi1IARTy+wku/X0+Lfwb+/uzmpvug+Nqss19Ba7WQ9pyfz+FkOe+mr8WsW/YlHfe5q74qB/6YeZGSjjeKOmoX7hUxgvh+991PmIDsJYlQLMAMANV1SeWd9gBJstqY/NZpMeJMFy88zzRv6HPvjLtgsefs9j5eEDNgkvsAH2j+KUwLwGjlVlvfiIMNVv+5mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4GSpfp9dJjSLM6/uj4Nqe0BKqHGpHXWbwrAw+FEKtHY=;
 b=OZufVJObdNOoLmfvVYP3W9QH2i25fGj3v2THXgEm8lfjxrCPHodLGeCHw9YQQUc6dQyYbCypsJz/JfIexYWR5/PuLxh5LXPyPM3vSznSOGVTKOKRjPDuOMw+hbTmSE2SarM0KxHa8Nw3ZQ122xJ5+p71mv6Ai748DgR440vgPzklymxjOxIkSYPSwa6dfySSL1jAgWzzbx7YA5L0SQKtrDEcOHF52FNGAWFigTs9ckq+pxkxsAE/XaJHsUPTFaDVFcacOor5pAK2yE2Re7/I7nMSc+y92q7QaEnmgmff8fb5mCnspHUekflHN3si/iBNBisUy1wQexIP5tuBRWYdbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV3PR11MB8529.namprd11.prod.outlook.com (2603:10b6:408:1b3::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 08:43:32 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 08:43:32 +0000
Message-ID: <0975e49f-c1df-48e3-8894-5fd01f4e8917@intel.com>
Date: Thu, 23 Oct 2025 14:13:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/25] drm/i915/ltphy: Hook up LT Phy Enable & Disable
 sequences
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-17-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-17-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0038.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::7) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|LV3PR11MB8529:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c619ce5-bda1-486a-4f01-08de12103f1a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OFlaVnMwa0NrdThoTUVwQVFzM0tKMlRpSmZucVpQMk50SEZJRzlsdHBzaXlE?=
 =?utf-8?B?WGVuWFdEMFhSMHYrTjlOUERBYndZTzFmcTNEQjdvNXV5cFFmYllscDNOL2F3?=
 =?utf-8?B?TFFURHR2MUg5R2dWOVJBNDVOcDhjVms5S3dQdU5qVnhVdUg2OHBBdlpSWnVk?=
 =?utf-8?B?YlI5QW5BRHJHQldzVHZlVVRKZ3JWbnJwampVUnFKOGdEaXkxaytSRm1TbWJL?=
 =?utf-8?B?allubStjSHlSaGtGemdKeGtNdm5tQU5HRENKVXdCT21aaWFIU0F2MWhRUCts?=
 =?utf-8?B?QzFJaW5weTA1a3R0Zk9lV3k2QVovdlpYYkprUkowQ2g2eXdPQXpxK3VzZTRM?=
 =?utf-8?B?aDgxRVNySkorZkFWOW5zYit2dHpSSW5jcEE5Rk5qWGFRSUQrMFhlYW5mbHNO?=
 =?utf-8?B?YkRNYXNodk14K0R1cTcySExUVzFDWEtvMDFscnFMWXBuUzZ5NFUrb3djcS9K?=
 =?utf-8?B?MVdHWVh6S0ExOHJsVTRMVFZhTkNyVnZkTDFWQVl5YVFoNXZSYXYxMEdjU3pB?=
 =?utf-8?B?dzZDeGN3OHVFRU53SFBsVlliaUZZSW9lb1h3UDFSNVZBRUMvOXZhQjd6Ukha?=
 =?utf-8?B?aUhHcVdWcGhjbWljM1oxYis2b2gvdkdjcmFRSlBSdGY2d2xEVFFOUHlPQUJh?=
 =?utf-8?B?Y0FIaVBpVFQrYkxWYVFHekVFUnpKWlUvelZuMC9FaEsyTDJYK0Jsbk8zMHF0?=
 =?utf-8?B?YTJwN3hUV1NvYVVkOGFwNUMxWjB3T29LVmJSUWhINFJjUVNBZEJnanF1bC8v?=
 =?utf-8?B?YzBwVWhEWFpqaWZuOUw2Rk90UlJmaDlMc0psSEFMY1VCMXN3Z1k0dHVUOG95?=
 =?utf-8?B?UjV0TXZKWVFkTThqeHM3ZEt3SitzWE56d0lkTHJIWWM5bm9NWlhYVFJlSmlS?=
 =?utf-8?B?TWdmQnZMcm9aRjdUWVl5N214MFp2RUxlbWZ3bS9WSjBpNTRnemdqenQwRE1h?=
 =?utf-8?B?bWJIcUZiQ3hTZnJCa01PdHAraWNwaDU4R04vZmdidERWZ09vL0JVK3l3aTht?=
 =?utf-8?B?dHdjdGZ6aXY3MVBvaUZ5M3RBTXZiVWJFQ3Mzbkd6eDI2eUNyc25xd25JMHVQ?=
 =?utf-8?B?bGUvYUJuU052bnMrSVpDdEN4T0FDeUtPUWkxamRDbnVDZnp0QkVlajNQL3U4?=
 =?utf-8?B?V0hpR29TQU5Nek55Z0VoekZqM1dxQ3loNWlJa3ZvS0lsaVhpV1lyVXlKTWRM?=
 =?utf-8?B?dEFSQzVjdXZoT01XOUx4eS9pUC9LRDBBajJUQnF2UitkUmxkVWRrUDAyUmNr?=
 =?utf-8?B?VUxxbmM1VHl2eUxOM1BQWEkzcmY4Y05ZcGR3Z1VTSmM1RFFBZnF1Q1lYbEJy?=
 =?utf-8?B?R3hvSnR2WmhjTFAwbkNkdEhBV3BzZ3hDbVd5TWhJenVsYzlabVd4VjBHeFpi?=
 =?utf-8?B?L0NlZjluWVJyMFQ2VHd5V2MyaktaMGxqL09Ga0dXN3BudWJTaHpocElIRFJW?=
 =?utf-8?B?aVFlQXhBeHVrK1JHYy9EMmgrSDV5Z0dUTkhQTzFuVGhYcExzalcxSTBzN1Jz?=
 =?utf-8?B?OXorT0trRjlmZDZ0a2JQWFVtSzBib2NiUDJJODNDZEMrM21sUEZCMEhaL0d6?=
 =?utf-8?B?YXJSV0hwQTc5SGNYZk1CQWdVTTIycS9CMEg4Wk9kVjBZYjN6S1UvOTNJbWtO?=
 =?utf-8?B?SUZjUGtnQ1hSUmhXeUlHY2p5ZkFyWko0WnhkcnlrUTF5aW5TVUJYbXMvd1o1?=
 =?utf-8?B?enhGVVA4YkFqQmpGNjZZa0xJQ01hcnZGMWVoalV5Q3hib2VYbFprZXZDeVY5?=
 =?utf-8?B?dnAvWHlWdHFQMVRDRlVjT3l2c01kc3hrNWJ2UllZbXRGdTRhVktDQ3d3L0d5?=
 =?utf-8?B?WUsrVlJPNisrNmpBZENyZEsySnpiVExyQkk4RGU3cEhGZWhOZ28vQTd6SWFZ?=
 =?utf-8?B?cUhjLzg4ZjFVWWN0SmVDZGhkSnJIT0dpT0tQSm1ERFM5SVhROWttbHBhRVRF?=
 =?utf-8?Q?wrA0YMJz/eKM1PD3/OLs4ed7HWLWTjsi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V2Y4amNFRldyK09nWmJBWEFSeW5ZSVQzbkdYYXl0RUwrODBmeW1uM2JHc280?=
 =?utf-8?B?eHcxc0tjVVYxdEZsQjluNmsxSlRKODh6VWNFeHRKcXBOQ3BPZnM1QXBpMjRa?=
 =?utf-8?B?blJiYXFZa3dzcndkK0kwbzVGeDZ0WGNYb3pUTGZTMXhmc0MyNTNsa1JwU0dr?=
 =?utf-8?B?b3kxL0FTRE9KekwwTyt3bjlNYVlxWStYRmVTQjZoT25qSmRqVXFLNFpZa0Nx?=
 =?utf-8?B?TlBxTVFPTTNIaWdvV0s0V0xxN0ZpTFZvcktxRXU3Q0FUL1RmY3YzNmRGMVFM?=
 =?utf-8?B?OVhmOEl1ZkNOazNueTlCWkFoUTVSM25Oc0g0bmdMWDN1b0p5UEh3VHQ4NlpX?=
 =?utf-8?B?ZU41MjBzcVhiUTMyKzVrdGVOZENxMjNNdnhNMmhSMWllY3Jrc1hjcFo3alp0?=
 =?utf-8?B?Z2RPa0xHWi9lUmxCK2VVaFNvQmhPcEVpSDhKREJmdWMwTG9kN2ZuZStzZy9Y?=
 =?utf-8?B?dTA1R1E0b1JqUDZWOHZ5a01OekRpeTNBVktWZDJya084RUlaUDdhMW9oQmpj?=
 =?utf-8?B?bGpyV2ttR09UU3A4QUp0QkdxZkhQclFhWU9WTHM0L2o0azVGQnhOaDhYM09L?=
 =?utf-8?B?VGlkQW5SMkVaU0JYWUM2cEI1V1dBN0FFTnRRRFE3azYzallpOExIa1NtMkdC?=
 =?utf-8?B?UEpQUWZNSnFZRTZiVVRqcW15a1VtWXpqZE5HZXdNSmpPWUNZQ1VOek9rYVhx?=
 =?utf-8?B?RmxZbWR1VjF1S05iYzU0T2pJQ0s3MnU0ei9WcjZFUmZVQ2tvSXpwdFkycllx?=
 =?utf-8?B?RUdpNlBPV3pldGdlL2E2UEdyY0d6ZWJFOE5Tdzc4RmRkME5YWERpNjFWcGth?=
 =?utf-8?B?M1piQ053c0NDbjErSVBqWDN3MVdqdmE5N2loN1lHbkJ5SWJLWEc1ZXdHckp2?=
 =?utf-8?B?TDg0RzNWWmEwYzRCYmpYeEs4QUNwWk15Zng2TkRJajlIWmJlSVhTTDRBREp4?=
 =?utf-8?B?ai9xM09iUkpYZnl6NWl1WE1lK2dxY1o3V2FNNUY4WGxrK244aHJ6Y2NrZkZY?=
 =?utf-8?B?L3ZMNzllQ2I5TWUrb042ckx4U2Y3RExWcEFuUmJ6NzUrWnFFbGd5WEFXV1Qz?=
 =?utf-8?B?KzIvWGQ4RHdJcm1xYitMbHZMTlFxbEQraHpEc1Rsd2d2RzRQcENKVjdQQzM5?=
 =?utf-8?B?dXJZMlFXRWdtRlROU2xEUHI0cW9xZzd1RUJ4L3hHbHp4QmJOS2t4VkwrWnlz?=
 =?utf-8?B?UEYzNWJRMGo4WFZLZHcxVnNlRS8zaTkrL01rYUs3d0tzOFh0aklnaWxRMXdu?=
 =?utf-8?B?QSszTnpORndPYzloNUN3VEhQQ2NrZC9Xc1BMeVpBc3p5VmhmbHFtYk5haGhB?=
 =?utf-8?B?emlpVmZwbTMxU09zYWFhY1UzQVlDVS9KL0UxQXhWMDhoazJJeUdFVEdRMk40?=
 =?utf-8?B?Y21XSkF4T2pnKzcxZVNyTW1aZDVuVDVCanZuSHZ6N2xnVjlUa0tXdzN1Z3FK?=
 =?utf-8?B?YlVRMSt1bUYvNEM0bFp2ZUZsK05sa0tZVWlEc3FkM2xWWEY2cW9aREtyVHFK?=
 =?utf-8?B?dW10K3c2SktKc29PMjFCOGNCaVo2VS9rMmpWVGlqRXhXZnZ1TVJTblRJUXBj?=
 =?utf-8?B?QkRVNWNFS2FGaWdXbklxLzkyUWFVNjVQTitFdjRYQlB4SHFoQ1hnd3ROMG5B?=
 =?utf-8?B?VnljKzdlNDdGQmhPc09lL2RmM3dXelRBOWJxZU5raUVpaG5mVTFBcTI2Uzhh?=
 =?utf-8?B?QzJpeHJZak5KWVVPUEE4dEppcFdYN3JCUmNISDNJV3oyeDdOOTZBU0RuZG11?=
 =?utf-8?B?NlYvK1JKQ1hrV0x0UXUxSGE3c0Y1VmN5YXIyMTNuUUxKNHg4T2dUaWhiMzRC?=
 =?utf-8?B?SkIwZWF3R2EwQ25pM096SHVoUHZVRmRHL3pqY25yMEJmWG5HVW5nTnE4YVN4?=
 =?utf-8?B?c3lnWUkvOVU4NE4vMzkvbTJiR1dRM1FqYk1ycy9aRzlWREJFR1paY01nWG14?=
 =?utf-8?B?YXpCTEJ2Y1VwUzAvQTdBQUtDZHQ1bUVoUVFLb2xzaC8vTzBHT3ZjZnozK2Js?=
 =?utf-8?B?d3AxSUs2SnlEblhkYmZ0cG5ibjVISU96cGVTSFk5ZzI0VS9CQXR6cnNuUVh2?=
 =?utf-8?B?TVZZeEtxZ2JXT1IwVHR2TFN6QTBHNmNNVjUycmNZWE9PdlZBVEh2QmxOYTYy?=
 =?utf-8?B?ejdHZlkzY3QxR21ScnpJREhLZVdzVUxUeDIwZ3l1b2U4UGV4OCtXZHJIckhi?=
 =?utf-8?B?Wmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c619ce5-bda1-486a-4f01-08de12103f1a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:43:32.5744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AnXmz8jMAFkwgOyzHM3GGSSDPs5DO2wyHVNhkT7O7T6jZY3Xrr5pYnMvXGEbzw4b7lnbBn+P2DATgeqfaT15ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8529
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Hook up the LT Phy enable and disable sequences using encoder->
> enable/disable_clock and reusing the TBT enable disable sequence from
> cx0 PHY since it remains the same.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  7 ++++---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  3 +++
>   drivers/gpu/drm/i915/display/intel_ddi.c     |  7 ++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 21 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h  |  3 +++
>   5 files changed, 37 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 914b215d8bd4..986da034d4de 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -18,6 +18,7 @@
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
>   #include "intel_hdmi.h"
> +#include "intel_lt_phy.h"
>   #include "intel_panel.h"
>   #include "intel_psr.h"
>   #include "intel_snps_hdmi_pll.h"
> @@ -3155,8 +3156,8 @@ static int intel_mtl_tbt_clock_select(struct intel_display *display,
>   	}
>   }
>   
> -static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> -				     const struct intel_crtc_state *crtc_state)
> +void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum phy phy = intel_encoder_to_phy(encoder);
> @@ -3340,7 +3341,7 @@ static bool intel_cx0_pll_is_enabled(struct intel_encoder *encoder)
>   			     intel_cx0_get_pclk_pll_request(lane);
>   }
>   
> -static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
> +void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum phy phy = intel_encoder_to_phy(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index f0f0efa2d48b..a37827482a32 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -64,5 +64,8 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state);
> +void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state);
> +void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder);
>   
>   #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c09aa759f4d4..6fcfdd0b0103 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -72,6 +72,7 @@
>   #include "intel_hotplug.h"
>   #include "intel_hti.h"
>   #include "intel_lspcon.h"
> +#include "intel_lt_phy.h"
>   #include "intel_mg_phy_regs.h"
>   #include "intel_modeset_lock.h"
>   #include "intel_panel.h"
> @@ -5224,7 +5225,11 @@ void intel_ddi_init(struct intel_display *display,
>   	encoder->cloneable = 0;
>   	encoder->pipe_mask = ~0;
>   
> -	if (DISPLAY_VER(display) >= 14) {
> +	if (HAS_LT_PHY(display)) {
> +		encoder->enable_clock = intel_xe3plpd_pll_enable;
> +		encoder->disable_clock = intel_xe3plpd_pll_disable;
> +		encoder->port_pll_type = intel_mtl_port_pll_type;
> +	} else if (DISPLAY_VER(display) >= 14) {
>   		encoder->enable_clock = intel_mtl_pll_enable;
>   		encoder->disable_clock = intel_mtl_pll_disable;
>   		encoder->port_pll_type = intel_mtl_port_pll_type;
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 747cce4a484a..d458909b5f12 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1692,3 +1692,24 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
>   
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
> +
> +void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_enable(encoder, crtc_state);
> +	else
> +		intel_lt_phy_pll_enable(encoder, crtc_state);
> +}
> +
> +void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +		intel_mtl_tbt_pll_disable(encoder);
> +	else
> +		intel_lt_phy_pll_disable(encoder);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index 499091e04e82..15d3d680871c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -20,6 +20,9 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   			    struct intel_encoder *encoder);
>   int intel_lt_phy_calc_port_clock(struct intel_encoder *encoder,
>   				 const struct intel_crtc_state *crtc_state);
> +void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
> +			      const struct intel_crtc_state *crtc_state);
> +void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
>   
>   #define HAS_LT_PHY(display) (DISPLAY_VER(display) >= 35)
>   
