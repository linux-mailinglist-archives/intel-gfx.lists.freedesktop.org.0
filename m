Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D3CABD329
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E2610E2CC;
	Tue, 20 May 2025 09:19:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KxeNI1Tx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402A210E07C;
 Tue, 20 May 2025 09:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747732776; x=1779268776;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=N+15nyPRwF5YvecGwlhG2+YKk+6LEFWdZBRoyXCWt3c=;
 b=KxeNI1Tx4y4VLk3CrPTYCD9dyj37tkaUmuHFV83gDIO4OsVidku86UWm
 JxdigUWPJNt6NPDVlc/on63PEnUvTWrblAl1tAp36+aVfeTNbr7PHM4n2
 jPhatCxZ1agxwMWlEwBz3B4oAQnuDT9QyIQMukeMPiaCJtVUd4/6fhV7Y
 dO/SISl5reXAkedrO7D3Z9k7jwxdoqr70t+dLWhd8Mh/gCze7LFo7zx7v
 RrlWmOFNb0Pz+Yx7+bqap59BGBuF/38Ucdftb+OThp2mwHe+zCe5PeyKm
 IiP4QHe8CZp7pPaXa+vyXM8R5XuwO8hYOiUAC9FT3PEUltP6yCK/JdJGS g==;
X-CSE-ConnectionGUID: rWVjqGAIR2q8xRpoEzFeiQ==
X-CSE-MsgGUID: FGKRfPPmSoqdpZlKCxQw/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="67065033"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="67065033"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:19:34 -0700
X-CSE-ConnectionGUID: JyutczxsR7ewGIGRNXoOgA==
X-CSE-MsgGUID: B+WGnOv+TnWNjXFYjXUEEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="139358236"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:19:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:19:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:19:33 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IeFkHt8BH8zaRR2apPs5UyYHsFvyAmOgBZtD1ia3UlD9GtCe1tP+3u92x0hzs4GwSSi0083m8kt200zSJygLCpuY5/zIBLJgvoksJc1arc/kUGaXvWaUUYDjOWh/bR4hQxSO4HwQlIPirO0tHX0CkhPapnScvnc6oq47mB6R7LNkjiH6nvmsNIbhFTpQfeb/afmhb2D5/6e7l6zlXcGybV8MYHjpPXu/Bd4UgA5lgOvDVGPakt/NDfGXzI5pjx0uMa5CKF03LbCgpdeS9lN7jO2agc3CoYwp0pgHpabVEy30J19V3V2RZDXqP+o8lePyhCVodm+vzqLNY3OSlSadgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0jV8IZ65ciC9R+fwpCV2sPQkH0Ur4cCjA5b516Mu+iY=;
 b=QNAVBanlySSACYVj385gtjy7kUX1hviXQR+Hpc6MO5cC0l15FCrDVwyS1S4uSmYQl0StN+yveIyum69j/Mo2cEg1QfF/aMmB8NcKEzhGSf++f45sY1l/nwzqh23B4ofAuO1u75Mp0nEeQIrIkFPvUInTqBcPqNghCncEIM8xwXzkQW1UPQ0MJCeAXUfN7YZuKHQr5X7c4gjvBAi4PQOEPjaGzdSLiBs38cGtU/wXfQamgpAWZAg/gXnVTlTGXdZ8a/1HjqjcTMVwYbAnhwEY34AiZMSreZT1m5KC3lT0hAXWXfe+PAw7HNTV3sMVzxj0y0ZhD8BkM7jTgD3pogi4pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6890.namprd11.prod.outlook.com (2603:10b6:930:5d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Tue, 20 May
 2025 09:19:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:19:18 +0000
Message-ID: <eed933f2-257b-4b19-a1b9-e083b6f28b22@intel.com>
Date: Tue, 20 May 2025 14:49:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/11] drm/i915/psr: Add interface to check if AUXLess
 ALPM is needed by PSR
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-6-jouni.hogander@intel.com>
 <9b6b80a9-37c3-4c12-a857-84bd9107ee9a@intel.com>
Content-Language: en-US
In-Reply-To: <9b6b80a9-37c3-4c12-a857-84bd9107ee9a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6890:EE_
X-MS-Office365-Filtering-Correlation-Id: b70b1e79-c306-442c-7fc1-08dd977f65cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mnl4UlhOMEZoVUpFVUVBQXpYZ0JRWEJYZm5XR1Q4R3Y2eEEzdmtGUThET1RT?=
 =?utf-8?B?a25mQXZtQ1FRUHJpaDV6RzZ4UG90R081WWx6MkV6ZUYvRjlJa3BQdXBUZkdC?=
 =?utf-8?B?SjgxUHYxeXhaTEFxaU0vcDA4eU1CRGZPUkxYV1RITzROc0UvTUhUYkhTSzM2?=
 =?utf-8?B?cGNnTFZ4aHc1c1I1NzhRNko1RGNVMUU3bWdsbVJ0M280eXBuNjBla01xUVVj?=
 =?utf-8?B?YXpSN0dLYTl3djg4bEZUd1IzY2dCaysxSEVVcjdzVjhmUlhjWEhIQXNGMGZh?=
 =?utf-8?B?dGpwM3h4T1JCamhFaWd5aWJQRVo2V2VyTXBMQWRoN0d6dkJRQ0xueGN4NVg2?=
 =?utf-8?B?dnJwOGtYbldrcU9XZEpGWTdrZ09GdCtTNlh0U0MrUFMxalovaHVaLytrUWxY?=
 =?utf-8?B?ZDFEcTN3Q1EybUsrV2ZRVVFjaHA3UENUSzlyUzJURDBSQ0tnTXdsTXJJaGp2?=
 =?utf-8?B?QmxCU2ZDTUMzSmdzRGQ2QndGdHF6WDhucUIwNzhreUwrK0ZHUFRvWnBERTlE?=
 =?utf-8?B?eTFHYWI3dDVHOFlLSTZrUTdLSWVHVHUvU2Jkd2xPbkI1VE5HZ0NCckpSVHVJ?=
 =?utf-8?B?VVdFc25YSkxLVWxQbDBTK3BWeGMyUzRzSnpFS3FKeVByeWFMMVdnWTcwTHlL?=
 =?utf-8?B?eHVDQjhKalRhR2tNMGlCUzM5eXlVQmcydVoxMDc0SjVzaUc4SlBPNGU2Z3Bs?=
 =?utf-8?B?ejd3QlY5MjdmNnBWTm8vYzFXa210RTd1L1VmbEtCTUNqRHlCZ1JNWDZtVzF4?=
 =?utf-8?B?UnYzeDlPWTEwOE1oRjNseE9iZ21UVXU5Y2RKb1ZpOGU5L1QycWNFaWZVZ2tE?=
 =?utf-8?B?ZjFQbXIzSVNnOGxCS3FnbDBsamZSR3ZLcS8yMG1rRkpsTGVuNWtnVFgyMHM1?=
 =?utf-8?B?OFhLM2lnWXRXWFc5V2hqdGNpT3FNZENPSUdBdHdkUGwxbW94bFRGcnd4V0Jl?=
 =?utf-8?B?SEprUzY5K25BSENDTHZLdFJ4MTErNkgwMEtuWmRoeFJWaldSaFhnbXNQMyt1?=
 =?utf-8?B?OU0wcHozRVNLdTAxazdTc0k1Qm1ZSUE3TXFwRTkrTmNuWis1Q1NtRzJNWWx6?=
 =?utf-8?B?R1lGTHppTmtNSUJObklaV1dmMFJxdWpJYlVtOTJuSU95YjZGMDVyZFM5dzha?=
 =?utf-8?B?bm01ZXRsazBCZldoYlM1SVhMeWtjY0tDc1I5amNoWUpUVXZKNVZNdmpRZEFD?=
 =?utf-8?B?N3NvQ1lKc3RqUWo0MkF1bUxFMisrR0pNOHRwNGR5R1RBbHJQS25BcmM1ZFZt?=
 =?utf-8?B?TThwS1E2ZVpMTHhleUhXSDdGdGdrbmNOTHNFeGU5a2lwd1NwTy9jTE1vdlJN?=
 =?utf-8?B?S1A5dEFJeEM3U3kwRzFTeE0zbnM1aS96b3dlOVFIWnBvK1R1NE1qQW4zbzVp?=
 =?utf-8?B?L0pUcUNRWlFCSjdyNlBmbXBQSDlYNmU2Y0VRWFdHOGQwczZjZDVITS93eDJP?=
 =?utf-8?B?UDVHaXQyOXdUSVNFNDQwTHZZOHpIeU44eFZWWGUzWU44Y2VoWmNHMFZQRGFD?=
 =?utf-8?B?MHdUMEp5QWxvNCtkTzlPZFB2bXNCcDNLaXc0ZUNCSGJ3MUwvYlFNQk5JdnNl?=
 =?utf-8?B?N1Y2VjVVZE1XK1NUU3B5cDc1ZEhXUVZUY21BQ2FRTmkwbzIybHlXSjF0RERn?=
 =?utf-8?B?bTZ1dVROYlZOSWVzNGZLTDV6aHpraE1GUVJMZWoyK3VMQmtRVzNpUnExQ3dN?=
 =?utf-8?B?RFV0Q29HYkozbUtHSG1OL2R3U3RuUE9ad0dNd0NQV2dFZnFKenRhenpWMHM4?=
 =?utf-8?B?K0VSZGlXTUxFdWY4bEpvNWtEbnhrSG1vUjlkMzgxQ1o3SHgvMTA2bEFCN1Iy?=
 =?utf-8?B?MVhBTFU4VkFvQm12NVR6d1FvQ25BREpLNVdicko0RzhkdWcySkJzN2NNbzZG?=
 =?utf-8?B?UHFlSllVMzZKNVpsOXFSVHZnMDZKYmhPT2JwNFRjUldwSFR4Y2p1ZWw3VEVj?=
 =?utf-8?Q?avMjLIOlLwI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnNOMGg2SnpuOUxTVnR3MHJQaVYreG9FNFU4YzFGcVNZYVlYZ2xUcG1PcHM5?=
 =?utf-8?B?WUlKdmFXa0c1eWZybXVFUEp2WGZIYlJ2aFJDbEh4aDhVUm81RTBLdUZsNHVJ?=
 =?utf-8?B?OS9BZS9tZEQ4cytTRnd0SUVrdTdpU1A4emtvQnlEcXp0MDRVdzhFUERaVkdz?=
 =?utf-8?B?d0xNeGdjTTVnOHBWeTk2aVlMQUMyT09JdUUyWXZJZW9UelA0WGpJRU8wNWNw?=
 =?utf-8?B?clp5REJNMG9HUmowejFjcExzSTdMdlp6bUpvcVBzU0Q3MEZrYU0vWnRoYXpk?=
 =?utf-8?B?WEZDbFZaZ1RCTkt4czBzbHRwS0hCOVpVWnNXWVpZZGNydGthNGVwVUpVT3E5?=
 =?utf-8?B?MlEyOXZFMHMyK3VZbjQvb0VhSHNzNUgySEhTNXNNOFh2VXJJcGQ0dlpuYTFk?=
 =?utf-8?B?ZW15eWN6eHdQNXdUdDZCeXBPQUM3bGphMjNPZFR5WFQxKzBYSHVXY2hwbkR6?=
 =?utf-8?B?NWN1aDZONFBnREErbzBNdVpoa3QwTkhVaUdSR21ReHBqOFRnN0tmTDFraW5L?=
 =?utf-8?B?TWgrQ3RaT09Zc0hrRlJLU0kwaHZybGx0Q3piL0ZwY0JmcnJreTV3Uk9UVys5?=
 =?utf-8?B?VHRhTk04Zk9uLzh6ZG0ybGFnTFpybXpPN3BheExjWTd0MytpR2Q0a1B0bnVk?=
 =?utf-8?B?dHF3T2F5ZVhhZnA1ZlUvQ3B6UGEzQndVV1prRisrNGZ2YzA1aDhJdmNNZ2Qy?=
 =?utf-8?B?cWwvOE5sN2xLS3lNVnluVTRBR2hWT2JVbWR5ZjI1VWRmQXByUGJLNmdMaFlR?=
 =?utf-8?B?STNxUDBsVTF3WlJuTW1BNDlNdUNVUXJITDU5Z2FzTitiMjhJdWYrd1BkMG9Z?=
 =?utf-8?B?RHpDS21QbnMzRk9kc2JIbGk5Um9iM0dIaFhSVGtEdjg3bEY4TWhBdUV1amNO?=
 =?utf-8?B?UVJOMUFCS1RLYjhXcU1GOVltYTFuWVRSZWZEKzU4TTBML0paR3Nlb3VhZ3B3?=
 =?utf-8?B?N2drUDVkMTlydWpFcUZSV08zb3JyS2VHQkkwU0ZUVzZzR2xtL3J1ZWhxbTRo?=
 =?utf-8?B?dkw3L3VsODVRZkxHSm5FSlZGZFJXT2tJbmxhdzQ1bytqcENNWDZrdnI5RlFB?=
 =?utf-8?B?N0JpYnc4Z0FBaXp2R29kVlZrb3B2NzlkZU4wQXlPdDZsZEtzVXpBUEtGMW9x?=
 =?utf-8?B?OWtoV1ZlVXNhREs3Y21RY2pRNllERjJ2NnBHSHUwb1AyNUZuVWR4NG56VkY2?=
 =?utf-8?B?MlV0L0JsNmtyd0JsUDNySU5haU9LdklXK2k5aTlDY1BZOW5acE1HS0tMVDE2?=
 =?utf-8?B?L1hjcUNVcjFCT1pSNTh5Q0JlN3BZQU9GMUExN2xxVUJlR3hzM28wM2Z2bGNO?=
 =?utf-8?B?WmN3aDhFQkdMK1dLQndsK2lkbjZwWFZtY2w2UFpDS1c1RGNHZlo1V0MvS3cx?=
 =?utf-8?B?ejNlQmF0OUZnY0YrSGRvbzZvUjN4dmpJTVozWnFrSUg4U1hzcXhJLzlqZU4z?=
 =?utf-8?B?c1BlUlcvOU1TUTV2bElEd1hjaDdWZUZtdGdLMUFQcndxTGt0ejNVeXppMHJO?=
 =?utf-8?B?Qy8zZGN2NWdPWVJPbUluMUdPNVdwV0J2WlVnMC9LMUFlUjcyYU56OXdFTmdN?=
 =?utf-8?B?ZzA4RkV6L3ZRTEJLWmNDU0QyYkh1blVhc0RpbHhDNi9haE10NDVQMlBFckR5?=
 =?utf-8?B?S2xMQnQ0ZXdSaDhySnIyS01ZbnNUR3krZGJ1T1JJK3REV2FJRmc4SXNGY0hV?=
 =?utf-8?B?WnlxMjVaRkdVb2xpc3JYalVrbWFrdDczVjlhVmV6TExaT0NkNDRtNGVIQWYy?=
 =?utf-8?B?bnJaRFBMUk1Hcy9FYktjNnFFV3RYVVhVQzFjZXRKaitkaGZoSlVwbzhHQ3Z5?=
 =?utf-8?B?WlR0Nkw1MmRnckEvNDlCWHFwa2VYWlFyNHdYYjV4TC9aL2JEMWJ4dnErMkw0?=
 =?utf-8?B?UGlHQUdNOGh1QjNuLzJzQ0o2elZoUzVXV0RKemJWUjNiSmhRRW5McXd1SjF3?=
 =?utf-8?B?NDBkcjlvcDdRV2ltd1lFeDMxakNmYllNZFBDM1k1Zy9sNWsxTEZNblVZQUpB?=
 =?utf-8?B?UXRFNTBRNWE4UC9GS1Z4d1Zzak4xQjNrWFZOWThXclRkcDJsK0FhS0dtc0pz?=
 =?utf-8?B?YWV6S2JEYm4vaVdDQnhYY29DUjgzVEVrQ01Mc0REeWNDLytaOFhVYUw5RTJY?=
 =?utf-8?B?eEJNc0t2YkpnKzQ3cVFtT1pRNkZVbHA5Vi91dnlzaWdwcDhQV3h6dFdnclNH?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b70b1e79-c306-442c-7fc1-08dd977f65cb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:19:18.4299 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/Vw/P49tK1UY/mo9l/ZMIWF6RBzxxw/JfkhnV5JucL+kiTJG+aVqRIR/zXg1mnbQJR5zLQobkrJCKFUPYNirtE6Qz8aNZbSc2aRaHl94pw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6890
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


On 5/20/2025 2:22 PM, Nautiyal, Ankit K wrote:
>
> On 5/2/2025 2:28 PM, Jouni Högander wrote:
>> Currently we spread ugly PSR details into ALPM code to check if AUXLess
>> ALPM is needed. Prepare to hide these details to PSR code by adding new
>> interface for checking if AUXLess ALPM is needed.
>>
>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_psr.c | 14 ++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_psr.h |  2 ++
>>   2 files changed, 16 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c 
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 2d78d64b8db8d..8d8fe1c34479d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -4227,3 +4227,17 @@ bool intel_psr_needs_alpm(struct intel_dp 
>> *intel_dp, const struct intel_crtc_sta
>>       return intel_dp_is_edp(intel_dp) && (crtc_state->has_sel_update ||
>>                            crtc_state->has_panel_replay);
>>   }
>> +
>> +/**
>> + * intel_psr_needs_alpm_aux_less - Check if PSR needs ALPM AUXLess
>> + * @intel_dp: Intel DP
>> + * @crtc_state: CRTC status
>
> I think you mean crtc state.
>
>
>> + *
>> + * This returns true if PSR needs AUXLess ALPM. I.e. if it's Panel 
>> Replay in
>> + * eDP.
>
> Lets use `Return:` as per kernel docs.

Or we can just drop the kernel doc comments, and have regular comments 
for smaller helpers like this.

Same for the subsequent patches.

Regards,

Ankit

>
> Patch LGTM.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>
>> + */
>> +bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>> +                   const struct intel_crtc_state *crtc_state)
>> +{
>> +    return intel_dp_is_edp(intel_dp) && crtc_state->has_panel_replay;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h 
>> b/drivers/gpu/drm/i915/display/intel_psr.h
>> index 73c3fa40844bc..0cf53184f13f9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>> @@ -77,5 +77,7 @@ int intel_psr_min_vblank_delay(const struct 
>> intel_crtc_state *crtc_state);
>>   void intel_psr_connector_debugfs_add(struct intel_connector 
>> *connector);
>>   void intel_psr_debugfs_register(struct intel_display *display);
>>   bool intel_psr_needs_alpm(struct intel_dp *intel_dp, const struct 
>> intel_crtc_state *crtc_state);
>> +bool intel_psr_needs_alpm_aux_less(struct intel_dp *intel_dp,
>> +                   const struct intel_crtc_state *crtc_state);
>>     #endif /* __INTEL_PSR_H__ */
