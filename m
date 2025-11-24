Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDD1C801E0
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 12:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 397C810E21B;
	Mon, 24 Nov 2025 11:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d1dL0khu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0014910E218;
 Mon, 24 Nov 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763982594; x=1795518594;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZdcR2OIGgSz1dBjt7EyL3sgF66Qy4Nlw8PycF1/U/GA=;
 b=d1dL0khuXWlTbPCjJbKgvGMurfUHn2mjRNLTyEor70IB8Oy/KQzrJPsk
 ey3zgQB6fNcK72G68uJl2fjGms3OA7NSqr0fuVDjmv4Rt2yM1igrQ8qcS
 dFutX/kmI2q+/ur1gKR2ofZFvkQJTQZmattVm1vJ6NPKAKkO9sn6RVtpf
 272wFPi/ylmWq4xrTBTv/wSKxK4wTWgIr5ygARzTKKNxFOtO0cmW7gvvV
 z3sPycAc2WiBg/UO7nC1v+1ok0xLxIJps3AGO6VC4l1f92rIo+Ubj+zRV
 FXJNviCfk4EuAcBoMjnR/1oh90AUyuk7lUvbRSVTIPGiopme9f0kcPePY g==;
X-CSE-ConnectionGUID: AqySBqAiSUOxkdM8O/K1uw==
X-CSE-MsgGUID: 3bQ21e1QSLOObdr1olrVxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="65160736"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="65160736"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:09:53 -0800
X-CSE-ConnectionGUID: IepFt+dOSeWBWZQv8rluXA==
X-CSE-MsgGUID: /4fuZwDqR6aeEYP1JoY8JQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 03:09:53 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 03:09:53 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 03:09:53 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.44) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 03:09:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JbMNtwZZrzH72S0/GIjfL2mQKMlBzWRPEmtTq+RLIkiyKvG+cqZI0Gs+JPKjQ4mI9OASDmyBtIIqkhOPgAdZyHLFNCvDvhGl9tpSWyNlOYymaGV38jpD6BoLiRHYOOZMtNXOb0Jp2UBs2mR/HeJ7XrT92oCIctRNGN6NhiC1TruT4byoHFeM7glKoPcAt+mD4wrvZux8j/DCozbGegjQdpqbCcuOSv/BqwB3ziCN2i5YXjVhGf9avTb63+B5uTz+MzNbNroli2yDvc9p5QwVH9nSCgTDEgE7kmUxobFxNKCjAOTf8eAp6kVUenCsSY3d9TuPPM+bmzQltCSgSGIpAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WEfcf/rRh8GL50TnkgkTlIQbQ6IAv9WKC3VVzmUNwn0=;
 b=bbl4yrqGUfh8YL5+H3DB01IxTlryNwwObBxwHrr3spTvcI/XUg+NsFWaSmEuMjxOmFb0UFbqA/BHpAHX9c/n+rH/XFhADn5w3d6QaZzyyumpjBhc1Xh3WteqBGTC6ZTtgvuPKlYcvuDarfOlA8vfMm++JD3T1N0IvJBVlTJT9k09myKabwvRceyBN0xHHwoz4usFp5nIGghlVTpvVTHRsoEpnjNC8JVYTr+ppUpH+ftClkCCLvHfNG4qo0B7/TCL6NAJUvCcOjkocAVmBVtjutGjRXnYz88e4DUQEETqSbOYzLmvwRw5/hJOWEk8D4KxIZkADjt8/BdL09gEvyFTgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5217.namprd11.prod.outlook.com (2603:10b6:610:e0::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 11:09:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9343.011; Mon, 24 Nov 2025
 11:09:51 +0000
Message-ID: <313381a1-6195-4ea5-a25c-0f34d6a57bfb@intel.com>
Date: Mon, 24 Nov 2025 16:39:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Check number of scalers for casf
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251124084629.3322714-1-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251124084629.3322714-1-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0095.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5217:EE_
X-MS-Office365-Filtering-Correlation-Id: 3246b50c-8d5f-4d5a-f2c1-08de2b49fc28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEFCZXpERzYzR1VZSkM0RG8xdjJSTjRxa3hITG1YeEFOYVRzdWZlRTkrVktQ?=
 =?utf-8?B?cSs1TGpzQXhaV1FOOGJzTHNwMXJjcks1TUpZYm42akNreTJlTlBrRnRZRmUx?=
 =?utf-8?B?Nk0xV1p0K1NaQW1Sci9iMVR0b3B5TDRiTm9mWVJKNVk3TkYza1ZJeWlPUXlj?=
 =?utf-8?B?K0pWOG1xZWkzUWp2eTdSRHo5WDNuT3FjSGZiTWw1d3NpeFJsbHdXTDJvL2pI?=
 =?utf-8?B?RkNXb29VNkkzMWdiSENjZmIydlJGTHZtdW8zZjZWdStob3VYb2tNTS9ZK2E4?=
 =?utf-8?B?VXlBekhmNnI4WmdpSFFpUmd6cDZJa0o0MHZFRC9hOGtjQ0Y2dmk5MW90L0tQ?=
 =?utf-8?B?SE5xV0ZpazdEcTdCVzZRMWJ4cUpWMXR0ZDdscFFFbzdweXgybEpLQlhGYW1D?=
 =?utf-8?B?MWZySjh5RzJrSWlaZ3dpZmFIaDhIK2lXNXpEYk5SUGxTME1YYWZNOXhLRzlk?=
 =?utf-8?B?RitIVDIyVi8xb09mdjdKTWFRclJHai9oVi93V01IRGdDKzZLd3NiSER0UUUy?=
 =?utf-8?B?aHNWS0VBV3ViWGNYd0lwY0FaN3RSYWM5b0c5Mm9tTU9kVjN3M2IwNXZ1ZFNE?=
 =?utf-8?B?TUFUOTBHc29mTFhsUXNFbXVNWW9TVk5xM2VlWnpZcHZwbDBscFpzS094dGda?=
 =?utf-8?B?dTVKdUd5NmFlaGdKZzkyd0R4UUVrMFVRYi81dHhGQlVNQ21FREMrMTh1Y0dY?=
 =?utf-8?B?Nk5kRFFkcFhsZXVGUUI3NjNuWEVrY0lpZTlkWkc4WldnUVkxOE9mOU05WVN4?=
 =?utf-8?B?NEoyMTFBZE04MC9lc2Z3dkhEVFEzdndXaU9RcjRrSTNmdUozL1NhK1RHenI5?=
 =?utf-8?B?eUhyMXM4bnZpNUdtSm5DSGhNa0pKeS83V0ZQOTJuZEttYUtRTnJ2OGNpME9n?=
 =?utf-8?B?K1BxMnhtK01BN2Z0MTFYd1FGR3BzbU5VejdLdE0wZEc2TnlJVzdSYmdmV28y?=
 =?utf-8?B?NE5XYUF6eW1nUGM5cDdyejUrZHhyQWsyU2xEUEVJdTIvVlVnbThRaXozNVp2?=
 =?utf-8?B?Y2c0Z3duZytDQ0owMTVuS08wSVEra0NWV1hZcHBRT1JjYW0rdVRLQUxTSVRW?=
 =?utf-8?B?cGVrY2piRmlGU2JXZzJPaHFiVmxtOGJrVFl0UWxMdEx1UFBwcUdnRXp3cENv?=
 =?utf-8?B?dm5rcWt1RXZWWHQyU2xnc0JRdEd4ZXdVQ202aEswQkpkckRkUjBESTN3SEJl?=
 =?utf-8?B?ZW5XcmF6RFBENE9GcUZjWjMwaGZsbUZPVjVRVC9mTnIyUEFLUUlOamo1VVd4?=
 =?utf-8?B?NDRWQ2FicVU2TGlXRUpKUXg0NWVmMlRpVG43M1pYUXRpV3ZJQzlTaVR3ejRy?=
 =?utf-8?B?UHRGK2lhUXRZVWpGY2xUVkJNV0o5d2dIdFVBZWYyL1d2VkZkWkV3N3V1T0xl?=
 =?utf-8?B?TFdXQmJFQk1RL2dLSHF2dmVjdkVGSkk4aVpXVk9raW1xSkdPVzlSWnFVUXpu?=
 =?utf-8?B?WlV6S1c1ZGxEVGNWOVBkV2hqR25ZVmNMQUtrMFRtRmE3K29aRXR5anN4alUw?=
 =?utf-8?B?eUZ2emdsNG1HdkFsNTg3R3ZmQ1BXczFIL0JUM3Z1K1YvZVBIVGwwREEwZWVo?=
 =?utf-8?B?L2FqbXAyLzRSMVBRVGxwRjYyWjZEOWRPV1c2djNEeHlIMGx3K2RDcWlScHN2?=
 =?utf-8?B?NXFVTkhRckxSWVZrSVFnNXFVUlNnam5xTGc5eC81clVIbkRUUEFiTEx1RU13?=
 =?utf-8?B?K0xscHVsdFR3NGlSa3VHcVRxMUphUGpCbTlZT1puUEpKa09TSytjUFd6Rkk1?=
 =?utf-8?B?aUNOS3F4ZVBWWDd0OGdOZlhQcmZiTHJFWEVydk9rMnU4dkdmRGZuR1NVbUxp?=
 =?utf-8?B?ZkVvZWlDeWlqZ0QxdEFyV0txSTQwdG9yVHR2a3l5K2kwelpIY0p5Q0FFNTBK?=
 =?utf-8?B?V1F6MGwveERUY3pHbEd2VzJRNHdkaEVsdEloMk5lNUxoRFU5b2dsNDBvTFJt?=
 =?utf-8?Q?eYrl8rdBSvrmKuHMQmp1gh3v1OT7sqiz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VlZSbEdnOXBXZG5MY280R0FLeEIyNTlzRUU3MkF6dTdzV3haWFI4NlE1UElQ?=
 =?utf-8?B?aU4zQ2RWUnVCNllENXpMTDk1QzhHV3Z6dzZ3dTc1c3BJblNWMys5eCtLQ05p?=
 =?utf-8?B?YisvNENPQno1dFFkWStRZ3o5STZkSVFmcVIyK2IzQXc5ZzNVUmdxMy90SU9t?=
 =?utf-8?B?OUtYSEhLQW5OdWsxNXl5ZUN1WVBUNklGMFBNY2t6L2lqcGwrbVh3SWo3MmpJ?=
 =?utf-8?B?dHQrdnB1cDkvUXd5WnBWbHdrQUdkK0t0bWY0UnRlaG5vR0dUY3ZuTXl3VVo4?=
 =?utf-8?B?MGtwTjNNRnR0cUE3UzNLekNtWFBtYWZ0ZEU1b24veDZydDlDclUxUS9zcWpq?=
 =?utf-8?B?QTFPWVJFN1lXTGJFcXF2TWRZR3gwa1o2RXkvMTV3cFIyVVlsdXpwanVMNk1Y?=
 =?utf-8?B?aXFqOXVxK2hjYjFON1VPUm5kL2FnVXFNQWk0bk01UkJDVVQyUUFpY0JVV2F2?=
 =?utf-8?B?bVNKTmtDM0xyMUtKN3hYRjNwYlkrU29uanliRVpxMEE5ZEVFcjNEbWdIOExv?=
 =?utf-8?B?RXJXSnVHZHVscnRnUWdCNHB1VDk2elZRTkVnQWtkdVdRM05zcCtwOVRRS09m?=
 =?utf-8?B?WG91bVlDUVV2UmMvR3BEaTQ2ZnZza1l0R0p2VjJ6aVlsRnFsby9Wa2VzTnBl?=
 =?utf-8?B?SG05ZGY0MXpDSkQwSURlNmo1OEdNaHArTDJvaVloUjBGVGRXNC8zZi9BSGRL?=
 =?utf-8?B?MDNpalJ6dWs4Z3VPSUYzMEtxZ0p5d2NaTGpCazBVemd1VWdKOERxWW0yais0?=
 =?utf-8?B?aUR1Qys0cXdob0ZpZkNFS0pGQ3grOW1QaDN4djFQVE5Jc0EyV24vQ0ZXUi96?=
 =?utf-8?B?MW1QaFMvdUFKY1dsOFhDOXhKejRwS2JvYmFtU09GaEwwcjdBR1NTbXNEN0l4?=
 =?utf-8?B?YVlkUUkxaWZlWVdEb09McWZQRFA2VnduU3dCY3E3eHdpMEpUckRWL3pRenQ0?=
 =?utf-8?B?dUE4UXU4emtUKzVLVXJ0dERwZWtISnJEczFmMTZaL0EyTHgxVGV2RGZEMEFM?=
 =?utf-8?B?azMxYjFZRUMyK2hLQnBNTHAzZ0lvdjJwdjRJSGhUZGMwRG5HZkpIUmcrNmhj?=
 =?utf-8?B?RG5OMmh5MXBKUTl5UEpic3J5ZVMxdzFTUFMwb3p6MDloRDhla3o1d0pMZ2Z4?=
 =?utf-8?B?MWR2UXpITzRUSWtURndzbWYyeWRKNmtXaWVmTXBTZXpwSTBuc2xhMG5oZzBR?=
 =?utf-8?B?NjA3ZlBsSXJMeE0wTjROdDd5WE8vMGhRd1RTbTRncHNuTGtONUVhUGk0UzV3?=
 =?utf-8?B?cE1WQ3cvME1qM3lRcWVkN09kYkVvSUx4Y2h0NS9TM29RalJZV1hvcDJ3ZWJ3?=
 =?utf-8?B?THlwTTJXVGlaYzRTU0s2K2tQc3JWYTZTUXUwMGhzTkFIYVUvWDAzUTBady9D?=
 =?utf-8?B?UGJUcTB1bS9BMUpEeVBGUk16Nkh4cDI3T1BybFo1aElhQ3oxbTNKTzVQbzR2?=
 =?utf-8?B?UzB1TnBFcEl1RVhHKzVsd0V2S1VrSnpWTzIxelVDcGUrOWI0WmVXU0dmMTdx?=
 =?utf-8?B?ZDY5V2grQ2RuVXY2WFRnYlhjQWpxQTQzRFozVzJYNm1IelVDT01ocjJENWRj?=
 =?utf-8?B?bEZaSVYwRXhQNUF3aDA5WXc5eng1VFcra1hsVnRKZ2VCWUNlMlFMQTZGclZP?=
 =?utf-8?B?bUtLUFlTNmd6WnBZbGhQY3FVTVlxZjBJN3A2c1EycTZIdkdHajFsaGQ2UWpq?=
 =?utf-8?B?OUVndTBqMnh5dzBiaFVoNWtxL3ErditRSHZzdnNBajVrLzJ0SHdna1VsUXk5?=
 =?utf-8?B?cStTVFhQVkdiVklneUlJeG1XRlNVK2YwVjRqRXYrQ1diTjJJNDcwbnJsNW1o?=
 =?utf-8?B?TW9mUUFyczFackNnZHYzVlFueVRmWW81d0tCRDlwWGNxR0UxTVQwUy8rdmgz?=
 =?utf-8?B?c2xNZnJWY25PWU5CRlhWVHNVRkxvNndPeE4xa1NCMnVkMCtmTXhSa3lsd2s2?=
 =?utf-8?B?WkluK3ZiNzl1ckxZYlpzMUFyZHRLalc4YzlFTTNMYlIrbHhQM1c0bVhUU1JI?=
 =?utf-8?B?TkF6ZEJmSlFYYklwZ1V5RWJpbisxSmRTQVAyaEFDVmM4eGd5eVdKa2xWcWww?=
 =?utf-8?B?Q1RiQU1nYVpjS0h0a2Y1bXp6UjAxeExiZDVXMDlkOWtsZEo2MFdGSkg0Q3Fa?=
 =?utf-8?B?Tkx3ZmRGK1Q2VVpTZWhLMVBmb0xHNlV5QXZuU1pqdHpwNVZ6b1RjK2VNSUhq?=
 =?utf-8?B?anc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3246b50c-8d5f-4d5a-f2c1-08de2b49fc28
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 11:09:51.3351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nubMhuh2e1gyJ5g0+4xFrqWdeci2R7jFg605RwtzfHuzt8fh09YR6hm6wxK4dYlUFTtf71mlkUgLlSmvH+H+MTqmZKus+7mBBICaNOnYfl4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5217
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


On 11/24/2025 2:16 PM, Nemesa Garg wrote:
> Before exposing the property check if the number of scalers
> is 2 as casf needs second scaler. If not then dont expose the
> property.


We are not checking if num_scalers == 2. So the commit message is a bit 
misleading.

Need bit more context:

CASF requires the second scaler for sharpness. Skip creating the 
'SHARPNESS_STRENGTH' property when num_scalers <= 1.

Also, it would be good to align the commit message with this explanation.


Regards,

Ankit

>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 153ff4b4b52c..963e6c7d75b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>   
>   	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>   
> -	if (HAS_CASF(display))
> +	if (HAS_CASF(display) && crtc->num_scalers > 1)
>   		drm_crtc_create_sharpness_strength_property(&crtc->base);
>   
>   	return 0;
