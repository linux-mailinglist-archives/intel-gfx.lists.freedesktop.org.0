Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8ADB52866
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 07:58:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2ACAF10E082;
	Thu, 11 Sep 2025 05:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/XmLDGE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D344110E082
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Sep 2025 05:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757570324; x=1789106324;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=KCoXT+SI3qwra1MDtmMFTCVBAr9ACC0UQo5+4VR0wYg=;
 b=h/XmLDGEs4eI1l8BiFUsjh62OYAKQ0SszuQMeEUlfDiAacwZJ2of0mzr
 bPPaS1SMpFi2pv6rO4rnlQJFKiUh+rlWF8FvjNUZnse999gXKdg+uhT2G
 n1lLU/TsST3kZf12w/ZOazUzquChYii6fTnbjRSJZwMiOOb95nqmUYm4V
 CIzw0jzMT7g7G7KgfJNaRodDmw6gnumz8udces0bHEc7q9YjnrxFDLswJ
 gS1Jxgukc0/WzCJnrw0+4q3FVLPkG+EUv0Tqmc/P3jydu3OiNkat+kXcS
 d7og8wCEBcs8PbQLaK2qhpjvNvXGo5xchQ526eia+uOv87owWvI9Y6G1R w==;
X-CSE-ConnectionGUID: skH/NIm7QqKFBgOHWghxhQ==
X-CSE-MsgGUID: YERnL6dyQv+BvNsTsA1N7w==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="62522010"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="62522010"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 22:58:43 -0700
X-CSE-ConnectionGUID: okFCxHCdQtuE5UyOQT8mjA==
X-CSE-MsgGUID: XGcohflfRR+7FCi+CuKaIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="178794105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 22:58:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 22:58:42 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 22:58:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.87)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 22:58:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjMAJD4Of27FEj+sHjsulSoJscEpUN/OaLFkBSKoWpp0q9umrKIRVYruEDpi94gMcFnF93rH2QxLaYsIkF+bOhESfm15y0H0nY8wO1CsT+SRhzjBrhZeeDmuXFi0gwIr+iMBQVfYyi4ctkqO0V8WaOwnGAiifWLa2iDRKg0taH8tA11JYgWthibhhXkzBSudUqgHqbA279gdgnlvYjskGKDex3zBE2EyIwZP9cHryIU83/zEWPaPA+qXot36/KBXX8B0wwyGHMaUw74CtNuS3m/LFEbRSD/oRJeLdFNejTf35xIlAjJCeKLt1+D5OFWkVCGNjuItgk/SEhu+wVMCkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kp23dedmXMaQOy1/hMlHvDLryQl16CcItMW9zlOKSiY=;
 b=MhheUWWIcAizhJIMWUyxxPS/4csTU1oUT6530T30CInBB0Udpu0azq91OqlI0FESRSifSIr9A1iorCLhcbf6+C6emHt77cUHT80s8Z6JJyKMnL3oO/u6Lw0+cDsrD/osh/OqIkSRZGDEQuZmncdYcPZ2+5EAMbwaBSp0Ek5CDcrQCRIx3fppcw3VvbWQoqX+6vG142MVmmBR/ENhJHtw2dGHglNcr4zg4y3R55cH8o/VBnYzEBEuHDgmeqdUPmF7z4ULIlQCkaRzOFzcP//PIxHVXIdX7bx5vDufoWrohez/TZ3CbeMj9Aosrwqgf/CDyD+5+G1hkaQLXLyPL4BrBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5938.namprd11.prod.outlook.com (2603:10b6:a03:42d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Thu, 11 Sep
 2025 05:58:40 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.021; Thu, 11 Sep 2025
 05:58:40 +0000
Date: Thu, 11 Sep 2025 05:58:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFU?= =?utf-8?Q?=3A?= failure for
 drm: Miscellaneous fixes in drm code (rev2)
Message-ID: <yifyst6faz2hpqgpsr5z5njdzoj7ep22ibqesdq6fvnpzdnzo5@6pxbnzoefw3v>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757416325.git.krzysztof.karas@intel.com>
 <175743887798.318924.17793456776264983442@1538d3639d33>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175743887798.318924.17793456776264983442@1538d3639d33>
X-ClientProxiedBy: TL2P290CA0020.ISRP290.PROD.OUTLOOK.COM (2603:1096:950:3::9)
 To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5938:EE_
X-MS-Office365-Filtering-Correlation-Id: 1a454fae-0d9c-4113-6565-08ddf0f8418d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K0FyZTE0M3pGZHg1WVZJeTZzQVRMSkVqdDR5SEZaL1NnZlJFVGt4SWZrSXlZ?=
 =?utf-8?B?S2ZOemxkMk1hQWFEM3RoUkg2dFlmbm0rZkphNUhVMFI1VnQ3NUgzbUZvV2Mz?=
 =?utf-8?B?ei9aU3pBNXI2NFFjRWpobDRybU94SnJHaHRSS2dQcUJKWkZRZEtFdGtMTXhE?=
 =?utf-8?B?OFNsd0l1S1VHSjlwWVlRUXdXZlRhTE1CVFZXaDZMUm04K2cwQVpWMnd2dGY0?=
 =?utf-8?B?c21pL1pWMytUYm9NRWlGeHYxUHgyNXR0U3lZT1VROVRCcWhsMElpQk1yZjVM?=
 =?utf-8?B?ZmN2TC9ZOTVjT0lLRUxoMmNYU0Q3bm45c1NkaTl4dllHU3hLaG9NMTJGQlBS?=
 =?utf-8?B?Qk8wODM0dUNiSStGQXBlTy9idUFBR3RuTHJ3ZzN5TTQ1OThuS3BPVG1IaVUz?=
 =?utf-8?B?TG80TzBzOEZTQ0g4a2V4KzMrOUtBWGF2clR6eEM5c1MvZUVENEZFVS96azVo?=
 =?utf-8?B?WTU3VG82a2lkejd1MEdzaGtxaUV1Mm04QW5MdGhlck9jZlhVajF5bXFBRUdk?=
 =?utf-8?B?RFo5U1pzLzhZOVovM1ZWeUtJU2pYSkE5cVhwRnhDdUlub0ZxNUhuZ1picm5V?=
 =?utf-8?B?a0czd0M4VnArUjVGbGN1bWdXVkF6NTNUZ1BwRjF6bjJGVmFLNXhkUjgrTEE5?=
 =?utf-8?B?bDBuVFdVL1I3ZFVUb1Y2cFVSVkdVN1RaTUtWZTcyMkNaSzQ5Q2ZYUVZxU01Z?=
 =?utf-8?B?eDNIQjhtTUIvN3BZcmZublRubHJ5RzBXdkg0cmRuNGNMU05rODlaNVJUQmZ6?=
 =?utf-8?B?ejYzQzdxa0gzQW01ZEkvZlpxUzkvZVV0RWdMNHNtKzJaTUdNYzNpVDk1aFdk?=
 =?utf-8?B?eGtnczdNT2NXell6b1E4WjNIT0RvUFhDU2t6eE50MjBEdHRoRy9UbUh1VW9I?=
 =?utf-8?B?a1lnZk1YVEprZkJJaEJlM1JFQnQwaExRZE1BS2JRSm9OSCs2Z1RsclJJWVR1?=
 =?utf-8?B?aVZ3OTRoeUVJOThnRjF6bmRkYktKNGVXQzV3c1h4NHRYK1ZLcUJsL1hGTnlp?=
 =?utf-8?B?a3phNS9WUmozb0lXblJwMTUzRlR6TWhPOXBrN3hUc2hoTjhXQkN5VS9Jekpy?=
 =?utf-8?B?R3M4UlpHdzM1UE9ueERmdk1XbVhEZDYwZUxoMUNwS3VkNGI1eHF1TGJBQ1g3?=
 =?utf-8?B?bm5uWFJ6MkwvbjJTUnpLeHhTZkl5dVVzam95TTlXVEt4R1hDdFBUQmQ0dXg2?=
 =?utf-8?B?emVvaFBwWFJzZHBmVlA3bzR5YmdjTk5oOTJPdExvT2lqY01ybDlDWUVwRTha?=
 =?utf-8?B?WWFVb2pPc3NjWWRPOWozZ016dGRkY2tnSXpVcmN3eUk1NGlxdmdXdHRYcldT?=
 =?utf-8?B?c2sydkJQOStVYlNOa25Hcnp2d3BxSTUvZFdVT3g2WnVrY0lHZ0FvWCt6STdB?=
 =?utf-8?B?VHdqMU1rZndKSm9uNkNRWDRHclJyYUhvVVNPWERJMXArMWhTY1FDNjFBMXZS?=
 =?utf-8?B?ck9CT0s5MkNxNXJBQ3p0K3F3d3JYT3laT0ZQMFFnVDRoQVIrUk9Hc2VRSm14?=
 =?utf-8?B?cXdMajhYWEptRnFybEFjSmNFbmNuT3R1N1RDUWs1YTl5SXpBODdGU1RyOFox?=
 =?utf-8?B?QmxyMUxodnpwUWJNRmVtcjRpaGxTU3NWdkx3ZUFGMFhLSm10MGZMMzc0SlRj?=
 =?utf-8?B?K2RqYVdhWTk4a3J5bjRQV3BMbS9OeU9ua2d6cGVJUnl1WXp6bEhUdDBJampD?=
 =?utf-8?B?QWdYMmtkZFZrRkRvNkgxL05EeDdoOHVxUDBoa0xtbk9LT2Y2Ujh3azI1amJS?=
 =?utf-8?B?UE90MHZ3WjhId1lJNEFrRDlrOWczOFE4anBIc0xBazB4bGx6dGlYTGdqT003?=
 =?utf-8?Q?sU08gjN+h0CAp1Tm+Ol49gupPXNINj1nKky0g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZldRQkcxNWFHWkNITERCaUxjeW9maGlZRE4wZENKc1BMcnFxajczOEZtV2pG?=
 =?utf-8?B?Wkd5ay9qbmRJdmlmV1JTa0NYbFZ5WDdIOVduOEhSQTRpbnQvTzdIbnB5Sk45?=
 =?utf-8?B?M2xJVlVUM1RZYlZDbkVOSTl0T0o0ZHJCVm02WUdENnI0UXovSU9ReHBZaUg0?=
 =?utf-8?B?ZEZZVmhPWXdYREVNaDl6QXg2THNvcFpOblNPOWRVajdhWlNTVHdQSlNURnR3?=
 =?utf-8?B?VEpLSnNBSkNvVk95VjRnRXR0Umh3TkNJRnRMNllxZnZ3MGFFYk1uUEN5RTgx?=
 =?utf-8?B?SEdwTUlNYmVQc1VyN0Qxc2JDRXdTQXc0am9mdVZtRmVRVXNWeitmWlYzMHFG?=
 =?utf-8?B?L1NwT28wRU9SMmlXZlpoWUsvLzM1ZUI2dENKZXlDZnFQRCs0TWpBcThFN2E0?=
 =?utf-8?B?Mm9rVkRWUU9PZWsxZTV3eGo3ZThyaGtvN01TbjhXU01OS21jbzcvU1Y3NGNY?=
 =?utf-8?B?aXJOck1EMG56TFl2bkY2Mm5GSnYvYmV1aDYzN09IbTgvTUtBSzMyZ3NzRVNx?=
 =?utf-8?B?eGZ2YW1HUEFYV1ZRRlRVczgxUno2MEhlTjJrdkdzZndrTHI5QnRhSGpNNFhN?=
 =?utf-8?B?Q2RtY3Z3enM1K00vaXd5WE1GQTdHRmRYckQ1K2o1RU5jZEI0ektJQUh4RVZp?=
 =?utf-8?B?RXFoVzNVVlpvUzYyeTZpYWVtSURNRThtY243M0lMeHhlR3NPUG15dHk5bE8w?=
 =?utf-8?B?WUpoVUVPdTNacFZncVZicGlkTWtGNWFHN05DenJaa3VaYmtpYnN2WUNXZjdG?=
 =?utf-8?B?UVpRK2dYbmpYTjZ4M2VSRENidnhnLzhhdmkrRG8zWVRwOUhFNHlSUG9SQnFn?=
 =?utf-8?B?Q1lXYmpMVDVhT1BSY0cvei9mT1laVFVuY0F1azZseml1Q09sZDZ4S00zUC93?=
 =?utf-8?B?eE1FWVNJTG9MZVowdE5mRVdvWkJQT0VvWi9YMFVoUWh3R2pxMjQ3S01OdHo0?=
 =?utf-8?B?aXdFRjVCRG4zMG01RklrdkoxVzhPWUhmQXphck5JMlRFdVRDbXIzTXhRMkdQ?=
 =?utf-8?B?WG5YejFmQ0lHcS8wSlllODE0WWwzZS9Fdnp5TFlUd3ovUHIraGE5cGtJVFhx?=
 =?utf-8?B?MkpObSs1di9oc09FcVJrMTRLL3pyYjRxYUtVNjlMajIrWUlEZEpSTjhuRW5V?=
 =?utf-8?B?UEg5ZWl2NVZVQTcwaUpObkhPUkwvaUVpZmowRDZJYXRTQVBYREM2MVl2QkJl?=
 =?utf-8?B?YkFFUGl6cTZsendzakVibDR5TkZueGl5WHE2cWorWU9rSFpDeS9EVkovMjRX?=
 =?utf-8?B?V0tQdzR0eXA2OEJtZUNRZzlXZ3VpZlRveHd4RDBjbWZidTByR1E0ZXFXQXd1?=
 =?utf-8?B?d3dMa2pmeUZpQ2piK3d6Zlc0SDdGZVRsUmY4Ri9jQWpkT1l0TkY2OWNhRlVQ?=
 =?utf-8?B?UFhRc3BDLzBhYzRZRk9sY3U1MWwrR3ZPdEJtcFBObUM4aFNya3VDcEhaN3Yz?=
 =?utf-8?B?VWpmTmdUWk9zckVjV1pVK0VaOE5XQnh0LzJ0Ly9hZTVPYzhZTE82U01yMkY3?=
 =?utf-8?B?a0tIZ1YyQ3FYaDNqMkh2bFVvYUt0U00yY3JnVE92bXFuYk9mTnpQbTEvRE42?=
 =?utf-8?B?Tm1icWE2dWh4Qk5xa282VzR6WFN4cmNnSDN2MXQzRmNwM2ZIK3dkeGZhRDMy?=
 =?utf-8?B?RFIwVXlkdGpCVEZSYllvRFRqTWZ3dXRORzJ0VUh5K0wzanN2YUxNV3lSakhU?=
 =?utf-8?B?VXYzaTcwYnorbE9JRHk0cmczMldIQlNSOThHN1BJNFFYaGd0MU1xaVlpajg0?=
 =?utf-8?B?b1ZZdUlhY0hLQndpOHd2UFdnVEhZK1BvL3dDRms4ZGRMLzgwcWlJeG5KVktp?=
 =?utf-8?B?Y1lLRjlMZjNqRzZnN0VsRHFCdHZkYUhiZ2tEeTBMTXlxWE84M0dRYWdQQ1lW?=
 =?utf-8?B?V2IrNjJ2N2VBL2pqTlhqaDBLZlhJUG1SL0tyN3UwUm9mVjNDVFBhYlNaWkF0?=
 =?utf-8?B?ZWNZb2R4ejFkWnAwQmpKT0hqWUdyMU1xNjY0TVAvNGFpaEtnNUdUUVpSaURR?=
 =?utf-8?B?K0E0UTcydklrVEk3eDR5RUJkMktsQXpOOHdTNE5GblBjNzQ5RzVZaUREdUJW?=
 =?utf-8?B?MnpucWNnbytsSWxuUG90ZTBqcTdTYXRlMWZUbEV3SVBNcW5wcCtEM1JuY1Vu?=
 =?utf-8?B?amFZS04wYWF5ZzVjemV0OUcvVUtPckNyeWR6MkRoU3FoT3pXaWtWYjZtdWtw?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1a454fae-0d9c-4113-6565-08ddf0f8418d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2025 05:58:40.2321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hg+P26kPY6UTcmTd6fnqXJR+TOgb8CxQrbACVO95an2R7q/gAxmory903uyn6/U20zg3rwEq3xOvgBqiSoCTrNC50nSWybE0GmMGMwkSgrI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5938
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

Hello,

I found out that this is most likely caused by the last patch in
the series - a cast to (unsigned int) there changes the value
of the variable, which causes problem during tests.

I'll prepare a v3 of the series and resend it soon.


On 2025-09-09 at 17:27:57 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm: Miscellaneous fixes in drm code (rev2)
> URL   : https://patchwork.freedesktop.org/series/154173/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17161 -> Patchwork_154173v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_154173v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_154173v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html
> 
> Participating hosts (44 -> 43)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_154173v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - fi-cfl-guc:         [PASS][1] -> [FAIL][2] +15 other tests fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
>     - fi-pnv-d510:        [PASS][3] -> [FAIL][4] +11 other tests fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
>     - fi-ilk-650:         [PASS][5] -> [FAIL][6] +11 other tests fail
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-dp2:
>     - fi-cfl-8109u:       [PASS][7] -> [FAIL][8] +27 other tests fail
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@a-dp2.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
>     - bat-mtlp-8:         [PASS][9] -> [FAIL][10] +19 other tests fail
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-8/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>     - bat-jsl-1:          [PASS][11] -> [FAIL][12] +18 other tests fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-jsl-1/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1:
>     - bat-adls-6:         [PASS][13] -> [FAIL][14] +19 other tests fail
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adls-6/igt@kms_flip@basic-flip-vs-modeset@a-hdmi-a1.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2:
>     - bat-rpls-4:         [PASS][15] -> [FAIL][16] +35 other tests fail
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rpls-4/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a2.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@d-dp1:
>     - bat-dg2-9:          [PASS][17] -> [FAIL][18] +19 other tests fail
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-9/igt@kms_flip@basic-flip-vs-modeset@d-dp1.html
> 
>   * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1:
>     - fi-tgl-1115g4:      [PASS][19] -> [FAIL][20] +19 other tests fail
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a1.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - fi-cfl-8700k:       [PASS][21] -> [FAIL][22] +15 other tests fail
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-wf_vblank.html
>     - bat-dg2-14:         [PASS][23] -> [FAIL][24] +35 other tests fail
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-14/igt@kms_flip@basic-flip-vs-wf_vblank.html
>     - bat-adlp-6:         [PASS][25] -> [FAIL][26] +35 other tests fail
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-6/igt@kms_flip@basic-flip-vs-wf_vblank.html
>     - fi-bsw-n3050:       [PASS][27] -> [FAIL][28] +7 other tests fail
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-bsw-n3050/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1:
>     - bat-twl-2:          [PASS][29] -> [FAIL][30] +15 other tests fail
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-2/igt@kms_flip@basic-flip-vs-wf_vblank@a-edp1.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2:
>     - bat-dg1-7:          [PASS][31] -> [FAIL][32] +19 other tests fail
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg1-7/igt@kms_flip@basic-flip-vs-wf_vblank@a-hdmi-a2.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
>     - fi-hsw-4770:        [PASS][33] -> [FAIL][34] +15 other tests fail
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-hsw-4770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>     - fi-ivb-3770:        [PASS][35] -> [FAIL][36] +15 other tests fail
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-ivb-3770/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>     - fi-elk-e7500:       [PASS][37] -> [FAIL][38] +19 other tests fail
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-elk-e7500/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3:
>     - bat-arls-5:         [PASS][39] -> [FAIL][40] +19 other tests fail
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp3.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6:
>     - bat-mtlp-9:         [PASS][41] -> [FAIL][42] +41 other tests fail
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp6.html
> 
>   * igt@kms_flip@basic-plain-flip@a-dp1:
>     - bat-adlp-9:         [PASS][43] -> [FAIL][44] +27 other tests fail
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-adlp-9/igt@kms_flip@basic-plain-flip@a-dp1.html
>     - bat-apl-1:          [PASS][45] -> [FAIL][46] +15 other tests fail
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@kms_flip@basic-plain-flip@a-dp1.html
> 
>   * igt@kms_flip@basic-plain-flip@a-edp1:
>     - bat-twl-1:          [PASS][47] -> [FAIL][48] +10 other tests fail
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-twl-1/igt@kms_flip@basic-plain-flip@a-edp1.html
>     - bat-rplp-1:         [PASS][49] -> [FAIL][50] +25 other tests fail
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-rplp-1/igt@kms_flip@basic-plain-flip@a-edp1.html
> 
>   * igt@kms_flip@basic-plain-flip@a-hdmi-a2:
>     - bat-arls-6:         [PASS][51] -> [FAIL][52] +19 other tests fail
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_flip@basic-plain-flip@a-hdmi-a2.html
> 
>   * igt@kms_flip@basic-plain-flip@b-edp1:
>     - bat-arlh-3:         [PASS][53] -> [FAIL][54] +19 other tests fail
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@kms_flip@basic-plain-flip@b-edp1.html
> 
>   * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
>     - fi-glk-j4005:       [PASS][55] -> [FAIL][56] +15 other tests fail
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html
> 
>   * igt@kms_flip@basic-plain-flip@c-dp1:
>     - bat-dg2-8:          [PASS][57] -> [FAIL][58] +19 other tests fail
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-8/igt@kms_flip@basic-plain-flip@c-dp1.html
> 
>   * igt@kms_flip@basic-plain-flip@c-edp1:
>     - fi-skl-6600u:       [PASS][59] -> [FAIL][60] +16 other tests fail
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-skl-6600u/igt@kms_flip@basic-plain-flip@c-edp1.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][61] -> [FAIL][62] +29 other tests fail
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_154173v2 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arlh-3:         [PASS][63] -> [DMESG-FAIL][64] ([i915#12061]) +1 other test dmesg-fail
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-3/igt@i915_selftest@live@workarounds.html
>     - bat-arls-6:         [PASS][65] -> [DMESG-FAIL][66] ([i915#12061]) +1 other test dmesg-fail
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@i915_selftest@live@workarounds.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@i915_selftest@live@workarounds.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - bat-mtlp-9:         [PASS][67] -> [FAIL][68] ([i915#10826]) +1 other test fail
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-mtlp-9/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-frame-sequence:
>     - bat-arls-6:         [PASS][69] -> [SKIP][70] ([i915#11190]) +2 other tests skip
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-6/igt@kms_pipe_crc_basic@read-crc-frame-sequence.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests:
>     - fi-glk-j4005:       [ABORT][71] ([i915#12904]) -> [PASS][72] +1 other test pass
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-glk-j4005/igt@dmabuf@all-tests.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-glk-j4005/igt@dmabuf@all-tests.html
>     - bat-apl-1:          [ABORT][73] ([i915#12904]) -> [PASS][74] +1 other test pass
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-apl-1/igt@dmabuf@all-tests.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - bat-arls-5:         [DMESG-FAIL][75] ([i915#12061]) -> [PASS][76] +1 other test pass
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arls-5/igt@i915_selftest@live@workarounds.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arls-5/igt@i915_selftest@live@workarounds.html
>     - bat-arlh-2:         [DMESG-FAIL][77] ([i915#12061]) -> [PASS][78] +1 other test pass
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-arlh-2/igt@i915_selftest@live@workarounds.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-arlh-2/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_selftest@live:
>     - bat-atsm-1:         [DMESG-FAIL][79] ([i915#12061] / [i915#13929]) -> [DMESG-FAIL][80] ([i915#12061] / [i915#14204])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live.html
> 
>   * igt@i915_selftest@live@mman:
>     - bat-atsm-1:         [DMESG-FAIL][81] ([i915#13929]) -> [DMESG-FAIL][82] ([i915#14204])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/bat-atsm-1/igt@i915_selftest@live@mman.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/bat-atsm-1/igt@i915_selftest@live@mman.html
> 
>   * igt@kms_flip@basic-plain-flip@b-dp1:
>     - fi-kbl-7567u:       [DMESG-WARN][83] ([i915#13735] / [i915#13890] / [i915#180]) -> [DMESG-FAIL][84] ([i915#180]) +15 other tests dmesg-fail
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17161/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/fi-kbl-7567u/igt@kms_flip@basic-plain-flip@b-dp1.html
> 
>   
>   [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
>   [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13735]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13735
>   [i915#13890]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13890
>   [i915#13929]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
>   [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
>   [i915#180]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/180
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_17161 -> Patchwork_154173v2
> 
>   CI-20190529: 20190529
>   CI_DRM_17161: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8526: 13cd231d5da440137bc5d1c26fd3f7c170ace253 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_154173v2: 1fb3cbc03a96e88d351cad925b63edb16a5768ee @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154173v2/index.html

-- 
Best Regards,
Krzysztof
