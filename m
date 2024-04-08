Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0C889B64F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 05:16:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7397910FF8B;
	Mon,  8 Apr 2024 03:16:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h7ZE8FuO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD93710FF8A;
 Mon,  8 Apr 2024 03:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712546183; x=1744082183;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1OF+jDhSg0nT3gz45ZFefOM6lYM8g8/7OYaJeWDMJoA=;
 b=h7ZE8FuOmiEOJApAMaLvyKh05ZNZOfNw2rVRwPeSGmjKA3mM4GpxOeG5
 6WIcnymlckrOHfsQo3C9pVyzfQG375CB/AhYOM991kqIm8O9PpLC3T9Ig
 Xk13xUeFPuJ4NxGYaVEiyZdUUGGZ7jXIUZdKMZew+3GapCbVQZTJGuBvj
 gaBw5rCrJFM4lGCceazaFKVxgl+ekuEFGCbCrBIsnEtJheneZz6MnnUj4
 1mWlDeM07tzeqrzv63F4PCE1Zl+GVwlLAOk0pU4yrQHeRPDyAXBAITjIG
 is1iUIhTTHi/7Q8ENCwdsYjUUMdOFimlAgtKXMl+1B1UCaiv4Vv6a2Z9y g==;
X-CSE-ConnectionGUID: ExK7nLS0SoCW1vfzTsRTMw==
X-CSE-MsgGUID: z8pk8ybHQ7q2YZMboCJR/A==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18948847"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18948847"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 20:16:21 -0700
X-CSE-ConnectionGUID: 77PtCqBBS6CEb9uYbi6jkg==
X-CSE-MsgGUID: uTIGXTJPS5a4fnb1a73Ruw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24514156"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 20:16:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:16:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 20:16:19 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 20:16:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hGUsvGvbu6NK0TQUifm4p+RLCcqZUx9Z7/p3KOwbydVOXLwXNlmGtzS1RkWWcX8e++ls9abAsPGL2RPLKSQ7I3UFAIwqTtJeAR9JT2JY0P8egp+UN0i3ph3ngfdgCXmmPZEq2weKt2VXE+V1pfhUvCruXGDeergzcfgPbRriAgsmf3WHWyBzTHEK7AQij5VRr33BdJyYMUItY4xIg15snMRlSr4XlSe5ruzVHntPFjq1sVTRJGnX5+xkU1LYAedLud6VfYbbe/sojqxzE1Yn+rnqMf0MAqntF/jMwLs4t91FACP57SDmKJFfOu7DNXEdX8RAD1Wol1q6d38of3EeGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AA5qDb9mb2KMNW0ykklnw+7NNkEDS5uxF3wb6fDI0D0=;
 b=QIcH5ozuXgrEdU7vnGTG7LTnNG/mHublSuxC2EpVp55uXnfdLGGxYep0N68cYk3SwaGri7bK3rQ6OsL2tU2oivZb41qVYvGrDYpenydv2AlSUU5odrKUAph+NdhIHkMMS0ExDm87mE9emwwIoPo+QUh4l6mF6+o1yB/KGKofis3atebIfW54s0uKvWI8KtblnH2GZ9hequHrLDvifdITJ+og9mkGSLa6migKED9VT7xZcuCK0tYSIuMIQ/k8hzmmvm0D9Cf7zIW7VxrAWNJtb7dUAOuT+I9J5yjIxVBolak1kLLjtSKEj34XAz/Thhu7Noz8NhWw+XXITf5rnTF5UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by MW3PR11MB4700.namprd11.prod.outlook.com (2603:10b6:303:2d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Mon, 8 Apr
 2024 03:16:17 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::cea4:315b:52ce:11f2]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::cea4:315b:52ce:11f2%3]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 03:16:17 +0000
Message-ID: <0f65f332-05f4-441d-8880-fbc36ec7f08f@intel.com>
Date: Mon, 8 Apr 2024 08:46:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 25/25] drm/xe/bmg: Enable the display support
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-26-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20240403112253.1432390-26-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0031.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::20) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|MW3PR11MB4700:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VDLRhfpB5YFccJrxehbYLUYqvzjI1b7x7Yai8qn5IFg7F+ko2K93SlnpOTCznx2E2XBoB4X7ljWmz7NQdE119WACS9S05ZJy4umoRuBEOAlMu3xYraazMK52vHhOsSERnzc3vmfi8SNsIZazUxCfeze7gWaDc/UAwPBhVbJJWR42NgpUloy6qmrXfFfBV8Wc23Bv31fobimasHbNMZxvt5zLGtHpk4f4HPD+KrrYjBZ5EQC1KvI3Gw6nmQWKJ2P2HgpeTEzOyQLKflWzN4ARrrEuae+OXocdSCy6aOC3MNhqZbeyzj8ZjJadiG3DSnqLR5fHE2/NX6jbH17IoktbQ3sdaSLvcpPLUdwiUdDeTMnPysqm2KdQ0f664HlYu/oZR8+PGaojg1iVVtHsuasGp8iv/DueL2L0b2B1D/s+o7ee12cBkS9j9aYDUSEiUZ+2vYrsaoJrtfYHV8o7v3zWPbqdpy9Ipp/nAWPREfkCWChXcBzI3FIBXhOdyW967QM70lznpLHenixyd1sVfOozALdx8JdkbvKex3m9IZAhmSxpsqUZEWH8EL1DduXRihJhhkJdyxT3EukW/tXmLUraWnvCNgjQ47bttocP6jcgF3FpZ4UQ6yTmVl+J8bj0mY/rQXE4GbYfttDi25ImdTfxAqHSkPG1PWkCGst5SwG0uMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0RvY0VTNGtVMWxQMURmaVZac0R6SFhLamhLT3RpM3VjRzRUZXVYUnlVWnNo?=
 =?utf-8?B?SnJxUFM2SzV6S3JYUU5IZ1NadWZJKzFid2Mzb2hOdU1MSm81aWd4dzNWN0JS?=
 =?utf-8?B?WnAxRXN4R1lUSThFL1N3L2dzTUYxNWVvTlJ3L3lYWDdPcGlLMFM1MW5IaGhH?=
 =?utf-8?B?K3BkUXg0cFJsb3FkYUN1cW42cDB6YzZxZ1FWRFZOS0tDQnJ6Rk9zMENTaFF1?=
 =?utf-8?B?SWpHUzZwY0VEREk2TmVZMnBkdGYxd1FjRHRYUnQ2alladzNJUmdnUU1PMlFC?=
 =?utf-8?B?b0d5eWpzS3ZHSEdBZUQwd2RpMlhHcUxmK2tmRE5mT0xUSTZ2S2NrVVJ6c2hT?=
 =?utf-8?B?VGQxZG9HQTgvL2F4ckhmSzBlVWlicXF1WlNwNW9iSjQvYWpya1k4U25McGJz?=
 =?utf-8?B?NE9UTXljWWxiSVZxbEFSRzFUbkV5UENFQVRGelVlSHg4d0hLQmZ6VWpRVUdS?=
 =?utf-8?B?QWJIMUgxcVEzaEt1YUErYkxQamxYL3pqSFAvcW5WWjh1T2Z2UERGRHFwUmVD?=
 =?utf-8?B?b0tiRWxYT2dMYWY1d1pQalZCTVBsc1VDN0g3Q0RidEVRSUFvNnREZU42dlAw?=
 =?utf-8?B?N0ttOUJjNFJWUWUvTXNUL1l1K1Z3NGpudmJxUjFzUCtsdjd4SUg0UHBOQ2Iz?=
 =?utf-8?B?YWVXUnpCaG9IYWxqdVd5T25lektnY1Q4ZFFObHBqZzVvNUNRb24ybHBLSG1N?=
 =?utf-8?B?UGREN2tpZ2FUVjRzTlBjT0d3TkRoU1l2VmlFSlhCdDdqZFA0dTZDMHAxSVRq?=
 =?utf-8?B?dzQ0LzYxQmpjUkRFN3g3TEhIZ1M4aFNKSlFzNGZNVC8vcDBNaWd3NzRKZE5s?=
 =?utf-8?B?UDVaSkdJU2IzSlJxQ1ZYVllRRmx6TFZJTjR2TTAvR1VZdTlHQm4yQndST1Zy?=
 =?utf-8?B?UlZXV3lFdE9EMXI5K2pManl6Mnd1eHQ0dm55anl4QTRaUGZZR3ZDTlBmV1Br?=
 =?utf-8?B?MVp5eXNJMkh4N0ZZRXVMYkNnSTYyWXYxZlp6Y2FocDZZN2F3cnJha3RMVGxY?=
 =?utf-8?B?QWdsd2lxWWZtejZsQnFRQ1VUTzJIenFXRVpCbnhDa3h6ZFRhODNmNFp3WTll?=
 =?utf-8?B?cmlaK0Q3YlE2VUVBRUI0UTk1VTZoQnhCbDlNcEdmaXRxUDFYR1pETTZ3Tkh2?=
 =?utf-8?B?SEdWMEp6SGdydytyaDVSa21KdWNOSUw3NWE3VFJXUzBhbG43dmRTZnBJczQ4?=
 =?utf-8?B?T1hGR2YvaXhRUllkbDJZcmZhd0xpd2dSL0pBOWNyVzZjdExPaENWTk1yWmJl?=
 =?utf-8?B?cm41clg1ZUtLR1BsMkNqclQwS2hFbUlHdC9YZVlFbTFTakhHQUlBWllzZC9N?=
 =?utf-8?B?UXM0N2R2V1dKUityaGdoNDJSd01RRnRBbXRlRVF4TWR3Rm5vaWRMWUdDK2ZG?=
 =?utf-8?B?U3VCTGtFSmJjQ3k4RGhWOFBBdjVzS1JzZC9yeXpOeXB6MC85c25FSUtFMm45?=
 =?utf-8?B?dU9RNHpiUEUyVmF4MEtNazhpbHRDUjBHZ0RxbWZvQ20vdUx6UU5nRDhoa00w?=
 =?utf-8?B?ZytYVlU5L0xGZ25LTVI0R1ZqSWZ3dmJJSXc1UnNIN0dma0ZXY3BuRTduWVNZ?=
 =?utf-8?B?TFdsUm55b0VLaWw2N0FUNFU4M0lhaFIwVW5iNkZKZlNyMEdPdE9qc2x5K3ZM?=
 =?utf-8?B?TGN2N084RUZqbksrUkVWSmF1RHVwLzRRZlRWT1dlMTJLdmdnSm9mZzhTMnFx?=
 =?utf-8?B?NFpsSEdFdXBwR2hhbWJzQlB0WWhCTlVjS0wxdFpOemJSd0FxeVNCTFIrM3Ex?=
 =?utf-8?B?NlZWb0E0OTZZNU5Uc1NKVWhpSExINUp2ZHJIZTVPUlpMYm4vVDFWUkZKYXNF?=
 =?utf-8?B?aGFDQTQrQy82QkszaEVwQ1hQNUcwUUVuQW9OTVI1RGFxdjdSOEFOdFN6NGZk?=
 =?utf-8?B?SzhUSzEzaTB3UnhuazkvV28wSjEza2VLd0E5MU92eWhKWGtnQ09xNzJEQnk1?=
 =?utf-8?B?R1UwVDA4RUdyNythL3RkcnNNVFIrYVd1VlFxN0RrNXRKZ1FwWDZ1K3NwQjBJ?=
 =?utf-8?B?TjQreHNtRFVVUW1kRTM4andpejdleGtYbDBRUzBZdW54Z3BlWmtmZ3ZBM21z?=
 =?utf-8?B?Rkt1L21mSWxoOC9la0l1N09kdytiUzN1VGdGUXN4SlREd1AzemNTVGRacDZ6?=
 =?utf-8?B?MC9va05JQlp1K1BzZU5nOUtBUWdpU3pEL3k4clZhbHlKS3E2VGN2N1ZvWDRF?=
 =?utf-8?B?Smc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3035ccd7-4af8-44e2-b0f8-08dc577a4113
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 03:16:17.3771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3xNzkxYUYPnD8c4tD3uzY27QRfjH99Vw2gzKQ5pAc3Hpy957VLRz/TTzHmVfPuh+H1foA1eOdTNIXgSodBQYmtySXAb75JHNBc+FWZdwE5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4700
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


On 4/3/2024 16:52, Balasubramani Vivekanandan wrote:
> Enable the display support for Battlemage
>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_pci.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/xe/xe_pci.c b/drivers/gpu/drm/xe/xe_pci.c
> index b3158053baee..835c18ec8fb9 100644
> --- a/drivers/gpu/drm/xe/xe_pci.c
> +++ b/drivers/gpu/drm/xe/xe_pci.c
> @@ -340,6 +340,7 @@ static const struct xe_device_desc lnl_desc = {
>   static const struct xe_device_desc bmg_desc = {
>   	DGFX_FEATURES,
>   	PLATFORM(XE_BATTLEMAGE),
> +	.has_display = true,

Can it be squashed with the other commit 'drm/xe/bmg: Add BMG platform 
definition'?

If not, then, LGTM, and with that,

Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>

>   	.require_force_probe = true,
>   };
>   

-- 
-shekhar

