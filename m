Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7796FAC4749
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 06:51:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64B210E089;
	Tue, 27 May 2025 04:51:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OFUOHq8e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C9610E089;
 Tue, 27 May 2025 04:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748321460; x=1779857460;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DAp5zJ/9lRRTlq+acnZRQkmjXQaXchyQY5XemO5dvbM=;
 b=OFUOHq8eLn6mBW1gIsw8ERmxGEA5lpLAiTRqs93ABl2EiHzfG4Cj0364
 ybr+7mwthHOv0xHsNKnTc5PZ3XvHACASbDHJMIZ+Dof2YS/7mQhyzf+c8
 cz7vOqERtxlNpxN+eEp7hNevvd1wyhrzbke/nH/BkgBTdx7ffwkwU0NeF
 Las6Fs7r2Fiz5/5WwmViWW89YW/djRMjv3MmwYVg6kF9bYvlMTC2TpCfX
 sTySaBaiZuXQftdIi6Hj4/315ayxTqf2LgFb8rrPOw75zq0J6X3elglOK
 lG0m3y+6Qd+wo0MDHdyXMPHSHuQ9ADt7MbbcGu+vat3WMkjcm+NlXD6yB g==;
X-CSE-ConnectionGUID: cdeeA+u1SjW2CalqRfEOzw==
X-CSE-MsgGUID: SvsLAxjJRruD9sqIQ2OEhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="60948738"
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="60948738"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 21:50:55 -0700
X-CSE-ConnectionGUID: MmHMPTeaTP2pEpfXMpsFDg==
X-CSE-MsgGUID: KGISZrBpTfmuW+jWu4bKiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,317,1739865600"; d="scan'208";a="142558557"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 21:50:55 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 May 2025 21:50:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 26 May 2025 21:50:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.88) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 26 May 2025 21:50:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s47o6fNNX93egJvMG5Pr+YsT9VxeiNel/ykY/ocXAX3mbug76ZhWiFDAV5DQcouq1cXFKkikyLg07Sapx1fJRM+6xWSSqPJ6zoXwSYCQRrHLW5VsG4gMhcJRVp/3HBkLP0xZbCLQk3dsgmAySAnQSDY6acs3JxIeRfB31N9QcyF0SKzQd7HcOjRfYnegvbVBHLZrx1iX7YsJj0y9QQ+YsqaqePRqRsBJ+8z7Xy5JkkOhesQRd+6HjXivnWfYbdxR8gIL4+WxhGVI/DUsQclrb1UGk6fP1bvVsryjuXII+VAbgRIlJpiXy9E+Xv5+IUfXdzNtUZrvJ90EM3lft3V9vA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zTntbKnZS/xxi64xpyPgOdcoIj+4YLMSnnH/ClI6RZs=;
 b=h7QQfRG/71ik/vXQTMBm2rxn3g1aJMumHfQer2zFawHSwvvSd6x579NE5XKGvSD2jEx4gmHBVzvvGRhlIVMChVLPGQyajfd7nS8E3h888Tx2Ptzt6tBpIJKrixthuTtZq2xENgknoDHpU8lchUkkTBJkjGooRTcdJ2Mo+RO9OAmRRqbkFsitylPHZQNMjNFJdRd+TamiT+HM7G+YZcvF5p10fJZugFecSUQGw1gn6sWZeaLS8h3Ms1WhBGAuAJAbeoH+oAQnbBQiFoOv+t5lVIAsFC8pCcV908/xhhHrg3XRnIV6sgJb9y/t32BaVtf3zaFUzJ3xAI9vLAxslf/uxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB7471.namprd11.prod.outlook.com (2603:10b6:510:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Tue, 27 May
 2025 04:50:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.025; Tue, 27 May 2025
 04:50:47 +0000
Message-ID: <c808b60f-9517-4003-9d9a-8e092d474ebb@intel.com>
Date: Tue, 27 May 2025 10:20:40 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: Fix get_ana_cp_int_prop() argument
 type
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250513083803.2596286-1-dibin.moolakadan.subrahmanian@intel.com>
 <20250513083803.2596286-2-dibin.moolakadan.subrahmanian@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250513083803.2596286-2-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0042.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB7471:EE_
X-MS-Office365-Filtering-Correlation-Id: ce32b711-cfd3-438d-7865-08dd9cda0b94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aUhsU2NqU0JWakZMbmE1RTFEaSsrcXB5NjA5RjFTaGtsVUMydGhnS29Wd0Z6?=
 =?utf-8?B?UVJ1RXM0UnRkZktTcVZ4UFFGUXltTmdpT0hmbUdVeXQyYy9qVzN4aVY4UjlQ?=
 =?utf-8?B?UXlXK0d4QVFGTDhBQUN0RVo1S2Z4Mk5ac3Nib245dGg2dWlZL252bUZ3WUhk?=
 =?utf-8?B?ZTN4ekp5ck01Q3g5V2VCRGZLeUdYVUFuTWlhQWtJTGJOUG00bnBsU2d4a0lK?=
 =?utf-8?B?aEpsWm1yV0ljUzQrV0I4SWZVQTVSUlhsNG1GeGQrZWVnbEJQMHU5eWpaZVNZ?=
 =?utf-8?B?eHRLL1NHNWFLdUt0WmtzUUxSakNJemxLaHZteGIxWjNaSkVMdjg1NVlPSnp2?=
 =?utf-8?B?NTlRL2d5L2w4SjNTdzB4ZjYweCs2UUFZT3ZjQXBBQURRWUsralhmUGhrc1dK?=
 =?utf-8?B?WklVeDVKVjIrWWRaNWY5M2hObUZTUHJ5Z0k1bTRBbUgzZDhyMHoram44NHQ4?=
 =?utf-8?B?WXJEa2wzbXg0aXl3NTBhTzhkVzlTOTRCcDRHNWlxVmcvMzM2cnVwRng3azVT?=
 =?utf-8?B?TUExUWdnTmx3eFJac0pUUnZwblBLUkZJYkY5WFJMRnZtR0grdEVjTldOWHZE?=
 =?utf-8?B?Yk1KckFidGlBRDR6bi95OGNsTEFKT1kycjJtcDd1VzRYZ1RQUmxWRWNtckRs?=
 =?utf-8?B?ejBUb3NNQkwwVGpjRDBGOTFzZ3dtRmJlYzVEYUJGcDMzTUxad09jbFQ2NUs0?=
 =?utf-8?B?NGxVVHQwaUZta2s0WFFQSmJ6bFoyNTJoZlJEbXVVZkNPUWxzZGkzckpwampK?=
 =?utf-8?B?Ny9HMmhzNlY1WTdGbE9jR2MvMFhHV2I0eFdwbUN5Z0l4UzZNbkFwUkFuZHcw?=
 =?utf-8?B?M3lNOVZaQVluOGdGK1ZmMXBhSDVuYk00Q2g0S0o4MXUrTGpJQUQ4MlBGNGdq?=
 =?utf-8?B?a1RDcXV2VndadTkzNjR4UkRYYURkR3dGbUkvRVVxQlRwYmFPV1NTMVFidnBx?=
 =?utf-8?B?YXVxR3dUZGcwM1c0UEV1djd1L2U5TFFDVmY5MWRodlVRQitRMEZJd0FCVE1n?=
 =?utf-8?B?MXFWKzdZdnBrMUtuNkpNYmx5WEVLamJuRGR2RkJ1QXM0SVdzN1lFa2tleHoz?=
 =?utf-8?B?RDJBeGlkZUNOWUNKNTM1a2FCVkZnOVhnMDhpS3lkUThYeVNwK1luc1FubVZD?=
 =?utf-8?B?N3ZlK0xZNmU5SnNySGdlZ1BTVDViUGtMQmc4WG5rV1NqSVZLMHI0WDFtQ2Fu?=
 =?utf-8?B?Mm9jVHRWYWFFSHd3dFFDUFhiN3VlaG5zSmxyOEdqcXZBZytUQXVJU2lRdGUr?=
 =?utf-8?B?NWhZcWtudHcxbEcrUld4cHlJK0VHOXVjQmk5VjgrQU5rTlVxVThscmROM0kz?=
 =?utf-8?B?MExMUlBKWGwwSmMwRm9lWDRueVBybU9aTVhMRkJjSzE1UlFIM2dKSVR3Y3h0?=
 =?utf-8?B?Y0dsbjZXZm8zbWxSU0lUUTl1TFJYbWoyWGRyWWJmRjFUMUJVMmJHSFFOdTdG?=
 =?utf-8?B?d3M2RWpFaEhHdTdtdkNXcTgzRGdneHR1NEQzYmczVVByYTVFMUFoN1RBSC9R?=
 =?utf-8?B?RUdwMkZya014aEpqL1BSN1M3M2hQbzlaakIyVW5wbUM2bDlPOFUvZFQvTUUy?=
 =?utf-8?B?TlJzdmQ3RWFVamgyaTFtR21vTi9QWnphTzRoQndXU0hZSjU5Y05ITnc4UHl0?=
 =?utf-8?B?eUVDWnZIeVp3VzJnczVDbWNVaGYxSnZrZVNaTS9LVVRZd2V0S0wxQkgzZUpH?=
 =?utf-8?B?bXFSd0d1MFNVNG9vczVDcnZCSCtZd1ZqTyttQ2swZW56aGQxR25TMSsySk5i?=
 =?utf-8?B?WUF3QTViZHc2Tzd6V2pzbEJwOWM0L3Axd0NXNWlwL01KRjc0UkZzYmlQVWJn?=
 =?utf-8?B?QjFzU3hMQk9CajRaTW45bG5mRnZOSDlqeEUvV1lNbVozZ29Qazc5T2RqMTEy?=
 =?utf-8?B?b0xCQUtpOWFrM1dVQ1c2ZiszRXFtdXU1RGFOWTU3RUxaVEFkWlRNV0k5UUNJ?=
 =?utf-8?Q?IE1l1iHzo4w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFZmNVlWM1d0T2xXL0oyK1lXcm1qUmpsQTJtR1FjdXAxSVVqU295SmxIQ2Ev?=
 =?utf-8?B?cnIyVGJmS0JyL1k1bmZZR3pzRkNSY2syMHJuYUxVMFFkWWxELzQzU1g5dGhB?=
 =?utf-8?B?NkFBM3VkRDBIYVV1Yi8rK2E1SXUxMWx6c0lhMnBvTE5FWDMrQUpGTXlQTElZ?=
 =?utf-8?B?L2lzWFJreG5Wc2wvUGNMTVdyZ2FWUzVaaTNnZkhXYm0rRWpuZTk0VFNVL1Zu?=
 =?utf-8?B?UGFBNUhNZWk2bjBxOVhUcnFISklCTUR2ZmpKS0h4SXhLS0pxSHBld29FUXpG?=
 =?utf-8?B?TnNiNWFPQXdzMHM5cEkyRkRaZE1DeHZXWUY0MVVVRGpjaDhpQittak5HRVJq?=
 =?utf-8?B?Zi8zS1VhdmtRZm5jQVVmekVuaWZITDNIV0ErQnRsdEFRUDNsanhmZytISWRB?=
 =?utf-8?B?VWZObVpUNHVVc2tya3Y0aitvYjN2OVFUbW02VU55eHU0ODdPdWU5bXAyU1BZ?=
 =?utf-8?B?cmhSd0Q5ZmJQYk5IcEhURXBPcEs3RnNUN01PN1dJRzNjVWJyUVFvZWhNS2tj?=
 =?utf-8?B?OERrMWozVWt4UGM2MHBTdnVORk14cms3ZzZqNURGOGI5MTRoNTN3VXZGb1Rq?=
 =?utf-8?B?TFlNZU9TQ3BuekR6MGYrTnBOb3M0N0VJTkRHN0hpalZJVmFkN2RTeVJVVS92?=
 =?utf-8?B?dDNTekU5RlFRSUdKL3BhZzkydEh2T1pPYzBVYzdtMW84MTFpUTBodzlnMWIw?=
 =?utf-8?B?bXpWVy9BMG45Z3l2NU4rUm9kemtpTGNjNWJBNzBueTBmZldMMGNuUjlWSTFw?=
 =?utf-8?B?NzRxVmo2SVZaQS9aT1kxTkZNSzdjVk1GWjZkN3l0a3pmR21DY040YWFiYlhW?=
 =?utf-8?B?VnhWdSt3QVFHQ2txKzJPRjJ1SXZUL2RGOEtIeERzdTcvOWZ3MW16SS9JbndS?=
 =?utf-8?B?M3AvK3NaMEFmK1lUYzFOQVZtYWNpMStQWUkzcGowN1dHbXVIaWRzSkxIRSs3?=
 =?utf-8?B?bXFLYXhEOWZFMlE2emloMjBkMjMzM3NkK08wOFVndTJ6cVAySzJvYlplaHEv?=
 =?utf-8?B?TE9lZXM2WURFb1IxMkxOem5aY29LYmU3V0xPQVVJNVVhclBJc043QlFtdjJh?=
 =?utf-8?B?TFh0WlZIbktkdWJlTms0cHd0UmlBcjdmb2JpYWdESUx6aktyd2RpNHIxYW5o?=
 =?utf-8?B?ZkFjd3V3RWx4R2d4aUtPUHVpWFBVQkZtUXVtWkZJRnh2TFNDU0JVdGFZbzFO?=
 =?utf-8?B?UkFWSnBvS0ZjcjJ4ckFaaDR6bmUzNzhCblYrUUJCYzlGeGhERWw5VUkrMHor?=
 =?utf-8?B?RW8yajYvN2NNSnBDMXlMVjFJcllCUkpEb2lKQUR0ZlpNT3J2b3JlNUEvQkRO?=
 =?utf-8?B?OWZ1THlmbnJLcW9DTTVtSmhaWU1lTjlxZWVESXRlV2YrdDZMaWY1Zy92bjhC?=
 =?utf-8?B?WDVRNS9ZV1pPTHJkajc4dHFNeTlBZnltaTJSMTV6czltM2kvWTZLNktJT1Bs?=
 =?utf-8?B?OGwyUktFcVBCYVBkSjBaNTh5cXpONEZPdEZ4S2VnT0cyeG1tWGpCd1ArM2k4?=
 =?utf-8?B?UUxLSzNvN2hBZDQwc0dhVWNObnhDWTN0K3BuVk9GRVJQVmFLV3lDZ1luU3ZX?=
 =?utf-8?B?TWlNQXhiVnA0YkdoQkNRQ3BrSFpOQ2hQOFBJa1kzbGNCYXRTVFJlbFVGUjZH?=
 =?utf-8?B?Wm9FR1RkUXJjZGtRV3MrZWowRXo0Y3VVMFhjdW5JQXNRelhjNmtRWXFlU0xo?=
 =?utf-8?B?YzJBeThxTStEZHp4YjhrcU1HRmZha2NKY1A0ekVNS2RyN3JXNnh2am83NC95?=
 =?utf-8?B?aWpTUFhwZmlPUE1sU3h3alY3ZEZTa2FnNGlSekFwaU0yTTIwZWRydE10bDJx?=
 =?utf-8?B?TkhtSllNSzl1TDBSbEl6aGU5Vm1PQUg2NFZ2K2Z3MTN3ZHVwaDQ4VFBNZ1Yy?=
 =?utf-8?B?ODl2TWpQbUZyeTlXbW43dWNKWEE5b0VVM2pab1puako3cGJZdll3c01NREJu?=
 =?utf-8?B?MHliSkVsRytXcnFkUWJpc1pRWFltUjQ5eW94MFQwbU5ObmFzdlAxRVFrN2Vt?=
 =?utf-8?B?OUZsMDRDd25MT3c5dTd0U3F0QzhqbmdXbjZoRnl5Skd1MVc0Q20wa3VkM0dH?=
 =?utf-8?B?VVhNTk1ycG92T1RTTXhmMExrSDZrNGwxdy9iZzlSZXdINHJ0cHZEbDM5NHBW?=
 =?utf-8?B?YVpGaVc4SDNjTVVzWW4vSUVNK1pOYm5HbnNVSHFTeFBSMjZROUl6Y1c2dE5F?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce32b711-cfd3-438d-7865-08dd9cda0b94
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 04:50:46.9181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2CDuvV4BPqQS2gRo4cZ77ecxioyCSvtWscjLhpA1apDcGV3Bvb16TZpWZRT+mB2bxvaQ6fSXdrO7Q1T9AP+2doIC1xDkReOz3XrAe9dwrHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7471
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


On 5/13/2025 2:08 PM, Dibin Moolakadan Subrahmanian wrote:
> Change get_ana_cp_int_prop() vco_clk argument type from u32 to u64.
> vco_clk is decalared as u64 in the caller and there are scearios in
> which vco_clk will exceed max u32.

Agree with the change, lets have this meld with the next patch.


Regards,

Ankit

>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index c6321dafef4f..41c6c111af1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -46,7 +46,7 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
>   	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
>   }
>   
> -static void get_ana_cp_int_prop(u32 vco_clk,
> +static void get_ana_cp_int_prop(u64 vco_clk,
>   				u32 refclk_postscalar,
>   				int mpll_ana_v2i,
>   				int c, int a,
