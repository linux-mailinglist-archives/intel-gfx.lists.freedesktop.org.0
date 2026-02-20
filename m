Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YbxGKKfql2lz+AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:01:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE314164B67
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 06:01:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 606DC10E77F;
	Fri, 20 Feb 2026 05:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eeJCPPI4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A51910E14E;
 Fri, 20 Feb 2026 05:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771563682; x=1803099682;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aqkt9vEMwPmPzxvhYuqeFI2CIUeSnFQNI5cG/r4+Ic8=;
 b=eeJCPPI4+IKCoBewNgEjrsZn++YUONp9zjI0QsQ9SXxN7dJzoEzX6uPh
 gbPjsrDgqAJC2HweWleR/4KhmH01ZQWySQezjmakLjGNsNGjlR3uCeyrz
 bGvyuTTff/0O2h+sMOaPfoWahZf8x5KdA2vv+WOTYef84Yv1tG4SbFqqb
 qEdNKk/GmzXcGyIhP/8s0F84aci6UMEBXJk1HHRODSWXAvoEx+t+2dsaw
 9mF2bJfNoYFrYvqrlGH1key9dyrsZCbkRbvSarh9teXNqdMuhFdVMmxSc
 dB60AK+N7VhQ8UG5KqcU3O1GXViVD0ADlb8zmKOQjuK2v4U+f6pK8zHip g==;
X-CSE-ConnectionGUID: L85jkcnbS4+RRmzKDkkc2A==
X-CSE-MsgGUID: gg1B1/sQTJGR+iG+ySocXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="98122523"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="98122523"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:01:22 -0800
X-CSE-ConnectionGUID: hWTDoMSqTl61XEMWCBKy9Q==
X-CSE-MsgGUID: xB3bFT9NRCG4UJNSK8X8OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="237734647"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 21:01:22 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 21:01:21 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 21:01:21 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 21:01:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=shnRdc3D7r+EU9M71V7y26r921nj3TjSUgbrQxuW2RO/Pp9BE9kkS3zDDUljQod/5LflZqqC1mk+AylwmR6ZWASQDvfRV4pAF8k0zN890pz+Jt3Uc2CcFCGdZsZgGfRK6n+RP6khvmNovlM9wPvjZSedG7Z/g29R3BQOVA4Y+K+8qVmi2ZuxpM7pyI5rPc6mE1B4EIKzPYllOesVtyWfSW1G/vF3RhTFJm1PeN97Q/0BqjeJwp0zUfsKTrzSUWPQJHAb2PmeQDCZR329+054QVpbsbmcitoPzMo3IcMO+IizuZ+LVHh+kISs294J7ne3l6pwaH4bzXNZ/nS/mxaisA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+6d9RHLZvs34bVE0vnY/nHqY7esmsIsKAHgoObUwDVg=;
 b=Lp4Z6PpbVPIMTUH46P/mps8083zyaBVhFuy5vpWQhyU2chV2Ag8LFUR5cRAc7vYe8vghrbZOxSWf6i6kF3ULJZn4BTzzDGGnYUgI6E7dq24smfiqKDXEn8H1DfoSnF2MXF/KE5VDqcHqiGzzuPu1CsFbs7h3etMxODm6+AQW4lttauMDQq/xIXn7i2UQ30Vs4my23xXb8WTl3Q+hqkMC91xWCaOTO/EZKf7rR4Fg67vkRw4WdsvIF7TQRdBu4+EQRjHQBPPP5qBT5FQFTvDkEW5CCHUGZUs34TgKvKIQloYD5Zc7CcGZ2izypZWUT2GwtRSwsCTlGEWLBaFU0SBqeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7302.namprd11.prod.outlook.com (2603:10b6:8:109::22)
 by MW4PR11MB7032.namprd11.prod.outlook.com (2603:10b6:303:227::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.16; Fri, 20 Feb
 2026 05:01:17 +0000
Received: from DM4PR11MB7302.namprd11.prod.outlook.com
 ([fe80::ffaf:3032:f165:e4c]) by DM4PR11MB7302.namprd11.prod.outlook.com
 ([fe80::ffaf:3032:f165:e4c%5]) with mapi id 15.20.9632.015; Fri, 20 Feb 2026
 05:01:17 +0000
Message-ID: <04797a87-79f5-445d-9dd8-4a798292156f@intel.com>
Date: Fri, 20 Feb 2026 10:31:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: On DPCD init/caps wake the DPRx
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <suraj.kandpal@intel.com>
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
 <aZcj08k5dG4lxRNE@intel.com> <2f2a155d-3b2c-4cf9-b8cd-8116fe84f85a@intel.com>
 <aZfQzqdS0koZQVwg@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <aZfQzqdS0koZQVwg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0237.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b1::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7302:EE_|MW4PR11MB7032:EE_
X-MS-Office365-Filtering-Correlation-Id: d7bd9c9c-626b-4676-efe4-08de703d142e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NllDRzJudm1pTlh4ekplS3BQN0dXQU9ETHNKN0N2UUhnTUNiTm9yQW40OEYr?=
 =?utf-8?B?ZmZrdTJKOHpKYUlQZmszb04xRFhZQmlXZkpjM1lvMTI2Mkc3RER0TWZ3ZUNk?=
 =?utf-8?B?VzRoSzc3YjcreFFRMUtuWU9qYlA2bUJGUDFnc2FzZW1zNkM3UTFqT205UjQw?=
 =?utf-8?B?RkFQVE9lTjI2cDFObHZNcVhPTUtGRDg0WUdIOU9rMmMrMDdFNU53R1R4YmRI?=
 =?utf-8?B?Q21ZelNETG5XSmpLQkpzY056VUdhNXdGbXQ5ckFpTWtnUjA3MTRpZEREbjVN?=
 =?utf-8?B?a3h0K3czbjgvVnQ4K25Yc3ovTTU0Z0dGdExJS0JtQllpQ0NyY1N3Y1RjaVI3?=
 =?utf-8?B?UXR6WFV3Yzg1b0o5c0hTSXZxeGNSL1RqOFZNTEpud3VYN3FDbytkRHNsbm02?=
 =?utf-8?B?SmtVTUQ1RlFGZVJJMnV6cVZyYWRaUVpoeXllQnVZdE12UGpVempZUlRyVDFL?=
 =?utf-8?B?Z0ppYUxUbmJ5UWNBY0hhTzhKS3FaN3Y1RW5oS25ocDhQaEgzQ3dMeDlvUkJo?=
 =?utf-8?B?TE1DY2ZBRWRIcXZtVE04ZnhuYnpqUUFwbFo1aENuMGlIWDVNK2V6UUFwRk56?=
 =?utf-8?B?Ykg4aE90dnRjMTllMzBXYlpvUEpDU1ljWnptd3gvSHJoaUpuMFFoZE1yY1Mr?=
 =?utf-8?B?NksrWEgvZk5jTE1GK3BFQWt0dDFzT2NCODZneEh5ay93U1k0MklmRFBQUGpT?=
 =?utf-8?B?TzVCSkhWZDVra1pVanFsdmY2TmRPdTRjWUlnY1krRU4rZ3U1ekY1eWdLaVhi?=
 =?utf-8?B?N2FZU0dIeGY0SlU0SlU4c0lod1pqOWlKTFAwQXBZMXlNSWkxaU5WQWpGc0Fo?=
 =?utf-8?B?Ti8xa1hGUDkrODY0RDczazM4dndwYWNiVmlNV0RTeG14RDVvakpiZXRqSjQr?=
 =?utf-8?B?TlpTblZ6MFlobWE3WU52RDFpWUxlZzQ3N3hqMWIxVXpIUU91NzhXbEJkWFlN?=
 =?utf-8?B?NFNxNmdoMHhqNmtaL1FQOXkrNGVsTG8yQmZKUWZjdzF2ZFFyUmJDQTRnUzdK?=
 =?utf-8?B?YU1yYXJlcWo4N2JDOE83QVlHN0d2S0x0SUltaW5MSlhjSlJ1U3VQL2pXMXRp?=
 =?utf-8?B?VktOU3JzeDVuWi9mbkZSZnFiUFp4dFgrZFVhbzZob0JaYUVFd2VDOVoxb3ZH?=
 =?utf-8?B?UHorUktUaWxxRld1MHBBSE1WRGgzWndZd0dieHdCV0ZPa1BZdUl3NHkvMm1m?=
 =?utf-8?B?dlhESWVrZzBMUUgyYkg0MTJ2VjFGS0ZKWGFGdDRIM0V4Nkt4Znl5NWpoaTZl?=
 =?utf-8?B?ZjNEaFp6ME9xdVBlNlgvUUsvWk9KSVh6cE0zTTB2UUhabWwrM0pxUWx6MTlo?=
 =?utf-8?B?SkNCOGFOSk91NHQvcU1TcSs2d0taa2R5U1A4SDJzU2o3LzVyWGlTOSt2d1Y4?=
 =?utf-8?B?QThEelRmNko3SCtmTjhndUViSm80NGFPM205NEcvRDlENE1ic0lRN0twVlNZ?=
 =?utf-8?B?RmVKbFc3UENjR3M2c3RnaGkzZUlsQi9DdmNreSt2elN2dzljNEtjWkdhRW9V?=
 =?utf-8?B?Y0w3MzIweEhrZitZaG40SlV3b3JYdG5ZMVdvdUtudnlRYmk1TzdMeGkyTjhH?=
 =?utf-8?B?Y3B2QUxCV25yZmJIR1pHV1hTNG8rQkw5TGZIcTZFZEpUQ3N3bnNXTEZsaita?=
 =?utf-8?B?R2RTQlM2cGd5UDV0eXlEOHlrTEZyZlMzMkhQWVpEU3NxeWo0UzdQVmFXVXlk?=
 =?utf-8?B?NmthRHRHSm5EaldnYkUycFpFNGdrc0FFVlBRQUhBSk9QZER0aVpySnkvblJW?=
 =?utf-8?B?eFpmZG40QkxBTFgyMlQ1dWRuZ3pFb0xsWnB4KzRocnNYRDZvZkMrTGcwbFY4?=
 =?utf-8?B?d1hrWmZmRWsrRUswaTUxYVorc3NrRDhPNWV6eDB2bEhMTDhaSnMrd2VtdHZU?=
 =?utf-8?B?bEZFL0N3bDFKeE9FTytXSmVlWTNOV0NyL1Y2N1NJWlJJTjBrUFdCZXc2bU5u?=
 =?utf-8?B?K0VPemIwc1N2enZ0MUpjU2dYWGwybnU3R2xkR2VPZHRIbjJRNDVFWFpEQ1d1?=
 =?utf-8?B?a2xtcHJsR3IrelF5WGlRL00rakdXdGV1ektoZGRON2RNOVFiRHZtNDZTeFRj?=
 =?utf-8?B?VThuNzNBazF2RDd6L0xCUE9pM0ExNmtWbjJIWUUwdW5HTi9YMW5jbzZFTjg0?=
 =?utf-8?Q?AhMo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7302.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bTZEUncvRXorMkZxNmU0emJGL1k4ajJXajhUOGJBUVJ1Um5MQklXTldpS005?=
 =?utf-8?B?SS9WQkFVTmtBcFNRMkNFT2hLckd2dFhDRlM0ZnR5bklybnhxY2htdUdHRkdu?=
 =?utf-8?B?eVA5aEpUYXAvakxyaWx0ZzVIS0ZJUHh1cFpQUlE2bXhDcWhIWjFJL0pycXhN?=
 =?utf-8?B?cWF3ZnNSeEREMDhyMzMyOXpXSDlvZ2Z2STN5aTRlWDFCQWh6N29EYmhBbEpR?=
 =?utf-8?B?RG1yckIxZFZ1RDJBek51d1RNS04vclFZSkdaT3RnVktkb3dSK2xmQ2hFeFRh?=
 =?utf-8?B?MFlKTGh2UXZBb2pQVlhPckM0dEFzMlVnSkFPdnI0R3JlUlpoTXZPdUZZOGNV?=
 =?utf-8?B?ZWZXcjZidkxkRHN2NFV3dlB5ejEwTGNOTk1UTHJXM0tVbGdTSEQ5b0VwM25J?=
 =?utf-8?B?cUVSaUQxVVZJeS81bnNpMUxCREdueFZBdldOWHBES1g1ZnQ5S1F5TnlXNjB1?=
 =?utf-8?B?ODdRSlBzdTdET2EwUzI0b0ttbFBzYXFMZDNFWnFDVmY5RXNOUS9pVlJ4c0F2?=
 =?utf-8?B?NTNRMkZzS3BsbDVmMU9TRW1rUm1vNlFLQ01lTjhWb1lHdFEzZ1pPWUNjSk1B?=
 =?utf-8?B?VmRrN2xSdHlxcnJXSnRDcEkzdjRXcUg4dnR1bWhNMkdWdVd3OUdwTHZLekZl?=
 =?utf-8?B?SWJTRVcwcmJURkhBSFl1VnQ1bmdxdEtsWUJLME94S0doMmRza0U3cEFER2Rq?=
 =?utf-8?B?bWJVbWk3WlZBbnF1d2hmdkduZXd5aE1xQW9KOUUzUC9nc2FRNzhXZFdNbzI2?=
 =?utf-8?B?U1BpWDdUNC85bGM4d0NUbVJvZ0ZXR1NVVmFzaGVzMjNQaTJES2dWZm9xNkNs?=
 =?utf-8?B?Nm9MN2RuYTZ2aU5aeDVieEk3eDBpSGdCY0poTmJ1Y3pRMDVNN2JSSFFXNEJw?=
 =?utf-8?B?UGhqSHdvNDJaMVZNSy9BYWh4dDlvV3BuYW13VS9rYXRKVEpUUk85THR4TUV3?=
 =?utf-8?B?YzQ3OU50Qk9NVUZSaTJXVUJYdWR6UnV2Z1ZVR0I1SGU2ZkhWMWJ5WXZHdWtX?=
 =?utf-8?B?SFpwQUdRdHlPeTg2NWlzakZJdXJSeEFQODRaMm5yRnhXS0tIN3ppaGc2RGJq?=
 =?utf-8?B?Uzk5ZUE0c201Zit5SVFxU1F3OTVtNGxhMThFVm8rTFRTNDEzUlVXeDZuOW9U?=
 =?utf-8?B?dXRzUjFFTkIwZ2NRY1BkTkxURlliYklyay9mR05aZEZ0UkFJVjFrYmRSWlQv?=
 =?utf-8?B?Ti83dTlSZGUzSUc4dkkzaFNQNzVlek5ZV0hWU3BFbHBhNHZFMVFRNzBWNjJX?=
 =?utf-8?B?RDZicVhVYmtYQWo0VnAzSWpiMXgrS2pLMnRwTWlHOHZTQjhiK3hkb1NDK0h5?=
 =?utf-8?B?UGc4TDk5K1FLWnc1QWpzd2hoQnhhNG5oMkdHQTVaYlkyVkIxUE9VdCt6ZnNw?=
 =?utf-8?B?OTJ2akNVTjQ3VW5LVndZQmtaVnlsRzVJbnBKbVdWQmNQT0wzK3d2VkMrTjlr?=
 =?utf-8?B?WWVBa0RUVFVzT25jWXhXaHorbDhPYzRnSDcrWDVmTENJY2U0QVA5ZUhWcFlH?=
 =?utf-8?B?Nnp3Vmd3dG50S2N4aVRRek1YVVBkbUk3Zkg4RG9MM25CbDhWeEtmZEhIVjVn?=
 =?utf-8?B?RUVqZUUxaXo5VG9PK0dYUVZwTkYwTE5lWWZXdnNYMFRMOVNJV1dndUhxWWpt?=
 =?utf-8?B?dmNyVEJ1T2xaM255L01yQm9QTkFLMlU0L0Z4MlF4akR2a0hPTXdRbkQzWnFi?=
 =?utf-8?B?QjB3UGcxQ1JyNFA4cUpBTnFHZjRXbmVxZzZmYk1vdnQ4TEtGV2VLZXRaOEZk?=
 =?utf-8?B?YXlRZ0Zyb2FGM3FVYkFuM2hsRERmSFlvdzRJVnBreEVGY1FMeGZOMzRPRHM2?=
 =?utf-8?B?TTdkQWZsQnluT1FJa2E4NGNPWWRtaU12NGhMUGhxZ296ekZKbmxnMlRFcnI0?=
 =?utf-8?B?U1N0Y3RiV3lSY3ZaNTF2TVQvOWwySHEzbkJEb2ZSZXBzUFdOWlV0bWFLbkpu?=
 =?utf-8?B?KzcwcGdMbE55RTdrS0VxVWJmUWlrdW80Q2ZLRjJjVUUveDhzS3I4aFFmM0Rr?=
 =?utf-8?B?Zmp2ai9FRkJoZkd2M2IyUEVYTVRNTzdXWU9GWC9uVTgwbGxCb054cmNmSEJV?=
 =?utf-8?B?S0RIcWVjNEd3OXRXN2pzWGgrVXh0Y2Z1ejRQNEc5ZHFaeDJ2Q0pUU3FOWU44?=
 =?utf-8?B?NEFDZmZ2bFVYUWhFT0NCcGRhNnU2ZEt6dDFqS1ZSL2NJZWE4RnB0VzljbU40?=
 =?utf-8?B?MWs4aEUxcUcrZE9CMnZvV3pHV2s1YlY4UjJwZmpaQmZtRXorOUJURWE3T3VL?=
 =?utf-8?B?TDNwc2p2RjhaN2hOQitjc1pFTGFUdWY5enBycTc1V09NL1F1YzcwT3hWUGVC?=
 =?utf-8?B?d250LzFJbjRHTjROL0hRYkduZktYcHdUcDFEQ0NxbXhYaEFwd0U0Zz09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d7bd9c9c-626b-4676-efe4-08de703d142e
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2026 05:01:17.4232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /9RZ6YGT78r2kAdUVmYgC5iGsnkVLJ8MFBPzdaMrXIwt8+mex1P2oDoXllrFQBB7zQK68z7xGPVBHZZUpxvj6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7032
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: DE314164B67
X-Rspamd-Action: no action


On 20-02-2026 08:41, Ville Syrjälä wrote:
> On Thu, Feb 19, 2026 at 08:42:49PM +0530, Murthy, Arun R wrote:
>> On 19-02-2026 20:23, Ville Syrjälä wrote:
>>> On Thu, Feb 19, 2026 at 03:13:26PM +0530, Arun R Murthy wrote:
>>>> Before reading the DPCD caps for eDP wake the sink device and for DP
>>>> after reading the lttpr caps and before reading the dpcd caps wake up
>>>> the sink device.
>>> Why?
>> Just to ensure that sink is awake.
>> On eDP init, as part of reading the DPCD caps during the AUX transaction
>> its sometimes observed that the AUX tx fails with timeout. In those
>> scenarios even if the retry is increased to 1000 AUX tx will not
>> succeed. May be that sink is in sleep or unknown state.
>> Spec DP2.1 sec 2.11.7.1.5.8 says if there is a NO REPLY for AUX tx this
>> can be due to illegal cmd or sink in low power state.
> That section is specifically about i2c-over-aux.
>
> Generally we have retries and appropriate timeouts to deal with AUX
> having to wake up from low power state.
We have tried this for 1000 times and didnt work.
This leaves a question as to why not replying even after 1000 trials. 
Answer might be the command/request is wrong for which sink is not able 
to understand. But its not the case.
So the other thinking is "is the sink in low power mode" ?
In link training sections of the spec it says before starting link 
training ensure that sink is up and provides steps to wake the sink device.
Example: Section 3.5.2.16

> Although, I suppose we might consider switching to D0 for eg. duration
> of the detection to make sure none of the AUX transactions there take
> too long. That *might* make things a bit faster (but we'd need actual
> numbers to show that). And once we're done we should switch back to D3
> to save power.
I am doing that in the patch. I switch to D0 and then immediately switch 
to D3_AUX_ON state.
The reason for reading DP_SET_POWER in a loop is the spec says that DPTX 
should try for atleast 3 times as DPRX is waking from power saving state 
which takes 1ms.
Section 2.3.5 explains the DPRX AUX_CH state and says that DPRX shall 
avoid not issuing a reply when waking from a power saving state.
This section also explains the DPRX AUX_CH state on RESET. Usually this 
is the state on power on, and in the issue that we are referring to can 
also be co-related to this state as its during the kernel boot/driver 
probe.
>   Perhaps we could then also use a larger timeout just for
> the DP_SET_POWER AUX accesses,
spec mention on this time as 1ms, to allow sink to exit low power mode 
or AUX_CH Receiver is monitoring differential signals (sec 2.3.1.2)
> and all other AUX accesses could assume
> that the thing is awake and use a smaller timeout. Although the LTTPR
> mess probably means we can't actually reduce the timeouts :/
>
> Another slight snag in the current way of doing things is that IIRC
> we never put a device into D3 after the initial detection, unless we
> actually turned the main link on and off again. That's also something
> that could get fixed by always putting the device into D3 after
> detection. But to do that stuff safely we'd need some way to make sure
> nothing else (eg. the main link) requires the D0 at that time. So some
> kind of D0 vs. D3 reference counting scheme might be needed.
>
> I did consider implementing something like that years ago, but dealing
> with the reference counting seemed too messy at the time. And since I
> never implemented it I never measured it either. Perhaps things are a
> bit cleaner these days to make that easier. Dunno.
>
>> So in this patch we are trying to wake the sink device.
> Still the same question remains: Why? What *exactly* is the problem
> you're trying to solve here?
The problem we are trying to solve is that the AUX_CH Requested is not 
succeeding even after sending multiple AUX requests and fails to get a 
response from the AUX_CH Replier.
Increasing the retry count to a large value (1000) is also not helping.

In order to solve this went through the spec in detail, able to get some 
information scattered over multiple sections leaving us to a thinking 
that may be AUX_CH Replier in low power state. Also in link training 
section(3.5.2.16) it says source should wake the sink before starting 
link training.

Thanks and Regards,
Arun R Murthy
-------------------

>> Thanks and Regards,
>> Arun R Murthy
>> -------------------
>>
>>>> Closes: https://issues.redhat.com/browse/RHEL-120913
>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c       | 41 +++++++++++++++++++
>>>>    drivers/gpu/drm/i915/display/intel_dp.h       |  1 +
>>>>    .../drm/i915/display/intel_dp_link_training.c |  3 ++
>>>>    3 files changed, 45 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 454e6144ee4e..2fbb947e6cc8 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -4705,6 +4705,45 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>>>    	intel_edp_set_data_override_rates(intel_dp);
>>>>    }
>>>>    
>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp)
>>>> +{
>>>> +	u8 value = 0;
>>>> +	int ret = 0, try = 0;
>>>> +
>>>> +	intel_dp_dpcd_set_probe(intel_dp, false);
>>>> +
>>>> +	/*
>>>> +	 * Wake the sink device
>>>> +	 * Spec DP2.1 section 2.3.1.2 if AUX CH is powered down by writing 0x02
>>>> +	 * to DP_SET_POWER dpcd reg, 1ms time would be required to wake it up
>>>> +	 */
>>>> +	while (try < 10 && ret < 0) {
>>>> +		ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_SET_POWER, &value);
>>>> +		/*
>>>> +		 * If sink is in D3 then it may not respond to the AUX tx so
>>>> +		 * wake it up to D3_AUX_ON state
>>>> +		 */
>>>> +		if (value == DP_SET_POWER_D3) {
>>>> +			/* After setting to D0 need a min of 1ms to wake(Spec DP2.1 sec 2.3.1.2) */
>>>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>> +					   DP_SET_POWER_D0);
>>>> +			fsleep(1000);
>>>> +			drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
>>>> +					   DP_SET_POWER_D3_AUX_ON);
>>>> +			break;
>>>> +		} else if ((value == DP_SET_POWER_D0) ||
>>>> +			   (value == DP_SET_POWER_D3_AUX_ON)) {
>>>> +			/* if in D0 or D3_AUX_ON exit */
>>>> +			break;
>>>> +		}
>>>> +		/* Sink in D0 or even if read fails a minimum of 1ms is required to wake and respond */
>>>> +		fsleep(1000);
>>>> +		try++;
>>>> +	}
>>>> +
>>>> +	intel_dp_dpcd_set_probe(intel_dp, true);
>>>> +}
>>>> +
>>>>    static bool
>>>>    intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector)
>>>>    {
>>>> @@ -4713,6 +4752,8 @@ intel_edp_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *connector
>>>>    	/* this function is meant to be called only once */
>>>>    	drm_WARN_ON(display->drm, intel_dp->dpcd[DP_DPCD_REV] != 0);
>>>>    
>>>> +	intel_dp_wake_sink(intel_dp);
>>>> +
>>>>    	if (drm_dp_read_dpcd_caps(&intel_dp->aux, intel_dp->dpcd) != 0)
>>>>    		return false;
>>>>    
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> index b0bbd5981f57..3f16077c0cc7 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>>>> @@ -232,6 +232,7 @@ bool intel_dp_dotclk_valid(struct intel_display *display,
>>>>    bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>>>    				     int hdisplay,
>>>>    				     int num_joined_pipes);
>>>> +void intel_dp_wake_sink(struct intel_dp *intel_dp);
>>>>    
>>>>    #define for_each_joiner_candidate(__connector, __mode, __num_joined_pipes) \
>>>>    	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> index 54c585c59b90..cbb712ea9f60 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>>>> @@ -270,6 +270,9 @@ int intel_dp_init_lttpr_and_dprx_caps(struct intel_dp *intel_dp)
>>>>    		lttpr_count = intel_dp_init_lttpr(intel_dp, dpcd);
>>>>    	}
>>>>    
>>>> +	/* After reading LTTPR wake up the sink before reading DPRX caps */
>>>> +	intel_dp_wake_sink(intel_dp);
>>>> +
>>>>    	/*
>>>>    	 * The DPTX shall read the DPRX caps after LTTPR detection, so re-read
>>>>    	 * it here.
>>>> -- 
>>>> 2.25.1
