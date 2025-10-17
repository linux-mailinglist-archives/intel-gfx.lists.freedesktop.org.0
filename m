Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6607BE8176
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 12:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9840010EBAA;
	Fri, 17 Oct 2025 10:38:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="htMl8GZz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EB8010EBA1;
 Fri, 17 Oct 2025 10:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760697516; x=1792233516;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BSUUJIA2P523qLN0BWR5W5/WbWd7+JX2b/zV3gtTUC0=;
 b=htMl8GZzw4I50kiWTsQaOYbhqhY0R5g77fKBfZKd6cxDUa14BM5h5vvS
 jVdpz0PZyfCpt8h9NUllo/ccvpFC6t4iE7yIUOYrBLSGMh9yOeAkqzKW0
 IfTV3iJUhNlnOrXnqfa9crFOlKWBQI6j9BjM9McJXM1VubDog8orbkErG
 WbN7ziCCg6zeAaeDroOS2OiI6lvsvM8odf0oaNowODOEG3TM6642Fvld0
 9kFmfQjoCUt/Q9Lwa1wEQNZpY+kYG/Y2KGQEiZ/kHci+o9/TvIYoZXfPi
 RsL57zxITAJwZtbgRtPKQjmHdB1O8wWGN9YK1kHYo2f+nqk2n5/eFpMKI w==;
X-CSE-ConnectionGUID: nW0IG+MEQsK0vJ9FGrRO4g==
X-CSE-MsgGUID: mmo9xWHDSKuzYlsBQ/Vi6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="61936710"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="61936710"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:38:35 -0700
X-CSE-ConnectionGUID: 3TW8z86PQ7yjkYfn8uthWA==
X-CSE-MsgGUID: qZhBK2xOQqm+7BuKEgR+fQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="219858647"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 03:38:34 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:38:34 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 03:38:34 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 03:38:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JwfZmLtuK3rADymT444HWlpW5DxSI0f5Mvq6WC26J5QCjrZHoQbqKytzHBXEpTslTH6w0hDr1wh1iafP2dcuNw46rpuhxX3cqfINsrww/s0NGdqp4RmBGsY3JoYQVZueXq99VEW00QD3KBAAar7zs8ncwzExGW1TzlgCWLsQBGXLkNPdYdSMZNJG5dBA5a4YBPetyT5AEPOSlvTJGIRGBwt4cCYnr+mpWSQHoEmARON2AmbC+LTa2syzk/7CnIOMslNK4ewfVKEJs0fmoDR8o0SHJE1GuNokDRC1wBUwtXc82PvXJeEDWorKNz60mSls9vc98i5Jn6dV7YDu35R3xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VxArDq7lkdcISVoGKv0ypzTq3KNC2Jd9esbnX6ch92Q=;
 b=plYUrDV1TgtyLFOLL8OZbTJezgMKb9eF9pOjwaWWL0F83PfaL5m6CfNSEZf/wF5+YUbNVYraNu9euOxLqmM4APs153XWqRrAj6jlJ2jGP6FrgIue2+2ch+0ts8T75a5JX88QT1AtjnRX7gO5lFMT8pepqn07DyYvJxdWbUxNsYZaLFT6fYHX3uEytPvWwsKMYSYCpi5fJrk0rXt9OVddK+/OAs5mDtvQft5V/oCYckTHkKnCj0dahIcH6Rt26WgoMe7OTgKljSMu38PIuXtho8zkH07+i2qHT+3paUxtGpFbHJwXZA4lY8wPnHLhu2qvzIQvkc71mMaj4gUaT8faRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB7245.namprd11.prod.outlook.com (2603:10b6:208:42f::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 10:38:26 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%7]) with mapi id 15.20.9228.011; Fri, 17 Oct 2025
 10:38:26 +0000
Message-ID: <a547b633-40fd-4998-acdb-91679e35270f@intel.com>
Date: Fri, 17 Oct 2025 16:08:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/xe3lpd: Load DMC for xe3lpd 3002
Content-Language: en-GB
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
References: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251016131517.2032684-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::8) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|IA1PR11MB7245:EE_
X-MS-Office365-Filtering-Correlation-Id: 3281d83c-e4e9-4132-949f-08de0d694dfa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejVxeEswakhKd3lPU1VBRVB5QytUbThRT2JhYWlaczJUbDJDWU1HelRzZi8x?=
 =?utf-8?B?U3dFMFE1d0pkM1hCWE1OVmVOM21JL2k2cUJ4NXYxRUxqN25sUkNyMXBoWitF?=
 =?utf-8?B?QzUxMFRkUkhpR0V5MVdYWVVscEkxekJqUmhabEtYVXRxOFpDUUR0VWtYZnZn?=
 =?utf-8?B?MXAvZmdLa25XQ05jcStmQ2ZoM0xPdGZOWXUyQ3hFN0lPa0dHRGMwSi9VeGt0?=
 =?utf-8?B?cVd5YUFRTUJ4YTEvUGN0cTZsWGpwTmR3clVzdHpOa1RjVlRVNk5hYmRMb3Va?=
 =?utf-8?B?MGFYNGg3TFlRVU9Kd0pIZWJpZzkxUDdWelo0Skt3dSt6M3hReVhKRmgrcHVB?=
 =?utf-8?B?UE9Qd1JnNExxcWxKWmUzcEFCQWFDdWducHlHQzFuMXp5eFA5c0RTV1BYeVBr?=
 =?utf-8?B?eEVrclhWOElaNlpaQTlLcEttNHg5dG8rUkQvZ1BIdjIyNzdYTS9xbWNKblE1?=
 =?utf-8?B?MVRiS084STEwcm5tcWlaekVSemdtd0ZaRkVZU29ERkpvck5DVUJ1aWllL3Yx?=
 =?utf-8?B?ZmM2cTcwajNCZDd3akdhaHV6YTVUNFZOaEpjMmN1Y1NwMnpMSzdRTG9OaWVa?=
 =?utf-8?B?bVRnQk5TSGQ5SlZtUzJRNjJJek1CdlllQjJpNE95aWtpYlZxU1g4bWFaQ3dn?=
 =?utf-8?B?cUJzSjRENit2bm90QVAzUzlxYnlaeExSc0NYVXFYNkhaNGlaOW9iS09vV2cv?=
 =?utf-8?B?VzB2dkFZTFh5OFZURTJlM2NGV0QvNVZKNXBIZWg5dDBscVBaUmZzSUZ6RThO?=
 =?utf-8?B?UEFkNkJJcjJ1YXZxcHdHenpkL3RPOHBxZDRMVGw3Um9JSXo5bEd1aVR3UVdP?=
 =?utf-8?B?M1FUdHJNY2oybGNqUjl5TEkzaUx1VS9YdU1tSkNpeFdyQ2R0dXRVWWdGUFpv?=
 =?utf-8?B?b0N0ZHYxNEFwejdxR05rZFpobVBlM09KekVzK0wyZmIwRnJiUnd6ZHBwOS9C?=
 =?utf-8?B?R1BsSzVkVDZSc2JQdjdOODkzQkU5Q0lGMUQxaFBtSUpIVnUweDBhTEpzYXpo?=
 =?utf-8?B?c08rMW1EOGQzRkxORSs2YzV0cUlLVVQ3R0tEMUNQSG16QUpUeHZrU0c2L004?=
 =?utf-8?B?NlFJYStsczRoT3hnczJ5NmFHckZJdnFKR3Y2UFIyaUJkMVp3QnJTWTF5U09O?=
 =?utf-8?B?TzhrWjAxMkFYM2Z3VzhVTGxMZUpDUW5TLzFBU1liZkJKQzA4bTVvK0ZTYkFE?=
 =?utf-8?B?T056NXFHeVh4WFhwcU5iblpvUnYvU0ZqbFRhUGk0UzBCVEE5WjIvWE9zeDlB?=
 =?utf-8?B?VEk2a3dDdjQ5cmJEeXV4VVpkODhpSzFUcW5USXkvTUFTS2lWNmxiR0pXSWtP?=
 =?utf-8?B?ZmZrLytzaFE2MjRaNThuT1duQ2N1aVJOTm9tVm5ZTFZvNzltbDZCN2lubVdi?=
 =?utf-8?B?d2FGVHJwTUZxZ0dhRkxxaUwvaHpyTm84eWtzTDlqTHZrQ2cvYkl3ZlJ0Qnl3?=
 =?utf-8?B?UDJIUTNINk4xMUZxSW9HRkt2T2h5WUNlVG43MjVLOUVYQ0F0SEplYStOTFhq?=
 =?utf-8?B?VXN5RjA3Y0hUTUEyMTFvaXVFTEZrd2NGWGF6ZTFEelYvcU1EVG9PSlVZOHRE?=
 =?utf-8?B?RTduOUlsNHIxTVRUd01pNk5JVExIWUlYSzZtUTE4Sk9oZVNYQjBxNTRldkQr?=
 =?utf-8?B?WWZnSFE3blUrY3J1YXZvMEU3d2Urd0NVS2VFTzdiZ1p2czZGMnFLTHpObEFS?=
 =?utf-8?B?Y0pnNVd2VDlRUklPTVZHT3lSNm01ckdrYmZoNFFSMEtwN1B1M1BaM3RENDBa?=
 =?utf-8?B?TXlXNGgvU2RTTk54b2xGc2hHNUhTU1FVa2lEN1Uzay80ZHlnTXZCS3RXZ1RV?=
 =?utf-8?B?bUpmWEh6ckJESUNLV1c0Ynh1dTU5T0orSU9UbkhTWEFzVnAzSjJWT3pmYXk2?=
 =?utf-8?B?ZlJMSEpOSURNQjBFcFczTHZXUzdDaEN5TzB6MlNPdW5YelpKbE9qNWk2a0xD?=
 =?utf-8?Q?sAQApC6g2JerD3NRacdBDHpmfMbjKZjj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnB3OXp1eTdDQ3NGS2xhQWZxcTUxc2tKUVRxWGNLQmcrOWtNUGJtVjVpR1Y5?=
 =?utf-8?B?Z3lNdG5SY1V3YmU4SVRKdmdWTVlYektlQnRWQmpZY1Z6S1pKUnFkNzNLTUNh?=
 =?utf-8?B?dmFjcENKMTBrVG96RWhaTTdxdlZkQlFwTHVXeERuOHVrVmNvK04veTZhRStB?=
 =?utf-8?B?TmtCQ0d6eExLUUtEbEFXRldhRXdTd3BTRXAwdEFQM2NlazBTRU8zWHNaR2pp?=
 =?utf-8?B?WENtS21SZENxTkVwaEpwSlgvUjFHZUkwZWhlYUxwK1ZyaE5IM0VQUlA4dkR1?=
 =?utf-8?B?QmFnY3poNE9VRDhWR21HbHdacWNod1BiK0taOFpXanEveDZYSFBySmNpM3dX?=
 =?utf-8?B?QWVtZlZybm9ZamJ2Z3V0ZGxDdklFZmNmQ293cUlzT1hBdlJqWHBXOUJvd3VB?=
 =?utf-8?B?MlNaazRvd283aTRaOUV3STF5L1UwK0lqYWdoK2xHTGxZTzVXQWgzQlZIY2FC?=
 =?utf-8?B?NVM3L2dQaHlBWUdBT3E4a0lNVEs5eStzVzZrVnpFeUUvVlhSVTJXNlZsc0RX?=
 =?utf-8?B?OHFmVzBKNXhVcjdZSWQ2ajRKRUF0S0lDK1hRUnNXUi9MNXNLcU1sU2gxOExU?=
 =?utf-8?B?cS9GVTBoaFpZbHhOd2xDeE5TaXErZ1VseFd2alJNU2VoQjNxS1AxUER4U2Fy?=
 =?utf-8?B?MFhCVU5TRnVIdFU4OXptNS9DdWYzTGYrUm11NWt6a3g3N2MyQ1g3WE8xRUNL?=
 =?utf-8?B?N3FMbXlOckZmREFEd0RiLzBUbUxUSVk3Skgzbmczdnh2eEVYZTArZ0JQaTZL?=
 =?utf-8?B?M1FMeVd3bDJNY09KaEViOFNkSkJDMnQvSTlZM3UzRVg1Z01la0pZWTQzdm8z?=
 =?utf-8?B?RGZGb2xWTXgxUnBoL2dMUVBzVmVqVGRHUFVQMjJVaGMxS2p1OTRVMFJhOFF4?=
 =?utf-8?B?YWF4T2swWGovcU5tUmtpNHRaQml2cWQ0NG0xVk5VN2JiT0tFdG42ODJ5TXl6?=
 =?utf-8?B?VG5Ccm1OR3ZoUUFYYm55Lzh5YUVCdUY3Y3l5TklybFI2RlorSVVZUEc2RktY?=
 =?utf-8?B?enNacWF4RmREWWpPTnd6clN2Z05CV0xCMThueDBRZVZzaWJIS0hFaUdveWpl?=
 =?utf-8?B?K3JBalRITmR4SHh5TElZTWRwRFJVU0M0Z2NPa09OQlEzMDh0WXZ2V3pjTXpu?=
 =?utf-8?B?clZ3ZERUNUVsL0VhVmtMSXhOajkxQUZlOUVlOEFCcGhpdDBHcHVMRklmWXVy?=
 =?utf-8?B?YjJkaWZJQkFHODlQSmJHVkUrN0dIL1Y5SzFPNXhVQ1BnQmJvVUNvMFE1RGMr?=
 =?utf-8?B?VkpVa3gwN0hHNG90SkV5SDRRUnc1VXZRZXlHY3FTTzJFSlVLUVlSamhLM1RE?=
 =?utf-8?B?anY4UlE0VnBmRUpqSUd1Q1piWlpqVUczcGtiK01MRFA4MlREeW42blNqcDZp?=
 =?utf-8?B?NEJSb0hLcHJUT1dVSW1QM0dwUExIbjVSbjYvWFNsT0pGY2tSUGVSU0N6YW5a?=
 =?utf-8?B?cmFTNkxZVXYrbkZuVUZ1YVZzTGNOQWtQK0NVaW1pUkpJVzMrdmdUTThiaW82?=
 =?utf-8?B?SWJUWnM0SUtYbzdoRUo5cVk2VGlxeVV4dFUzcmswQVVwUlcybjhabFVOVUJH?=
 =?utf-8?B?SFlkZTkwa3V5eTQvaWJZRkFiWFJvSnAvYlkyaTlSSVRBV0tpSDFBdzVLTnFz?=
 =?utf-8?B?cytvbXJJeTVRc0hFVEd4Y1R6UTNvdU9Hdy8zRW1KZVQwcVl6SnhCRS9xa1dF?=
 =?utf-8?B?akI2c3BMVTZqaUdMeEZjbkxlSWNvdUpYOHRXeXFIM2lmUUxvZytwZzA2MGdO?=
 =?utf-8?B?aWZXQUI3TzFGS21jV1RvYUhqT0oyUlgydWh2OWtKSjFYNW12RVpqd21wOTY0?=
 =?utf-8?B?VWp0L2doSktocnRhWGNCRDViZWVSZ1lFSmVVVUZuRHJKM0Z4K1lPR2RTUnlH?=
 =?utf-8?B?TkJybTFyRWJ4RkRCMFEzUXcvQ01yRTEyODV0ZGtkMVBZL3E2M3pYaGY0bi94?=
 =?utf-8?B?enlCbXJHTWs4UkxYQ29jNVJrQUNKdUFJdVpyaVZHNXVacnphQ1VFUHh2cy9X?=
 =?utf-8?B?MG9EOUNrdnpXKzk2UnRuaUp6UzJSRk0vaFJueGlaZUUrVFA0K1JIM2dDa2lu?=
 =?utf-8?B?SHNjVGUzK1JndkRrdmZMNXBkMmVkR251M05OMmpBZU1Sa1dpQ2hTVHhESVNB?=
 =?utf-8?B?Q2JjRXNzb3ZrYVNMeTlsQkIrYWoyWGRkenFOS2lmZVIwSTBLaDVjQkYyZ01U?=
 =?utf-8?Q?DIGAoe0quhzmOrD5V6NpdvE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3281d83c-e4e9-4132-949f-08de0d694dfa
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 10:38:26.7383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nEqi7IstabAMcaa7u7rXS5pGa3VwZWRY+kK/4Di4FztZ/Skv0C94li7pt3V9oC9/BC8iWK7/V4cxIbqgJJljDk1lmFQTu3SbVh9/FaqMQws=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7245
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



On 10/16/2025 6:45 PM, Dnyaneshwar Bhadane wrote:
> Load the DMC for Xe3LPD for display version 3002.

LGTM
Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 10 +++++++---
>   1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 77a0199f9ea5..f3f10f97a573 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -127,6 +127,9 @@ static bool dmc_firmware_param_disabled(struct intel_display *display)
>   #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
>   #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>   
> +#define XE3LPD_3002_DMC_PATH		DMC_PATH(xe3lpd_3002)
> +MODULE_FIRMWARE(XE3LPD_3002_DMC_PATH);
> +
>   #define XE3LPD_DMC_PATH			DMC_PATH(xe3lpd)
>   MODULE_FIRMWARE(XE3LPD_DMC_PATH);
>   
> @@ -183,9 +186,10 @@ static const char *dmc_firmware_default(struct intel_display *display, u32 *size
>   {
>   	const char *fw_path = NULL;
>   	u32 max_fw_size = 0;
> -
> -	if (DISPLAY_VERx100(display) == 3002 ||
> -	    DISPLAY_VERx100(display) == 3000) {
> +	if (DISPLAY_VERx100(display) == 3002) {
> +		fw_path = XE3LPD_3002_DMC_PATH;
> +		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
> +	} else if (DISPLAY_VERx100(display) == 3000) {
>   		fw_path = XE3LPD_DMC_PATH;
>   		max_fw_size = XE2LPD_DMC_MAX_FW_SIZE;
>   	} else if (DISPLAY_VERx100(display) == 2000) {

