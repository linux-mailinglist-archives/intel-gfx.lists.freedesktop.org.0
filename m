Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C975BFFF13
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2519F10E37B;
	Thu, 23 Oct 2025 08:32:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Aa562k2q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8952310E8EE;
 Thu, 23 Oct 2025 08:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761208364; x=1792744364;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1X8Fn4XCmx4JvaK8iDXZbrusiHI+ad5Ghrq9VumoUvc=;
 b=Aa562k2qAVFlblwDXDr472Ly73alT21MWWXcKvBhKC5pEtDMglVw2fXF
 j82QNlBPYIfI8dCD32+sZn9Fe+redebmqiyYXERA2vd7XBPDfZtbwuRLn
 MCyRYttF4FuxBPmfA/tNR7TtOrwfUnKCo4v+S3A4dFgWqKbUZcTGI9yLq
 zzbdMcDOvKUBw3l8v8jUsb2QuwHjw9tvBipFcaGTT3UvKI0J7gOFDMsBE
 OFUse4N9g+AZ+9JfN0//ghcLtJR9jvGMsoBgp34mnX00HkjqCnoFfEeyq
 1/+CnMwB3BKQiJj1QOXUsI6lV33urC4P3Fw5XyEjhEtk38rYWfpI8yWlj Q==;
X-CSE-ConnectionGUID: uyQ/Pf1xSN2tau6vMNIfbQ==
X-CSE-MsgGUID: EmApBqy4SR6g+yzxV6rKaQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74809498"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="74809498"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:32:44 -0700
X-CSE-ConnectionGUID: 7EsO5+CNT72o/muBvOtUMg==
X-CSE-MsgGUID: +o9tg49USWKNcrTNhQVbMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="189365422"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:32:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:32:43 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:32:43 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.17) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:32:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Phr7VSFtbSzQ9z6RzXtjhAkFXxoe8Xji/XZ5QoHnACZS06ds2uyEUB9cNOZo1/sth02QrrUAta9rSGlF46CsS0FWKjDHHcz7WLTSxNAZWrEtGDbGvgze0GP+T5uElbY0a+T35GgCHrX0KG7WEBUqU24FZs7f0vYF4f3wAZZQjS5I/bwyxKygRHZL7V2/3tsaIozO/RtRakkhd6tWW669U94dH822Gt13SrxtZtXWURqCewCSrq3lLb33o0sYCddaPUXNiMkToZ9uHJ2kuuKIT/BwXW6Y4FwsP4Sjlpbirmc6jmGhEASPbwn7XZzadodVRKZk54Stl33oZvv4kaEXqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B6uLZMjIyLQQXDdb7VP5rnsD2CZt3bGtXvFpi+YMr4M=;
 b=TmztDd1eokgTVb0SbKfxhsJxjkH1EBnz8Oq6y39fKYsgP/pI9IMIk/yRsgZxty95igoO2DqGO+whJf05gAtM/abzBcxQMP/ldrPkSI8qKwFBaxp/LyZRBqKwOw9p3gB5s8pcQU6M4no0KsiJKLJNThODRY/qLSDF0Lsfaza1t+TDDLh/MoP8o+KLXogQKVQ/PBaZZGUOk5VLin8ZGpdzWmVy0dD7rRoRbDdcsDKH/ABLxL/E+0XGzv07c4kVWI+zeML0DG5rUfYKGf5tahqqzAzqIhDDRWR/ERGGtq9RQYFAttNWkDVpEVTwa9vrGkP1i0yDgPtwcySkQa+GehbPuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB8720.namprd11.prod.outlook.com (2603:10b6:8:1aa::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Thu, 23 Oct
 2025 08:32:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 08:32:36 +0000
Message-ID: <8e876912-d1a8-4b9d-8ba0-4a442b78922c@intel.com>
Date: Thu, 23 Oct 2025 14:02:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/25] drm/i915/ltphy: Program the rest of the LT Phy
 Enable sequence
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-15-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-15-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0069.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b3::17) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|DS0PR11MB8720:EE_
X-MS-Office365-Filtering-Correlation-Id: dc7d808e-8394-4c12-6943-08de120eb80a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czVyR1pRL0t3WEFYRlFIYnFnUDZaMUEwT1FaNFdLUVd1K0gwbGpiN1B3YUFp?=
 =?utf-8?B?N3kyeHd2dmI0WVB1TkZmZHJXdzlrMWk2RUJJWmdneG1aeVIycnpPejlMWVph?=
 =?utf-8?B?cnpMWWtkdGtQRGZFS1lRTDh1WEUwZlhKOEpabkswdGhjMGNqckxOSWlkT2Rl?=
 =?utf-8?B?TXRWamZEZkdzU2ZhYklTMlZNdGhQTy9ycTNlSmJHU0pYWHpPRUFCVzBBWEFX?=
 =?utf-8?B?bmp2M3VIbjd0SnhBZGN2M3oxWWRIRWViZUN1Q3pQNXNZTEFDQUhLMGtxT28w?=
 =?utf-8?B?MTh6V0lwRGNsQ1pVVVp6TTRSSWJLTmtUSHc1MXpoMGZTMEdVSXFMQU56QzBU?=
 =?utf-8?B?QWlxK2N5cW9MZlRrVTNtWCtOMFlnUEI4T0tyUkl1ZjdLMVE0K20xYUdQdTZJ?=
 =?utf-8?B?cjBpZzREWWltZS8wNVgxeERjYXpyTEpEMTUxU1VyLzdKdHN1bEJhT2dad3RE?=
 =?utf-8?B?NUFNaEt3dTVSWTY5MTA1cER4WGEwa0JSN1FSNU0yUTdyNEYyQnpJdlJZa2U1?=
 =?utf-8?B?VWphL2RzdGNXTWEyMi9odGhvMUNCZWFKbDluU0xDMnhKZjhWQk5GUGNnc283?=
 =?utf-8?B?djJrajFDU2o2QWtDOGZmbVlYUHpxM0JMRG4rN1BtMnVhRW9ZNkU3RFArcUM5?=
 =?utf-8?B?Y0dMbjhNWXBTM2NxR0xsYzV1cDRCY0g1Q2xrS0VBbDFhNEFkNkRSc2tic2xC?=
 =?utf-8?B?VUtoT01oM3piVEsrSXFRNmkzOGd3WXpNTVdaVk1GMHFsTzEvMGlaRXBia2dy?=
 =?utf-8?B?TTZ0TCtrbWNVUWl1MThpNnFRNTV1RUltcWhJOVZjc3IwakxwcWVmRlNIN0pI?=
 =?utf-8?B?MUJCajNEVTRWNEdPeXJHOHhTeVd4d3JjK1FzaGdhMm5GMzRHbGpmYnpaVGwx?=
 =?utf-8?B?aHk0QUtaNStHY1FJV3oxTmprWUc4ZEdJVTlPQ2NlM2YwYmRhVzN2KzM3UGRa?=
 =?utf-8?B?eTlhYW5kOGlSU0RNMk9XZjRnQnQzUFpJKzA0QmNldUozSzJyRkhKb2R6NmxS?=
 =?utf-8?B?cWNiTS80ZDBNMXBoZzY4TzZidnprRFlic2RuVENvclhjU1BaUWVWZDcvS2Ex?=
 =?utf-8?B?MTNOUCtkSnVHcWd5blpzTlpHNW1XMzFiaWo2QW1RbUhRaERPczZtYXhQUDgy?=
 =?utf-8?B?QlFlZm5zV1JXSkRpbEhncTdNeVZrQ3orNWNjRm9vT2U2d2pZaXJpK3ZUQlZt?=
 =?utf-8?B?cWdDRDloWDNaRFU5QlNDanh1d2oyNDhrUE1RN1R5MjkxT3hteFFsWXNpMDlW?=
 =?utf-8?B?a0lPeG1SakV3Q2FNT1JCMEZxam9SbS9oS1FsVXAxbFVtQ3ZZUWhURHgzZmJm?=
 =?utf-8?B?ZTBOV0RpMTcxVlErb3BnTlV6Q1lxMjhWVk5FengwYTVWVUVxc0h1MGZaSzF3?=
 =?utf-8?B?OUw5Wk1HVlNJTGJqTS83Z3VGNk1IcWZVZU02TzdLazd6NG9rSDV1R0thTFZO?=
 =?utf-8?B?MVc4ang4aVhRWXR0MFlUNWt0RDJidCs1V2h2eGRRL3J0S2NxRllscEdUWXBW?=
 =?utf-8?B?dW5RUmxhNDNTVDFIVnRQK29EMkpFK1dqVjJBcXcxUnNQYS9QcHppb245aFVk?=
 =?utf-8?B?RENnSGFGc1BVZUtPbTRGWVpac3J3VjEwSXRvZVZtZ0MvWU9wR3A5YlE1ZERV?=
 =?utf-8?B?aHdXQXBYRGlDS1ZSbmhyTVlveG9HQ3pxbEhGbzlnajlmZ3dLcVpMdkczRy9h?=
 =?utf-8?B?ekZVS2MraXI5TmI3Tk5NNWFScDY0WFBveGRsRnNNSmhTZUFiTkh2QWVtcCs5?=
 =?utf-8?B?NjUzYUc4bS9FSCtVeUpqS3Rkdk9wMHNDRDBJUkx2Y3o4aWp3OWtyR3VJYlJt?=
 =?utf-8?B?Uit5blJwclRtZkdBQ2hKNmh5enU1RFM1RDlQRllhNmF0MWZjaVhPdlF0OXg0?=
 =?utf-8?B?TFVKNkFXcC9CS1lNQndtSXJCYi9vZTlBM2RTUmVzbDl1bFFZSENuZGxIaXE0?=
 =?utf-8?Q?zb03N+3XAvEJ/a+uv4LPSXMEpsUvpW5q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE5uZDlDdXJBT3JvNFg3YjB2S055WXVwZ2hvcHpkaEpyU2F4VWZ3aytLNGVF?=
 =?utf-8?B?bFFCRWNDek0raTVXTEFJNWIzalBkRFNVd2c0d2lVN3Z5UnFFOTJ5TlNWL1pM?=
 =?utf-8?B?aWJ2ZTRtZjh0NEsrTzlVempvSmNzWGg0T2xack1lbkZHQ1dQalZYTHg3d05k?=
 =?utf-8?B?VldUUjJuQVdoUFdsNmdMMWM2UnFYckF2ZkVyMmpKZ2ZJcnphbHFRUk1LOHI3?=
 =?utf-8?B?dVJTT3BlN3J0OTNqN2themNBb1h2RFBab256cmwrZk1EYlhJUm5NTUMrOXRW?=
 =?utf-8?B?d1dFV2cvbHBrVmVuakFmKytGQU1LZThZMWprdTA5dlFreE93VGlFY0MzUFVv?=
 =?utf-8?B?N3FrSFBmRGIvV2pFMHl6ZC8vSWZ6dUtPcGVHM3p2bisxUjBNRHVyM29jR21v?=
 =?utf-8?B?MXVCSVVuWnNzeDY3eElkbURzcU1HL0NqZVFLVkd6QXpBZVNTNTVqQ2lrWERN?=
 =?utf-8?B?MVFmU2pCMzFpb3hqWE1wbnFhZ3R3WGdtNDhhd3pESEVtRWxETW1pZkxSQWxq?=
 =?utf-8?B?R3RhenpEcUhQa2loRG1OajlQcG5KYnQyeHVRRGNMYjNDVGhYYmN4RjFydUFn?=
 =?utf-8?B?NzFiMjRTYzR1RlNrSjNsKzN5MFk2K0VDYUhvS2JOcGpINlFVMWJWbDVzQW5p?=
 =?utf-8?B?elM4Vmp1eXR6YzBaOUlTRXJXRXRVTURRcENqYjNiNjFqTElkTEQ3a0JkbThm?=
 =?utf-8?B?UUMxQVBJbTAvdGVIMHg1Q0lhVEU3Y0VwMDBrTlFNNlRGRWtoU2ZYT05JL1dk?=
 =?utf-8?B?akxVWGNhMDlWV2k1QTFQaisxdTdlc1ZiN202a2RleVMrQTR1V0ticmpBeFFz?=
 =?utf-8?B?SkRwQ21oQ2R3ZGxMMzEvNitncmgwSTIxR3lDaHdhVHlJbTBlQzl1Q2Y1aDM0?=
 =?utf-8?B?b2VvZHpNc0k4NWdnVzBxN1RMdlRKV2VPck1ZZjlwOXliK1c5dnd1LzVqbVl4?=
 =?utf-8?B?MHJ5eTQ5Q2dMYSs0RGxCcnNDN2Y5TUdpWkhQeWxUbVhZOWNqZlN4V29CWmZE?=
 =?utf-8?B?NmlMUlRxS3JHMVlYNGMxZThTYXRHdFlwQ29kQzJ6ZG0vZTZTSG5lQnJIcUFT?=
 =?utf-8?B?OC9oTHVqMUptSFB0WWk5M0RPYVhwRGY4NnpXVVRCOWExRjcvc1F1UVZtU3dj?=
 =?utf-8?B?NDd3blllM1pCYmpGcTBZNFgvNjRvZVhqUVJjbFJaQk9ROUNtMm1Ub0NJVUhi?=
 =?utf-8?B?OFZRZlowekcvbkZ5TEJJUVJNbVYzQVl3MzlVZGxXUk9KM3VTK0lRS09IeHRi?=
 =?utf-8?B?TElMZC8wMFJ4a284K3E1SnVyQlZrdFZDejFjL3dFTDBEYjB4RDFIcEthZDFz?=
 =?utf-8?B?QXZjdDB2VEtET0lNMjM5akgwVmlPY0VpYjdpOGx4WGVzQ2p2b0Q2amdZQnR3?=
 =?utf-8?B?MXFRMWFYSWVuKzdUQ2ZOV05jejl4UjJKL2tNSC9OZGxjLzhkakRtL1hNd3JD?=
 =?utf-8?B?QlYyNktiM3NkTEtpMmh0bmxkak4rV1lDUklpdmsxZCtsUWtQTzFmNVlDSGR3?=
 =?utf-8?B?QVpyN2REZG43TDFTR2piVnBLNlFscG5xTlYzYXRQZVRqYmtXMGJJcE4ybmxw?=
 =?utf-8?B?U3Y4N1RlTXVxQ3oyb2xTaFhXRE9zS0JyS1JyUU1SdnNhYkpiSVZnbWhTWUdB?=
 =?utf-8?B?UDgwOENITjZ4SEhiNmc0Q3FTV3JQVXZxV1MvbU1Ib29TUkhhY29NYTFjcU9E?=
 =?utf-8?B?NkdGekdBeWd5ZmRsZUNJYzBrU0wrVHUveFgzR0RTMmNpWURaWEVpektxQ25y?=
 =?utf-8?B?QjZGWFhueFdIYU5PVVNOcFNiT0RJYlluYlpSNzZub1VnN2pOU1QzUEZLMFgx?=
 =?utf-8?B?Rkc0K0V3VW9FczQyTytyM0J1eW00UlVqZ1ZwUkZ1NDRZNHFXT3VZZDVyVkhq?=
 =?utf-8?B?YXZwQ2RiVGtWL1k5c3FiZEFTUFRQSGUvK3JDRkJIeHhtRHVDdVdRVmxjSE5t?=
 =?utf-8?B?bGgzR0owL1ZGM3BlRFhRSXhxcnRQdXV6a1l1WE9ZU2N2TENmNTFYRG5uRWtx?=
 =?utf-8?B?UURsRzdzMFRBYk90cWJQUVJWU3BWVzdyeDJYMGlRdzVpc3NEU2NZbkl4bW4x?=
 =?utf-8?B?TTcvdjdEaFNEaGlPblZheWRFbnJMa3NGR1JjZFowU09ZZ0ZiSmtiQ2x1OWd0?=
 =?utf-8?B?aUFTVTNDeWVPTEdWZzBSazVmdks1cUExNGpWUDJkV0hVZlJXdzB4OEo1cW9I?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc7d808e-8394-4c12-6943-08de120eb80a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:32:36.3970 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UQLmkB+pI+yiJ07XsnEmXhu9CVehm/prflSIxxnuBbAdjeuAZlMNMcwA3MdrHd0wvhm2u26JU3Z7SINBCjFJfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8720
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
> Program the rest of the LT Phy Non TBT PLL Enable sequence. This
> can be done in a single patch since the rest of the prequistie
> functions are already coded in.
>
> Bspec: 74492, 69701
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_cx0_phy.c |  4 +--
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_lt_phy.c  | 28 ++++++++++++++++++++
>   3 files changed, 32 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index b060a5007921..914b215d8bd4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -409,8 +409,8 @@ static void __intel_cx0_rmw(struct intel_encoder *encoder,
>   		__intel_cx0_write(encoder, lane, addr, val, committed);
>   }
>   
> -static void intel_cx0_rmw(struct intel_encoder *encoder,
> -			  u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
> +void intel_cx0_rmw(struct intel_encoder *encoder,
> +		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed)
>   {
>   	u8 lane;
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index a5446686b23b..f0f0efa2d48b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -53,6 +53,8 @@ void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   bool intel_cx0_is_hdmi_frl(u32 clock);
>   u8 intel_cx0_read(struct intel_encoder *encoder,
>   		  u8 lane_mask, u16 addr);
> +void intel_cx0_rmw(struct intel_encoder *encoder,
> +		   u8 lane_mask, u16 addr, u8 clear, u8 set, bool committed);
>   void intel_cx0_write(struct intel_encoder *encoder,
>   		     u8 lane_mask, u16 addr, u8 data, bool committed);
>   int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 08a5ed27d2d7..9e4868a15e7d 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1496,6 +1496,11 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   	enum phy phy = intel_encoder_to_phy(encoder);
>   	enum port port = encoder->port;
>   	intel_wakeref_t wakeref = 0;
> +	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
> +					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
> +					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
> +	u8 rate_update;
>   
>   	wakeref = intel_lt_phy_transaction_begin(encoder);
>   
> @@ -1550,6 +1555,9 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   		 * Change. We handle this step in bxt_set_cdclk().
>   		 */
>   		/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
> +		intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
> +			       crtc_state->port_clock);
> +
>   		/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
>   		intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>   			     XELPDP_LANE_PCLK_PLL_REQUEST(0),
> @@ -1572,17 +1580,37 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   		     XELPDP_FORWARD_CLOCK_UNGATE);
>   
>   	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_phy_pulse_status,
> +		     lane_phy_pulse_status);
>   	/*
>   	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
>   	 * Owned PHY Lanes.
>   	 */
> +	rate_update = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_RATE_UPDATE);
> +	rate_update &= ~LT_PHY_RATE_CONTROL_VDR_UPDATE;
> +	intel_lt_phy_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
> +			   rate_update, MB_WRITE_COMMITTED);
> +
>   	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_pulse_status, lane_phy_pulse_status,
> +				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> +		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> +			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +
>   	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_phy_pulse_status,
> +		     lane_phy_pulse_status);
> +
>   	/*
>   	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
>   	 * We handle this step in bxt_set_cdclk()
>   	 */
>   	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
> +	intel_lt_phy_powerdown_change_sequence(encoder, owned_lane_mask,
> +					       XELPDP_P0_STATE_ACTIVE);
>   
>   	intel_lt_phy_transaction_end(encoder, wakeref);
>   }
