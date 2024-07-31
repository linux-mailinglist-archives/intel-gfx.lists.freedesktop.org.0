Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3959C9435B2
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 20:35:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2DCB10E162;
	Wed, 31 Jul 2024 18:35:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J47VxLUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D4F10E162;
 Wed, 31 Jul 2024 18:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722450957; x=1753986957;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8JulaluHz1FiluW6IcD343YoCHo17msZ46uXBa9YHw0=;
 b=J47VxLUz+AQvGqBVN0D0v5MB+naoXn4Ga7GdOzt7rs0c1Q8z9/quqhh9
 fvN6EMk9qY/ih/mPFKRqX2Hm+zCz27fa6zCXmR798qG7EoVjzAsLnoJ6s
 bgR0Cv2ORiUBs3guUXIz82Fsamhfn1rj5fU2ZrFmM7bZY6RQ9Fa/iah3C
 WBMsC+watMzdzJysJwFsaQ2fBj9K1CqTuZgfp5ZlB/ForvorxrBbTiif8
 rLglMz01s8eJhtND4kdHxOLg5uQS1gztrLrvMtdAVteEIj2nGsaPGjftx
 4q8KS8smlFJbgBYSCXH6oWOndmaoUv47/7sFWHIGZ0F5wuH9Y1tsRPRb3 A==;
X-CSE-ConnectionGUID: 1Rz0aX3ZQsid9D9fbOAYoQ==
X-CSE-MsgGUID: VBgSkuG5SG6Cz7Akjp3WKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="20172522"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="20172522"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 11:35:43 -0700
X-CSE-ConnectionGUID: b4KFFrY5QoqX9AE8utHkMA==
X-CSE-MsgGUID: si7aX5OFTiuTfr+OaiySlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="54458482"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 11:35:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 11:35:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 11:35:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 11:35:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 11:35:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z9/L9fg2tPa8DjYUJQRbBm2GFG7J8J20aDbeRFg93BnThWkf5zeuExSP6JS8lyn5V9MS/uUS9K3yNiymFlANnPvoI297EqE61fqXnC4qopYk5wMIYhyVNijq4rXspgFhNI8VbWiy9wY3Ri9hyDLbVFGvtWk/2JcsF9DN9TaZf1WZkZi/DFyb8Xv4jIYU+UCw1zU4WMWbhrylf4kOLktg0cB+MyD44mBCJv5iPV5Ez1mvJpw+ApQdyq9eezVsm2T6Mvuobxl8bKm2jGbA8E9eyhDpgGoiDBYkRGEqGF0pb4KvAFoHmR3hKUwh4xx2OVfG0OwHLJji/tuVpgGrM69K6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/s09wihtEK+WXd7JFdA58mH4Q5f1OEmJM8Uy3TDVms=;
 b=YwDXkelZJgPUQIQh2imxfq1V0ZGQ6w/ttUIxRh4IdZlOJIM3F1a2PyQduolzAX1cQ0NZ3UAoJj9H8S1EZGsDDjYL12DYN9Pj2/mA+AmXxAGkLEsHMtjXS1q8hanCmlYZg24FHsVrg8G+qjuSRtIPBOsRukDGGDI+ss3r+vfEaFJLVlZUoq7J7MQrIQiGZeXhMiPs1vgbOt+Y39d7L6HuVfuF3Mx/k16OQt53taoT8n72gh29HwCJasY/1aSLRR0lbgWIo6t5bwlM4h24SoUuQk1uuSI/4lGX+dJtTC5uoYk1PgWsKtNz7Wucv2kdaX5nFiF0xrWTXj8gg5j3AH/YeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH0PR11MB7587.namprd11.prod.outlook.com (2603:10b6:510:26d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7828.22; Wed, 31 Jul
 2024 18:35:37 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%3]) with mapi id 15.20.7828.021; Wed, 31 Jul 2024
 18:35:37 +0000
Message-ID: <c650a03a-a53f-47d5-a77d-baf00bb550e1@intel.com>
Date: Thu, 1 Aug 2024 00:05:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 i-g-t] tests/xe_gt_freq: Avoid RPe usage in subtests
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>
CC: Riana Tauro <riana.tauro@intel.com>
References: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20240730230123.2695162-1-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::18) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH0PR11MB7587:EE_
X-MS-Office365-Filtering-Correlation-Id: ea000db6-dccc-41c0-ba37-08dcb18f91f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Qld4L0xmVE16eDV1WDFZMTlVakFXcVdtRFVOZUMvMkNsNHJlQnFtRWc2YVFG?=
 =?utf-8?B?MmdsVGh1eVBFallvUkk5RzNueHlDZGVQNklNZkVZNmNzemxOTDVDVm8ya29J?=
 =?utf-8?B?UHF1M1ZncWFjUnpHSElqZFRSRFNlaWlNR01JUC9ZTVZUeTBDR1BGU0RpRTBB?=
 =?utf-8?B?aXdHMVQ2Q1JvSi9zNmxmblBYSnZ2RHZBNExaNnQ3UTh3Vy9EQUhvYzhJUEZ1?=
 =?utf-8?B?UmxzTFJnUHJJcXdJemZNZ3h5Njd0aFFIUW5UZmJnd2ZnemlCSkhpYkJOek5v?=
 =?utf-8?B?a2RUWnJoQ3VnaCtmZnRTNTJ5bUh3ZVZKcmkzNHM0REpXalVCZXJjVnZBd2Ew?=
 =?utf-8?B?NGdDQ3NLN2R2Z0w4SXpCVkdWR1lrOG1aSUxBbkUrM2piY0NEVmxRVWJJT2po?=
 =?utf-8?B?WXJuZ1F2RVNpbS9WWVZIeDIwZGhReHA2ZjNhU1NTUlBSVkhBbFpWdkFxYzBL?=
 =?utf-8?B?SGQxc2FuRGE3cjZvTXNRNG9ZNXRoQkpjUi9nM3dlN3hidEZOWkNWdU9MU0tT?=
 =?utf-8?B?NHNJNHptUFlEMEE1SGdTMlhIaFo3QndVbkg0dVdROXptdEJZRmJoTzVSVzda?=
 =?utf-8?B?VzFOL1M0T3FSaFJWRm5pb3VSRVJnS3NBU2NibE9ldzBvVFpqQnNLVDgza2hq?=
 =?utf-8?B?S1BxZWNqdWE1bFl1WUQ0bktTYlVjc1AwenA3eFdtQXE3KzhUcHBVZUNzNklT?=
 =?utf-8?B?aHFvZ05qVy9FcURiOTVjb3JHNUVYOElhTGVDaHhONDVZLzFmWnVHdWtyakZh?=
 =?utf-8?B?QkplaEN1cFZLSi9BNjl5aW0xRDlJT2lPcjIycXNqN01UbjJ4L3RjdzBHTmhk?=
 =?utf-8?B?NXpBNWFUNDFRSnRjZmV1TnlwSUE3SjVvaGZGVW95aGwrNVI0M2wxTTN6dDBV?=
 =?utf-8?B?bGM2UFh3bHVkYnR0VE1SU0t2Z0gxNTNpUHFYQVd2d0wyWXhxalRoLzFQUi93?=
 =?utf-8?B?UTR2Mm43MjFoRzA3V1p0a3kvUkV4NCtMSURxMWw3dzJyU1ZwM05odFJyOTV0?=
 =?utf-8?B?d3hYMlBIWi8zdWZGQkNiTHJ0QldTUGhSYnFOU3A1a3FpbjMzUlFoaHcyZ1dr?=
 =?utf-8?B?VnkzbE1YTFFnc1I3REl6ejNYK29PaytwZUF3N201dnM1bEVhU3J1Wm9sbzZP?=
 =?utf-8?B?TTRXNHJiSTNqeHdreDR0MHZWS2Ntb1ZDRGNnaGVGU040YUs1cStDNVhINGJl?=
 =?utf-8?B?OUZMYkNXQzdoQUR4RTd6U1ZjNU1BYW1VVHV2WC9RSnhVK3RDVlZudG1BUmNH?=
 =?utf-8?B?eDBCTFNmQ3NPMG5NL1UzUzNKN2xyMUVhR25LSXpIU1B0RjFjamZMNVFUdmU0?=
 =?utf-8?B?Qm5mTVZ2STA1TnBRajF3M1ZydjU2anNDVkNHczV1MXlvOHdSdW91TERSZnJX?=
 =?utf-8?B?WGtWbWFCZU9YRzZsMHVpbXVVaXJOQ3VMWWY0SHdtV1kyTllvajFQdXpCMnc0?=
 =?utf-8?B?ZkVBd0lEcmdaWGQ5RDZESGRUdDZZMmE4dDdYaERiMUpSREcrQm90c2l2T2R5?=
 =?utf-8?B?NlNNcVFndHZlY09FN1pBMXVwSzdKOTAzMUJWVlhKOHA0cW1QSWxHVkJJTUJS?=
 =?utf-8?B?NC9oNi9EMGF4S05JajVjem1iQ2tEYVBVV2VBU3pMOVVMWDJYaFd6Nlg0bHZs?=
 =?utf-8?B?M3dPakdRdjc1SktvMUxWS09LWkNlQ3NGT2ZKNkI1Rm1YM0xuVm0ycnlwOCty?=
 =?utf-8?B?UmJDeGRQQjY0TWFSOWwvWlo4a2tjY0xZRXl5K2x6V3ZPR21kN0ZxbGU5czdn?=
 =?utf-8?Q?Etux1nURKKUE+nEmIA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cWxOdkpVWXRpenJaQytObHA4NVA3bFFMT0RLTkF1dExuRmNLaVBXU2hUclBM?=
 =?utf-8?B?RlkyVVJrcGRUejR3V2VHSndYbDU4RVUrN1dScG5mUGllaDJBNWtwU3gzNi9E?=
 =?utf-8?B?MXl4UVZSUzQ2UWx3RERMVGk1VGxaZ1hHdWVNTjNDb3FSdmdBYk1xbTVQdVdD?=
 =?utf-8?B?NW5Mb3phTzhUdDhrNXE4SjVGd3dMZEZPdjM5bXhjMURWRnI4M0YvSFhOTVZq?=
 =?utf-8?B?a3lUcVhuU1lGWEJpUFJlc2EyNHB5V0NtdHFIRFcrc0FGNGtOeCs5dStXOGtE?=
 =?utf-8?B?VG8rNVBCWmpRNzRzWVM4ZUxqQktuamdEaDRUZjVtUElEZEY4aVN3b0YwQTQ3?=
 =?utf-8?B?TzZvMnl6SXp2Yk5xL3R3Ykp2RndEYW4rRTlNY3NqRm1ZdGh2U1ViTU13cmo0?=
 =?utf-8?B?cmRUcGxvam5qRlBVb2p3WW1rRE1YY3NJM05wWHphMEV6aFZMa3RMbG5nV1JH?=
 =?utf-8?B?WklSVkt2d3VzTXFuMEFRVlM3MU1SQ2JCWTMzdWhYNzNudnB1b1N2M3REU2gv?=
 =?utf-8?B?eDN1L0RXZitDN3VyQk5ENGNDMmF3WUNWYmJad3Y1b0IzS29TODl5UTNlMElW?=
 =?utf-8?B?ZGRPNlp0cmx5dzdSYXFYdG9aMnNNMG9mMldLcHVqNHVlOG9DV1lsVmw4Nk1H?=
 =?utf-8?B?OXFMZ2NET014R1Z2djBpcWg2eXFCc255bkhDTUx4UFgzVk1UUUVBTGc2Nng0?=
 =?utf-8?B?TVplQkZwZGpaQlhRVnRoZlAxYXNMdWdISFZ3T1FraTUweEw3cGV3ZlIrY0w5?=
 =?utf-8?B?YWZvMmNNNWdETXZJcVMxYVlOU3JkaVIxajhSNE1BdXdEaWRZMnU2eFR1YW5G?=
 =?utf-8?B?SXZCOEZoU0lkVFV0azJBV1Z4RG0zRlh5eGJPU0ZncUJrRTJVR0RFK2FoQkgx?=
 =?utf-8?B?cGhxVmdkZ0ZaNys3M1dkVWZZTTRNWUJxRGVhZ2dJSnJTYXVpOTBDSCtHV3hB?=
 =?utf-8?B?cjNvU3MvY1FKSUxPN2prS2hwRC9BdGkwK0RsVTRBcXNkTno2YlR0cllmbFFS?=
 =?utf-8?B?bTY0cm5nVlhqUDVEbUVvQVNVTXdzT1Jod0hXTFRsQTBHMXh4YXQvOWgwNENl?=
 =?utf-8?B?MVY1K0huSnZsenJOWFFpUFRNV2RSQ1VXdFZCV0JWclM4ZjE0ZWpJQUdwMDNo?=
 =?utf-8?B?VWdISVYwR044UEkrZTAyQWsrYkduaS9xQ0JuTGhQTWxZZEFyS0tLbjFiZUw1?=
 =?utf-8?B?YmVYOXdJdEo0T2YrRXNGcTB3ejgzSkJ0OCtGcTdKZnNlUjdTeStBY0tSb2I3?=
 =?utf-8?B?VmU1M0Y5c3FRbTFzREpvMEl6TEJaTVk5OEFxeGg5S3FESnNIblZndDZvQ0VH?=
 =?utf-8?B?cWJSbDU2NkM2OW1sK2xhVHlQMmx1UDdSTTJHZml2V0pKUnMzLzh2aVZuZWlJ?=
 =?utf-8?B?akM0WkhmS3FycU54QlRJNkxaQnJaTDBVL1FOMWJGa3FHY1lWZGUzYkxFWU01?=
 =?utf-8?B?dXdGc2NldERKNWNDOW1iWnhzc3ZPdmVzVDg0U21QMGd2MVdTUkNQZnpndUZy?=
 =?utf-8?B?NzBsZkdoUWkrUVIrbSt3Q0JYWGhwT1JHTjBNYW5aZHliODJyY3dzWGhwY0hn?=
 =?utf-8?B?bTlJNzh4LzVkK1NoaEJCbnB0YnZxd2N2c2tjanVhNGpxbFZaOUp5QjlHcmpX?=
 =?utf-8?B?N2VIZUpGbWI5WXJWdXE2UlRqSTMvcklrZ1Q2SmZqd3ZPU3VBa0xuTGdCY1Zl?=
 =?utf-8?B?RkdGR3BDQlZWSm4za1ROQ0VZODJVKzR3bGtoQ0ZCQUE5czhnbTk5Sjh4YzJS?=
 =?utf-8?B?RmxteUJ2N2FkYTlYMTZHNDZmbS9rTHoyZ0g1TDZ4VHhpOGFCMk1pTGpkSjZs?=
 =?utf-8?B?Szk4MFM1TnVoNlJzeGVzb1hRVDRvWitlVUx2dzh1WjBud1JsWWdwcjhWK2gy?=
 =?utf-8?B?U3hpRzJneWVkWUcwWFcrVExoUWRZTU5vbHpOSXZ2SDk4cE1yckplbzRYb3Av?=
 =?utf-8?B?RStCeUtteWdKVFNsWWFwbE92cEdJY1F3TDh2Q0RSbWF2cnlPMnloSjA0TUNy?=
 =?utf-8?B?dmhOdkE4U0t4MFpNL3c0NWRBWWZEWGkrYlVRWGJXRnZjN2Z2M2cwdkRzVjRJ?=
 =?utf-8?B?ZnI5blQ2dHpRRk1vSHBaLzMvOWNFVjVCL2JIWXkvSUNyVkt2cjZPaFh4NU5F?=
 =?utf-8?Q?LQrArjWTF4s/7qzBZD3KjrXaY?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea000db6-dccc-41c0-ba37-08dcb18f91f2
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 18:35:37.0090 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6lXLzRuIx60Al+eTTvYsmupeIDCD9aUBTjA/uPYDhWtLUUfpdjzUIIkW4wc68AoeJ8INXxhLVqkYdAxnpO3ZEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
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

Hi Vinay,

On 31-07-2024 04:31, Vinay Belgaumkar wrote:
> We are seeing several instances where the RPe, which can be altered by
> pcode dynamically, is causing subtests to fail randomly. Instead of relying
> on it, we can use a mid frequency value for these subtests and avoid these
> failures.
> 
> v2: Fix bug in the tolerance function. Remove rpe usage from freq_range*
> as well (Badal). Fix test documentation to reflect change (Riana).
> 
> v3: Actual frequency cannot be guaranteed to follow the requested value
> 
> v4: Handle cases where RPe can be greater than min/cur freq.
> 
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2200
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2196
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2262
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2256
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2203
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/2412
> 
> Cc: Riana Tauro <riana.tauro@intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>   tests/intel/xe_gt_freq.c | 57 ++++++++++++++++++++++++++++------------
>   1 file changed, 40 insertions(+), 17 deletions(-)
> 
> diff --git a/tests/intel/xe_gt_freq.c b/tests/intel/xe_gt_freq.c
> index 93ebb5ed0..c9d59508b 100644
> --- a/tests/intel/xe_gt_freq.c
> +++ b/tests/intel/xe_gt_freq.c
> @@ -26,6 +26,9 @@
>   #include <sys/time.h>
>   
>   #define MAX_N_EXEC_QUEUES 16
> +#define GT_FREQUENCY_MULTIPLIER	50
> +#define GT_FREQUENCY_SCALER	3
> +#define FREQ_UNIT_MHZ	 DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, GT_FREQUENCY_SCALER)
>   
>   /*
>    * Too many intermediate components and steps before freq is adjusted
> @@ -70,9 +73,14 @@ static uint32_t get_freq(int fd, int gt_id, const char *freq_name)
>   	return freq;
>   }
>   
> -static uint32_t rpe(int fd, int gt_id)
> +static bool within_expected_range(uint32_t freq, uint32_t val)
>   {
> -	return get_freq(fd, gt_id, "rpe");
> +	/*
> +	 * GT Frequencies are requested at units of 16.66 Mhz, so allow
> +	 * that tolerance.
> +	 */
> +	return (freq <= val + FREQ_UNIT_MHZ) &&
> +		(freq >= val - FREQ_UNIT_MHZ);
>   }
>   
>   static uint32_t get_throttle(int fd, int gt_id, const char *throttle_file)
> @@ -128,6 +136,8 @@ static void test_freq_basic_api(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t min_freq, max_freq;
>   
>   	/*
>   	 * Negative bound tests
> @@ -142,16 +152,19 @@ static void test_freq_basic_api(int fd, int gt_id)
>   	/* Assert min requests are respected from rp0 to rpn */
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rp0);
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "min") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	min_freq = get_freq(fd, gt_id, "min");
> +	/* SLPC can set min higher than rpmid - as it follows RPe */
> +	igt_assert(min_freq >= (rpmid - FREQ_UNIT_MHZ));
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "min") == rpn);
>   
>   	/* Assert max requests are respected from rpn to rp0 */
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rpn);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> -	igt_assert(get_freq(fd, gt_id, "max") == rpe(fd, gt_id));
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
> +	max_freq = get_freq(fd, gt_id, "max");
> +	igt_assert(within_expected_range(max_freq, rpmid));
>   	igt_assert(set_freq(fd, gt_id, "max", rp0) > 0);
>   	igt_assert(get_freq(fd, gt_id, "max") == rp0);
>   }
> @@ -168,13 +181,16 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
>   	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
> +	uint32_t cur_freq, act_freq;
>   
>   	igt_debug("Starting testing fixed request\n");
>   
>   	/*
>   	 * For Fixed freq we need to set both min and max to the desired value
>   	 * Then we check if hardware is actually operating at the desired freq
> -	 * And let's do this for all the 3 known Render Performance (RP) values.
> +	 * And let's do this for all the 2 known Render Performance (RP) values
> +	 * RP0 and RPn and something in between.
>   	 */
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
> @@ -190,17 +206,20 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == rpn);
>   	}
>   
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	cur_freq = get_freq(fd, gt_id, "cur");
> +	/* If rpmid is around RPe, we could see SLPC follow it */
> +	igt_assert(cur_freq >= (rpmid - FREQ_UNIT_MHZ));
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
>   			     "GT %d should be in C6\n", gt_id);
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
> -		igt_assert(get_freq(fd, gt_id, "act") == rpe(fd, gt_id));
> +		act_freq = get_freq(fd, gt_id, "act");
> +		igt_assert(act_freq <= cur_freq + FREQ_UNIT_MHZ);
>   	}
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rp0) > 0);
> @@ -232,15 +251,17 @@ static void test_freq_fixed(int fd, int gt_id, bool gt_idle)
>   static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   	uint32_t cur, act;
>   
>   	igt_debug("Starting testing range request\n");
>   
>   	igt_assert(set_freq(fd, gt_id, "min", rpn) > 0);
> -	igt_assert(set_freq(fd, gt_id, "max", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "max", rpmid) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   	cur = get_freq(fd, gt_id, "cur");
> -	igt_assert(rpn <= cur && cur <= rpe(fd, gt_id));
> +	igt_assert(rpn <= cur && cur <= rpmid + FREQ_UNIT_MHZ);
>   
>   	if (gt_idle) {
>   		igt_assert_f(igt_wait(xe_is_gt_in_c6(fd, gt_id), 1000, 10),
> @@ -248,7 +269,7 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   		igt_assert(get_freq(fd, gt_id, "act") == 0);
>   	} else {
>   		act = get_freq(fd, gt_id, "act");
> -		igt_assert(rpn <= act && act <= rpe(fd, gt_id));
> +		igt_assert((rpn <= act) && (act <= cur + FREQ_UNIT_MHZ));
>   	}
>   
>   	igt_debug("Finished testing range request\n");
> @@ -262,17 +283,19 @@ static void test_freq_range(int fd, int gt_id, bool gt_idle)
>   static void test_freq_low_max(int fd, int gt_id)
>   {
>   	uint32_t rpn = get_freq(fd, gt_id, "rpn");
> +	uint32_t rp0 = get_freq(fd, gt_id, "rp0");
> +	uint32_t rpmid = (rp0 + rpn) / 2;
>   
>   	/*
>   	 *  When max request < min request, max is ignored and min works like
>   	 * a fixed one. Let's assert this assumption
>   	 */
> -	igt_assert(set_freq(fd, gt_id, "min", rpe(fd, gt_id)) > 0);
> +	igt_assert(set_freq(fd, gt_id, "min", rpmid) > 0);
>   	igt_assert(set_freq(fd, gt_id, "max", rpn) > 0);
>   	usleep(ACT_FREQ_LATENCY_US);
>   
> -	/* Refresh value of rpe, pcode could have adjusted it */
> -	igt_assert(get_freq(fd, gt_id, "cur") == rpe(fd, gt_id));
> +	/* Cur freq will follow RPe, which could be higher than min freq */
What happens if the rpe is less than the min freq? Will the cur freq 
follow the min freq or the rpe?”

Should we add HAX patch run affected tests once?

Regards,
Badal
> +	igt_assert(get_freq(fd, gt_id, "cur") >= (rpmid - FREQ_UNIT_MHZ));
>   }
>   
>   /**
