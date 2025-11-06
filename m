Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A31C39C4C
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 10:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EC9C10E83E;
	Thu,  6 Nov 2025 09:15:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2zYVWZx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B0310E142;
 Thu,  6 Nov 2025 09:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762420515; x=1793956515;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5VcC1GOKLmJqdrbl2mXf+DAoUuZgJ6dKpDS5X7YJMHY=;
 b=k2zYVWZxrg/92lqOghutDk+UL96c0fhTRmcIkiNhvEtgLyjKcDY1cj7B
 s6FIhlOmsU6i3xxU6EgZUIXt6TPVlsRV63QjnZ1EKlSP+PWTX23SlMzfS
 ZFg6IG3UwEr5t5GN2XE4qu9Rl6OQ6aU1XvF/Hg+1MGNd6B/fnEhV8DLIN
 wKxvUFWjo39D+Z0Os5DVZI4z0CQuJSHcxLLxPeLiNQqYSObMVA2+6f5+S
 G8tzpfMsfRMROe8PAFN+Djhn+KBp6qjKYPVf7IVjkeWC8+fEkk4MVrpd7
 NvjFpKU8GhTfvOBt0kDMUkQv0bSwWuignPy9Ahrya5uuvKM3pAkzYzzYG A==;
X-CSE-ConnectionGUID: ZGURH0OKSoi3R8PHkwoIMQ==
X-CSE-MsgGUID: gcR1jGF8StC9/tsZDgWoXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="68390401"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="68390401"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 01:15:14 -0800
X-CSE-ConnectionGUID: 7huTueG/SsW0Dm2MVbsdCA==
X-CSE-MsgGUID: KAvAJ6iOSE+d1ic9lEsxgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187422393"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 01:15:15 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 01:15:14 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 6 Nov 2025 01:15:14 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 6 Nov 2025 01:15:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zIE4J6qMaJVi2FBmqZJNCntf1MUxtCc3RzdnjDDs4AzoPMOtudsUmRj9BM0trZts/LQJIU6P3oKEC+mqwuzLyeXPWMlAbSuE+mqkaJCpiFjp9ZgoBqLVuE/YpCGrWx2ixxGVBQSYZK/F4y73Dw67+lR4nTMU3uXYI8CZiJNgi6zqqUF/yPdvQcLw4XP2XgHhoFQ/gNCKhFpessfOzGgyru5VCqlny20PsYv6tXZ3lFo4k+qWcVsT0L1rp/gM1YW7pvZ/I1zGi16IHa7zH3uMl59x/30UcGk7VdDc2lCHVBvrcF5hEHM+xE413nZU0csEINQk5yrWpu8BpACiitk1kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=66ompvH1LSzRlzDtqNbAjKhegIajeQcnKzVDk5gVajQ=;
 b=RstydNcs6tzf1KmcPgdTPOu92a2a3qjkIWf/ZEO4IqkETxvOVt+OAcFLH4PhiTuyVsv6UhW2MTQLB7n+ui9uwASHMWSwQgBIOYJK1PLi3fVWBoAd/Up5DVlsvGoDEuwbGNg4QisVvkGh/zpTz0fbUfij6H6dSoxb0c1KTcaP5CUtlJDv+ogCLCLKkIHlPriuhZvVs3neQhRk1Ax7Lm6/GKqbHuU8dPZJ9ouaiRfor3949CaIVNy+8H9npffKAjl7DjC65xdcXCf67/oJVYgLYidI0hL8s62GS8ioliSg793aQ5XBkg9Fxm+PpbhLFmtBmxvnjCsbzfBIPNLeaiGoyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.8; Thu, 6 Nov
 2025 09:15:11 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.013; Thu, 6 Nov 2025
 09:15:11 +0000
Message-ID: <d874dc93-c071-4fa9-be75-faa5eb1899e8@intel.com>
Date: Thu, 6 Nov 2025 14:45:04 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/ltphy: Implement HDMI Algo for Pll state
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251104093425.154941-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251104093425.154941-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0090.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5249:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a83308a-c91c-463b-791f-08de1d14fc9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2dNK21vQzE0YWF6eENYSS9oV01XQllObnBuRG9jUUgwVm1JNXJRWTFLbUVE?=
 =?utf-8?B?NWczek40S01od0t3SDRIVmc3VEorektFZTBzbXVQQmtabmZFL2xWVkZlYXFC?=
 =?utf-8?B?Rys4aTd0OEJEOURVMmRjN1FRN1JhS0FVK2NocFpYYlNEek9NU3RyR1hhOSs4?=
 =?utf-8?B?WE5yRWlmeUZtalN5enN2Mkd1bDhuR2tsQmlqT0h4L3VKY2VFZW1DTGc4Y3Jz?=
 =?utf-8?B?NnQzeEE1clFZb1NGaVdwOW1mZzJ4VUVMYnVDSDNQSW5oallWdnNaVHRnMGlD?=
 =?utf-8?B?T0tJR01YOC8zclcyWWowOHMzSXg1amkrTjNuOFo1WVdPWDB1QmlPbWxZbG9H?=
 =?utf-8?B?OEtaMEVQM1FrZWdid29pMzI5WnhlL2pSNWlFREY5bUhtNU44MmV1cXA1SklH?=
 =?utf-8?B?WGJtd1o0c0RyVndIdGRPWDMxaFNyRU5vMTNrb1ZhYWltZmNmR3dRMnVsWUZR?=
 =?utf-8?B?ZUNQNmZoeFVIQ0Q4blFsanB0eVJNa0pxYTdpT3ZXUkJwRFV6MGE3a2lybytn?=
 =?utf-8?B?VEFHUmhXSGE1VCtENEpSdnpxSHROUXBYSnNGbXRyTTNCY1hOOS8xTFE2dlUv?=
 =?utf-8?B?em1jWnlIYVFpZXZXTjlMc0dEb0ZWRFhWNGorY2FpTm1mRHJrOU5CeDhOZHFU?=
 =?utf-8?B?ZU1TbmpFL0Z6ZzJTZEk4bnR6S2FFcEpVUHM2YmZwUmVJMEM2enlVS25OSW9M?=
 =?utf-8?B?Tm9MQUFJUkNmeStmTFpNU3VoNnRuR2NlMERpWUFoZDB1QjVwYVAySTI2RGt0?=
 =?utf-8?B?NUJhaXVwY1ZZVUkvUGF1bSs5anZaeFduV09GNndDLzJlR0ZJbkhXRmJSL3Jp?=
 =?utf-8?B?cTFTOGI1YXFPTzhNbEVmVU4xSElCaUJyejBiZGIxRjd0ZUhtZE1LWXNoK21t?=
 =?utf-8?B?eGVUdC9sTTdTMFB2eGxUNENTUmw5eitUVUV5R1ViSnJJYWJZS3ppUm5jS3Nj?=
 =?utf-8?B?YkM1VTRXYnlvKzk3OHBLUVlPdW9LQ1JwWGNXMHJ3VzNvZkUvVGxta242dmVS?=
 =?utf-8?B?VEdiaHZibGZaM01MaXBuQVRTZGNwald6cVZxQnRIK0krcTE5TzFEYksvNGdC?=
 =?utf-8?B?Q0svNzZ4S0ZsZ2xmRjBKb3Y4WXROcHNpU0ZlM3FUbVFpeHNidjVJcjB4WStX?=
 =?utf-8?B?b3gxNDEzVXRZNHNjbGZ0YSt5aHdJYkRmTGRoYk5tanNHRktFak9jTXB2MnVR?=
 =?utf-8?B?S3QzUVVyeDFDNS80TEFTSE1JZmlvNEE3VUxNM0NTR29PNHVHczRJRnh6RXFw?=
 =?utf-8?B?anA4SVY2K0pnQy9TWW1RRUJHNGFPSWIraVd4dTl4ZE41ekxhV0NCdE02eHc4?=
 =?utf-8?B?blA1Sitkdno0V2NrWVJSdkRiL1pPU3VxNjhNNitLWFZmZ3F0dC8xQjdCVElM?=
 =?utf-8?B?RkRhN1FZUkZYNWZpSktjcU55dGp2SUVMdVVrYkN1ekM1QWxHK2dvazJhSHRh?=
 =?utf-8?B?cmx3TmU5NVc0SndrOTZ6ZnFxL1ZWZnppQWg5NnFuY0RwRWd0M01OUDlKZnBJ?=
 =?utf-8?B?WTJmTzJGM3gvT21sRGhqYUdIQzlwb3NvY0gvVUdQRFNGbWVZRjY0UFVWL1pz?=
 =?utf-8?B?NElNVURXdisrVk1IbXBlWkJiUkZjMXhOZjNMS1lCdUdEQ1NHWnR6SzlGYkdF?=
 =?utf-8?B?ZEEzZFVIVDhHbVhFM25Ma0ZLRFZpbVJwRDhGNHJiOVNyMDlaOFdxNm13TjMx?=
 =?utf-8?B?cWlHTE5aTEFCRmVsbzVibHFMYnNVZ0x4YjdLSVFBbE5ZWkg1K215V0NsS2xW?=
 =?utf-8?B?Y3UwN1VqVFRSZ3p2aFN4ZmlqZDdCcjlhUXJhL2RYRWN0TWt3byt4ckhMUjNn?=
 =?utf-8?B?SGp5OTN2SzhjSFBvKzhQM1JIWll5WEZnWk5EYytsMlJvdjd1NktKb0lPb2pM?=
 =?utf-8?B?VUJNc2ttRGNNOGo0TWoyWG9hWm42c1VIKzVOcFVVVVlUdjZBZm9YWXZ3RDJK?=
 =?utf-8?Q?l+KyiubHIlQFM+UaGBpxJ8Kfd62KgY/Y?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWR1b3o0NlhFVGgyMGkyUTRPdGdVZENmR21STDFJYUxwd1J3UXJDcGcvcWpn?=
 =?utf-8?B?cHYyZUJHcWd0NU5uOWxPN0dGU29ldWtiNStiU3BFUDBUUjEzSElZQW1kSXBx?=
 =?utf-8?B?UlJqclgyaUZ4OHhzWkxsNjM3R2tzb3JSWXZNOEE0V0svT080dHJXd1lXNFZC?=
 =?utf-8?B?L0FOWldtaGlCK0RLb2dJd2ZtMUM3QU9ibWxucXlJTEEzb25YMjRQYTAyME9D?=
 =?utf-8?B?Zk9pdnZ4bkpXQjZ3NitPMHU4WWRyVmxkU09OUWFvazZ5S3QvR3U0eXdlZWhG?=
 =?utf-8?B?UEVHdmFIY1pNb3dMT1VtbUd5a0g0SjZIMlBZbldiUmE0azV3TThydmNrMUV4?=
 =?utf-8?B?OFpQZUxzS2FPd3QvWUxpVGs1UTlwWW9kSUk2S1NVVW5Dd1o5MzNCczUraEpv?=
 =?utf-8?B?bUNqRzZDR3pxUXJpSmNOcEdVVk84S2tDZHlNN3RMVEx2RDlqMm9CbkRPN1Bq?=
 =?utf-8?B?Y3JCbGI4alBoWTBGSTQ2ZXVWdmFzMURyRUt5L2xndXl2Sms5b2c4cG9zSCsx?=
 =?utf-8?B?dGZlQVNXVHh0bDd2YzRMU0h5SFdqSzgrTSsvWUpJcGRYdUIzVktNZjZ1aGxU?=
 =?utf-8?B?YTZCSWJHYS9raHdZenZBUUNncUJLdjNteWM3SnBsNXM5cGxYSzJkaU13cHhF?=
 =?utf-8?B?TnphaHpDL1Y5MXAzRkdhSVFwbURUTnBiNWdhMkNXMzgxY0dQdFVWUENpL0lV?=
 =?utf-8?B?SW9jTS9ieUpEK3p1cXJkSkhkMlQzT2FjbWdRTXVWU0xFVFpJSHFrUzdZZFRm?=
 =?utf-8?B?cmprdTBSTGdIOTV2bW9pZTVWRm13UlptQ09wSzNBc1pqNWVYR3hTTXg4WDFH?=
 =?utf-8?B?dVF1WjJtay95RHdEZHZSTFhOdWRQdzhQUHl5bGVpTDFjUEp6WEtCclFEQzNR?=
 =?utf-8?B?NzB1MWpEejMrZFpKeU9nL0xzYnhjM3VXWEd3UjhmRitQZTYwUlZoKzg2N0JQ?=
 =?utf-8?B?ODNWdXo1UHFCUlEyQ3RLWlhXblNNSzVHdkVLa3NwTVc3MFBSbzE2S0ZnUFpi?=
 =?utf-8?B?NUwzZ2ZqYjhmUjhNWDJKMEttK3RSNk9xNDYrODBieWxWeDR3emJLM252a0My?=
 =?utf-8?B?SGg2RC9HcTE0NzVRM1FRejJCM1NneGtIZnJQdE5KWmZuNHdTbmh2UHFobTh2?=
 =?utf-8?B?Tk9ZN1IzZHh6Rzk4eXZZNUFDUTFncktYRFpScURmMWJ4UWsvTGFsbjMyZE1J?=
 =?utf-8?B?dkVzdWJQbFc5QmMycWN5N01yMmQ4OVRuQ1YyUlBFRk93QnlhY3ZRdGcwVzlh?=
 =?utf-8?B?R2MvNlMxUHJSaHpwR21waE5vWHF6RzJyeDVGUlM5Y3FPL0tVK3l6dzcvd3Rs?=
 =?utf-8?B?TW5rdDVwKzN3cWw5bnE2SmF0L3dzcDdXSU9iNitUbUJRd2VHTU1pWkdPRVpo?=
 =?utf-8?B?UURrdWlBN1NpU1RCYU80bEZ6Szl6czRFRTRZeTFxZnJZRkdFT3d0bGpJU3h6?=
 =?utf-8?B?UnlkS0taNWUyOU1FZjkwMzFTOG0zNGFhbW42WGQyck4vWk42MFNsczZ6Q08x?=
 =?utf-8?B?Q0dob0NPaUhGQkdJSFBFRHhDbXNlNzZWZW00ai9KUzUxQ2llaGh4ZjlCR2Zx?=
 =?utf-8?B?VkR2UitwaURYakNEQzEydEwxTHJWeUhqaFR2QWc3MkRoWnhzUkRmcjhPUFk1?=
 =?utf-8?B?YTN6OGszMXdseWN3TDN2SUx0NkNQdG40cWxDaVpKbDBoaHhodVhXUGM0d2Yx?=
 =?utf-8?B?bDVnQWlxWGV6UW5vbDRNUTBvL0VjbHM2ckdIRVZDNGh6YXp3U3BYV3JRQnYw?=
 =?utf-8?B?L05pWGUrQ2VKdU9ha3UyUjNwUGhseFMwMHpQWGNxQ2hrTHdmU1B4S29QTEZr?=
 =?utf-8?B?V0p4a25zaHYveEVTSzhLeGh1bm9NalZ2T3dTMVJDRTRSVVZ4eWU1Z0JBaGxn?=
 =?utf-8?B?TGNDTlBTYkxIZTdRckZDUFA4cFU3MVZ3Q0hOWStQWkEyYWdvUFYzTmtHR0dK?=
 =?utf-8?B?bnNJZjJFQnVUbjlWN0x4eSswR3NQd0Vpakp6blNKZW5MaFMvNzlpTW1Tc2Fk?=
 =?utf-8?B?NHJObFc1MWxZb1pwOGtTaWs0cnFvL1J2RjlQQ0JTbmhNQ1kzYjRPNVhWVy9J?=
 =?utf-8?B?WWdJQ0h2dzBvN0JYanl6N3A0SCt0dW41VUZYd3ZVcldISEZtUmpTMDJuSGcr?=
 =?utf-8?B?SERmdXVpb1FlZk1YdjBzVG5DVk5uV1hZcVpTdkRqSDZSWHorZG12Z2RmRWYv?=
 =?utf-8?B?emc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a83308a-c91c-463b-791f-08de1d14fc9c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 09:15:11.2076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9a3nxzOOxL3iK9OB1t9laIPzH66rnQXisXNuQuh3WfCInlcP/KwKdhYLQ8sD1GiAcpB0dtnUySBS6lE3J1Wavss6MPHFiJOr2/de21FgZo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
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


On 11/4/2025 3:04 PM, Suraj Kandpal wrote:
> Implement the HDMI Algorithm to dynamically create LT PHY state
> based on the port clock provided.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 324 +++++++++++++++++++-
>   drivers/gpu/drm/i915/display/intel_lt_phy.h |   3 +
>   2 files changed, 326 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index af48d6cde226..c1177b294013 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -31,6 +31,7 @@
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
>   					 INTEL_LT_PHY_LANE0)
>   #define MODE_DP				3
> +#define Q32_TO_INT(x)	((x) >> 32)
>   
>   static const struct intel_lt_phy_pll_state xe3plpd_lt_dp_rbr = {
>   	.clock = 162000,
> @@ -1356,6 +1357,323 @@ intel_lt_phy_pll_is_ssc_enabled(struct intel_crtc_state *crtc_state,
>   	return false;
>   }
>   
> +static u64 mul_q32_u32(u64 a_q32, u32 b)
> +{
> +	u64 p0, p1, carry, result;
> +	u64 x_hi = a_q32 >> 32;
> +	u64 x_lo = a_q32 & 0xFFFFFFFFULL;
> +
> +	p0 = x_lo * (u64)b;
> +	p1 = x_hi * (u64)b;
> +	carry = p0 >> 32;
> +	result = (p1 << 32) + (carry << 32) + (p0 & 0xFFFFFFFFULL);
> +
> +	return result;
> +}
> +
> +static bool
> +calculate_targe_dco_and_loop_cnt(u32 frequency_khz, u64 *target_dco_mhz, u32 *loop_cnt)
> +{
> +	u32 ppm_value = 1;
> +	u32 dco_min_freq = 11850;
> +	u32 dco_max_freq = 16200;
> +	u32 dco_min_freq_low = 10000;
> +	u32 dco_max_freq_low = 12000;


These can be macros. Atleast dco_min_freq is used in many places.

Can have something like DCO_MIN_FREQ_MHZ.
Same for refclk_khz = 38400 below.

> +	u64 val = 0;
> +	u64 refclk_khz = 38400;
> +	u64 m2div = 0;
> +	u64 val_with_frac = 0;
> +	u64 ppm = 0;
> +	u64 temp0 = 0, temp1, scale;
> +	int ppm_cnt, dco_count, y;
> +	bool found = false;
> +
> +	for (ppm_cnt = 0; ppm_cnt < 5; ppm_cnt++) {
> +		ppm_value = ppm_cnt == 2 ? 2 : 1;
> +		for (dco_count = 0; dco_count < 2; dco_count++) {
> +			if (dco_count == 1) {
> +				dco_min_freq = dco_min_freq_low;
> +				dco_max_freq = dco_max_freq_low;
> +			}
> +			for (y = 2; y <= 255; y += 2) {
> +				val = div64_u64((u64)y * frequency_khz, 200);
> +				m2div = div64_u64(((u64)(val) << 32), refclk_khz);
> +				m2div = mul_q32_u32(m2div, 500);
> +				val_with_frac = mul_q32_u32(m2div, refclk_khz);
> +				val_with_frac = div64_u64(val_with_frac, 500);
> +				temp1 = Q32_TO_INT(val_with_frac);
> +				temp0 = (temp1 > val) ? (temp1 - val) :
> +					(val - temp1);
> +				ppm = div64_u64(temp0, val);
> +				if (temp1 >= dco_min_freq &&
> +				    temp1 <= dco_max_freq &&
> +				    ppm < ppm_value) {
> +					/* Round to two places */
> +					scale = (1ULL << 32) / 100;
> +					temp0 = DIV_ROUND_UP_ULL(val_with_frac,
> +								 scale);
> +					*target_dco_mhz = temp0 * scale;
> +					*loop_cnt = y;
> +					found = true;
> +					break;

We can just return true from here, then other return statements are not 
required.


> +				}
> +			}
> +			if (found)
> +				return true;
> +		}
> +		if (found)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz)

We should return the error code here in case if something goes wrong. 
This is called from intel_lt_phy_pll_calc_state(), if we dont have a 
table and the algorithm also not able to calculate the lt_phy state, we 
should return -EINVAL.


> +{
> +#define DATA_ASSIGN(i, val)	\
> +	do {			\
> +		lt_state->data[i][0] = (u8)(((val) & 0xFF000000) >> 24); \
> +		lt_state->data[i][1] = (u8)(((val) & 0x00FF0000) >> 16); \
> +		lt_state->data[i][2] = (u8)(((val) & 0x0000FF00) >> 8); \
> +		lt_state->data[i][3] = (u8)(((val) & 0x000000FF));	\
> +	} while (0)
> +#define Q32_TO_FRAC(x)	((x) & 0xFFFFFFFF)
+#define Q32_TO_FRAC(x)    ((x) & 0xFFFFFFFF)

This can be placed with the Q32_TO_INT macro.


> +	bool found = false;
> +	u32 dco_fmin = 11850;
> +	u64 refclk_khz = 38400;
> +	u64 m2div = 0;
> +	u64 target_dco_mhz = 0;
> +	u64 tdc_fine;
> +	u64 tdc_targetcnt;
> +	u64 feedfwd_gain;
> +	u64 feedfwd_cal_en;
> +	u64 tdc_res = 30;
> +	u32 prop_coeff;
> +	u32 int_coeff;
> +	u32 ndiv = 1;
> +	u32 m1div = 1;
> +	u32 m2div_int;
> +	u32 m2div_frac;
> +	u32 frac_en;
> +	u32 settling_time = 15;
> +	u32 ana_cfg;
> +	u32 loop_cnt = 0;
> +	u32 dco_fine0_tune_2_0 = 0;
> +	u32 dco_fine1_tune_2_0 = 0;
> +	u32 dco_fine2_tune_2_0 = 0;
> +	u32 dco_fine3_tune_2_0 = 0;
> +	u32 dco_dith0_tune_2_0 = 0;
> +	u32 dco_dith1_tune_2_0 = 0;
> +	u32 gain_ctrl = 2;
> +	u32 refclk_mhz_int = 38;
> +	u32 pll_reg4 = (refclk_mhz_int << 17) +
> +		(ndiv << 9) + (1 << 4);
> +	u32 pll_bias2_addr = 0;
> +	u32 pll_bias_trim_addr = 0;
> +	u32 pll_dco_med_addr = 0;
> +	u32 pll_dco_fine_addr = 0;
> +	u32 pll_ssc_inj_addr = 0;
> +	u32 pll_surv_bonus_addr = 0;
> +	u32 pll_lf_addr = 0;
> +	u32 pll_reg3_addr = 0;
> +	u32 pll_reg4_addr = 0;
> +	u32 pll_reg57_addr = 0;
> +	u32 pll_reg5_addr = 0;
> +	u32 pll_ssc_addr = 0;
> +	u32 pll_tdc_addr = 0;
> +	u32 pll_reg3 = 0;
> +	u32 pll_reg5 = 0;
> +	u32 postdiv = 0;
> +	u32 d6_new = 0;
> +	u32 pll_reg57 = 0;
> +	u32 dco_12g = 0;
> +	u32 pll_type = 0;
> +	u32 d1 = 2;
> +	u32 d3 = 5;
> +	u32 d5 = 0;
> +	u32 d6 = 0;
> +	u32 d7;
> +	u32 d8 = 0;
> +	u32 d4 = 0;
> +	u32 lf = 0;


lets have an LT phy params struct:

struct param_t {
  u32 val;
  u32 addr;
};

struct lt_phy_params {
  struct param_t pll_reg3;
  struct param_t pll_reg4;
  struct param_t pll_reg5;
  struct param_t pll_reg57;


....
};


void
intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
                   u32 frequency_khz)
{
     struct lt_phy_params p;
     ...

}

This will help with readability and groups related data (value and 
address) together.


> +	int ssc_stepsize = 0;
> +	int ssc_steplen = 0;
> +	int ssc_steplog = 0;
> +	u32 ssc = 0;
> +	u32 lock_thr = 0;
> +	u32 unlock_thr = 0;
> +	u32 early_lock = 1;
> +	u32 true_lock = 2;
> +	u32 lock_ovr_en = 1;
> +	u32 bias_ovr_en = 1;
> +	u32 coldstart = 1;
> +	u32 ssc_en_local = 0;
> +	u64 dynctrl_ovrd_en = 0;
> +	u32 bias2 = 0;
> +	u32 tdc = 0;
> +	u32 cselmed_thr = 8;
> +	u32 cselmed_ratio = 39;
> +	u32 cselmed_dyn_adj = 0;
> +	u32 cselmed_en = 0;
> +	u32 dco_med = 0;
> +	u32 bonus_7_0 = 0;
> +	u32 surv_bonus = (bonus_7_0 << 16);
> +	u32 csel2fo = 11;
> +	u32 csel2fo_ovrd_en = 1;
> +	u32 bias_trim = (csel2fo_ovrd_en << 30) + (csel2fo << 24);
> +	u32 dco_fine = 0;
> +	u64 temp0, temp1, temp2, temp3;
> +
> +	found = calculate_targe_dco_and_loop_cnt(frequency_khz, &target_dco_mhz, &loop_cnt);
> +	if (!found)
> +		return;
> +
> +	m2div = div64_u64(target_dco_mhz, (refclk_khz * ndiv * m1div));
> +	m2div = mul_q32_u32(m2div, 1000);
> +	if (Q32_TO_INT(m2div) > 511)
> +		return;
> +
> +	m2div_int = (u32)Q32_TO_INT(m2div);
> +	m2div_frac = (u32)(Q32_TO_FRAC(m2div));
> +	frac_en = (m2div_frac > 0) ? 1 : 0;
> +
> +	if (frac_en > 0)
> +		tdc_res = 70;
> +	else
> +		tdc_res = 36;
> +	tdc_fine = tdc_res > 50 ? 1 : 0;
> +	temp0 = tdc_res * 40 * 11;
> +	temp1 = div64_u64((40000000ULL + temp0) * 500, temp0 * refclk_khz);
> +	temp2 = div64_u64(temp0 * refclk_khz, 1000);
> +	temp3 = div64_u64((80000000ULL + temp2), temp2);
> +	tdc_targetcnt = tdc_res < 50 ? (int)(temp1) : (int)(temp3);
> +	tdc_targetcnt = (refclk_khz < 25000) ? (int)(tdc_targetcnt / 4) :
> +			(refclk_khz < 50000) ? (int)(tdc_targetcnt / 2) :
> +			tdc_targetcnt;

I understand that the bspec has the nested ternary operator, and perhaps 
we want to match it, but in my opinion if-else here would be more readable:

if (refclk_khz < 25000)
     tdc_targetcnt = tdc_targetcnt / 4;
else if (refclk_khz < 50000)
     tdc_targetcnt = tdc_targetcnt / 2;
else
     tdc_targetcnt = tdc_targetcnt;


> +	temp0 = mul_q32_u32(target_dco_mhz, tdc_res);
> +	temp0 >>= 32;
> +	feedfwd_gain = (m2div_frac > 0) ? div64_u64(m1div * 10000000ULL, temp0) : 0;
Hmm... This 10000000ULL, I guess is coming from tdc_res multiplier.

The tdc_res is actually tdc_res scaled to 10000000ULL, right?

Perhaps we can define TDC_RES_MULTIPLIER to be 10000000ULL here?


> +	feedfwd_cal_en = frac_en;
> +
> +	temp0 = (u32)Q32_TO_INT(target_dco_mhz);
> +	prop_coeff = (temp0 >= dco_fmin) ? 3 : 4;
> +	int_coeff = (temp0 >= dco_fmin) ? 7 : 8;
> +	ana_cfg = (temp0 >= dco_fmin) ? 8 : 6;
> +	dco_12g = (temp0 >= dco_fmin) ? 0 : 1;
> +
> +	if (temp0 > 12960)
> +		d7 = 10;
> +	else
> +		d7 = 8;
> +
> +	d8 = loop_cnt / 2;
> +	d4 = d8 * 2;
> +
> +	/* Compute pll_reg3,5,57 & lf */
> +	pll_reg3 = (u32)((d4 << 21) + (d3 << 18) + (d1 << 15) + (m2div_int << 5));
> +	pll_reg5 = m2div_frac;
> +	postdiv = (d5 == 0) ? 9 : d5;
> +	d6_new = (d6 == 0) ? 40 : d6;
> +	pll_reg57 = (d7 << 24) + (postdiv << 15) + (d8 << 7) + d6_new;
> +	lf = (u32)((frac_en << 31) + (1 << 30) + (frac_en << 29) +
> +		   (feedfwd_cal_en << 28) + (tdc_fine << 27) +
> +		   (gain_ctrl << 24) + (feedfwd_gain << 16) +
> +		   (int_coeff << 12) + (prop_coeff << 8) + tdc_targetcnt);
> +
> +	/* Compute ssc / bias2 */
> +	ssc = (1 << 31) + (ana_cfg << 24) + (ssc_steplog << 16) +
> +		(ssc_stepsize << 8) + ssc_steplen;
> +	bias2 = (u32)((dynctrl_ovrd_en << 31) + (ssc_en_local << 30) +
> +		      (1 << 23) + (1 << 24) + (32 << 16) + (1 << 8));
> +
> +	lock_thr = tdc_fine ? 3 : 5;
> +	unlock_thr = tdc_fine ? 5 : 11;
> +
> +	/* Compute tdc/dco_med */
> +	tdc = (u32)((2 << 30) + (settling_time << 16) + (bias_ovr_en << 15) +
> +		    (lock_ovr_en << 14) + (coldstart << 12) + (true_lock << 10) +
> +		    (early_lock << 8) + (unlock_thr << 4) + lock_thr);
> +
> +	dco_med = (cselmed_en << 31) + (cselmed_dyn_adj << 30) +
> +		(cselmed_ratio << 24) + (cselmed_thr << 21);
> +
> +	/* Compute dcofine */
> +	dco_fine0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_fine1_tune_2_0 = 2;
> +	dco_fine2_tune_2_0 = dco_12g ? 2 : 1;
> +	dco_fine3_tune_2_0 = 5;
> +	dco_dith0_tune_2_0 = dco_12g ? 4 : 3;
> +	dco_dith1_tune_2_0 = 2;
> +
> +	dco_fine = (dco_dith1_tune_2_0 << 19)
> +		+ (dco_dith0_tune_2_0 << 16)
> +		+ (dco_fine3_tune_2_0 << 11)
> +		+ (dco_fine2_tune_2_0 << 8)
> +		+ (dco_fine1_tune_2_0 << 3)
> +		+ dco_fine0_tune_2_0;
> +
> +	pll_type = ((frequency_khz == 10000) || (frequency_khz == 20000) ||
> +		    (frequency_khz == 2500) || (dco_12g == 1)) ? 0 : 1;
> +
> +	pll_reg4_addr = pll_type ? 0x8710 : 0x8510;
> +	pll_reg3_addr = pll_type ? 0x870C : 0x84F8;

This should be 0x850C instead of 0x84F8.


> +	pll_reg5_addr = pll_type ? 0x8714 : 0x8514;
> +	pll_reg57_addr = pll_type ? 0x87E4 : 0x85E4;
> +	pll_lf_addr = pll_type ? 0x880C : 0x860C;
> +	pll_tdc_addr = pll_type ? 0x8810 : 0x8610;
> +	pll_ssc_addr = pll_type ? 0x8814 : 0x8614;
> +	pll_bias2_addr = pll_type ? 0x8818 : 0x8618;
> +	pll_bias_trim_addr = pll_type ? 0x8848 : 0x8648;
> +	pll_dco_med_addr = pll_type ? 0x8840 : 0x8640;
> +	pll_dco_fine_addr = pll_type ? 0x884C : 0x864C;
> +	pll_ssc_inj_addr = pll_type ? 0x8824 : 0x8624;
> +	pll_surv_bonus_addr = pll_type ? 0x8844 : 0x8644;

We can see that the addresses offsets are 0x200 far apart which we can use.

Use macros for REG address, we can add them in lt_phy_regs.h

#define PLL_REG4_ADDR            0x8510
#define PLL_REG3_ADDR            0x850C
....
#define PLL_TYPE_OFFSET            0x200
#define    PLL_REG_ADDR(base, pll_type) ((pll_type) ? base + 
PLL_TYPE_OFFSET : base)))


Then we can use something like:
static void set_address(struct lt_phy_params *p, int pll_type)
{
     p->pll_reg4.addr = PLL_REG_ADDR(PLL_REG_4_ADDR, pll_type);
     p->pll_reg3.addr = PLL_REG_ADDR(PLL_REG_3_ADDR, pll_type);
...
}



> +
> +	lt_state->config[0] = 0x84;
> +	lt_state->config[1] = 0x2d;
> +	lt_state->addr_msb[0] = (pll_reg4_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[0] = pll_reg4_addr & 0xFF;
> +	lt_state->addr_msb[1] = (pll_reg3_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[1] = pll_reg3_addr & 0xFF;
> +	lt_state->addr_msb[2] = (pll_reg5_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[2] = pll_reg5_addr & 0xFF;
> +	lt_state->addr_msb[3] = (pll_reg57_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[3] = pll_reg57_addr & 0xFF;
> +	lt_state->addr_msb[4] = (pll_lf_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[4] = pll_lf_addr & 0xFF;
> +	lt_state->addr_msb[5] = (pll_tdc_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[5] = pll_tdc_addr & 0xFF;
> +	lt_state->addr_msb[6] = (pll_ssc_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[6] = pll_ssc_addr & 0xFF;
> +	lt_state->addr_msb[7] = (pll_bias2_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[7] = pll_bias2_addr & 0xFF;
> +	lt_state->addr_msb[8] = (pll_bias_trim_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[8] = pll_bias_trim_addr & 0xFF;
> +	lt_state->addr_msb[9] = (pll_dco_med_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[9] = pll_dco_med_addr & 0xFF;
> +	lt_state->addr_msb[10] = (pll_dco_fine_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[10] = pll_dco_fine_addr & 0xFF;
> +	lt_state->addr_msb[11] = (pll_ssc_inj_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[11] = pll_ssc_inj_addr & 0xFF;
> +	lt_state->addr_msb[12] = (pll_surv_bonus_addr >> 8) & 0xFF;
> +	lt_state->addr_lsb[12] = pll_surv_bonus_addr & 0xFF;

With the mentioned new struct this will become:

#define ADDR_ASSIGN(i, pll_reg)
     lt_state->addr_msb[i] = ((pll_reg).addr >> 8) & 0xFF;
     lt_state->addr_lsb[i] = (pll_reg).addr & 0xFF;


ADDR_ASSIGN(0, p.pll_reg4);
ADDR_ASSIGN(1, p.pll_reg3);
ADDR_ASSIGN(2, p.pll_reg5);
ADDR_ASSIGN(3, p.pll_reg57);
...
ADDR_ASSIGN(12, p.surv_bonus);


> +	DATA_ASSIGN(0, pll_reg4);
> +	DATA_ASSIGN(1, pll_reg3);
> +	DATA_ASSIGN(2, pll_reg5);
> +	DATA_ASSIGN(3, pll_reg57);
> +	DATA_ASSIGN(4, lf);
> +	DATA_ASSIGN(5, tdc);
> +	DATA_ASSIGN(6, ssc);
> +	DATA_ASSIGN(7, bias2);
> +	DATA_ASSIGN(8, bias_trim);
> +	DATA_ASSIGN(9, dco_med);
> +	DATA_ASSIGN(10, dco_fine);
> +	DATA_ASSIGN(11, 0);

DATA_ASSIGN(0, p.pll_reg4);

DATA_ASSIGN(1, p.pll_reg4);


> +	DATA_ASSIGN(12, surv_bonus);
> +}
> +
>   static int
>   intel_lt_phy_calc_hdmi_port_clock(const struct intel_lt_phy_pll_state *lt_state)
>   {
> @@ -1472,7 +1790,11 @@ intel_lt_phy_pll_calc_state(struct intel_crtc_state *crtc_state,
>   		}
>   	}
>   
> -	/* TODO: Add a function to compute the data for HDMI TMDS*/
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		intel_lt_phy_calculate_hdmi_state(&crtc_state->dpll_hw_state.ltpll,
> +						  crtc_state->port_clock);

As mentioned earlier, we should return -EINVAL if this fails.


Regards,

Ankit

> +		return 0;
> +	}
>   
>   	return -EINVAL;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index a538d4c69210..1693e9f2bc6c 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -35,6 +35,9 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
>   				       struct intel_lt_phy_pll_state *pll_state);
>   void intel_lt_phy_pll_state_verify(struct intel_atomic_state *state,
>   				   struct intel_crtc *crtc);
> +void
> +intel_lt_phy_calculate_hdmi_state(struct intel_lt_phy_pll_state *lt_state,
> +				  u32 frequency_khz);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
