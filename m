Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A000C8811A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:37:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDF9310E50F;
	Wed, 26 Nov 2025 04:37:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REGYLE8s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2B8710E50D;
 Wed, 26 Nov 2025 04:37:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764131866; x=1795667866;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zeclo21DiVpwHlW0gzaVK/vMSjjdfI+P2RVgsySzHgg=;
 b=REGYLE8smhMHaV3Dq8DVYJMZAF/5eKyafzVf0s5uzl0AK78ZCopvULB0
 X/gxPilwJbDv3gN0gsYzgQcZiH9F0+anbCtqtdM+LbJ8PYRPgDEIG2aKk
 EHyJqs52FA0aQQXQCGgOyHj//jznlVIuqBGgcGCvhyY9nv5Y6itljpv8K
 CRECXRPSQcy7EwFHXtu71TneRS2PyEVHmZTYD2LI+4QWLjEq8FBwKM+SR
 ZHWs8H4P0XGVDAAxLrS8R6H2EjQiqBjDGUvH8YhnB6gg+Mag1pVhA9k51
 Oxf8li09myInlEDwr7AygerDTMZrUtkV7W7I4WZhq6A51qUSKEPXjMULv Q==;
X-CSE-ConnectionGUID: 36BX70vORU20l5dyEQeglw==
X-CSE-MsgGUID: xAKtwg01RDeO4r4uo52OJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="77526406"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="77526406"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:37:45 -0800
X-CSE-ConnectionGUID: WBt3pHPFQG6fK4nUrD9pXQ==
X-CSE-MsgGUID: o5XxwDc1Ri2aIh3CJyUouw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="193267375"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:37:45 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:37:45 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:37:45 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.11) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:37:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pthvw92i9/zzg/GWKlPM0uLHlIRmo8FBB9L5ByGZh4K9O0ty5ZroAl12xCvNX3RAMm0UXYWJdSCOh98c7HuBZkwT20YDn9Y+2y+zIUUdRm7TpmAZc1132HCg5Y+dP/fyxtN7E7gsYoxkiMtYKL2kWkU6+4eEjUNRb9j4kbjcWZOn9vT4zre6H6rgX/5yf1knTrERGPtyXw9VY5srXLfWIDV0V4ca/VItB/jIkOF+zrwKvrz4noFrTPXnL+P831tqxw7VnNF7Knq/n6P/eUutHrlRwaLe0XPxM1WtV98mnyhiUPbuHywbX2W29YiW/TgZ/OuZvgXLWtoCEb9WTXN/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ve9/b+Wqfhwx+VIG3ex5dq5M/VzP/IlwehNdkJH9vdw=;
 b=jHTrGX3urg+vvm23bWEOu/A/seuAYe/fPlW/RvLSM3RH2CpVVN/xCyrBSpDsszqX595RLCzLV5HadQczrBYreKi0B+deehPuyNhisdrUvE+vcEt3MYhbr4mKHIvkScG9C9azKuyWxsYCGbIGKukrBNRago+kWmgtBYp9uOwaPZ7OKleJOLHBIFtgR81KkJgc1GPLE9wU3SvFOKndy1TiC4VIba4HE/Pfm56j0JPBXx3vWpq/7asweHcDGhpwsLW8zw2qfMgeQPOLhkQSiw5E+1GiZJ3A1diFv3Kmas7fYmwxIER6L1+ORFPS0CCW7IazC9UJHOyuf9uJM+gRZBBIGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:37:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:37:37 +0000
Message-ID: <6d67d350-51fd-47fe-a1f1-3a1ef5234100@intel.com>
Date: Wed, 26 Nov 2025 10:07:30 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 18/18] drm/i915/vrr: Add function to check if DC
 Balance Possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-19-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-19-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0086.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d8::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: c0886711-69d8-499a-e7a8-08de2ca5864b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZjNOTHVFejVYSUZNS0hEOUMyRWJaZzU0amFPY2F6NXBPa3pydGNrMUJZRTM5?=
 =?utf-8?B?VnNMckh5SFRPa04vZFJ5eCtkM0MrbWNsUHlzZHZxUURsUWlkQzdFa3cvTm5E?=
 =?utf-8?B?YlJ4WnloOEdabHBSU3lPSlJEcFhXb0FzV2pTcGhRRzdIbENONEZpZU1BbVY1?=
 =?utf-8?B?cVFGOXQrdlVLZ2oxR1dCckxOWW9jc0lnTjR1c2wyZ3QyMllnS1RXOFQydFhn?=
 =?utf-8?B?WGlJMVRUU2ZUMTJlZWFvc05GUHhFbUUvdzVlS2U4SUdtSXFxRDFseVkzSnlx?=
 =?utf-8?B?Q1VEUFdqY1U3WWtQR0lheW1sbmU5N3B5TEJjT0t2WDR3cmRBL29XcnJUSEZo?=
 =?utf-8?B?Y1hJMWg1U2lmTmxTblFMRHlGMHUzSkVEQzUyUXJpREQwYW9EZk8rUWh4WmZn?=
 =?utf-8?B?M2dydU1yWnZZWVhCSnFHemhGdXZzYjhWWHRJZEZEeThlOEJpSDJ5UnIwK09V?=
 =?utf-8?B?ZXA2TDVDK2tmMXBjZmtNa09KOW9kL2xhZGlRckZvWlNTQzhoU2l3VTZGUWQ3?=
 =?utf-8?B?VUw0NVhDZ1JFWTg2dmF3WDh5RXFna2R4Y0RsaTMzSW5FR2dUUkdJK3RJazV4?=
 =?utf-8?B?VmRScDVmZ1Vpd1QwZEY5dTJKMlNXNlRXY2FpNlpNZ29naThUc29Xei9lR2hy?=
 =?utf-8?B?a2RINGpDTmVWbTdENjcrbFkzSFpqSFBzeWNxaEx5SVJlZGlGYjE5K0Nhend4?=
 =?utf-8?B?clJQWFRTTmo3SjAyMVBZQW9qam4weVVqWUozdnJIR0xoTG5kSW5KMWFqWC9u?=
 =?utf-8?B?akJQMkJaeEUrUUdpVjBTemhtaVlzUjBhV3huaExwMjlCVkx1ak9qT2dicmVr?=
 =?utf-8?B?dGlidzBiRXFzOFFEbHlWT2RmZXdvZlhqMUFHcTJPY0hZZkI0M0d1ZGNUSmk4?=
 =?utf-8?B?ZE1kMHlQcEp4aHo3cituOU9NV1RwVndXeE90Y2xuaXE0dzFRZmhCT0pOYWxG?=
 =?utf-8?B?bE9VTThQSkorMnhHWVZlUGZmM2dpMkEyc3VPSVR3L2VyYkpuYVlHVkhDUTNi?=
 =?utf-8?B?SGxoTkRWanBxU2lwb3pqaGdxVDlZVmZhVXVCT1g0UWZpYXREdzRGL1RTUzZh?=
 =?utf-8?B?OTcwaGhZUW5tMWxWazZRLzlMQ1hRUFR0TmJXeEFUaG9PaGFtWFNaSDVoczhK?=
 =?utf-8?B?V2Q2WGZ0c2oxU2hIeEl2RjA2NHVmc3J2MnRXSFpZaWZFdnhqNTNIZG5YS3VH?=
 =?utf-8?B?VGFWREF0OWw4MVhuQlRHTXJxTEVaZmE5akZRMGVZY20xVyt3THVLU3ZEamtZ?=
 =?utf-8?B?NDllczZ2UWI5b2p0TG5wZW8wNlZMdFZ4eEY1OXBZVG92WnZvRlIxYlowTkRl?=
 =?utf-8?B?U1h5RGc0MWlRSkIyZXZnSk1vQWxWQ3ZZRzRTdkhxVTlOM2xqajZabjlNb2h2?=
 =?utf-8?B?K3hsK0drYUNNRitlUXFoYzk5SzZvUUErK0MvbmljKzRLMWdVQmkxM25SNURZ?=
 =?utf-8?B?dnExYVpGVE4yK0p1dWI1S0N5ZVFOdGowdEFrM1hldEFHaGVRZmhEQi9scEFS?=
 =?utf-8?B?L2tqUGl6clhKM3ZRNG5ld3FaN1VKSnEzZWcvbmNwcmE3Mkg1NkZ0aGZEUWM4?=
 =?utf-8?B?QlpVbHNuUzdQd3R5SkZsK0RuNDZ3MVpEb3VHam1PWDRpUVhHOXlvaHp3cHBw?=
 =?utf-8?B?dUkyZFFEZDZiWVdOSTJ5MGJjTkpTSTdjbCtlSkp5TG56TGVENEhsdFFWVEtZ?=
 =?utf-8?B?d2Iwb3NiYlFCNFJVd3h4TE0ya3MwR21zSy9MeXNZalVSalB3Ry92R25xUXFM?=
 =?utf-8?B?cXpKN0pFVmVzcFBUU0N0RjBKZkx0bEgrVSt3NGhPbllMSEN0dERTclJqckEr?=
 =?utf-8?B?ODd1MVhTa2pjN04xQ0J3VTFHdXBaa1BMZHVrd0Y4L3RuNFFKMTZPbjJIeVlK?=
 =?utf-8?B?NDIraG1zVnl5K1o0OW9aNFRXUTlzc2o5WnlwK3g5MDB5QjFzVFZrNkVTQk96?=
 =?utf-8?Q?f5LP8Quk5ushrNcsyL8sDnAwodUu4kZf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akRDQXFUOVRtSERPSVViMUVwR3NSVzhxbHlCRCtPT3gyaEc1NzRva1ZwNDBK?=
 =?utf-8?B?S2tnaGdQeWYxRzBmZnE4akdGSVgzbzh1MWd3MW5iZmdMbWlQdUx0bXk1WFZz?=
 =?utf-8?B?VC95QjNYQmpmTWpLQU01cmNpbklTWVpTbzNIMEo0WFhWUXFIRll6YU5mTXNS?=
 =?utf-8?B?dFFTTDdqTUxmUlI2VVJHOURmc0ZlcEdOZHNoMWQ1U0lMWGRJOVVpWVZXaFgr?=
 =?utf-8?B?U2dlMHFDZWEvTWtZamN3bGFUS1BvVjVvL3RCQTZFSU5OdnNzZFJwZVlzVXdD?=
 =?utf-8?B?REs5b1ZKS3FZS2JNKzdCNWhtckl6cXBBdGlFZldmRlBLTGR3eEtPSUVpa2Vp?=
 =?utf-8?B?aVNXTjZMelY1V29YNFFTTWN0S1duMTlyenAxL3h3cjBxV0t2eFdORGRFR3Q3?=
 =?utf-8?B?bHc3NmRJdmlEa2Q2YjBiVklnUGdXZ0VOTy93ZEZWKytmRDFGZlRNZUc0clRt?=
 =?utf-8?B?bXNGUVJVUnRoTGdKVXp3QmZ4cXFacXRoajU2VXdoTGo5aXlxU1NPclJkbG1V?=
 =?utf-8?B?b3FxaWVlTHlQWU12cTNvR0QzOHRPWFlDb3c3em85ZHpvZCtmeG5LMEtKNlRE?=
 =?utf-8?B?VjgzMXhJbS81dzNNZjhibC9HQTFiYkxOQnBsSWpyQnBCbjJpMFJwZ0dweWZl?=
 =?utf-8?B?cHVHR3ZwV0ZrQmFXeHB3bGJmaGJWVmdUVVRKbDVoeUMrV2RCUFdSajFaQUlF?=
 =?utf-8?B?RnhTYjJMaHFRblpycm5RSEhzVXpPbitDWG8ydnlWcjk5RFdxZThPTmJkSlhU?=
 =?utf-8?B?Y0ViY1JGTVVRVmdPbDZEQ0E4MTVNeEcycENCYWV2WjcyYiszeDE0bVEwYStq?=
 =?utf-8?B?anRScFdWN1AyUXpvdWdwVlZHc3dJWnVidjB0TlZSbHYzTFZISUtTeUQ1TTJw?=
 =?utf-8?B?L0VXLzVVSG82cExxRUNRcExEdTJIZkZKckR4b09kZkoxeWFPOTZUVVZqSmlp?=
 =?utf-8?B?ODJiVFJtbm1QV1hjaTFqLzdiSWJFcXZHMDZISFEwZ2sxYXBUdHUvNk5kVWhE?=
 =?utf-8?B?WlQzdWFUT2tLUmxFS2UxRlV6NXdyNXB5b1lQTHVMNjNQdEY3UEtBR3FPNEcr?=
 =?utf-8?B?WHhvMDJPdmNMamFmVGNPVElEeERtSG1WeXB0MG8wOTNpczRydG9SZnRCM3JW?=
 =?utf-8?B?MGR3Z3VJcnZYQU5qT3Y2V2J0RzN0UElHMjFrWFZ0MlQ3MmxtcEx0aDZ2ZTUr?=
 =?utf-8?B?VWlkRXpYamRhaUFwZGJiQXA1disxbUl1SVJ0WHZkSTlBU3NpajdKMXRuTlFU?=
 =?utf-8?B?WFcrWFRQc0dlVHRqU1RxUDJTZFMvUnl6bUZLQWpWdXAxWk5VeVVuQWdOTk1z?=
 =?utf-8?B?akNQeGQzMmlDdjhoZWtEaWJhSE5TdExTVWVCRlZxNzNaUUJrZWlGWm5sSGlV?=
 =?utf-8?B?YzFLNEZTbUd3eXVnL3dObk55cDV3RUhhY3huREN3dnIxcERmOWRnbWxPRnAw?=
 =?utf-8?B?eDVMRU5OczJmT285YjMwY3IyUGY3aEFUU2FjNk1YN1VkUENGN1R3L2hlZVdh?=
 =?utf-8?B?aVVwMURQUmZqREJENDdibEI0QmlVU3pIR3VXOXo1S3I0Z3lPVXN4SjJxMEIy?=
 =?utf-8?B?WGNTTXdjRG9HY0hrdW03bFRRa1lWcUVLcVdKKzVFVG1vSGJjV3Jwc3d1REFp?=
 =?utf-8?B?TGd0NmVlL3d4Z3FPckZDS3RGaTZNcDRoTkViZzgxaStSWFN1QWZiMWFiRmJV?=
 =?utf-8?B?TXphU0QyRUVzM1hGaGJVLzZwTXliUzN6Y2l0dDdBeWkyeTJucExaMW5WVmQx?=
 =?utf-8?B?N0ErbWZVOElPenJ2UkkzaXB1TkE0RVJhQTlGaGEwR04zSVdEREJZQnB1dnIz?=
 =?utf-8?B?OTV5eEF1T3FsL0hHRkVIQ01qVGczcTVYMG5Qbm9qZm4xaFhXZHlYd1dlZm9X?=
 =?utf-8?B?eHQ4TmJReS9OYTkzTlNhOXhnRW1BRE1DNFNtT2VHRzNrcnV1cVQ0TnBwbGFW?=
 =?utf-8?B?S3o1NTRqUWlGbExRM0JUVEkvVWNBZ0pmMFprdGZuTmd2VkZTR0V3N2oyQXVI?=
 =?utf-8?B?VkJVV1hDVm5LQTZLUHM5UGhXajFDWmdzUTFMQUlKS2RCK1o4L3lYajRaYm9k?=
 =?utf-8?B?V3BmaDNxMlU4R21UVGRrWU5KaE9lQWFGRnoxZTQ3QVNCejNBakZ6cjArT0ZE?=
 =?utf-8?B?eW5GY1F3NFFydlp2M2pqNGFkbGFNUzBXWGx0YXhuWVc0TE9ZUDJDVHFVaFg2?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0886711-69d8-499a-e7a8-08de2ca5864b
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:37:37.2311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A+tdBllxIoqGhwKkJKGxhTdxAHkRaeRIOcQSQU8CNgJAq2Vdvyv9BEaeXUmWsL7lMOX18U8K05WCmzpRna8gjv6egvpD7YkhJb/W/YpICt4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Add function to check if DC Balance possibile on
> requested PIPE and also validate along with DISPLAY_VER
> check.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 20 +++++++++++++++++---
>   1 file changed, 17 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 87945b031a7d..8aba20a50d92 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -263,11 +263,25 @@ void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>   }
>   
>   static
> -void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
> -				   int vmin, int vmax)
> +int intel_vrr_dc_balance_possible(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
> +
> +	/*
> +	 * FIXME: Currently Firmware supports DC Balancing on PIPE A
> +	 * and PIPE B. Account those limitation while computing DC
> +	 * Balance parameters.
> +	 */
> +	return (HAS_VRR_DC_BALANCE(display) &&
> +		((pipe == PIPE_A) || (pipe == PIPE_B)));
> +}
>   

As also mentioned in last version, this can be merged with the previous 
patch now.


Regards,

Ankit


> +static
> +void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
> +				   int vmin, int vmax)
> +{
>   	crtc_state->vrr.vmax = vmax;
>   	crtc_state->vrr.vmin = vmin;
>   	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> @@ -275,7 +289,7 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
>   	crtc_state->vrr.enable = true;
>   	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   
> -	if (HAS_VRR_DC_BALANCE(display))
> +	if (intel_vrr_dc_balance_possible(crtc_state))
>   		crtc_state->vrr.dc_balance.enable = true;
>   }
>   
