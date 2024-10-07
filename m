Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B871A992CF8
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 15:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6613E10E348;
	Mon,  7 Oct 2024 13:17:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hs7temK/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2433110E348
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2024 13:17:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728307077; x=1759843077;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uI1TLqYSxVLWFcpyTTB0GzJdLkpxqmOfIsU2vsrL2fc=;
 b=hs7temK/mBprpugH3dLmthHFcz5HAmKtLH42evfMProN0iMh231OZfzZ
 sE+LnXvho03xu/9p0aCqTlo2ZYYBr9y3dRL9zW6358b5HiF5dg0krwUQk
 K5zoUBIYV0GS6QUI2ZVcOI5qe/+n1T0dI/DuiZ0yIUABtsT+04A/PANoc
 Z44wg25PxyY1MITa4mBqgEFwBbEp+5gQpEjyQ8SqtTKQq7EwNqA7AYyft
 jFWve9J7LHCzUfRIvqtYhbL/2Q8geMUOcOnCEkXOY1IFY/H5tA7k+Nw2o
 XXsEyGTBW8043Kc2Ipv4UnEjs38To5BYqeQF+4ihRQXTKOCjoImS+kTKz g==;
X-CSE-ConnectionGUID: PO+m+H25RJ+4kwpHwbfDrA==
X-CSE-MsgGUID: iLp/NWXLQwqwWiGrePa5Zg==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="49983532"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="49983532"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 06:17:56 -0700
X-CSE-ConnectionGUID: SZASltCrTbOCly1HmK9nww==
X-CSE-MsgGUID: pVuhVXh7QDCOJS+LAXChpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75474537"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 06:17:55 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:17:55 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 06:17:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 06:17:54 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 06:17:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gmxr6wETK9kQmJUqJ7HeqTmzIaNAdOUC74zLAaH1ADj8KVyM/GkgdtALAM9Aaprv3iLAg5MS9rjsAWHvx2H+GRP0w+dTOeFoJ8xQ4aq9azXnJeoU/XjZmRbhGLg/qIklxqyzC5eFnQlTqprupWGGtriJ7+p55c7MaPeq5NAg2Oxh5n+Mo2DrU18ycKBcx/df3WNtYqOxdgFmkMH8K2DB0HF4PhYycEihR2E94BqHtM6ADMVO3pVjxyRPoBqBTOQ+uZMaFTWqZ1e9T25J9MJy4P7P5jXsBbYzl9lxrBqadBIxpHkdezy212qnaox5L+p4i3wJ1AG4rCUJwSPsfwu4YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AZ6IUbgu/npORPO6qLLpB/iGprBTFqVYNA34pYFDOPs=;
 b=lotEq7XYUH9T3yA0vjKHpGCBxduov0NnQP9x5IcHGJN1kX8/QLkyxwBCadbZLln6sZ9qWjjTrFpxPIUpbsOEtaPLaktkFa2kRTTdY2bheqNihqtG555ko6jYDs6uClNG0PuCBn+Ms3UjpwU/baaxm1YXif5j8w+GJ22cl9I3tgNb2w056HK0btDQUEsNdGSUBuqRV2ok7e1QAGvRrz1dwuG3+L24GSrdPSXos2iWboprR10f0+Ze34WP1MVwv7Qvq7+1uOlPxTi95GPdW0qRpW8dHyagVZAimPFwsa3slwp0RWnHfA4H6zLUWFM2q0dWrlKVm3dqQiQj4RvExC0WPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by DM4PR11MB7278.namprd11.prod.outlook.com (2603:10b6:8:10a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 13:17:52 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%6]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 13:17:52 +0000
Message-ID: <9423d890-0b43-412b-863b-e4abfe93daf3@intel.com>
Date: Mon, 7 Oct 2024 18:47:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
From: "Nilawar, Badal" <badal.nilawar@intel.com>
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <riana.tauro@intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <a1c257fa-9362-4669-a0a0-3e1c6ebbfcc7@intel.com>
Content-Language: en-US
In-Reply-To: <a1c257fa-9362-4669-a0a0-3e1c6ebbfcc7@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0084.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::18) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|DM4PR11MB7278:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bef5302-1bdb-464e-d047-08dce6d272b9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q25VL2ExNHlKNlk5UmtIU3N4UFEvWVdIcUlpTUsxdGJ4U2dTQXBWQkJQMnZM?=
 =?utf-8?B?OHlQU3d4dVhRSFFJS0NocmpqdklSMW5hZGZmSlFoMk9VTDN3MWhVSExOWmVE?=
 =?utf-8?B?VFRQY0p6ZkFwVENwakx6R1ptT0VPRHB3dWdCckNjZlA0eG9TM1h6SmhlTkly?=
 =?utf-8?B?UTdQeEwvN2NIVWpWaFNQRzVKaHVOTGk1N3JnNE1ZaGJMYU5ZS0RwaG8vdVU5?=
 =?utf-8?B?Rmd0RUVySytGcGt0cDY4V0pZMnZERlNOeXkxTzlTK3VCdUJLMEVmSkRvSUEv?=
 =?utf-8?B?ZjN0aituL2xZNWVkT3JkQ2ZQQW1YUDVkNjB0WmpSOC9aVEdjTEkrUjhuNUZB?=
 =?utf-8?B?RncrVHFJbjR0TEt4S291NHo3NXc0dDFKZlRyZXZ2cVJSKzh2S1V2YmpWa2NL?=
 =?utf-8?B?U0dtVzNVcmdFeVVmQmtES1pOM0hmNVhEeTBESEVjdXdlTXcxZ0JTaUV2ZGhz?=
 =?utf-8?B?MWxsTHZYa1FuZnBKK3YrcW1wcVBWa2NUN0p0WEF5K09TYmwxMXNLZi8zWWVK?=
 =?utf-8?B?bDFpSWYrbjd3VnY5MlFBTGRSZHVZVC80NVRCcnRidFpvNFYraExTVTRlYVU3?=
 =?utf-8?B?OTJhN09GQXZveUQ2SGsrRGVNM05QMk90VlRHRHNxdmFVaEMwZXlYVHBxdTEr?=
 =?utf-8?B?VFFpYVd4dWFSSTArVXR3Sys1YkJWdGVhSE10V05tY2ZkMGlZOEJ0MFFYRy8z?=
 =?utf-8?B?VG1HUWl2MmU2YUo3cVVZemFFYW1pUWxJdWxrc29UOGd6a3hSTGdjM1ZaZ0U3?=
 =?utf-8?B?cS9KeXI4Ny9kUHhWdXlKWit1eWpRUlRMamozMFdKV2RIQWRTeWpqaFVmK2RR?=
 =?utf-8?B?bXpIZmNuUzNQMEYvdGpaQ3drYzI5djh0WGdNaCt6aFp5NnFWY0pKbkw4bjdp?=
 =?utf-8?B?Z0tjem1NVG5XVFJRTWt5Znl2N3ZBS0JZS2JQSW16QWVBMWVxRk12Q3pRVCth?=
 =?utf-8?B?TDg3R0tWTjNjTTJKNi9MUGpKYm82OHNYNEg4b04waExiaEwxOUd2ZjkvTUpw?=
 =?utf-8?B?bEo5anB3THlpNnk3cTN2d1Faajk2dnBQaGNJZjZ1dVRiaE80KzROTTdDUlh3?=
 =?utf-8?B?Ym5sNFBiWmtidk5QK1F4dWJld3EwVTN3VnI0aEtMK3dDTGFxdWRBVU1CQXND?=
 =?utf-8?B?T1FWUjZKQS9SbU1KUlZTWkVlTjVkQzY3SmtBUkpuMUVwck5oejNzTGVNZkty?=
 =?utf-8?B?SXdPdWZERk42OXNkQTFtN2lscmJGVDdmendoNXoxN1RpS3piblNoVEtaTHRS?=
 =?utf-8?B?cTR1SDdZNFUyU25HNktkTktmNjVQeDFMMVhxcHFQZXR5cC9hOGcwcWhJS1pp?=
 =?utf-8?B?WEdUMlptVnY5Zk9CVW9jMFQ1ekh1bURabVpZWWxJUGUzbEgwdTBLYzRGSFBn?=
 =?utf-8?B?K2hPNlZFbXcvSk9tQW8xK1NURlQ4dktZc3lPMzVYQjNBOStCWVhIeUdsZjg3?=
 =?utf-8?B?NE9iTFpVc2dSZEFPNHVyVUNZeFZKcmlVcTVaQzJhU3VYcWo5eFB0em1mZkRG?=
 =?utf-8?B?dlNOQkdMMEZkdzlMd2RabUJzZnp0ZithN1Y2MTRlYjl5ckUzMXl0bm96Z1pC?=
 =?utf-8?B?bkNxb2FIM2pzN2Z1NmtTR3JJZ01TUHFwMUZPY2tSa09wZ0dwbUd6WnA0dHE3?=
 =?utf-8?B?cnNPbDZ4aGFhamRXQnp2dnFmZFc2M2FJdHpxRXJGd1Q4VFF3b3F3UzlzS2RT?=
 =?utf-8?B?OUNBd0FPaHRwODhNYkNKdjRsVzFzalZWWlpOaU52enVraklEU2tqM0V3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T0l3QlUxWFNjd0F2ZU1pYWlsbTlKSlFNRzJmYng0VG1QdzEyQ2svenhtb3A5?=
 =?utf-8?B?NDlxckM1R1BnREZBNXUzY012RFZXS1VYSHpBUmg1VFF4clNPaVlCMDkrZVh6?=
 =?utf-8?B?NkVjQ1dqS08zQ29lbktCd3dlb2NzMmlrVWRwSWdCK25IYmhTdyt5S1Bmekgw?=
 =?utf-8?B?YlZJQzdybXFVdnRpZWhwdXprejY0eENsdzB1b1YzZFZKUFNMQnJNZWZLTjQw?=
 =?utf-8?B?VS9qMWNma280L1ZWUGdGcG9COWFlUjMxVGJFb2pxMlBpd0dVWmZzR1VDMVov?=
 =?utf-8?B?ZVpNSWViVnRoUzNpYzRnM1I3NkNDS0l1Nk1QaXQ4SXhPNzlRMnQ4WXdzN0g0?=
 =?utf-8?B?dG94WTQ5Mm9nMkFRYzF3eEFLYUJCL0JEODZHOG1yMlZhejBHeUdGNG5GcU43?=
 =?utf-8?B?Mjg4TG5YL3J5RUJYZzEzTzlHMTF2bThlSVdyY0dJZytYaGNZTStmY1dxL1Fn?=
 =?utf-8?B?Z0ZobHNtd0JMQ1FQRmdvUkE2M1dwMnNxd0tNazlIalZGUTJQM0R2OENxRVBi?=
 =?utf-8?B?ZjMvU3VkV0U4OHFFUjZiaEJVeUxsK053bmdkVUdiU1M2ek9aV2lHK2gyUGJS?=
 =?utf-8?B?SldTanhrYXcrWEpiZ1VteDAxK1lrU25TSjFIUEtXZ0FybG9NTE5vRDU5Z0Yv?=
 =?utf-8?B?NWV6emVuY2NadjhSS2JTTGRrRWdma3h1amFEK2FzckpacDJmNEZwRUp4UWxy?=
 =?utf-8?B?ak1uOFF0OU1IUmJ3NFZhd1p2NDJIZ0lJOW9XanFYL29MeXFreEdPWTBTL3RU?=
 =?utf-8?B?QytCZTUwY0FXWnY1aDVLc0MrQmltbFhwL1I2WFNmakowUkhKOXNUY0hSK2ZW?=
 =?utf-8?B?UXpYSHppSGJZZU5VMkpDWnNjblJTSWJrS0FETS9VenZsQTdJZE55Z3VQK0Jv?=
 =?utf-8?B?UksyTVpWNW9GdmJrd1NoQmNyVkpBbEh3cXBKZkYyc0FLMTM0OWdFaHQzK0x0?=
 =?utf-8?B?NW94YTFEYko4dDZUam9zTDVDWlMrY0NuTk9ZRzZpTllLYUVZc0R1YkErTkdE?=
 =?utf-8?B?aS9ULytoYmQ3aE9kSTZZeDIrSmJuWEMvVjNtcW53Z3MvcWtobHVUNW5sRzFz?=
 =?utf-8?B?UzVreU5WOXhsR1B1NGRMaUZHejRpcEk0dXBNa0IvRTZqeHFpeW82MU9EamZG?=
 =?utf-8?B?aFZySGd1Q1psMDVsSktIUm1jSnlCdngyMlBuOGZ3ODNrODlHWExySld5OXNH?=
 =?utf-8?B?SXhETWhOZVFMN21XSFE1UkZ1WisybUF0NE9vYTJIYnkxN0graEk2VE1uYVo0?=
 =?utf-8?B?bEttYmcvMXdtakk4SVpUU2xOL0dPUkUxUVV3Q29zTnpvalBlWkNGOGdnWEc4?=
 =?utf-8?B?NEFReWhCZjJsOTB6bkMvQjltSWo5RTZ4TTB3TG5qTEd2YVp6akFDb1BnaW1L?=
 =?utf-8?B?UGhzTjMrWVRWK2xTYkhQeXZVVTlRYkR3N1FnMEkwQWZYdTE1Z0N0YWpuNkYw?=
 =?utf-8?B?RXlQbllicTJaZHNNLzhqbGp0RXhGM001dTdTRkZTRXZVQjVGTlZzclFWQ3Aw?=
 =?utf-8?B?Y3RpVHRzY3pxRU52WjJxRE4yOFpJcUNVeXVqS2c4WVN1RXZ0U1VvazJKK24r?=
 =?utf-8?B?UWMxajI5WVc4a0hFSUV1RWlZRlpBMFBUMEhKM3ZOUGVnMTR3WjRXYTRvRnVZ?=
 =?utf-8?B?dVN4RTQrNVFwMFpId0lOb2d6dnlMczlRSmFGeFdVY2lKdUtDcGxnRTNycWhz?=
 =?utf-8?B?Y2g3OHk5aWJ4M3A2d2pPbXA1cGFLb0E2dEFmUG1tT3B5TXFiTmhMLzJrRjhM?=
 =?utf-8?B?Qm5sOFVJbzYvY2dyU0M1eTdKb2d0cGw3RDJIM2h3NWxPdzBMR0Q2VkxGNXJm?=
 =?utf-8?B?RVlURzFVZGRiejJ6d2pqS0NTcDdhQThaMXdsRkdRdVV2L3ZEa2N4YlpjODBS?=
 =?utf-8?B?MFJRQXNITm1KcWVnbFdoTkh4NGthTW9DTXIvNTdYL3ZWWXJ2TEFJQksybzNp?=
 =?utf-8?B?dlhINlpFZG1kVDliZ1Vtdkd6eGllQnczaDFZTnZYRkV4N3hVc3hnNFZBVW9h?=
 =?utf-8?B?bkRUbTM0bWhhZ0dORGNYenlsM2ZEVEllMXB2VGIvYWVUZ1FHdkJLZmYxZ0V1?=
 =?utf-8?B?bnNNNDI3Tms3Qm9DaUJmQVdOalgxaTIzb1lIeStCL3lmNk9Pb1hIZlo0SkhM?=
 =?utf-8?B?aXRYOWpWNlNobjdyeWc4ZzNRSlppWjkzUTNwWmlWWkZ2d3RJMThUUlpTSWQ4?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bef5302-1bdb-464e-d047-08dce6d272b9
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 13:17:52.5215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vSd9K0eKpNo8JjpxhUFhaYHhqWYBKi5okgx8e74KzwNk/ff0850J0ADGF5Dr2AofGFWv4t42SNBMSLmD3D677A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7278
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



On 07-10-2024 18:35, Nilawar, Badal wrote:
> 
> 
> On 07-10-2024 17:54, Raag Jadav wrote:

Usually Wa_ID is included in commit message title for simplified searching.

~/workspace/drmtip/drm-tip$ git log --oneline | grep "Wa_"
da9a73b7b25e drm/xe/xe2hpg: Add Wa_15016589081
9db969b36b2f drm/xe/xe2hpg: Add Wa_15016589081
54f90b033359 drm/i915/guc: Fix missing enable of Wa_14019159160 on ARL
8776b0234e1d drm/xe/xe2hpg: Add Wa_14021821874
cbc6e98ab11b drm/xe/xe2: Add Wa_15015404425
03a2dc84f5c4 drm/xe/xe2lpm: Extend Wa_16021639441
27cb2b7fec2a drm/xe/bmg: implement Wa_16023588340
1d734a3e5d6b drm/xe: Name and document Wa_14019789679
21ff3a16e92e drm/xe/xe2hpg: Add Wa_14021821874
843f10ce6539 drm/i915/gt: Add Wa_14019789679
104bcfae57d8 drm/i915/arl: Enable Wa_14019159160 for ARL
86c5b70a9c0c drm/xe/xe2: Add Wa_15015404425
74e307680006 drm/xe/xe2lpm: Extend Wa_16021639441
c55f79f317ab drm/i915: disable fbc due to Wa_16023588340
01570b446939 drm/xe/bmg: implement Wa_16023588340
aaa08078e725 drm/xe/bmg: Apply Wa_22019338487
3b1592fb7835 drm/xe/lnl: Apply Wa_22019338487
d35386b3a77b drm/xe/xelpgp: Extend Wa_14019877138 to graphics 12.74
62712be3a4e0 drm/xe/xe2: Add proper check for media in Wa_14020756599
5d7612ae201e drm/xe/xe2lpg: Add Wa_14021490052
24d0d98af1c3 drm/xe/xe2lpm: Fixup Wa_14020756599
131328aa5699 drm/xe/xe2lpm: Add permanent Wa_14020756599

Badal


>> Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
>> enable it from kernel with Wa_14022698589. Currently it is enabled for
>> all DG2 devices with the exception of a few, for which, it is enabled
>> only when paired with whitelisted CPU models.
>>
>> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_reg.h             |  1 +
>>   2 files changed, 44 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/ 
>> gpu/drm/i915/gt/intel_workarounds.c
>> index e539a656cfc3..b2db51377488 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> @@ -14,11 +14,30 @@
>>   #include "intel_gt_mcr.h"
>>   #include "intel_gt_print.h"
>>   #include "intel_gt_regs.h"
>> +#include "intel_pcode.h"
>>   #include "intel_ring.h"
>>   #include "intel_workarounds.h"
>>   #include "display/intel_fbc_regs.h"
>> +#ifdef CONFIG_X86
>> +#include <asm/cpu_device_id.h>
>> +#include <asm/intel-family.h>
>> +
>> +static const struct x86_cpu_id g8_cpu_ids[] = {
>> +    X86_MATCH_VFM(INTEL_ALDERLAKE,        NULL),
>> +    X86_MATCH_VFM(INTEL_ALDERLAKE_L,    NULL),
>> +    X86_MATCH_VFM(INTEL_COMETLAKE,        NULL),
>> +    X86_MATCH_VFM(INTEL_KABYLAKE,        NULL),
>> +    X86_MATCH_VFM(INTEL_KABYLAKE_L,        NULL),
>> +    X86_MATCH_VFM(INTEL_RAPTORLAKE,        NULL),
>> +    X86_MATCH_VFM(INTEL_RAPTORLAKE_P,    NULL),
>> +    X86_MATCH_VFM(INTEL_RAPTORLAKE_S,    NULL),
>> +    X86_MATCH_VFM(INTEL_ROCKETLAKE,        NULL),
>> +    {}
>> +};
>> +#endif
>> +
>>   /**
>>    * DOC: Hardware workarounds
>>    *
>> @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct 
>> i915_wa_list *wal)
>>       intel_gt_mcr_unlock(gt, flags);
>>   }
>> +#define DG2_G8_WA_RANGE_1        0x56A0 ... 0x56AF
>> +#define DG2_G8_WA_RANGE_2        0x56B0 ... 0x56B9
>> +
>> +/* Wa_14022698589:dg2 */
> 
> As per bspecs correct Wa id for this Wa is 14022698537.
> 
> Regards,
> Badal
> 
>> +static void intel_enable_g8(struct intel_uncore *uncore)
>> +{
>> +    if (IS_DG2(uncore->i915)) {
>> +        switch (INTEL_DEVID(uncore->i915)) {
>> +        case DG2_G8_WA_RANGE_1:
>> +        case DG2_G8_WA_RANGE_2:
>> +#ifdef CONFIG_X86
>> +            if (!x86_match_cpu(g8_cpu_ids))
>> +#endif
>> +                return;
>> +        }
>> +
>> +        snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
>> +                  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
>> +    }
>> +}
>> +
>>   void intel_gt_apply_workarounds(struct intel_gt *gt)
>>   {
>>       wa_list_apply(&gt->wa_list);
>> +
>> +    /* Special case for pcode mailbox which can't be on wa_list */
>> +    intel_enable_g8(gt->uncore);
>>   }
>>   static bool wa_list_verify(struct intel_gt *gt,
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/ 
>> i915_reg.h
>> index 41f4350a7c6c..e948b194550c 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3568,6 +3568,7 @@
>>   #define   PCODE_POWER_SETUP            0x7C
>>   #define     POWER_SETUP_SUBCOMMAND_READ_I1    0x4
>>   #define     POWER_SETUP_SUBCOMMAND_WRITE_I1    0x5
>> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE    0x6
>>   #define        POWER_SETUP_I1_WATTS        REG_BIT(31)
>>   #define        POWER_SETUP_I1_SHIFT        6    /* 10.6 fixed point 
>> format */
>>   #define        POWER_SETUP_I1_DATA_MASK        REG_GENMASK(15, 0)
> 

