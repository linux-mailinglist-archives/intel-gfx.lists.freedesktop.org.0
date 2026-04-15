Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WLOwFuFX32n1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:18:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B27E840275A
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FD8810E19C;
	Wed, 15 Apr 2026 09:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SZktUDpV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8B5110E19C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776244701; x=1807780701;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EgetNVbPdqVSCcTVbaaeoBTRDeQznGs8Z8Wg6bpJ1mE=;
 b=SZktUDpVPsjnAO1DLU8kEvjKAWEwS2paktN6SceC+ge5Pdc6AS6ir5bm
 pADDJ/sjK4sUvJQapNo+5zgUTpt5u3gwqykNbFfJCU7Vzl2w9QBMFGBTM
 CVTDsM9xY68/BHhrQnYkqbOb91Royz5+RFfScEHJs1H7cGoSHEUmyJrAa
 3F7GS1eCkkAiKYEUsyIzMX4Yn0rtNiZORoNuXVJ8+Jbxunvv4C7AtTJzp
 ChzJYzWxb6TO1WAmr3LNJ5vBQbMLJa5KqXEWvNWl4lLwUgRvW99JoGXm1
 ts5pXGbkDhnBqdKFnZKouQ73t7O8Nrb0/zB68ThZhraCV5hT0xqMo2KYC A==;
X-CSE-ConnectionGUID: uWJ2vt0+QeWaigXMDDLfXg==
X-CSE-MsgGUID: xd8R/3eUQx+qvhVlnIaA5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="81084262"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="81084262"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:18:21 -0700
X-CSE-ConnectionGUID: eRC30ovATz2W3eHzMOGBZg==
X-CSE-MsgGUID: pYa5qKBuRP6DZRBSVhAgLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230221736"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:18:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:18:20 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 02:18:20 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.0) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:18:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AmEUK6ym2bpvjQHqaJl7ufiVgiz3hPRT0vHcG4B3AazDBjun9Jfv+61vxrLtdoDEZ49jCMJKsLryMkAc2URiuGjpWbT4XzN4I+9ZUCffZ8M02YCpoqZ0MgmXs4aOYxxuVbkel0jH9E8bA8F1aD3hg46FryRXbMTAqgSYAdJAaMpZjdrqKjbzeKM59Sl0E453vgihznKgdnCMs5OStUV/Y5w6C3hlBJCCUPKc4r7IcDEDXqc+5Rf4GeAcJqgJP0gRzDLnyBOjDA9zFKWoyel2jD0/UTEpIe6Xm7pKvrhMJcvWEOryTDafSWPttQuFCyQ6vfyvaNPXPZl9junVmUWmRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m7/1UvzTxnaLTHESB3fQk3tjf585YS5hCXRpWnY1Ooo=;
 b=nYevib7A+DRIs2MOxOD5c9lxJbSuR9BRHX4bvM8sJo2B5e3ocUlVvJu6COro9v6puoTGkXNjVsggeZjoxCJpHL5a3ZdkiFjK5QKFIiCxKLW6kNgd7hFTeQuhS2VeraB6WJbiX+J8LlFXvEIqGGwQpimnHvUvtBcslB37Ae48tiD3srO3QkSn4XMNEgriDuIM21sPBF4/h6IRHxrxu/ltet6p6MsYSn5I1ZmTVtwdqjoi+3KYAZTz80tPa37I2ACzESri4tUAzUnv9yqoKmVWqo4IHfwBXLV7LgK0dHF6gObbBDxYPOveNXc2ykSrzGje6HEal7ya+ggemZVHSYp/sA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5184.namprd11.prod.outlook.com (2603:10b6:a03:2d5::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9818.20; Wed, 15 Apr
 2026 09:18:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 09:18:16 +0000
Date: Wed, 15 Apr 2026 09:17:59 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>
Subject: Re: [RFC v5 2/2] drm/i915/selftests: Run vma tests only if
 current->mm is present
Message-ID: <f3knxmz4kwelom5eong7s5wa5deyuqfyc3nlxx4lisxberusws@jseqhs2cqkbv>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260409080825.2191535-1-krzysztof.karas@intel.com>
 <20260409080825.2191535-3-krzysztof.karas@intel.com>
 <adeJHZAEuDKsimJt@zenone.zhora.eu>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <adeJHZAEuDKsimJt@zenone.zhora.eu>
X-ClientProxiedBy: TL2P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5184:EE_
X-MS-Office365-Filtering-Correlation-Id: a8373a34-3eae-4f54-3b11-08de9acfecdf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: SJbzU3Epqa7SOie04aGdN5lAJ5AXJhE9Vmj0l0RcvCw0cBTTb1hPvgA6kPCxB6lc9tMN1qdobGg8Rff6pyvRmqZhAPjP88p5mTF8/cKZtuKDIpdbQc0dJoWOtRkQot2Ta98IDFZylEJ1DOW/2D4ie3f4dNHqAp8jKxkPG6Om+qxg22X9ZWlGOW3wOMGBptcRSal9LhrW6DvrNN3WKLLc/vyXxSs54UUOy/9mBRHnMToPTqbO0AIB0TEjbgz+RJqOQHplqX9TTKsM7VXrD58/pVYPFVZekNrVmu113KyUkMI6dtLfydSM7xB+sblDGWxZcCCzALhDfdNcvve6T9pvrLtjrGahWrcCBsV5NdiUXuhk0fi4zG19tkepI51tF8LON+L5hoSxEOEK8zOCJxPHqAzUcbLMP1kd7x2M5LFqCqc/DKqWfYr+5vMOOwYtkZCIGlhatHCJ/2llC+RifJbgjllDsarQft5fkozzoW6PQRnhsRBnL7epvycFYsHyjpdYAmJLNQr1GFnWWg/b+8Wbt44KUuiDfVlM8BrK6jPXj4RtlE5y2vgr0FAxj+R90KIU9uasfQImXiLq9PfZQn070R9fJmo9aJy9/P9DldOFq4kHTVAJ5CwhGfI4CQD6IBbIS3HrFamdExSvH9b4brnWe1UTEXNiOQudVsUQxza7PvRQdzGCH6xW9AIqkjJb7IkCajPzudIKR/kJ8VUDGEPRpn0FAihmwxQ3NT0SVVSsvNY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VWhJWG9FNkdaTUQzQVErMHk1RHk2dW9YV3VXaTgyQzU5R1ZnWTFxb21LUXA4?=
 =?utf-8?B?R3RtUDYzcVJ2ekhDSUs4RVBkUW5jeE1leExMVnQ3Ulk1Wk9sT0RLU3AyMU1R?=
 =?utf-8?B?aXJiZndnQXdQczF1SVQ1OEZYTXJ0S2VKNHpvYUZhVU1aNmJOVVhmd2lic01m?=
 =?utf-8?B?SkhJT2dUSGtLNG1qeDdqdjJWT3VCSWVGczdMSlVvWTdTRnBoekZRSW54U3hk?=
 =?utf-8?B?SXBNQVlHQkYvRkZHejlwMUxYZGltaEZhNEtEbnk5dDhucHA5bUlKV0V1ZWla?=
 =?utf-8?B?dExBNlBFQTVXRDhsb2NsaFlNMUJTNjNyY1RuamM5K0JrZTlHbkozWUFXbXE3?=
 =?utf-8?B?aGpoVldwdjBMSGVCd1MyUnRwMFRTcE5rODVhRVEvR2JweXNiUGZNUVBERTRZ?=
 =?utf-8?B?amJJakpGSHU4TFVLVkZVQ00rU2NhRElIalgxT0hoSVNGR2ttcGxiZVRNRDd5?=
 =?utf-8?B?NjlHMFl5dVpHQWxmTUNhWWNXNkpmRjZiZjBuYjIyQ1drdjR4TWtKMGs4WW5s?=
 =?utf-8?B?angveWdxU0djOStEN2wxay96Y1J2blJBNkRpT3FrL2F6UlFoaEovR1dyQyti?=
 =?utf-8?B?SG1ua1AxbE1WcDJBNzdSU2QxYVhyNnJnSlVwK3VUVks5Q2VvMWdCWTNueE9o?=
 =?utf-8?B?ZnhrcEVIQzZMM3FXRjRKQVhkdFl4Rkx0VDNaOGJoYlQzWUJROW5xWFRWMnlJ?=
 =?utf-8?B?YkdKZUpyZjhpQk5hZzY2cDdJalg5RzNXektMcFpBU2lTU3hWaWViZFV5VkF2?=
 =?utf-8?B?Z2oya04xaXQzL2JoKyszYWdJOUR3U0VFTWc5aUsvaG9sYW9JTFhMWWNTeFRl?=
 =?utf-8?B?dTVuamJ3YXExUFROL2Z6ckVkSEhMM2swc0dPU0EvV1lyc21YTEZUNHFGeEVy?=
 =?utf-8?B?YWNiVFljMXlCSVBEVk1IRjdIU0Vxd0FiZ3V1ZWtWbmk4SWJNWTlpejVqTE52?=
 =?utf-8?B?cFQzMEdPMFFjV0U0VllESzYyYmhmYnYzZGZ2YkUzeG90R0ZNMEYvOHBmc1Jm?=
 =?utf-8?B?eG4wUndFYkRJLzNyS0pySnhwY0d6RXFxUUZiRDBpMG1hdnAwK3pkdWxYRUI5?=
 =?utf-8?B?UzZJK05QTFIrVXdJMElQSDJvV0NVQVBwV0lqVDg5d205MXB1V1I0ODhUTWIr?=
 =?utf-8?B?UE9FaWtPd0llZXF1Q0V0L3RMSHpDd28yQ0xqSGxyaExEWDdiL0lWaE9lYmsr?=
 =?utf-8?B?M1NjemZwNThJdllWT2FGbWJYMjI1VW9xSWk2Q2c3NHRiaStsNVpXNi9MR3hM?=
 =?utf-8?B?U3FWcDBUSjc0VlZIVXlld0wwNE9ieFlTQkJNMm1VaDZRZmc0aEtLNHB2blJK?=
 =?utf-8?B?RExKckhpZWQrTGgrd0thTy9Sd3dwZFRYYWtBRGhFUzZGMnV3QXQxeGgvZ1JI?=
 =?utf-8?B?WVNUY04zLzN2SFBLc3RBREwzeW9YelBZMTJ3Y2FqNHIxb2RzQm1jRHNseVdS?=
 =?utf-8?B?aUxQbUJJRWQ2bWxRbW9Qb1JRa0ZoUVNmb2R4ZmJRem5lQjIzTzIrVFVMSnB4?=
 =?utf-8?B?TmUwNXlPdmgzM3lyMyt3UitSUm1ycjQ4UTFUZ3NJdGxlSHFsYjJFWXUzMWx1?=
 =?utf-8?B?MS81S1J4ZlJVaCtCRGRNdlM1M2Jvc3d6Qlo3WDVaV2lTMkpkZWdKTzl3bVor?=
 =?utf-8?B?Yjl2eEZTTCtKbUxsM09EajFPeU12dDI5T2NLZjVSMEtXZjdETjljWXREeHcx?=
 =?utf-8?B?a1FUdko2NmZIQ0RNVUVGUEh5eVhybWN5SEV0Rmp4ZHRLc0J4blcrVmZCYjRR?=
 =?utf-8?B?WktHcy9naVNDNjdzTEN6WHRKdHE2NDJnMWw0bGdhYWtzVWJJdWFzcUdpbndK?=
 =?utf-8?B?Zk1BSlEzK0x0cUMyREdvN21JU0dTU1NRMXYxY0daRFczT3lIWGdjNGVkNUY0?=
 =?utf-8?B?blpHYzNRelp6VHAzRmdnR3BUQTlTcFZJRzR0biszMFlBb0VrT0dubnJEY2JC?=
 =?utf-8?B?Rk16ZDl5NE9SdWJZcEpDeDdnd1BYRUdGUjJNUm1Kc3JVc0pLWnVZSkcxY2Va?=
 =?utf-8?B?WEFQVlV5QXpYMUJFYTV6am15UzNDZVg0OUw3SllWd0x5cXpqc2E4Y1BMUGZx?=
 =?utf-8?B?STZ4REdjUEhCczZzVlU4NDRsR1FVTlpTeThQYVliZHhUUHZmUmNSZ2RPc3Iw?=
 =?utf-8?B?dnNzaG81K3h0OVFCdVNJWjMxRXJEWi9OSVJORVZNQVVnTFdERG1KV3g2bm1z?=
 =?utf-8?B?azdGMHhIOGlnV0dBLy9uOFlSbkJ2UFdVREJpQWcxVjlOS3RzZEJVNmRzM2Q2?=
 =?utf-8?B?a0ZGK2QrY0FtZHh5dG9IZHFnQlNEazd3UUtBSUZrQSt6cURvZDRrRXBpOHhp?=
 =?utf-8?B?NVJ4Z001ZmdHY3lkeHRzUmwrQ3ljdDJ4eU0zMDRLcUVNRXJiV3RMb1ZVcG5T?=
 =?utf-8?Q?ahI0sYovcPH2an/8=3D?=
X-Exchange-RoutingPolicyChecked: SIQR6R9NRVixFE/5hNXHJvodjAbWLdZljvr1/xcliSY0CWawdPxPbQLtqlUquu2yAp1+7+FyIh9KRpaZgWAjjmMJJz3bkyShtpzlD2FwFN94uQYdybCYLvSJ3Qvwp3/xdr38QquHPURpM63VQG6UC53ilhLtwoEdgiXpw/zz13SndU8O71UCBqOW9rKB5PMQOh8rc06UcsP2agVWJgKtawYhZ2LDULRuCbgY/EP69MvkUJEWIKduHw8CRgd/TJhbM1E33qJszh4pMjGJjCy8jutie7SBNHcOhIuVGutsFtOIknJoqEZVhm2O31gGMg55EqyjrQzLvWw0Si/2RWZO4Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: a8373a34-3eae-4f54-3b11-08de9acfecdf
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 09:18:16.7142 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cq++2DnjQMI2BuTzGKIdfJB/iq9ZubzuRg2S4ngBMOUziC+70rYGO3BdN2gdsIQHx2Y4vtSsoOkRsx5ijh8kCJmr0n0ZijvLjez/B3jrbTc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5184
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:andi.shyti@kernel.org,m:andi.shyti@linux.intel.com,m:sebastian.brzezinka@intel.com,m:krzysztof.niemiec@intel.com,m:janusz.krzysztofik@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B27E840275A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Andi,

On 2026-04-09 at 13:16:28 +0200, Andi Shyti wrote:
> Hi Krzysztof,
> 
> ...
> 
> >  	ret = i915_live_subtests(tests, i915);
> > +	if (ret)
> > +		return ret;
> >  
> > -	if (unuse_mm)
> > -		kthread_unuse_mm(current->active_mm);
> > +	if (current->mm)
> > +		ret = i915_live_subtests(vma_tests, i915);
> > +	else
> > +		pr_warn("No current->mm to safely borrow userspace memory from. Skipping VMA tests.\n");
> 
> This line is too long and, what's the probability to end up here?
I will not give you numerical probablility, but after passing
a PID from IGT we should never end up here. This warning is
mainly for us to help us identify problems with borrowing
memory. Janusz suggested adding it, which, considering that i915
maintenance is in hands of a small group of people, I think is
a viable addition.

> 
> Andi
> 
> >  
> >  	return ret;
> >  }
> > -- 
> > 2.34.1
> > 

-- 
Best Regards,
Krzysztof
