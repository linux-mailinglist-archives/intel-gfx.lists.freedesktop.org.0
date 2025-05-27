Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 875B2AC483E
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 08:18:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D3D10E25A;
	Tue, 27 May 2025 06:18:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y7N3n/N5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6150710E25A;
 Tue, 27 May 2025 06:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748326722; x=1779862722;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=isiXKvOZeLZ83enLP7PFK1mBHo24ela3LKX5SH8pgfw=;
 b=Y7N3n/N5c7I+d9iZ4hrsKORZnUQDRXKWDnJPti9I0G9wKJ5YDFuihUQl
 jxAuLfYaHZhL58zurWp+MvG50eslhyOOPktIlb/9g/GkQPkCebrISYVj1
 JtVZPQCLH6WvpQlnnxB8rCCO4IpJK0Hj1inp0KjAPcnuZqP07zPrCXhCb
 qBPYWCuSDQq505NU63tP19j2m25QEPPKyfgLSSulLpsaRSkrxx2avZ+7q
 ngE0+uLlLBoYVsqyc84Ti5gB1kjVJJg8No8Kcaq1f7uCxYFBJe0KNMFX8
 YFEyLUs9nKDKgnMlRNZAl7cZRSi47Es9P6ReFgSWKtHW86h8ApsBMnZdY w==;
X-CSE-ConnectionGUID: he0RLtZSRH6Iv5Mj/mToww==
X-CSE-MsgGUID: cNa4ywR+TP6PAq6wLdkPIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="54106780"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="54106780"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 23:18:38 -0700
X-CSE-ConnectionGUID: Qk+fxg7sSdKe3Rp2C4UqIA==
X-CSE-MsgGUID: rx1vgchcRmu2ea/aex9viw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="142623474"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 23:18:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 May 2025 23:18:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 26 May 2025 23:18:37 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.74) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 26 May 2025 23:18:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sGvAwELa6qIUVT0/s+zcq6P8nZsFSe3nsIUDj73Zo9Xg/sYqkbaCrOBQPgTOBDZzcs/5gle73M+iBLzMD8mLvVUQ/FL1xvs6/ogZyoRfd6Xwu30SgGusYlCrw8lbrywgr6Aym/nf2oz1/E+vNi6mGUizhwg6QR4z84zfMz25h8IX7KzWu+e+5OYrzgkCxpCByYfbmxPctJADpXFj9ljI1/gfBIhO1xyUAc1XkQTlk85HhRbPoxhURiCQh/MKlTwF1U4Pk2FlvIzsqA4+AcT9oz8U/mNx+v/13QEdQRSdzvHhjNOJNB4jXzQwB2nCYiEjSRyYE988CXMOECmjqLOsVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1CawpBdI70Es53oGCAkkQFMiPns3HbS4TBQG5BFmHQg=;
 b=n4bIYbqAFnkWX3ncVnZfW/vIxJK6R/XKzuESwyzE7voWs7IHoKPdZc8ISkkKgPF29mYWfS1SY5FuqwwOBav8YPqUGTPYdlmXAsSnwd8MklSXseMtgHzoFgC6NoCUGUYhRFwR5OpgiKLYDBeSwFm2QsYqknJgE5DA/a8X8i4iHc3paS16Apuq12OWGhVekqU/HB8q2ODQ6x8w31WgQKfeggsXIdolIN/S4ZJ0hY+Hw6GamXMZOcC2eIcgs7W4qfyxpdcBYcTxo3Kv3elDEfRsm/ZouSUj/qzmwO9+lr61x+UfOmKOz5BJoDpeJ8paA83xLayci3PFBiQYI40vwQ+prQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4814.namprd11.prod.outlook.com (2603:10b6:a03:2d8::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Tue, 27 May
 2025 06:18:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 06:18:01 +0000
Message-ID: <a20ff7a1-9d05-465c-8fee-43a629ff1679@intel.com>
Date: Tue, 27 May 2025 11:47:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 09/17] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250513051700.507389-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250513051700.507389-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250513051700.507389-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4814:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b67f18e-ab7f-47fc-8f2f-08dd9ce63bce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkI4YVY1TnJOSHp2eHB0SVpDMFRTdE9VdnNnK0FmMGF6NmhtcDNPSm1xN002?=
 =?utf-8?B?MHBZTG9pNnMyQ05pNWgyVDdVTG14RU9OT0xLK3VGVlpXSmJFbzhaSmRCak1C?=
 =?utf-8?B?SHFvb1VLS1lnM0ltblJjYmZRNjlvaFVqVUNCY2h5cUR1ZDBwc1pHZEdQSldG?=
 =?utf-8?B?ZjMxakhUOUNZQUdRSFNZTld0RlNjSUZ2QVRCbEdhWjZnTFl1UTR5Ym1oUzRL?=
 =?utf-8?B?bGRQcnRaRWFEbnFxdEdFalpjZHUzdlBMUlhXbUFLR2grazdLY0hHK2RnT09k?=
 =?utf-8?B?M0dmaVFUMlpBblZ6MXM2UjdXN2ZNYVRNZ0hwaVAyVTdPVVNzT0h6VC9lWDBT?=
 =?utf-8?B?a0RabVFabVlFRUtldGhvUjVqTkZjQlB4MVM3WU5tYlR4R3FKZVhIK0NpM21x?=
 =?utf-8?B?WFh0ZXFnQjhHNjlSTDJYbVFsdEFJRUY4Y2RsWHg0YUtMUTgxZi91N0IxeVBj?=
 =?utf-8?B?RWo4MjZEL0s0SEVPY1hjUlVoWXQzY3hRRkF1QXZtVzZBcTFOVE1tZ1ZRbzFs?=
 =?utf-8?B?Rk54OUZ1b05ENS84UUgrWitJa2Z3a1JLUStQbEJ5d29iSWV0QnMrUDYrL2tu?=
 =?utf-8?B?TS9DWGpiSXhQM2RCbWMxOW5LbmRWOEduY3ZWNGNtVkJRNVJlODRidmZrUTJC?=
 =?utf-8?B?RUlWL0xHNTBHaXVhdkswSjgzb1NFRng4Sk5jbDdIMVoyenFUMktmamlaUGhG?=
 =?utf-8?B?TlMzQmljZnlpM2ttcjNWc1FLMyt1MUwyVXpaVnlmWStvTHRUclZVVjQwejRS?=
 =?utf-8?B?bjFiYm9URGE2c0tPK3RqbllteGhjcVpaMnpzai9wZGpCdTBkYnNnY054V1Fp?=
 =?utf-8?B?b2VtNldyK2ZiYk1oSGtmMkMvUW9rQ3JmU1F6S3VJTjRKWFd6bUJ3aGFkTzZK?=
 =?utf-8?B?RXFqS3ZKamJzdkp2ZVRXanp6bmVqQ2hkSDdYNk14T2VNaDNnYmd2T29qUitO?=
 =?utf-8?B?d056eFVHd2xTY0lIbzVDVEVOODZleG9VYyt6S0dkSGpqTEdLU3JtOVMzT3Vk?=
 =?utf-8?B?L3hsNmxUcTRkRFJ3RVdqTTRTU3BHQmlySWZlOE0yRVRCd0VRYlJFbVJkR0NE?=
 =?utf-8?B?Ri9ULzNhbW5xQjk0d3F6V1dlbnpwc1VobkZnUDE5aUhSdmZzRFk5VzJQQmdo?=
 =?utf-8?B?bmVIb2VTbXFIdnpYTURMWVFkcGs0djIrYUhqM3l0TSt1RG91b25BQzRTTmNS?=
 =?utf-8?B?S0MrYnJVS2kzeS85RklZdVgvQjlvcFoxQzdCRWtwSGdzNW1uSUlBbVoxR2or?=
 =?utf-8?B?cmpWSVFMb3dvbEVjT09uU3BGdE5WNjYxdU53bWVueUlFZXRCUW1SUDZpNENW?=
 =?utf-8?B?anVTR1EvZkdZVzNjT1M4KzhUZndQRUpldzY4S1BDR1Q1L3NPUkVNSU1qeWh6?=
 =?utf-8?B?SVBBcEl5blowVGJ6Zkl3OFkrclVMNmVMbVlsUjllRUR5dXVMN2hHRmRONkRY?=
 =?utf-8?B?aFRXa2xrTkZ6dlJiTWQ3UDlSOXZrOWlPeTcvUVRPMFBQSjRYeWhrUW9ZOEVD?=
 =?utf-8?B?R2xjM3NwQk1jcVVOd0VhdC9xeU50Q3lTSElYcVJ0OGJMSnlXN0ZpV25jQ3hw?=
 =?utf-8?B?dnBvSlRZaldDbllvMGRCQ2M0SEVacjhIR01QWWpNVXNrRUFXcG5QVXBLb3do?=
 =?utf-8?B?RDhjU1cyb25uMndPT3F1MWNXcjZKNGtzaXZlS2F1NWlHWVlxRVAvMjdtRDMr?=
 =?utf-8?B?ZUdwNUFBMWF5cnZwU1RtNUtzejNsZVpmRTZqR2FHdXlBSXdiSXRrdFR4T2VY?=
 =?utf-8?B?UTVFS2tJK1RZVk1ISktzOWF3cHl0Y2E0aUVSVTltb1ovVlN2Und6U1ZJUW9E?=
 =?utf-8?B?UkFqVTY5V3pxakFmOUE2OWhGeU9IZUE3UUtIK2tQcDM0N2NBak1xcnhqRHBy?=
 =?utf-8?B?UllBc2lrSDFRU05Bb3FFZFdzWWlkSkJPVzd2eEdFSHNuRnB5SE9sZXIrVER4?=
 =?utf-8?Q?rszhz+vcaJQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmUxZWdnWEJnaXJRWVNnUEhoTWZLdk9pQnpyZUd1NnBmQ1c5aW42SUtPa2tw?=
 =?utf-8?B?N0Z6d0lUWUdSSWdIa1J4M2xlbEh5eUFtM3hPaittUUFMRSt4WFl3RzE3c1hh?=
 =?utf-8?B?S3ZnVWJPVDlyQVIvb3RPalRoeDNnUTJnWVN5NFFSR2RiRXA0aWxQREJMSUJ1?=
 =?utf-8?B?cGhOZXR1Z0xCLytNcjl2TVRCb3BoZ0JQbXdGWkJaZzU5ZlorTXdoMjdsVHNJ?=
 =?utf-8?B?bk1FVVo5VkxJZTU1b05qaS9xejluUVE2YXJRdldnaWRHMyswVEZuUnhLaVlI?=
 =?utf-8?B?VnF5UzdocC9iL09ZcWR6QklROUlnT0FnaFBRL1NVOEUyMzdQRWtSVy9Gdkc1?=
 =?utf-8?B?Y1lvdG11eVFTUFZZa2M3R0F5NnlMZ2xHUGJaZ2o5SmlSTVFKb2xxbFFpdVA1?=
 =?utf-8?B?ZXJBYzZKeEFPZGR1cXVCYmFJd1NPNFhMS2JBcGgzTjNxbkFmZm45MlBKVmcz?=
 =?utf-8?B?aWV2YURSMEk0dWpRR2xnM0FpL0VmMHc2UElibHhmbEtWQkxpN1QxK0FubDlT?=
 =?utf-8?B?U2dsL2lCUDgyaCtoSTJCUC9uYUhkYzdiTytWU29MaXF2bmw3bTFMZzRSMXVK?=
 =?utf-8?B?WmVYVkxUczB4YURka25VbVlrNWlkekRmdi9vVFM3dXRNOS8zbEJaYWU1OUtT?=
 =?utf-8?B?UzJxdUhDcnUzWndCbmhrdktQZ1dtclJUZE9pYnRwVjBhb0ltMVovemVBcDdE?=
 =?utf-8?B?RU1YeDlyUkR3Z2tRRWZhV3IzN0laMGNpLzZyeVlMeE1lT2ZRbkF5cDMvVU1u?=
 =?utf-8?B?Y2x4SUxMTGRoamR5L1pPKzllcGdhVkU4b1pHM3kxbTM4cEltMG9hdGpsUndm?=
 =?utf-8?B?T2pMdG5hZnl4bXNDVDN5bzZWcUF0OWIrQWZSOEVMNVNhckphWDhUTEtvdzlP?=
 =?utf-8?B?ZHpUNlFncHFyQ2llSW9zT2hsdnMzMldEMFQ2c0VaWW9EUjA2bVpwVFI1ZlpU?=
 =?utf-8?B?a3oxZmpwR3UwNmdIblVkNjhwd0hXY3gxM2luOVpBQUsyL0VsWEJvaGIyN3Vy?=
 =?utf-8?B?V25QNGpteFVJZzVxYkVSY1VyUW9wL1p6UFo0bnhnUXlxN0tMYnlSaFIybmJ1?=
 =?utf-8?B?bWM0WCswQXZmcExxSDRLeDlSRWIyTkV1TjNyUm1FUFFmNkV6YWxRQVJUcHFW?=
 =?utf-8?B?WTBQdzJZUEtNSWYyL05nMGJuN1hWOFVLVGpHV1pqSE9CdHdPc3U3U2cyeVg1?=
 =?utf-8?B?ZFloNEpFUEZETy9iRExWK2ZzVWUraUJUbUJINlMvejMvTDBEeDZyeFVxT09U?=
 =?utf-8?B?bVNaTVliK21nWEwvMFNzMWl4NVpObi9vcXZzSXpDUGF2UFBCYk03d2djM2Rk?=
 =?utf-8?B?a1QzSWRMb21TdVlpQ1A3NmJubEM4UUp3aTJYd2VYdG40RlBOQW9KeldxZGo5?=
 =?utf-8?B?djBlSzkydHlhNGkwUUlTME02UmpqdHp0ellvek5jSU5BZ3JxRE5EWGp5MWFp?=
 =?utf-8?B?VEhqT2NOeC9EZUNLK0dsbzhWbFJEcW9zMFhJWEdjY0MvbkdTdzdWcmxWUTdC?=
 =?utf-8?B?TmlXVFJ4dWJUYk9EdXJmanJMbEROK3doUzVJV3BNMjlQTE41Z0xUTERaRXFI?=
 =?utf-8?B?S290amxYZmY2RkV0MEFjUitEdlR3MGdWc0hkMG04L3UzNStZMnc1QUE4Rk1y?=
 =?utf-8?B?WHB1ZzBxNjZvS1dWOG9hUzVGcmlBMnIycnJlTDNmOTM0UmUrZUxDbiswSHJk?=
 =?utf-8?B?UzFIUGMwWUNwVE5TN0V2bFB1TGlpMGxlZHVhc1hUY0h1YnpFVm0xNkFCZkox?=
 =?utf-8?B?NUk1MUIwT1BIeGxRbDQ4RjBvMGdiK1dnUk93N2MxSlBBUjBMWXl3V0JGak5C?=
 =?utf-8?B?eFp0aVRQM1daZEh0TjZQUk1JRFJQNEJEaEZWVGtSQlhiNm5LME1ZaHBFR0ZI?=
 =?utf-8?B?YlBMbDRKNVZGSWVsMkZrdDIwbHY0Sys5UHNOT3ZjY1lqTEs4ZmkyMDlZV25I?=
 =?utf-8?B?Mi9XejgyMWVxU201Rld1eUw1anVZSy9XTEdXdGY5bjQzZkxiWXpGWUVQNU95?=
 =?utf-8?B?cDVNZUxDMHg0WWFmdmgxYjNieFRsalFYbUxDcXVuamVjRVV5ams3dW12UkFO?=
 =?utf-8?B?dm1aNzV1M3lpOEpOVjRFMlZ4eUJobE9HRThodmVMWDVySFo5RjJ2MlNld1hN?=
 =?utf-8?B?TGdIcWsxYnFlMnpEb0FveUhlQjlpakJBVDdFODFyUGFGaVFTUUZEZjhtWW02?=
 =?utf-8?B?NXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b67f18e-ab7f-47fc-8f2f-08dd9ce63bce
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 06:18:01.8097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KPJL2DXZRKuzYFJunVjRVY3FwWZP1voOQ68LbDMg8hSpRnvuXfl4ZJXgZh9GmuMeJF9v1GuptehIyygXOf7ci+PBcMAojXz9OEgoVs6GOW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4814
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


On 5/13/2025 10:46 AM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> --v3:
> - Write registers at compute config.
> - Update condition for write.
>
> --v4:
> - Address issue with state checker.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 26 ++++++++++++++++++++++++
>   1 file changed, 26 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index dcaae7631b0a..b2348ae10a1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -627,6 +627,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   		}
>   	}
> +
> +	if (crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
> +			       crtc_state->vrr.dc_balance.vmin - 1);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
> +			       crtc_state->vrr.dc_balance.vmax - 1);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe),
> +			       crtc_state->vrr.dc_balance.max_increase);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe),
> +			       crtc_state->vrr.dc_balance.max_decrease);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe),
> +			       crtc_state->vrr.dc_balance.guardband);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(pipe),
> +			       crtc_state->vrr.dc_balance.slope);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
> +			       crtc_state->vrr.dc_balance.vblank_target);
> +	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -637,6 +654,15 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> +	if (old_crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(pipe), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe), 0);
> +	}
> +
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(old_crtc_state));
