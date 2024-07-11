Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0381692E3A0
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52C010E9EC;
	Thu, 11 Jul 2024 09:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Od6p1aX6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9654710E9E4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 09:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690905; x=1752226905;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y51K3+mTxQKGgj9NseTXwSZiVpeikVma65GhCag3Bmo=;
 b=Od6p1aX6NuIwRPoO8O4L+rkG1PwBgFFCkyyU3xkvlAAcxioZOuw4X8WY
 /tVXTZVX1m8Gx7mqJSbYbyHa9qDstanJAb9A4Ggr8yglZxTiuXFc1QtOP
 SGDAnD16iQD+mXiUeAf3ErIdwLJO0syJw1vtqipvp35ngE6vnBinVG0y0
 QM1OWjpM8Lh5PCdHdWmEv2B+J76Bz+w1LkROmfj2c2QeeLEOc8Vqt2RcJ
 BcbfzGDM89gwgTir8AjAEdfZSEbm/tKi8JZw8IKjw7BHAr+XzWAlXzPic
 aFmy436MZNVMxbJ/F5bJdYUrC3yXoWw0b1N+d2EITLNCtSg4fM+ilfRIW A==;
X-CSE-ConnectionGUID: 9u4dUNqrSb+E748cFNK/ZQ==
X-CSE-MsgGUID: fqIWAxbSSUGeEs6VOFUXPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="29453478"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="29453478"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:41:43 -0700
X-CSE-ConnectionGUID: U+DL14weReSPylbnPVRMmA==
X-CSE-MsgGUID: H+gnVuGgRV6rPdtJWHY+8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="79633498"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 02:41:41 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 02:41:41 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 02:41:41 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 02:41:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vUAfZqwHcEN9YSJK46ZQ9MVhO2kzctd1JOe+wg5vn18xCE2zdu0OJXdP3wrzV4ggwzow3wsAFXo02uVTtPnMgxZqzgwqGWzkz9STLYtnlDZE+v/aKKU/ybMLkH59hnUqSrPFCixoAr5tomAOkFNLZGAMcG7diSs9ricKNDR/qB5eHfCoGCXj3kCGfjDwp83RIxDh38cAjF0H5ixQusXL4RFE6E44MG00xbMbpOYWRvkuVi1xcjKLiQh/aFXMzvpmSuPu6W6h3xVMhj+fwAB813meLz8ec5yIvFvhfIp45qQXBHhFmrHO4ef1DaDAn4MUgciaqqkx5yEagwr32NLgxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uiznFQZrSObfhOTi1Pu9qRqFGxNzIYj9MTqT5816Reo=;
 b=oDFmH05fVnRft6a54Nf6U2yMaSsK24sbwtpmMMXj/vfHiwDRYy8Yqsq+cmh84A+129mgaUUGqYLYyJ8v098DF0qruEolRb5af0oc3pQR8IdH2NoKMjvcf9boEozro5u6Mad8Jk4TY0TwWyFOO8lMloz/hMJiZwKFtdDVvMdkHydDY1xITynWtRPU2eG/fT/mD1OWMuOo2jFT1lw/WC6NiKm0SE+BSe5np5Dv6QYMv4v18Z0x1R6vN8JQKFIbRxnFYWrBkDKZYb6GFtkm60qot1ForSI7QqoyGLkZJibNT7RKrVY8PfY6BkQ92X5JN380C9a5+8RaG87Jz3BPRFfcBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 09:41:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7762.016; Thu, 11 Jul 2024
 09:41:33 +0000
Message-ID: <c1355d11-1e61-4bd0-874a-b6b59b5941ce@intel.com>
Date: Thu, 11 Jul 2024 15:11:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] drm/i915/dp: Reset cached LTTPR count if number of
 LTTPRs is unsupported
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-4-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708190029.271247-4-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXP287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: 104b0e67-91f4-4a8d-a4be-08dca18da65a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Um1LV3hiZUd3Vk1Ncm15elVuWmR6MXRzcmI3dHhyVmtCZ050T2pJSk8zWFds?=
 =?utf-8?B?TlNLQVVmVlZvOEROdk1PNGR2RCtpemFLVGE5S2hyMjRtaEI3alNVTlBVbTRH?=
 =?utf-8?B?cFNlKzgzbXJGbUhPb3NKV3ZqV0tCVkVJU1hTU3RncElCZTlCUWM1UVUxL3U0?=
 =?utf-8?B?RkdQWis4V2JhUEgyUjIva215eVdqSngvT0lpNzZvNVZzT1p5Y25LbWppMDV6?=
 =?utf-8?B?NGRESTJBaDlGUDliWkVjUnBFT2J4U29zRnJ0M1F0OHFEUWNUYXNaaEJYaFpR?=
 =?utf-8?B?d0loWGRLQm9jVjhkM0xuN3hIclJoMk83NGdXbS9hRittRjdQTm1ndWFyUHRn?=
 =?utf-8?B?R3pqRGd3L25NK2tRNEdwV1FBaVNFTjhyUTQ5czkyeU0yTEV3NFBZYUQwWkdz?=
 =?utf-8?B?RTRJMkN0Slpsd2hoUUVIajArZVBWTUt5YmZ1Ni9kQUVaZVRNRmMxWkx2cVFj?=
 =?utf-8?B?NkJLNEVza0RpbDlZL2c0OGNqN2kra1hjREJYcCtnVWQrUnRWeExuSDVxdFlP?=
 =?utf-8?B?WDdBRE1LU0ZqaHVqWktPeGluMVhQV1gyMmNaSHZDUDdkYUlsR3dISlIwYlBi?=
 =?utf-8?B?dWxwV3RXZVRNajhkdVJTWTRxRk5sc3dHdk9NK3hFeURuMUNPYnZmalRmSHU4?=
 =?utf-8?B?LzVKUzdpdGNSMHU5bUFxWnNrRnhSUGFOMVI4V3hIcXA1NHVQc2IvT2t6WjNK?=
 =?utf-8?B?dE5kdVJFYUQvTC96RXJ4d01NVXA1VzY1VS9IUnlSVlBtNTZad0hGRDhsWSsr?=
 =?utf-8?B?bHVKVGxFZ2Q5emJtcmw0bTNJUE9CZlpjYjgvVjUxczFRMklCK3R0cmlWZHJ4?=
 =?utf-8?B?bVZ4SW5hNEdXY01sVzlLWERheGF0dUlyMld6VUVVZW1pd0U5U0dDRzFmdFF2?=
 =?utf-8?B?V0p2cHNEV001MXlKYUI4L0Fnb3pmUENENFdtQkdCMHpGWkhrYUFBM1hTMlhp?=
 =?utf-8?B?Yk9BUTUzNWxMd0pHTHVNRUEycmkxOEhWNXdyNmRJdUF2NTZNN0ZYUER3NGtO?=
 =?utf-8?B?WTJOV045cThDb0t4Z2FNR2RBTHMrcm1uMXYrU0RNZHh3QjZ6UllSNlF5aEEr?=
 =?utf-8?B?OUpKSUdOY1JqVVBPOGZTZE1qR2IzZ1dNMU9UbWhpYnNRbFlYYkNBZGNvTnRs?=
 =?utf-8?B?WFd0WmdTSm1XOHNxWGdvdlBrMWtpWGEyZFBleE14ZE9EWU5wT1VPTTQ3aFpW?=
 =?utf-8?B?VUtmckU1QTM1QTlGUllsZTZTRmdJQlFSclQ0OE9ienlVd1BXLzdnQjZ4WWJy?=
 =?utf-8?B?dUF1Y0dWOWhjaURkMDNmNm81ei9vdk9sLzljUnJSeEtkSzJBQXdIK2xZLzJV?=
 =?utf-8?B?RE1GcFpWWWZ3b3htSVA1dVBhRktYajU3YVBSemdzQU1sLzJ4NStZRENvbDlj?=
 =?utf-8?B?bnNCTWRDcWF0WjFQTkd4emllYTdwbHBpN3RzUHQ2Tkk2eExNSU9xNFA2QUcv?=
 =?utf-8?B?RkhUTmdyUWFDQ0djSU1aelVwOG5YL29MWjVNSnN4TEtJY2Z3VGVoR3I4akIz?=
 =?utf-8?B?a1dPVDZNSkM2RUw2aGNXZ2xXcnY1UDNlYTlwZHYzNnJBY09JN2laVmptZkdk?=
 =?utf-8?B?aHBvb2I4aUtSSFhJaGRSeDdXT0pmcnczcWF0UHZHS2ZPakt2anR1NUp6OG1I?=
 =?utf-8?B?aXF0bnVZb0VhazhiS2dpK3JFQjNsc0RLdlBmTGF2L20wNi9RSEM3a2F6ZWRq?=
 =?utf-8?B?VXRjczdPeFRCV2dVZyszVXljSUowTGVsUTZvSUEyRndsN1NxZ2syNFlaVS8z?=
 =?utf-8?B?a2tlUzVJTGMxN1lrcFFCc1FQWlNuRzFNd1BKRjVXd1hLR1d5Tklrd3FiYUoz?=
 =?utf-8?B?Z0FnVmNCRC96VGFoWkwzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ODlvZVNOOU1TZi9IczdkVTZFRVN5VFVRWGZwWVJiUUFBWi9JVDUyT2F1bFJN?=
 =?utf-8?B?aG1rdVZlTzNOVVNSckVGQ0laM1MrbTZoc3hwR0lZYXpKUC90Q1BoRFB1WjF6?=
 =?utf-8?B?SW9UVDJvYjRrTzdmMVd0ZW5FaDM1eldwN0dwbk5QaCsyZ3puMG9LODJtZFpT?=
 =?utf-8?B?NlZnRFhUdUtIVkYvdEJCY1NEWGlhTFJQUHFmNEUrWnVwTFdGa1dpbktTRWE1?=
 =?utf-8?B?ekNpS2tNeFRaNWpiZmFKeXZwNzQvdlpUZ1FsRHIvNHRqVWE3cG9KRFRxTnJ1?=
 =?utf-8?B?YjIrM1kvQTV5M3NSeWlRMjNsd3BPaTdtMEJMTE14cSs5UDJtd2NqYUgyQVVN?=
 =?utf-8?B?VzhxR2Z3SVROYnVSakJOa1ZYN2lGYjc1SC9aWGxpSC9VTXNnaWVJRjZIVWZR?=
 =?utf-8?B?Skg0akREd3pJdjlUWWIxNGNrMUExNFVheVh1cHdFY0FkNy9XbU9ZZ0V5NTNJ?=
 =?utf-8?B?cTNLMDZkMFpKOGJBV2dLcWl2NzkvRng0bjZYY0Q2SW12OTMyOGJROEpESU9v?=
 =?utf-8?B?cnAwTlArL0pLbHAyVDNlWGhnRjdFZnV4NDVKNjRkQkxtVGxBdHRBQXFnZTNx?=
 =?utf-8?B?NnI2NVhQeTZ3NHBKa0d3SGppZWZPSU1abWV3OFY4eW5ZeVZQdGpjNW1ockM0?=
 =?utf-8?B?SDFwcC9CQWhCR2hucGZuMDVqaGhnSUxXanZpRm9YMFZ4WkpmNVFBY0NtRW9U?=
 =?utf-8?B?NmtzTURwZXFOZXFBak1xME1GSkd4c3VlZlFTODFxUVdUTFd6aURUb3oxa3Zq?=
 =?utf-8?B?Z2pPY040STZMWktiT0N6WUhYZ3RVd0pCQXhaTG9lT0R2ZkRQbUN6bWRvbkZw?=
 =?utf-8?B?cjQzRVJ1OUhNdnk5QXhKK3ErbFFSa2RWMGt2NEVzSlJJU2JCdDFtUGpGajdo?=
 =?utf-8?B?dkJYRDh0eHNTeElvdyt0NVR3Mi94bVZwVFN6UHZ2bHNzaElzTlZucnYvNGxU?=
 =?utf-8?B?YkEyQS9TcGlaZUM0UlA2RnJBc0VOUEFWa203SENqV3ZCMFROQlM5cm5yNWgw?=
 =?utf-8?B?NDNYd0UxL3BGem82cHlyd0FrRFB0VnIvMEptRGlJYnpLOEx3NHJJRGdBSnR0?=
 =?utf-8?B?YVpJZm5qK1BaNC9FMUlDNWtibXdvSXlRQStMaFg2dit6OXlwVklUT1I1MVpN?=
 =?utf-8?B?SGlDVm92U1kyOFFLYitZRUxEdGNRbkJ3L3ZKZVBrUm5UME1Fdm1tQVNPRWtR?=
 =?utf-8?B?c1BjUmUrSmZXMVdMbkIzN0tuK2Rvb1hQUlBtaWpiVFdTeGtmQTNicUVSZ2Mz?=
 =?utf-8?B?ZkVzSStkbjVIekxhN2dxcjdBWm9QeG5wdEkzUi9SQUdBZG94VUFUaWR1NXFU?=
 =?utf-8?B?YWs5eG04SEhkVDhBVVJuY2ZDNzg0YTJQU08zNndoODEvTXNjS1RJNWVDY2wy?=
 =?utf-8?B?SjRmZkxGTll0VGZIcitIVEZJdHVvanRXd1J5UXhEQTArbGxzVzJYTk5mVXBO?=
 =?utf-8?B?NFN4NnIxMzhrK1lSRVFEMW1VZkFQWERpenFXNCs1dDNyaXJhUWl5b1lTdGdH?=
 =?utf-8?B?R0pqTjJUc2xZVnFESXRRT0ZZc3FEMkNnSzJHQWliL2xqSU5Ma2NaUjRSZjMz?=
 =?utf-8?B?Ty9UOWY4MG9IclFRRXlvTEM2eWFMRGdFeWFGWVlhYTJrREZHSE45enRPeGZD?=
 =?utf-8?B?SHd6UTV1U1grdTFjcWlyNFo1UkRTRWs5aGpqMSs1d0EvWDl2UURxQ2J2bU9T?=
 =?utf-8?B?MGR3ODRRcVIvMWgxR0paU25saG9Jc2tOWjRHMFlOZE1hYTM0SHo2UkZUVnJ3?=
 =?utf-8?B?dC9EcUtOYWsyMkFxblhMcXE0L1pEZnlZSGR5eFQzNE45Wk1LWVpucGRJd2dP?=
 =?utf-8?B?bEJtczVyNnNGUjFzd1ZwOWd4bmFXREpTWUxKWlMra21ocmVCaU82Ry80T216?=
 =?utf-8?B?ZklqdTRqaTJBenM3QWZjLytFbXZGR2xKdDZKTVNjMGUyR0M2dFFndW1FWHVu?=
 =?utf-8?B?Y1llSU4vRVhJb21BbkE4YkVMZGhnc3RZa0d1K3N5OUE0VWVsNUFPMEg0ckhv?=
 =?utf-8?B?N3d4WjBTYVRFT0kxdURrSG9ubUZ4VnRtak9vb1lBSjhTVmJsRXF4WXdvSE1h?=
 =?utf-8?B?UU1Bd2djcGMwcVFjLytEV0pJQUtFaEQvRXp0NjBheDJIY3pkdTg5NkJaSWxD?=
 =?utf-8?B?T21mYW14UHFUTGEzL0ZKcXBBN2hEZ0tuTE11di9yNkswTERsYkVtK1ZoWmFz?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 104b0e67-91f4-4a8d-a4be-08dca18da65a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 09:41:33.6390 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RM+o5T2oPtnjtZ54EN4TYbaXixlpMoKTFHec8h1QM0LhlzqmIKolfLjbAxTvuIQo4N5p6Q7VHenHWjCYI/wDtfYOsittoez4mzBaDNK6rc8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/9/2024 12:30 AM, Imre Deak wrote:
> After detection the cached LTTPR count can be checked to determine if
> LTTPRs in non-transparent mode were detected. Reset the cached LTTPR
> count if the reported number of LTTPRs is invalid to ensure the above
> checks work as expected.
>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index d044c8e36bb3d..56b9c5cb1254d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -174,7 +174,7 @@ static int intel_dp_init_lttpr_phys(struct intel_dp *intel_dp, const u8 dpcd[DP_
>   	 * still taking into account any LTTPR common lane- rate/count limits.
>   	 */
>   	if (lttpr_count < 0)
> -		return 0;
> +		goto out_reset_lttpr_count;
>   
>   	if (!intel_dp_set_lttpr_transparent_mode(intel_dp, false)) {
>   		lt_dbg(intel_dp, DP_PHY_DPRX,
