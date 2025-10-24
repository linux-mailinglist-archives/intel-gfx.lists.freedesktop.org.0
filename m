Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E256C04A51
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 09:14:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 260A010E9E7;
	Fri, 24 Oct 2025 07:14:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y1Ev0Uhi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5ED2F10E9E7;
 Fri, 24 Oct 2025 07:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761290065; x=1792826065;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qRXZR5fxFiBu7UXwGGNdk75rCxGqdzqG1h5mrhLF4xA=;
 b=Y1Ev0Uhigf34vn09xovv3xzAIkZy19IcsPiXOpQjr22gIip4RTR2Qg3H
 IAp6HpKtOr2Lp91zovTgBrBrq+2kQ6+Tnawrwa2KvTYnpXl1J0ndxx9lR
 97cpU5kOWGCmGQT7IMaM9yrjkNyrHEHb2VdVj6Tea2sQqv8pAGk04ewQC
 53hp62NDg49iCVCduMFjfTXzc3ES6QxDwPOOxedpkzIpnfWyuZ1900Bqe
 iHoKEffKEpxZFOMhOXt1WjGLHRyDrQKI1d5fSqG6PO9ZUN7jt/mAdF/jB
 CQvul8jA0Z+mI2jLTf8s8XLbyTh+VPxWLj8NYVwVkmIHW2+Anv5aZUyF0 A==;
X-CSE-ConnectionGUID: z7ELGWKXRimoHTP3bDGPtg==
X-CSE-MsgGUID: GW6TSDEYR+ywyh+KdaovuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63562803"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="63562803"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:14:24 -0700
X-CSE-ConnectionGUID: Fyx80bQeQRO673c/e4iJkQ==
X-CSE-MsgGUID: 0i5dTgGnS8WPedfA25wMIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="189610111"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 00:14:25 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:14:24 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 00:14:24 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.23) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 00:14:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OpMud96FeRu/VSiwslOaSHM77cZwLTQ6CtKDfnSBK0AfphejeOhGAaaCPaXhntAu+7xStWNDfp3YzjjwUwGKylfLg/5ELomaJ2+in5WNq8BsSXl8AdSeSEsOFYn+Fw9/59j8wH9CughoDG9x3PNg7BcvvkFe13rcBMP7BF8ObD9Fy7cgQ/40T8eN0N3TiX997FsNQHeSi5cvXn9oAgRmAAuvMeOOQogpRcApss//+TWRuRBzTjmBFUf8mWoyZ3oLjRc4UUTuZGbAPY1AoFrPkSzJwndj5ZsF7KeeGCHaGUKv2pz6BwWr/VMlHqfxvxyk7cKnFsDL5EwK2lwm+2b2bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=525x2hEfj3twrgIy/+Rm7pCBdmCMm+v/Chc6hncOYhQ=;
 b=WTiB7KAGfNQG4V1cS4W3VMYdZgI5jkF41WDuKJrRifx0NTE9sg0TVJqTM3z1JOFGQ7p6H+nITcuEuxMC0hlz2BgJvOCeusSGQw3/xjV8RY0licfp6xTHJAUiTiwwpAtALVgWNfo8g3PN0Ucx8MZ2334F3FlRL8OCwW5yCOuad5ZsHwedEhv50+WRIuUoE0PWN8UICNOxjh/QgKdX94PVlrcdBRCQSAtsA+g7xQ4MNmXNq4NI3KlJxTiC3zz8dHO7Z9TIQ+GhMZQYlEQm7dNQB421DdI6XKGDWlvcjDXoKaafx1/adEInADd9jmmGmHGuVYAcQ7xYloXUvhg2sa2oeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MN0PR11MB6184.namprd11.prod.outlook.com (2603:10b6:208:3c4::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 07:14:21 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 07:14:21 +0000
Message-ID: <35cc96f3-6e8f-458e-9ebf-8789a5e9312a@intel.com>
Date: Fri, 24 Oct 2025 12:44:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 21/25] drm/i915/ltphy: Define function to readout LT Phy
 PLL state
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-22-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-22-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0038.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::7) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|MN0PR11MB6184:EE_
X-MS-Office365-Filtering-Correlation-Id: 713eaf7c-ce73-4994-faa2-08de12ccf459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NGMvYU82Tlk4R3dJU0lmYkp6aGpXc2c4TkRrVWhiWmE2UmpHTXViVEdxdTVY?=
 =?utf-8?B?Zi93UjNwVnAyKzJaTkZRMlYxYWZVTjZ0QnYwSWZhTS81RjhpdDRMdko0Vkgy?=
 =?utf-8?B?SEZGMFpwSHdQNHVYemVhNEtldEJGMFJyZDg0UUgza2xaN01qN1pMWnlqTDF2?=
 =?utf-8?B?ak1mZ2xFTncxcjI3Rk1tYllNMVIvUWJUQU5pQlVieCs5S3Fxc3d6dVFEUDJa?=
 =?utf-8?B?clA0RHk5aXV2TmtMbDZJOEpyWE1tbWxkZFhkYXp2ajBwN3VhaTczelRZeS9N?=
 =?utf-8?B?R21vRG1iaEk1N2pxYmY5cEt4RjlPT2dsT3BzOTY5SzEzWTRlL2V0VzYwSHNO?=
 =?utf-8?B?MkYrRTV6b0ozanV3RFFOckRnRS84QjdIaTF1eHRtaDdWZGNFZUdJM2RhaFdE?=
 =?utf-8?B?aHk4N3BFREhCTUJWVzZXdXptSm9nbVdoTFRQcWxQcjNOTklwdTEvc0k4U0hW?=
 =?utf-8?B?SDBXYWs4b1hFTUNsOWJOYjlDMFRZSGZGaHd0b0puSm1xYUVSSzVPRkFnb2hN?=
 =?utf-8?B?dXZiaGVCb2EzQmRaRk9BdExTcFBBcU42bFlkbE5MZldRQ2E1MkZXR3A3Rmwv?=
 =?utf-8?B?S1VQMzFYeHBwVzVIZ1FZK2RuUk1CdzNQSXQzc00reGR3bDNQL3k4UHMvb1Rl?=
 =?utf-8?B?b0U3SERNVGh4K2JFU010d0dnRUpSSFZoOHJsYk80WSsyM01sSWJpMUhCWWcr?=
 =?utf-8?B?RHRwbU9pWnc2QnlMUmtBbG5xSVFrRzF1bTIxVmRjRGloenJGZ281VWdLRUl0?=
 =?utf-8?B?S0k2VlFrUVRmSlArWHllUlk3VFdGakQvK01MTXpMejRvUnh3T1JRQS80SWwz?=
 =?utf-8?B?aUtndXMwQVUxYzhvNldpandYQ1VWWUtCRllLNVprdDFwYjBYZUI1NSswYklL?=
 =?utf-8?B?cklodmIrQUJTRWtsRDlRR1NiM3RRMkJlMzVPRWo2ZHk4aHRZY1dxQWdERHh5?=
 =?utf-8?B?LzdHTHlWTVRRN2pLeFNUdzgzcElUcmIvaEVwR3NnUFJGZzN1MW1hRVB4ckls?=
 =?utf-8?B?NFRpUkdxWnZQdjRHNjFTOFNjRnFON2FJeExaUkxJaEYwajY1bE1zUlY0azg0?=
 =?utf-8?B?K0VyVzN6cGhqN0NlZU4xUitiMHhmTDU5RjJZbjkzSS8zbmwySnlEK2xYa0dG?=
 =?utf-8?B?WmpJOVZEWGJZdFpjQlRLWFhpWmdPTXVNMWpnNVpxVTRBZ2Q1STlIVGwzdlMw?=
 =?utf-8?B?RXFBNU5hSzc0KzlsSGNVcytiY0hkZm0vTTIyZW1IYkJ4ajZFLzRCaVZkejUr?=
 =?utf-8?B?UTYxRlpWWXY1c0RxSkVDNmdEQUF1amZrN1NrQ2U0WEZPMmp5eUNJd1hvR2k3?=
 =?utf-8?B?NDB1eFlJTXNiSWlpeWYrWG01WDk0UVFsYkZ0RVZrRnBFR3k3Ulp5R2FQQldX?=
 =?utf-8?B?ZnJIaitVUTVlWXIxWWZiUzlPUm9Icm1Fc2tsQng2UkRoR3YvYzdBaUYyNUFo?=
 =?utf-8?B?OHVabUFzS1NHeVgwS0U4b1lkVncvTVdvT3FWRVlhcU9lUlhNbi9nZ2s0T3ZN?=
 =?utf-8?B?N2hmS3ZpTGQwQ1VSUkhIcHRpRitGUGZ1ZzhpUDl3SFZkcStndWk3dFdJaTNu?=
 =?utf-8?B?ZngxU0g0M0xiVkhhbnN0TmRwLzl6MnBJcXdBdkhSNSt0aXNzb210dC9PM2FU?=
 =?utf-8?B?SXYxVHVtVDBPdFB0N3FNSjh6SHFHT084WFZtd3A3SjNQUzZSYUZTZGhOS0xl?=
 =?utf-8?B?cmNsQ3J6VlIzcXdkVEpyYkJBbExKdXF5dVBRbVhDdzVNTW8rdjlRbHBZcW1v?=
 =?utf-8?B?OUNVYU1ITVJDVmczbTNucW5kdU5ialRRMVA5V3BtOVVzeGNiMGo1OHYxb0VV?=
 =?utf-8?B?K0hKZ1BMSWpFWUJYb2JJZldyZ0hlTWFrS0lsTzR5UUxzdkp0Y3BSWTlqTlk4?=
 =?utf-8?B?QXJIdjZZUCswd1VDSGpNUmNwMVAzSlRvSERsYUtGMlJiNGNMZmRxMFc0bzQv?=
 =?utf-8?Q?NFmOlLX/qi6RHk2+s8rHwJn8O7+GBUlu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?b3FYbTJWTW9qQUJ6clU1WE85WUFrMVI0aHNGZlJNZHk1SmZwb1M2bnlkc21V?=
 =?utf-8?B?T0phM2EwV21pYzh2ZGtNaUZlbGllU1o4L0Ewb1VGSkc3YU1ORzFKSGJzSjVJ?=
 =?utf-8?B?WXpWSzVhb0RGNElKTEdvR1YzK20rRVE2YUNEK01NWGVrcUQrWUZaUGFWRElK?=
 =?utf-8?B?Y2pjRHlaQi9Nb1crQ0NXNVY0cEZJTUpHV2VDbTZ3Tmw0M2VUWDhQVXlVeWx4?=
 =?utf-8?B?Y0RVSVE1Q0x5bU1KYk1kLzVRNWUreCtYT3I3ZzJXUG1GR01jVlF5bENyWjVQ?=
 =?utf-8?B?eVdYR1BuM1RKZ3hjOVlkTWxSVUJiOFdDTFNzQmtZUWdaYTdIdWQ4UVBlZGcz?=
 =?utf-8?B?MkUyWG9EeGFIK0Z3YnpEZW9tdTd1aDNLWlV0cVNBSVVPSkZjZEFiSkg3dm5x?=
 =?utf-8?B?SUlzLzBtOFdFb1JrbDdra0ZDU0xMeWladUZBL0YyNUQyb2o0N3FCZWpIbU04?=
 =?utf-8?B?cjR6TGhGdXVjYWRTdk1rQ2N1UjBMdEFwakNFVHN0QUQzRlpTaXhEUkthalRn?=
 =?utf-8?B?WWRuaGFDc1NJZU83cFB2MEhESk96dFluR2VNZW11YjlpSXl0VTdLN3IwL3Bw?=
 =?utf-8?B?OU8zVTV2eTVGQWsrdzdnL2t4K2crNTEwKzBEZkNGeVUyallqYTZQaHBSUVM1?=
 =?utf-8?B?eVdDL1NXQ1BJTWRRTzZKS3N6UEFWOFlYL2hkSldPUDAyNUIvUWtNMUUyaHN5?=
 =?utf-8?B?eTVGQ3VrZXV3WVlQVnF2SHNFcDg4QVE4U3RsTE4zNUphcTluMi9MNUduZTVL?=
 =?utf-8?B?TFFKaEdvaitOaXNDZVRra0JMWm1KcVBwU2ovZjVnZ1RjcWFyU0Y4R0V3ODRh?=
 =?utf-8?B?YzNESlJYSVh5WXIwam5rVVo1YWhwQkRpS0oyVjdMNnVraE9JZ0czMGtXV2ZW?=
 =?utf-8?B?NW1QTUVCb3FwWEV3djBIZ2dpK2VRellKRmQ0RjNEV1N4UkNKRWlkak04dE1X?=
 =?utf-8?B?Vkp0K1dtditDOU9KcDRaa3lmN2szaDgwNUJxTHVzeWM5Vlcyb3kwZUVkKzBG?=
 =?utf-8?B?c3FEbDJsZmRsR3kzWWtlcC9SSDRlYjcyY3BDZFNMTjRXaEkyV3JOSDBrL1Jz?=
 =?utf-8?B?TjhyV2dTZHlNVmZZQitPYkYwVXArcXF2VTFPL3dESGlLUGxRK3ZzM2ltUGRl?=
 =?utf-8?B?Zm8yNWRmUTNRdEVWTUxhQm9wcUp2VVdsOEpueUFkR0YzaW9TME55ZTdQTlpG?=
 =?utf-8?B?aWs5bENoTk1QUUxyek5DL0cwL3V3KzJMRDl4WWxaVkNJTTQ2TGVpQVQ3TjZC?=
 =?utf-8?B?UzNNTHd5NmcrRlcrNE9tMlVTNFFhM3FMZ2E5eUl0QzhHOVpNMlZLL1p5K3Zv?=
 =?utf-8?B?WXErQmJBZVRsQ09iZ3d4SmZubzQ3RC84UXBVbFhQM2xTQWNYS3NpTU1LdjB2?=
 =?utf-8?B?S1ZUN1NJSk8vcmpJRmQvdXNWbXI2ZlhybGRMQ2c3MHZEWGV2QnBiUFhZckpG?=
 =?utf-8?B?bW1XUGNmL0dyaXV3ekJkV0FKOW1WOERGVGljaVNwUTIzUUpIRjR4Tk1nUElG?=
 =?utf-8?B?MnhRK2JCUGNKZGhPa25jSldJelhla3BYWitaaWpxcks0QVR1UkFLbmdJNktJ?=
 =?utf-8?B?ZnBONEtTejhVWmpPM1BxbWxNTjlVeHhkd1YwaHM4TFNDVTBGaHJCdFlFaVBk?=
 =?utf-8?B?bWgrQUJUZG9qSGF4TzJkWENqOVJuREFCTGlzd1g3MTZsbjM5U1FmYkJHUXp1?=
 =?utf-8?B?Vk43OUJmZlJ1dEFCU2dvbWJ2N1BoS0RvTUQvYjR4eFlCdkJCVjA1MVlLRXph?=
 =?utf-8?B?QjZzMk9Mc2Z6d1BYSFFzeWw3MENaWkF2TVZNd2ZhUXNsMFcxeWU5RmxGeWV1?=
 =?utf-8?B?R2M0WXltUi9DZlAwcE0xbHlib2ptUFBCNnNJSzdiRFpkcXJkamxXM0ZlbG12?=
 =?utf-8?B?dFQ3bElmY081ME42bjhQKy9pakd5K05UTHliYnpDUmZmV2hpN3AzOXNmOXNw?=
 =?utf-8?B?WG1wdUVKT1o3VTllcHk2TnViRnVTTjhMZzBhYjNJRCtTczVHMXN6YWk2YTli?=
 =?utf-8?B?cGZRUUJtSnVJNUZzOWVBbmxLVFMxM1IwMFZZSXZ4SEh5TFB3NmFhZXVyZ2tG?=
 =?utf-8?B?aGVFNHk5L3pqYVFPdDNiWEJjVkN6bnhpZVVZMDR5UE83UmNBWDNkaTRqNDNR?=
 =?utf-8?B?TFB0NHE3S0FlY0gzS0JJQU4zNDdxbGZQMnAyQ0pjejFURWNVaVRCcW1yalh6?=
 =?utf-8?B?QXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 713eaf7c-ce73-4994-faa2-08de12ccf459
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 07:14:21.7448 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5OGaRDTuTIK7lG2KIuxVy97hfl5WqEUoxzLEPIGl4ofIuRtGE6VawgWlBPnsHrX9ZAJd1iDDOlCc3VyILEtygw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6184
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
> Define a function to readout hw state for LT Phy PLL which
> can be used in get_config function call.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>   drivers/gpu/drm/i915/display/intel_ddi.c    | 14 +++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 33 +++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h |  3 ++
>   3 files changed, 50 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index b6345508cb66..e226ba8a4348 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4246,6 +4246,19 @@ void intel_ddi_get_clock(struct intel_encoder *encoder,
>   						     &crtc_state->dpll_hw_state);
>   }
>   
> +static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
> +				   struct intel_crtc_state *crtc_state)
> +{
> +	intel_lt_phy_pll_readout_hw_state(encoder, crtc_state, &crtc_state->dpll_hw_state.ltpll);
> +
> +	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
> +		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
> +	else
> +		crtc_state->port_clock =
> +			intel_lt_phy_calc_port_clock(encoder, crtc_state);
> +	intel_ddi_get_config(encoder, crtc_state);
> +}
> +
>   static void mtl_ddi_get_config(struct intel_encoder *encoder,
>   			       struct intel_crtc_state *crtc_state)
>   {
> @@ -5234,6 +5247,7 @@ void intel_ddi_init(struct intel_display *display,
>   		encoder->enable_clock = intel_xe3plpd_pll_enable;
>   		encoder->disable_clock = intel_xe3plpd_pll_disable;
>   		encoder->port_pll_type = intel_mtl_port_pll_type;
> +		encoder->get_config = xe3plpd_ddi_get_config;
>   	} else if (DISPLAY_VER(display) >= 14) {
>   		encoder->enable_clock = intel_mtl_pll_enable;
>   		encoder->disable_clock = intel_mtl_pll_disable;
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 0be4aad0efcc..11178cd00a5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1873,6 +1873,39 @@ intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>   	return true;
>   }
>   
> +void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       struct intel_lt_phy_pll_state *pll_state)
> +{
> +	u8 owned_lane_mask;
> +	u8 lane;
> +	intel_wakeref_t wakeref;
> +	int i, j, k;
> +
> +	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
> +	if (pll_state->tbt_mode)
> +		return;
> +
> +	owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	lane = owned_lane_mask & INTEL_LT_PHY_LANE0 ? : INTEL_LT_PHY_LANE1;
> +	wakeref = intel_lt_phy_transaction_begin(encoder);
> +
> +	pll_state->config[0] = intel_lt_phy_read(encoder, lane, LT_PHY_VDR_0_CONFIG);
> +	pll_state->config[1] = intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0, LT_PHY_VDR_1_CONFIG);
> +	pll_state->config[2] = intel_lt_phy_read(encoder, lane, LT_PHY_VDR_2_CONFIG);
> +
> +	for (i = 0; i <= 12; i++) {
> +		for (j = 3, k = 0; j >= 0; j--, k++)
> +			pll_state->data[i][k] =
> +				intel_lt_phy_read(encoder, INTEL_LT_PHY_LANE0,
> +						  LT_PHY_VDR_X_DATAY(i, j));
> +	}
> +
> +	pll_state->clock =
> +		intel_lt_phy_calc_port_clock(encoder, crtc_state);
> +	intel_lt_phy_transaction_end(encoder, wakeref);
> +}
> +
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state)
>   {
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> index e93e5becc316..dd8cbb151b23 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -28,6 +28,9 @@ void intel_lt_phy_dump_hw_state(struct intel_display *display,
>   bool
>   intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>   				  const struct intel_lt_phy_pll_state *b);
> +void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       struct intel_lt_phy_pll_state *pll_state);
>   void intel_xe3plpd_pll_enable(struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *crtc_state);
>   void intel_xe3plpd_pll_disable(struct intel_encoder *encoder);
