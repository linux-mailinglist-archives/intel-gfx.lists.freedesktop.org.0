Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8726FAFF82C
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 06:48:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB3210E35E;
	Thu, 10 Jul 2025 04:48:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DhWiVPQN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF14010E164;
 Thu, 10 Jul 2025 04:48:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752122887; x=1783658887;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oyCi/9onkwvrelZkwQCOFVrQmIC2Y+qVe+VfHjz3EVw=;
 b=DhWiVPQNJgn5LUlBPFygjs6KL2mKaaAOeX0oOpZGJ+4Ux3okLj6C/i+C
 hZdFLwm+1nNXtBWsnghNz3eX5GkIEJBMPQfnJfIorYpEW3wu8JVhCPmA8
 RkrHqsW7KD2nxnxvDZtHwtwDezZrhrck99H1abyDbkiMSHdgin+Y9BEDp
 mrFDy9Q28wFR9fS9li7gMw0nB+oaqnTFSLXST71/PiN6ncTjGowMU/8mf
 EM3Ty8mOcdagVtut3/CxpwbbBRGIakW1O47e/mpnhzCIwPbKReq0msP26
 Gp+MhZ0aq12FnmlRCLgKQrILsNtpBTD/Ml80Ynihyq7iG1VmBMr9XMk8Z g==;
X-CSE-ConnectionGUID: 72j9Nh2WSVeX1nRbTa979Q==
X-CSE-MsgGUID: qMLct1heS1eN2PYYh3HeXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="65744307"
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="65744307"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 21:48:07 -0700
X-CSE-ConnectionGUID: ATZaf3zKSvONDZ4MJkHLjg==
X-CSE-MsgGUID: ZJgNZwMAQsyW6p/JIF+XWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,299,1744095600"; d="scan'208";a="159986582"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 21:48:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 21:48:05 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 9 Jul 2025 21:48:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.54)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 9 Jul 2025 21:48:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pwf+15MYbpiK2Ft3ULpyn3qYHdmH3IQLbCcGaXCKEumvFbaxkszBgRmErbsOxrR033/yTSb7dS03IKJsOTNdIPbQUpYMayb86GN4mIlSbsnh5epe9d4lZ7ty/0hjdGEtnWexJKdFcXkHoZxw381O5GQHkYjVpejQzWlz+xbsVT+Tp2632oHRYkEj3CnUX/BTdGpKjIz4/kH1uOnUku5KBXZ7EnEedjA/DXRaBdxa5Zr/GIEK+x+rsoK1OLZf4Wrlz5QoYLeAi69ixuVt5j60jt9Aw+Dq0e5CpBvKRF/mmB5oKP3OBO3d5nSEpE+Evf2LdG5JUa2oVkIA6tgPxKyd4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=coMbkkWcSlMPaZ4TkkrfMgJWbTm50Hn+FRrEEdRTuyc=;
 b=AhXEaWuV/7L/P09BD314ozpNG+ppd8V8SoVm4xvJMn2Qn8IunmZYdW3agou2Wcu8iJmO2rexzFHP+6U5fqZMbkf9RNYGPBMfEpRLGYtscBQx9V+hh4dUGbi1Pjrz1FKyAeVQ+f+qbbM5ro90x0gXNcTANFroKkcRMhoivcnOUuLZfNYop/yOK86lD+k4ZJkMOm+VDcIVkQjeHUWb2uCKf+58BJQzc14HGHAf6VdE03uiv4rw/FgMr40sD1QVSWokw+CFEmZWZfgzvKshG03Mfkha8ZfU0n6oGNbi4jgdH38L/mQXSa26r0zFK1fyC35GUTBHuZ/GRWjp22aryC99Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6045.namprd11.prod.outlook.com (2603:10b6:408:17b::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.26; Thu, 10 Jul
 2025 04:48:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Thu, 10 Jul 2025
 04:48:01 +0000
Message-ID: <ceca1424-6842-4386-b8ee-38e66847bc78@intel.com>
Date: Thu, 10 Jul 2025 10:17:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] Revert "drm/i915/dp: Reject HBR3 when sink doesn't
 support TPS4"
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
References: <20250709055144.879393-1-ankit.k.nautiyal@intel.com>
 <20250709055144.879393-2-ankit.k.nautiyal@intel.com>
 <aG6vSMRiKRBk7AQN@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aG6vSMRiKRBk7AQN@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0107.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6045:EE_
X-MS-Office365-Filtering-Correlation-Id: a27469d2-2755-457d-7225-08ddbf6cf2c4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|13003099007|7053199007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?allYOEtuNXFWVm1FN0JLcEVmWjdQcDRzS0JDYUpDc096eWtDanJrTjdYQ2FQ?=
 =?utf-8?B?ZG1wcEl5ZTlxNjE5TEFteHl0UjVPQ3VtUkhLa2xXSG1IUlBXaS8xVElvTGJy?=
 =?utf-8?B?bURlRHZsR0NHVDZmYkIyVHhjUVQrU3NjdVAybnVBdUNZT1BrWkNBN3hzaUIv?=
 =?utf-8?B?M2NTWndYenpvbkxFaExwNUozNEVJMDA1LzZZUm9ja1VZV1psakJVN3U4YVJa?=
 =?utf-8?B?MlNzTVVRRDhYR3BRREpKY2kweTA2OUJ6WjBlM1d1Wm1rQVBkRVpNT0hTdVBI?=
 =?utf-8?B?MVpoZE9iUngyV1hyTzM4SGd1QU5iNmlYRE5YSUliWkFMSVBDT0tIaVhFMDRM?=
 =?utf-8?B?TEdpUmRSRVpiWWc4OTNEOFVYVDN0b3dpYjU3SEF5ZFBLR1JDeWFCUHYxWnN4?=
 =?utf-8?B?ZmZWOTJWcW1sMWxEWEkwRVFaWlBTWXU0RS9QNGo5M2pPU2d4R2Nxa0QrZlI3?=
 =?utf-8?B?TEs4ZzdwejF5VDVzRTBIQzNESW5OTUJLUHNKT1NKTTJqdVFhWDlBZUhuNHJ4?=
 =?utf-8?B?dThIcWlDaWxkOUpGa2owMndwR2pic3dMeE1SbUVDNGllTkFrb25NSW1KZyt0?=
 =?utf-8?B?eXZMNERZV25OQW82SWkvdlhaV1lNS1g0dU9mSWUzNHNMY0ppVGw4SEhMTEZk?=
 =?utf-8?B?WmwreExLWUp3eG8wL0c3L2dIa0ExY1BiWmQvM21vU0xCeDJqTEZBZ2xaT25t?=
 =?utf-8?B?VFJoQTUzaE5iL1hHeWtSZzhvQnByUHo1TDRXSUFjQmtKUHIrdFJRYUZBNVQr?=
 =?utf-8?B?cURsMU9oRkFIa1UvdXFnZTJWVXhId0M3NGc3VDlHT0pOUzVZWEk4RDhXSUgv?=
 =?utf-8?B?bGpqQUZnQUtGV0N2ZnM0VWNEUTFIQWlKa3BGT0c4MytQMk11bWRxRkcxcktC?=
 =?utf-8?B?V0k5QXV0dW9aRGZvd2dRUW1xQ0FIVGpyS1cwVE9MWmxsaEUxbUV4Q1hPYmho?=
 =?utf-8?B?V1lKSFc4TGJBNzNsL2NsNGpyQnFPOWN6U1piV2htc3AxTmo5dWU1Z0RYMVhZ?=
 =?utf-8?B?MG82VVlXaytGM2JuZVZGQjc0U2F1ZnJDYzhvb0ludW1jeHBJamc2bExsZllj?=
 =?utf-8?B?R3Q3QXJCNm9KdnJuVFEySW91YjBZdTZxVG16ZUlmTitGemNtRFlXN3RiOUt4?=
 =?utf-8?B?RnZaTTVydDM1dUJJWDJLTlgwNzA5VGtVMzdSZmVPNC9xL0g2UVBQMXRsY1NM?=
 =?utf-8?B?TkdLbGlrYksrRDBIUkxVUVFTVjd4SjF2WXMvdTVNd1dmdU1NNm4yeS9HQzNE?=
 =?utf-8?B?Wm42SjNnSmFHdENPWU12VVdETjRsUHhLSTQwdlQ1ZU5nMTl4cjh2WXNDL210?=
 =?utf-8?B?MnNTL2lhN1RmbzRlejh2N2I0RjArdkFrazVnQnJGcGV0UkJGYjlESVBTZXhZ?=
 =?utf-8?B?MU1TTXlDRUVXbUUwZEM5RHFLOUtGcGZMQ3U2Y1d0MEU5Zzk1NW1JVXcrTWJr?=
 =?utf-8?B?MkppdU5NUERNc3U2UGo4M3FXN2o1QTJRZ3pKdWowNE9MUWpCVkpUYVo2VWV0?=
 =?utf-8?B?ME1wcVZZaktsUVRTdkQ4MTh6R1dld21MUU5EZHZpUk0yV0VJR0I0cENQL0Fl?=
 =?utf-8?B?WTRkZkJ0a0ZldTJ1ZFBSR1JXS0RPYnluMnI1K2FGeE9uR3ZyQS9HcW8xc0dX?=
 =?utf-8?B?YTR1QWtPa2NZY1h5U3hiRGVzdUZWSytaREZIMmJnck9aa1BHei9NanYyK2lq?=
 =?utf-8?B?T3BqQ3BVdW9VcWhXaERWUUFNQldsNEJzUkVrZDV3TWd1YkxJVWJTZ0oweTZs?=
 =?utf-8?B?blplS244RStXRmpPNlpZd3dFNXdha2V6V01jeE1rSzdsUXhWbmQ1TXJRR3R2?=
 =?utf-8?Q?DwG0F+fZJ8a3yob2jCnRZ5zWa4koqNmhUwi4g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007)(7053199007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MDBJN3NVeEk1dlhWam55UjByZ0sySXZtcVY2NU1tT2ZNSXgvVGxpV3hYWU5F?=
 =?utf-8?B?Znp6RUlrWkt1YVd6bU5vSkMwaHNUNE9zeXpvSW01MU9tRGdvcXIzMjZTcmRM?=
 =?utf-8?B?NWNYSFNld3JFSnBFc1BIZ0djcXJCLzNacmZaa0hRRmJyTldzQVJ6dEN6dFVs?=
 =?utf-8?B?L2cyYmF0M05SZ3R6RXF4TmZpWklzdXdSWjJrT3dncEQvYTdzSFhwT0VuamNp?=
 =?utf-8?B?cDdhN3FqZk0yUEMvOTc3Sm5kbTBremZiNlVFNUo0RTR3K2t5b0VqYjM0VUN5?=
 =?utf-8?B?N09GOTBaN0FhWUxaUGZYS29pQjEreGEyMVJPRFA3Zmp4SklhblprTVNSYUly?=
 =?utf-8?B?MHFrM3RVZE9QelpKZHd4MzVFTjJocVZ2N0FqODl1SFk2NHJMWVdaSVpjVytk?=
 =?utf-8?B?WDlxamRjQ2NZaDVXeEMyS211REpjUUNtdUpOVCtkb2IrcGswL2dMdlczNXBp?=
 =?utf-8?B?VmI3aG82M2lQSjk5Mi9vMW1ZS3lSMWNMVE5hQ0FWVWtpMm1saWNqdnluNXJF?=
 =?utf-8?B?TENQRnNpb2l1ODhhNmljSmI2SjNNUjlkVTJ6TzVQbVR6S2tPSnY1cVcrdWJP?=
 =?utf-8?B?TytHWkt0Z2dlSmtibi81M1B0L3d2S09sbFdkS3lXeUN3eStoSjFwR2NkS3NP?=
 =?utf-8?B?SU1qYjh0UDREK21BSWN3Ky9Vei85R3lGditML2dxb040VFBocTZuRGZXZEJO?=
 =?utf-8?B?UTJwclN0UVBLa2Z6ZE1FL3Z5V09BR2RpOXZvOTBmemcwVEJBOTdSc0FqcE8v?=
 =?utf-8?B?Wk10VDRETlNLaEEwYjFFOVcyeHRWaTdLblZubXRCZGRyc0FUa0ZvbGJqMlcw?=
 =?utf-8?B?UDZvUXI4cEs2ZURCYnk0Y3RPVG8wRzRveHNSZHdxTG5kbWF4TW9LTkt1bzFG?=
 =?utf-8?B?eURSckdCcTA3WVAzR2pjUXJ6VmhyWENJNkhRVndpcTBaRitpR09yR2NCbjcr?=
 =?utf-8?B?Q2ZsK2laeEFqVGNrcFNNUmZZTUpCTzdoTUhORFloeVg5VHdSUnBWaUlrOXIy?=
 =?utf-8?B?dEpXV3A2WVJrVXk4T3RlaDR6cUxhZng4WnJYUnB0R3k1Nk5Ud0RBZURYK3gw?=
 =?utf-8?B?MDJ6QnBZYmFqZGRSR2lyQmFkSXZjZGd1eCt1Mkk0M3FzemZNc29EWEZtZmdz?=
 =?utf-8?B?WEpQUUhHSlN0eUVDdE85Umsyd3lZM2QwcFpTd0JnZzlQQlV3K2hoOTQvUnFq?=
 =?utf-8?B?QlU4S2RmZGdjTjFaRjhCdk5QV0p2VWMrekhJWkoxbXBHblhsdkRINllZYjFt?=
 =?utf-8?B?bkF3dHVZRVRQQlQxclp0c0xTYXhSeDVuMjFVNjlJV2NjUUJNY2NkQUxPcGNl?=
 =?utf-8?B?WkgwMmNoUmhjUm9kRHRMcyszUUhLYXdKRXJoZ2sxbS9VRFhiMEk2NnMybDd2?=
 =?utf-8?B?OE8wcWt4cmNFS2c3RU5KQ1plb1ZnUkdsTXRNUjlwYThUNW5XeU40WlJQN0dH?=
 =?utf-8?B?K2lXWEYyeDZIekVONE96a3dDSzJtaHJRSUdiQVB3YndiVm1XdWtzcmtOSFJP?=
 =?utf-8?B?ZHk3TlpDemFlU0s2clFpZ3MyTHpIMmJ5VlZBYmJQZlkzbk9zRDZSMWgwSFVu?=
 =?utf-8?B?dXFJcXVGMDJqL0JKZVE3RjRDNlEzRXd2VTg3TGR4YTZlQ0gwK2ZVSC9LQW02?=
 =?utf-8?B?MzRoV3FleHdzdTZ6UFZycEZzNTMxcFZydkd2RlBDNjFWZjRsV0YzVzhaQVdV?=
 =?utf-8?B?eDdDV283SjMrS0NtaHNrdDB4ZzBqbVRaeDd1aHhZKzRLdE9vZVh5dnk1Q293?=
 =?utf-8?B?S3Q0YlVqYUk4NXpselQvWDZsTUlOZ25JRmRYT2RzRXVqOEgzTnlNYWtsaENr?=
 =?utf-8?B?Y3NLNnlCTUJaSHhxUXBNQ2tpN0JWT2pGOGJ0aGNISzBmMXlBbnh5ZlZLUjZQ?=
 =?utf-8?B?Q2dRMTByVVMxS3Q3ZSszeHo3K1NjbzdvU0ZZL2JjazB6cHNaSmt5VHBDSmRk?=
 =?utf-8?B?MzNPQWc1MFhDdTJWVGQ4WTZscUJMZThTQTFuY3FoejBvaWd4Q0tJaDN6NXFF?=
 =?utf-8?B?U0hwZGhrY3c3cFhYdUJsVENhdHpCUFZackQzNkRZajMvMndDQUZVUjZpbTNi?=
 =?utf-8?B?Mm9icG5oOVhMQThJRTV0bHdXVTB5YkZHZjlkWitjdE1EZ2F3WHh0TFVXMzli?=
 =?utf-8?B?dlQ1VXkzWGxlLzJQaFFMV01nelpkcG9TNEVETTEwcUZjTnZMQnZXbGF1ZEtr?=
 =?utf-8?B?ZFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a27469d2-2755-457d-7225-08ddbf6cf2c4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jul 2025 04:48:01.0150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6u6czvmnOteuIIekrZUO/k2ijKyJe6PcOhdZ3BeDQqXT34RG/m6NqMkB1Wu9JUxpis1Wk2ibq9GV2S7DsCdfy47FtI27iIxVZcJeb/yCguM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6045
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


On 7/9/2025 11:34 PM, Ville Syrjälä wrote:
> On Wed, Jul 09, 2025 at 11:21:42AM +0530, Ankit Nautiyal wrote:
>> This reverts commit 584cf613c24a4250d9be4819efc841aa2624d5b6.
>> Commit 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support
>> TPS4") introduced a blanket rejection of HBR3 link rate when the sink does
>> not support TPS4. While this was intended to address instability observed
>> on certain eDP panels [1], the TPS4 requirement is only mandated for DPRX
>> and not for eDPRX.
> That last claim is still not really supported by the spec AFAICS.
>
> I think the best justification is that the Windows driver allows
> this.

Alright, I will update the commit message and send again.


Thanks & Regards,

Ankit

>
>> This change inadvertently causes blank screens on some eDP panels that do
>> not advertise TPS4 support, and require HBR3 to operate at their fixed
>> native resolution [2].
>>
>> Revert the commit to restore functionality for such panels.
>>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
>>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++---------------------
>>   1 file changed, 7 insertions(+), 42 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f48912f308df..92abf819e60e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -173,28 +173,10 @@ int intel_dp_link_symbol_clock(int rate)
>>   
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> -	int max_rate;
>> -
>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> -		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> -	else
>> -		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>>   
>> -	/*
>> -	 * Some broken eDP sinks illegally declare support for
>> -	 * HBR3 without TPS4, and are unable to produce a stable
>> -	 * output. Reject HBR3 when TPS4 is not available.
>> -	 */
>> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> -		drm_dbg_kms(display->drm,
>> -			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>> -			    encoder->base.base.id, encoder->base.name);
>> -		max_rate = 540000;
>> -	}
>> -
>> -	return max_rate;
>> +	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>>   }
>>   
>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>> @@ -4273,9 +4255,6 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>   static void
>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   {
>> -	struct intel_display *display = to_intel_display(intel_dp);
>> -	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
>> -
>>   	intel_dp->num_sink_rates = 0;
>>   
>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>> @@ -4286,7 +4265,10 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   				 sink_rates, sizeof(sink_rates));
>>   
>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>> -			int rate;
>> +			int val = le16_to_cpu(sink_rates[i]);
>> +
>> +			if (val == 0)
>> +				break;
>>   
>>   			/* Value read multiplied by 200kHz gives the per-lane
>>   			 * link rate in kHz. The source rates are, however,
>> @@ -4294,24 +4276,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * back to symbols is
>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>   			 */
>> -			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
>> -
>> -			if (rate == 0)
>> -				break;
>> -
>> -			/*
>> -			 * Some broken eDP sinks illegally declare support for
>> -			 * HBR3 without TPS4, and are unable to produce a stable
>> -			 * output. Reject HBR3 when TPS4 is not available.
>> -			 */
>> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> -				drm_dbg_kms(display->drm,
>> -					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>> -					    encoder->base.base.id, encoder->base.name);
>> -				break;
>> -			}
>> -
>> -			intel_dp->sink_rates[i] = rate;
>> +			intel_dp->sink_rates[i] = (val * 200) / 10;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>>   	}
>> -- 
>> 2.45.2
