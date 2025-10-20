Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2189BF1489
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 14:43:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 119F010E297;
	Mon, 20 Oct 2025 12:43:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i5tiMb6G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DA7E10E296;
 Mon, 20 Oct 2025 12:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760964211; x=1792500211;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=X7XpkehfPJHgF++MKW1Hl7DPfhjAObV7ZYpXikRZyUo=;
 b=i5tiMb6GZ5nyzafpEKxlHdMbt7aafCfuD85Va8TCF1UIGtcoKl26sdjD
 GWkkGPksy5H9Gxlpe4GT+x4IbhtyanatEUk+OM+PqlLTDvygkHd3Y8Bok
 IsoP48BKb6sF3oRed5td2wN2BaNPcLCfb81gBYurfHkDtvCj5DttKhmUa
 p+uA5/djEYITQELIpIVk3SjKDrc4u3SXy05njgHdQA8qUhvlsdFYJozFR
 fQDZQptARMFLSK2W+i5Idwkp9OLC6sikTg/LBABt9vk2ITJeQ0+mm8dd0
 JArkZMbyeQI4AKbJm0iXIqAVtWSSxWALI1tJXol/E25khg1W29HKFELfn A==;
X-CSE-ConnectionGUID: 482qYwC7Sx2QdpLC8pOKfg==
X-CSE-MsgGUID: iDPTf6ELSN6dGZrZoNb3gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="66910766"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="66910766"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 05:43:30 -0700
X-CSE-ConnectionGUID: qYBjnH9oTgKJaFmy792aUA==
X-CSE-MsgGUID: LrLW9364Sj2NFDiG/hYyKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,242,1754982000"; d="scan'208";a="207006466"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 05:43:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 05:43:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 20 Oct 2025 05:43:26 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 20 Oct 2025 05:43:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X57TN+sdGX8rBqPL/COaJAW8yV1g/8o3XDCE+aes3DIG7zgxVcc0I6OJ/vr9XRF80tH9GrqrSFFNkPTa6TFcpsZHxyAPFXfOYFjkZYRhAb7rqmv2v2As3EGnYWfj9d6tPdIZKv0euQKGZ1eKDTJ2itKY1tAjIWXVh8PgYMbRAjdWj9iddZlk8u0Jv6f4LTCevao1J+NUHDYpFlZ23WozzZGMDW5iDM9OyNGu1iZ2Ygjk5SeIeCEaIxPWuyAeUgYJUcEFGHfCY6NGPNtaxV3PrYoTpE1JzokUpl2N430Vrj9MsMC2MTDY7EBlPjfPoO+swCKYNCnxa1Ms1K25pgG/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8VUieyzwpUN2wlMVMOHUycLLqnKWPVHQM5Legrx+hrM=;
 b=aXkSfx7g/okHjJtXNPlT6sTrzxP0TEGXq35HTXjvmbCBkgI9i7ykqZFWwvY+hWOKjqf8u9nJfUmLtDyL5+kiR5aELXQNT/SyeVPW8wGK2eHN9u3359P+AsVdAHoW7WRiweJ6Tb7aOcpK3oWZN5KXDUtRJ6z8DNar3r7AzeNYue++RV95sxbsOUdZryufljH0tXSXo5S/rQjwo4T93ci8IV1uj0s5bN1jCFAmlLd9YlRReqPk+0+sMlv6ukYe5+PrFtL50lf73Ocb/DMnVmkcT2YWmnOv4jVZK/ojWI5KFM49l9MehWOluf6UaKxPXtW/2ylpz3/nZ2wmEMzFnkorRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by MW4PR11MB6571.namprd11.prod.outlook.com (2603:10b6:303:1e2::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.16; Mon, 20 Oct
 2025 12:43:23 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.9228.016; Mon, 20 Oct 2025
 12:43:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ccc5c9391875afe2075553568b4beed20f0956f8@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
 <d04fa666b1ab4737aa2a927c897e0ee7062482d9@intel.com>
 <176073074493.2362.9794630315303321450@intel.com>
 <ccc5c9391875afe2075553568b4beed20f0956f8@intel.com>
Subject: Re: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 20 Oct 2025 09:43:18 -0300
Message-ID: <176096419823.3231.3252987988363610242@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR05CA0067.namprd05.prod.outlook.com
 (2603:10b6:a03:332::12) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|MW4PR11MB6571:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d76dd87-56ce-489f-7bb1-08de0fd64150
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z1pqbjNmZTh6VkN1bUpqYktXZlNZK0phWk0yNHNIaW5GTXZyUktnSXFOc1gw?=
 =?utf-8?B?ZkZzL2xlNXR1SmVOSzdKcWNra3FMcVdsTE1FMVFZbXFWZXhRR0tZclg3V1Fz?=
 =?utf-8?B?U3lKMko0WUZNTU1YR1hURHZKZVg0TzlVRnZ1THRaSHZ3U0ZaYjdYOGNaM0l3?=
 =?utf-8?B?T0ZISHJ2WTg4azlSb1FuWjYwQ0IvSlhCemtRN1RuYkZzd1lFZlB4UTdlWUdv?=
 =?utf-8?B?cWE2VjQvdzRLcjZoQk9OMGtaTkd4Rlk5SWh4TFN3NXA0M3FlV09SdW90Ly9v?=
 =?utf-8?B?bG10VXpMZnVBOTlpcWJRUWhkV3FPeHJ6bW42V1dacGlSaHNjNnhGcDdiT3hT?=
 =?utf-8?B?M3FYaEZlcENVa0ZEL3dDcyszSXQyLzZrOGl6aUFqNko4K1RJakpVclFJSlNX?=
 =?utf-8?B?T3NSYW1qYjIrVkFNVUdXejZPT0J1Z1JqbTJ1ZkdEcThiTGJHcitlaXo0UnZX?=
 =?utf-8?B?N0JhdjluMjVFVklML2hpYWdPYVROYXcvNUpDeG8yYjJrTjlCQ2t3c2RZUXJz?=
 =?utf-8?B?Y0xJWVNSbTZlamhFeWdiZlgzUWRvV3cxVHF2UHJtak4yYmd5SkxlVVdJc2py?=
 =?utf-8?B?aitLRnFtdDNvL2FKb010Z1A4WEdiQVBIWGVsRzQxMVJrQ0JWdG5EdmdFeEU0?=
 =?utf-8?B?dkF6R1JrOENJNG8vQ09UWkJVc2g3a2hBdDU3UHgzM3R3RjFwZVdiSUViVW05?=
 =?utf-8?B?QVFka2FibGlyN3ZmMCs2OEVwdk5CRThhZlNZdTl4eXcwdFZJa1FKSHFUVVgr?=
 =?utf-8?B?YjRiUlVnVnpZenJidHdHSWxzNVRHMktUT0NCZzlQWlh0bWFtZGt5OXRjdWZ3?=
 =?utf-8?B?NVVKdXFoRTBLdUtBRFBWajZ2S3dRNDlVY1NwTFBsM0NCeVp4T3Q2UlJkcEM5?=
 =?utf-8?B?Q3V5UTFWZFdNM2pqR1kxZnFhZlMzWWNGQk1qaEszWWtCYVFRdjhRYXkzSitk?=
 =?utf-8?B?SGtFQnZaRnM4UDVOSFBoRjlmQmN5dUMyUHFZSE9Jc2JvbVZFQnNWbVNBTnNq?=
 =?utf-8?B?c2R3NElUNEdGWTZoQklscTMwY1A0NXhSd3F4bWMxYW5YVm9YdFZNZFBObXg5?=
 =?utf-8?B?TFExNjhNb0tPemprbHBqSFJwRWlHYlFURGFmK3EvNnlYUkJJK0EyR0QxelNT?=
 =?utf-8?B?UjZNMlE0cW9sVnVRR3NIVjhaNFNoS1AyVGVleXUvM05OZUxHQXBvWlZHeWxw?=
 =?utf-8?B?cFhaalJoUkY3SFN2VzZ6dWNCQXBXUlRJdUNTN2dhbzZWVi9mbm1laE0xMEFp?=
 =?utf-8?B?a21vWTdEci9rbjlTVWh6WEF5SzErVHFVVGV3dzFpbVNoekdaemhhSno2dTd1?=
 =?utf-8?B?K0Z3UHJFOHB3TC9BT2FtbzZXdU9GcWg4UnorZkJneHU0aEl5dmVsRmF4NFFD?=
 =?utf-8?B?SE5EaGJVVHJaaDQwUXkxdWUwVmRFSSt1cnB5MFd4RDlWNmJFd0RheERVc1E1?=
 =?utf-8?B?MDVDc1pHM0IyeWd1aDdxODVxWEZyODgyZ3IxSFpQeGtkK0QwQ1ZVeURVZ3h5?=
 =?utf-8?B?dzE4MittYi8wbXQxQ3ErS1QrT1VEZGlUblBHK3dGbWtUYlJnMVlWNm9yRFJK?=
 =?utf-8?B?TEVQRnVyMHNadEx4d0NScFBTOG03Q0JlbEdLMWdJTXdndkw5SGtyR1dXN1NI?=
 =?utf-8?B?MjJiWWZuY290a1BtdGlQcjVnR1RTUk5zTlhlYnZzQnpxNnYzTzZ4UE9MSmRM?=
 =?utf-8?B?WlpaQjkxZGdFcnpuSHRxUWIyeC9GbTVNcWxETVZwU2N6WnVMUjZSNmZ3NURo?=
 =?utf-8?B?Rk4yZ1I0UjZmMDR1MERoR2NsMGpaM2I2TUl6Z2dBaXUzaGxWQndIVisxbG5k?=
 =?utf-8?B?amZFUXRxR3laeFNKektHaDNFdGZNMVpFbHB6SGQrbGR3ZE5NRFZnNEFYczZ2?=
 =?utf-8?B?eFBmTHNWRTVldHExelIrMy9XUU5ETmlYaXhXTmhmUkE0TXRPaFNMcVRub053?=
 =?utf-8?Q?Ol1UJwKrV76LYaYVjDaUERtMYNIvKTdh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXZzaEQ1SFRIU1l4OHRkMEdXeXgrYU1YNjNXQkxsWWJXRi9HQ09pNUIzY1Zu?=
 =?utf-8?B?WVByYjZ1L1BiWHUvM0dXZWJWQ0doTDBSRUM1M21FMDRlekhvUjZ2cVU3Tld5?=
 =?utf-8?B?bmxXNGNZU1U1SDY2SGFVT3RFWWc4OFkzVENDaVlNTldWdGdMSm5TSHpoTy90?=
 =?utf-8?B?K3RoaW4waFE2TEo4S212aGtmWkI2ZS92cVMvekg0ZTdXME9MOUI5QlBRZHVz?=
 =?utf-8?B?Ny9rbmpRaTRNSVZCSEpZMFRuMGxFQlNITzc4UG5DQ0lwYTY0SmFSY2dRR3pN?=
 =?utf-8?B?amxTUloxTE9hVmVsTitSVjZtUlpTOWdhdGZHWWFVZ2Y3dnhGR2lwdG1zaCty?=
 =?utf-8?B?d2VRWE5TV2xDRjV1bEtqTXl0NEpEQlR3bUg3V3M3eFdIL1ZyOFkzMkQwa1Zz?=
 =?utf-8?B?SXY2K3FiNnl4UkhTRDJCejdDMmVqcUQ5c2xsSkg4d0VUMWZIQzhCYnJRSVlW?=
 =?utf-8?B?cFM2RFpWVU5nMTNkWE1kZFhleGlDU0ZqRkU5WnEranJJU0M1cCtIeTkyeUxs?=
 =?utf-8?B?ektjVElNTzZkclEzMVRxMUZQWDhhS3E4TnpHSm5VcDROUTd3eEprRFk3UnJD?=
 =?utf-8?B?dGdQTEFQRWNZdk9DS1hDYlJLVU1GZ1U0c052RFlWNTRrc051R3dVWUo2TzdY?=
 =?utf-8?B?Z3VweVpWek1XQmtacFlDaXlNeXdGenQwUmkwQTkrVDJSbWZuVThhclFzeFJR?=
 =?utf-8?B?NkF2NjBROExkeWNkcUJGamVpenlYM0o2Y1ZHY1NVRHo5ZUxWV1grTWRpZDZs?=
 =?utf-8?B?MjQxVS90ckkxcm8vRUJXNm9SNy9wNDZMYWVXWnBxQXZxUXFLbFNLUTh4cFdK?=
 =?utf-8?B?VHdYbTJSclVhVVdIcWdFMHdOb0RvVDc5bmltdDdMUVJHbElXdkFRTHdCVk1K?=
 =?utf-8?B?S09pSXRsblFPbEFpell2Y0dEVzZZbzg4MlFNakhKdTdwbWVVaE5oQm5HcEhr?=
 =?utf-8?B?WExKRkdLQXcvQWJkYVRlTVpJMTBpaGxZUnBDYThmTGV2SkNvYUM2bTJkZzBB?=
 =?utf-8?B?ZHkreXFJUTlQWXd2cHU4c011V1RqMkd1YlNnR1B1K2tDL3ArY2R2TlVVRzAv?=
 =?utf-8?B?YkJneS8xMUlOcmU1QkJhWFRTejUwTCtibzZ5VGx3TG5OYkloWkNxamZiUFAx?=
 =?utf-8?B?dHJZa0FSL2VFOXdyOUFSZjJoZklmcW9pWTR4SnFTUGJ4cmx6L2JoZm9sQW03?=
 =?utf-8?B?TjNSdy9JOFhXZmwyeWFXNCs4SzA0UE1qaSt0SkthaU5BOVpneVdiVk44cWhM?=
 =?utf-8?B?QVEwZlpDNnlnaUhvaTl4Vm9YMmlybDdSUXliQWJxYmRUMnE1TjdSdXpTVllp?=
 =?utf-8?B?cy9OajJQWkc1UlFqZkZPWEV0b1NPVmhqYnM0b2hTUGY2dS9mZEFtbXprZ1I5?=
 =?utf-8?B?eGV5VlB5NXI0cGZPaTFwV1FKMEsyaHA4dnZldThTOS9HaGtwWFk5cTNMV0oz?=
 =?utf-8?B?NG4rN1pZNXRqYVRNZFArK2Vydm5vS0c0WWtVckdsSmVtKzdoMGovM2NnWlFl?=
 =?utf-8?B?SDBDN0VEVnVZZ29PbW5BaC9YelB6TWNxNEQ0ZU9RTFpuSWNhVyszQVZPV2Nq?=
 =?utf-8?B?djNmNVBZZHNkTUZYMUNXRU5JeU42bTJHbmFMZVEzMldDSW1NMkJMbzNiSmpl?=
 =?utf-8?B?THVUbCs0UFhGZ0JpNzVXdmcxbWNUUmJsUFJua0Uzbjg2Wi8xSkZDaUlwV0h0?=
 =?utf-8?B?Q041L2tPbzlUQVBoU01yUFhTelN1M2d1VkRDd296MWFiRXhsbXhiakNiWTlu?=
 =?utf-8?B?YXBHSzVYdE40ZTRyOVhQcmp6eDBLRktrN0NSdGpnZnNpeHBuVGNlc3Z1ckZJ?=
 =?utf-8?B?NjFTMVNEbFhvVEVVMVJiR3Jxa1F0U0ZyZDRCQVdZdmJUVTJqRlQ5aFNMV3JH?=
 =?utf-8?B?dDZFcm5OMDhNTktSZ0hVYXJwMThLUXNYcU9Cb1ZkbDlPMHFzZ3AxTGEvcTRx?=
 =?utf-8?B?dUx5WC92RkpkM2dQYlM2cDc0a2VUWjIreUhCVTFRWm5sbHkzMHVWWlk5eDU1?=
 =?utf-8?B?czUvUm90VkZvKzMrYkJIc1U4VE1yQUgyMXFpamF4aXkrb21Cam41VDZwQnFG?=
 =?utf-8?B?Z1FEZjJ4Z3p6Skd0SnlvcUNlM0plN1BObEJhTzMzcndNaE5kcXk4eWZJQStQ?=
 =?utf-8?B?eUpjN2pSTGptbkQxTjIyOGZvaklmOWZDbmxXMHAxcWVQUGp6YU9VSFQ4SmZj?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d76dd87-56ce-489f-7bb1-08de0fd64150
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2025 12:43:22.9968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K8N9eAGbc03RqQUg+7tKV01SR8KH+MATfxDJ7EnN1qzG9bltKrVHAecT8FLA3DtJ7ra9e0jIhXdiV7detmHB4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6571
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

Quoting Jani Nikula (2025-10-20 04:45:40-03:00)
>On Fri, 17 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> Quoting Jani Nikula (2025-10-15 12:24:12-03:00)
>>>On Wed, 15 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>>>> VBT version 264 adds new fields associated to Xe3p_LPD's new ways of
>>>> configuring SoC for TC ports and PHYs.  Update the code to match the
>>>> updates in VBT.
>>>>
>>>> The new field dedicated_external is used to represent TC ports that ar=
e
>>>> connected to PHYs outside of the Type-C subsystem, meaning that they
>>>> behave like dedicated ports and don't require the extra Type-C
>>>> programming.  In an upcoming change, we will update the driver to take
>>>> this field into consideration when detecting the type of port.
>>>>
>>>> The new field dyn_port_over_tc is used to inform that the TC port can =
be
>>>> dynamically allocated for a legacy connector in the Type-C subsystem,
>>>> which is a new feature in Xe3p_LPD.  In upcoming changes, we will use
>>>> that field in order to handle the IOM resource management programming
>>>> required for that.
>>>>
>>>> Note that, when dedicated_external is set, the fields dp_usb_type_c an=
d
>>>> tbt are tagged as "don't care" in the spec, so they should be ignored =
in
>>>> that case, so also make sure to update the accessor functions to take
>>>> that into consideration.
>>>>
>>>> Bspec: 20124, 68954, 74304
>>>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>>> ---
>>>>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 ++++++++++++++++++=
+-
>>>>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>>>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  7 ++++++-
>>>>  3 files changed, 27 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/d=
rm/i915/display/intel_bios.c
>>>> index 3596dce84c28..e466728ced0f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>>>> @@ -2777,7 +2777,7 @@ static int child_device_expected_size(u16 versio=
n)
>>>>  {
>>>>          BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>>>> =20
>>>> -        if (version > 263)
>>>> +        if (version > 264)
>>>>                  return -ENOENT;
>>>>          else if (version >=3D 263)
>>>>                  return 44;
>>>> @@ -3714,14 +3714,32 @@ int intel_bios_hdmi_ddc_pin(const struct intel=
_bios_encoder_data *devdata)
>>>> =20
>>>>  bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_en=
coder_data *devdata)
>>>>  {
>>>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>>>> +                return false;
>>>> +
>>>
>>>We already have mechanisms for this. Please don't pollute the functions.
>>>
>>>dp_usb_type_c should just be set to 0 in a new sanitize_something()
>>>function at the end of parse_ddi_port()
>>>
>>>>          return devdata->display->vbt.version >=3D 195 && devdata->chi=
ld.dp_usb_type_c;
>>>>  }
>>>> =20
>>>>  bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_=
data *devdata)
>>>>  {
>>>> +        if (intel_bios_encoder_is_dedicated_external(devdata))
>>>> +                return false;
>>>> +
>>>
>>>Ditto.
>>>
>>>tbt should just be set to 0 in a new sanitize_something() function at
>>>the end of parse_ddi_port()
>>
>> Aren't sanitize_*() functions, at least in the context of intel_bios.c,
>> for actually fixing bogus information reported by the VBT?
>
>Yes.
>
>> Arguably, that wouldn't be the case for dedicated_external and the
>> related fields, since it is actually about a new way to interpret bits
>> for the new version of the VBT.
>
>Well, if the spec says you shouln't have some bits set in combination
>with something else, then having those set is bogus, no?

I wouldn't say so, because those bits are tagged as "don't care" for the
dedicated external case (i.e. with "x"s in the truth table).

I'll go ahead with your suggestion.  Then I'll have
sanitize_dedicated_external() logging when it finds those bits set, but
I'll avoid the use of the term "bogus", if you are okay with that.

--
Gustavo Sousa

>
>> One of my concerns with the sanitize approach would be gotchas with
>> anything that tries to use the fields before they are sanitized (e.g.
>> another sanitization function gets added in the future that would use
>> one of the sanitized fields).  Perhaps that's never gonna happen?
>
>The sanitization part should be careful about that, obviously.
>
>BR,
>Jani.
>
>
>
>--=20
>Jani Nikula, Intel
