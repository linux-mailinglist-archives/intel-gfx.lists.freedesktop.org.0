Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3529BCD37
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352BD10E591;
	Tue,  5 Nov 2024 13:00:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgDeSPYZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60C2D10E591;
 Tue,  5 Nov 2024 13:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730811609; x=1762347609;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=w8VyvAENuC5ASSGYkhH7TgLPlZ9kT2t2TPcZGsF7vaU=;
 b=YgDeSPYZ2W1xhcV4Bcsp1UouwNRBBXTyBS1uO6tOnSyfMl3z/aBd8OlO
 5iIVwWcPdAXmD0Mi96uEAfLE3QnwJp5BjusGsjCJVNDnAkoH/nt/LyJ8e
 8jb3FCr2si9E32Nz7HyYZ/zeAL28wICBIuXbpK4k3wMwy5MaFbGCHLevg
 Zg0I3Ki1b/Gj2t3gHt6pXS5ktL0qb17Vd6/Fut8KIZ/wHon1yhi7K4B0F
 9JJvrS2sFyNShO1wFFfnVaIWhRJbSF8qi1kaq6eC7GrZZtW7qO3QJfJKv
 UNfVgTsx32W7bn4OYoDHUL/SmIYRbTSkcj1ksXbrEB3e+uR+e22FsTDBm g==;
X-CSE-ConnectionGUID: YRNOC6c0Qc64WJ30wz7x8Q==
X-CSE-MsgGUID: IHQ4KSnjRBa8V4t9K/ZDTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="41927979"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="41927979"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:00:08 -0800
X-CSE-ConnectionGUID: ph1jQ++0SreweGR25+C7lw==
X-CSE-MsgGUID: 3wjxgoa7Tim+4335abzqsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="83952173"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 05:00:07 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 05:00:07 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 05:00:07 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 05:00:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bTqIKAMz4//p6gTc01eX1uB6OeX4TGLbP5QZ6QWu0Ot/pyxPlreSdWzfYtzYXl00fc/PQhkXhDjW9S4B/DNVX6TqRvdSdw7yfmpEHDo7BTun0onsllqx6vrjmPUkkrJNcTJ0WmjD7QkGuzAoHi7JJUgXnUcchUYz2usTrHXa4eDYICHjc3tfXpus4XeEV4tZKjVj70vP97T/ADxFPDSmpPImp5B7EZcM2dSDDQsTCcLheCmIBWZEzWYOfsUkttSkeVILiHR2CC6GcTErHdayEFe206hYaHGKIsKJxsnroLDZ/BoQfj/NmDhoxIeRyNzPSVOZZLlXLEwx1EsPxSA9KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cMwdDK6Rk9bi71oGew7la0VFnaxuovfIfdJQd/s6DDQ=;
 b=Dnk+R5R75+0oLbbrGq+BAkXqMB0lNtFtQsY2gyhX0Bx8DauOIHVIEQ+gxM1WLAQ1oOobn8piCFjRKcRQQozc1qCAQ51AdEoHhIiZvedkFWI35jaQpNlEb7HsuXo/Sj9RulbbtbY/1J3sRMY/f29YNUqZDTDvAjVP45SiGGMnhkYZONEB/RYjrjiIV7RsNKfP3XxEV/rotvb4yoh8x1tbH9fpdLnLKCGemda4LIBNEbKoJUpokP17ppZ/M7QtsiGUqsYvzzuLj5TsLEpyeklLcKddxMPO0s61d7OWB5gsEoGxMBQBzq52h2WmzOWplxZgWmh8L/1Bn2qDMphws61c6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB6601.namprd11.prod.outlook.com (2603:10b6:806:273::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 13:00:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 13:00:04 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <4964e35546545e41f904be73d7990b6bd23b46d3.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-8-gustavo.sousa@intel.com>
 <4964e35546545e41f904be73d7990b6bd23b46d3.camel@coelho.fi>
Subject: Re: [PATCH 07/13] drm/i915/dmc_wl: Check ranges specific to DC states
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 10:00:00 -0300
Message-ID: <173081160057.2525.7640155471183036003@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0272.namprd03.prod.outlook.com
 (2603:10b6:303:b5::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB6601:EE_
X-MS-Office365-Filtering-Correlation-Id: 923f259f-7e14-4994-17c3-08dcfd99c43a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d2R5ajQvb1p5SU1SaU9kWjhvNXJSOXJlNWNyZlhKZlk0YUlSNmxhVHZJMENz?=
 =?utf-8?B?Qm5LcnBWcDhJaFp6amlhUm5QdzlyT3gyR0MrRWU1K3AxckVrR3RaclNoWThM?=
 =?utf-8?B?MlVabGgrdnN4K2VrSlBvOC9lVjg2SkZFOUtQUG8xam9MNG1jZldPU2ovTEVk?=
 =?utf-8?B?LzF5WUF3Ly9qZEUyNGUxZU9kYWxDZ1UrS284blJEa3NzK2pMcjZpb0IrWVdJ?=
 =?utf-8?B?NTNFbVNiSng2ZTJrNFhQSmJzcFdlcmcvWDlSa29Uajc3bWNWdkhPNmQ1ejRv?=
 =?utf-8?B?dGVsekdta2d4VjdWbDFOOCtEVjNBMnVTUmJsWlhwOTFzUkRvQlQvMEVLV1Nt?=
 =?utf-8?B?Tlp5SVZVbUFxalIzbllaemEzOGNvSEpsbndzZnh4K3MyWUc5eFBPZGY5STJu?=
 =?utf-8?B?WERaRWdUb2d5azMvODgxK0QrTEV6NFBxdnJLTW9ONTVtNDZrNUlQVlJsMGli?=
 =?utf-8?B?V21LTU9jNkVrSHhNZS9uay9iQmIzZm1Td280UG45TVNvcUNoTjVFdlNDYmRS?=
 =?utf-8?B?QVpCc1ZRZUhGZVd1OEZSckwxZXJuZlhwRWJvd1BaWnFQMi9RbXdEWG5ETXIw?=
 =?utf-8?B?NmFmQlIzeENGUkhwUGNaSU9tQ2tsajZJNWRUUTZnQktUSE5sZ044TFRCbnBD?=
 =?utf-8?B?VVhiU0R6Tnh0VXo1RVk1dW5jMm5CK3ZRZkxnYlA1KzAreWVBZjJyU2hEYlA5?=
 =?utf-8?B?ZGlIRW9uYXpTTEJ6T1Z2OUllNDRHazl6SStTcTgwamdWZnRaN1dMR0VpS0VI?=
 =?utf-8?B?S291bVdNdFJIQmVUajVJeDIrNjF3SkdqckNnS2FEbDBSV005ZDZzeGo0THhJ?=
 =?utf-8?B?bjg0UEdSdjFWK0VNMi95QzZtVG95ekN3S0prcjZqV2tCZFVldmJaQWJGV2Vj?=
 =?utf-8?B?bm1FUEJBUUNvR1F0enY1MU9mYkNnMHBQU0J2YjBGajkrUzN1T05DMmplOUJw?=
 =?utf-8?B?YW9iWlBXbVd2UHc3TGt5Z1dEMTdkUll1SXhMdmRUNkxTR0RNZUxJS2tIRFNX?=
 =?utf-8?B?NmhGNUdONTJFODBPYzJZaXRMenZKNGtNaDBTbVBqSGtlZlk3Q2lPckcxQlJu?=
 =?utf-8?B?QnN3d205ZktsbHRwMGNocGExN013dTR3Zzg1M3Zvb2I3Q3Q3S2hyWi9pbzFi?=
 =?utf-8?B?emN2ejJSa1B6VHV3c0ZRM2xkQkw0WkRROU92NXFYSlJYbndlOUJZMGVQM3lU?=
 =?utf-8?B?TWJTMEpFdjZLcXRIcjhURG1sQ0pKbUJFSnl1ekR4SWgySXdBV2VaenJ0aXRR?=
 =?utf-8?B?NGRuVTVNMm8yMFlZRjFPYWNSYjRDUElMUXl1d2FkdEFTZzY5NUdURUZURVFM?=
 =?utf-8?B?L2o3THhEbHk4cThGaDgyVzNQSUxGdEVxY2x1NlUvb1kvS053bzlZSzFRMDRZ?=
 =?utf-8?B?ZEs4bWd5T0RnRUhvaDdveFFHRmpuRUk1T0xUUHM3cGdhOHplWHFPNTVocXFp?=
 =?utf-8?B?cmZlRlhWQ1ZidDhYbG9mOUdSUlMrd1FQanlWYjRCVTRaSGh2MFlIaFNpZnIz?=
 =?utf-8?B?R3B5TmdZdnFPVkNGbm5wWUdMMmUrMVkvMXNQSTdEUk9qRkk4RFUrRHQxSEtw?=
 =?utf-8?B?NE40YVgreTB5NytRbUhzSitMdDU4RGxVRkZ1STNyb212UGNLVXpEWktzbURu?=
 =?utf-8?B?NTJpeVpvTW95N3p2NWRPYUZsRVdQeHM4ekg1QWcvd0R3TCsvdmZGZmg1S2g2?=
 =?utf-8?B?UWkwWGhZd21ZcGdHaklIZWpRakQzS084bnUrUUJKTkVSdWZjSmltRGhmcWpw?=
 =?utf-8?Q?RxOZUEdKICmyi1dhrn0eRtgXdv9Z8qnklcPWmUf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWN3Vy9seTZyUWhyMTNHS093UWhkTDhtTEMzbC9QQm5yZlk1Nm1LV3JsTmsv?=
 =?utf-8?B?TStDaFE0YUR3VFc1UzlLT2NCOEI2dkw3VjQ1cmN6b2RYc1ltMEZKdDhGTitr?=
 =?utf-8?B?ZVdxZDNXRzZTMmJzdkZRSGVITFh2VWlJWXEvK29ENkg2L0crS1NNUEhwNXEv?=
 =?utf-8?B?NnFkZ29HTlNYZFg2Rm9ja3hnQVlUZ3FSck13T1UxUExjcDF0WHdNY3h2WUZF?=
 =?utf-8?B?ZlBqSEFPQU1YL1c1bGxQcXJjQTk4bU0zK0RaUEdWdlZiQzRPN3VLOFNtQS9Z?=
 =?utf-8?B?SjdiWXhHclRQUXo3SytkdWxiR3VZclJKM3BYWWJJejBkQnc5amM0SmJEclRK?=
 =?utf-8?B?bG1NUWdvb3MzSGphNmpFYVFidksrRFc2SGFPOE5RMERMYUFibjZYWXhWdXJH?=
 =?utf-8?B?Sit4ZncwSHZFMm1ZbWQxblg2YUllK3B4VGFhcmJkUTE3S05POXZCajRiYW9r?=
 =?utf-8?B?L1BDRW9uZ3U0b01IbWhDYjBSUmN5TkJGb1A2bHRNalBmY1NqWHBkakpFd0d4?=
 =?utf-8?B?bGFzdUJmREc2MTUxdE9nVGtjczRTc3paK2lrTHFobVY1WWlESWQ0TEcyRGh6?=
 =?utf-8?B?eGFIT1dVaUNRQWc2VmdhUWR1dWhsUmdvc3VjbVNaV1h1aGN4Nm5IK1oyN3BE?=
 =?utf-8?B?akdwUnNHNENKYXQxNnVoMjcvVVVXeXJ3VnNSbkhoNHdCZ0JxUlp0bTMxb3dz?=
 =?utf-8?B?cmhUTUhBT0tMYlV0R2diRGRUVEFBdUVYNnhuM0VNd2c1bUs4Q0c2azdQWTdT?=
 =?utf-8?B?SGZpODVhTFgyRjhvSEhzRFVOWEZMUWQ3VGNwanlyNHpiVGtVQ1dOcUxLWitG?=
 =?utf-8?B?WExmMzVKcWsxVERDM2ptNHV4RVVGd2VER2dnclBMM0kwN3h0Q3lackZxZFRo?=
 =?utf-8?B?Q3RxNDFTYXZhaDM0QXc5SU5XVkFVL2V6b3c3elEvbmhlVXc3ZVVqeGh3Ynh1?=
 =?utf-8?B?ekN1aTBpSUUzUE5NeFhiVWhjSE1VRVlsL2NRSmpUM1lvMkUvMnNDUW95eWto?=
 =?utf-8?B?ZzY4RVMxWTJITDk3cmkrNDU1bnN6MUU0bEwvNjlWMTZBQ0dEWEdRZVNrbFN1?=
 =?utf-8?B?eDYzMTFSU0VJclRlcGFvYUpaWlNqUzlxb3p4clFjemRKV0N6WUNuOWx0ZWxS?=
 =?utf-8?B?RHZ1bm55UHJoRFIzaUpSSWdyVm1IMTFhVUxUU3lmcUsxNXVmbDFSdDJJY2Vr?=
 =?utf-8?B?RkpGSDdrZWVsNzJLY3piWVg5aXJjeU05aWJCdG95dm5Bbzd3elBydGFsZ3hx?=
 =?utf-8?B?a243VUFlY1V6Q01WbXNSbStvSmM4ZndqSFZTdlVscHk3YTE1aFFUY1BoYnh4?=
 =?utf-8?B?K2paOXJieXAzaWFsdUh1YXpCbElYZHg2TFJVMUpiZXU4bG9tL2dvUmFvRWUz?=
 =?utf-8?B?VVp3bFhsNDdZdUZRS1RNZTRIL1RJckJiUDRVdzZGMEViQnd2cFNNc01WTzdD?=
 =?utf-8?B?MjJ3anJwNFNGdnc3SytZRUpOQ1NxeWZ3N0YreG1vZUhTQ3JjTEFzakEveGZW?=
 =?utf-8?B?YXVCZUdyL0swU0VrUHRuSGF5VUg0Y3grOFRLWlNPSXNJV251emV4ZHVhMzlr?=
 =?utf-8?B?N1ZaOGhCN29yVGFhWU1iblF2Y3RtWnVyeWs5Z3JnNXdReXpRR2dia2pZU3hX?=
 =?utf-8?B?QjZ0bUNVSGRaOXRLNkpZenZTRjQvd3hIeDZWanFzYStTMkJUb20vajdXMWk5?=
 =?utf-8?B?Q25ySi9YanVyMDUyY3J1TUh3dFB5SjIwMkF4blMrMUF5cEVnWGtxL1dNNWJv?=
 =?utf-8?B?YVNLRlJidGwxWWo0R1dyTzFRZ09MSThsL09DYW5wL1kvNzBVUC9XdTZ2SnQ3?=
 =?utf-8?B?SW9xelFZdTM4Y2g4WUViQ2N6YURtYzNLb2lpT0orQVVpdVplanhQdFhaVHFR?=
 =?utf-8?B?WHdVODFFYnk2cDd5UDljVkVYbFRvNkxxU24vejVKQ1RSZ3dKaDNlVVI4dWx5?=
 =?utf-8?B?Rm5EclFPSHl4Y1daRzA4c05oM0l4cHA1NktEdVlOSkdIQ0Vka3ZDQ1ZsU3pw?=
 =?utf-8?B?VURTdEhWRHQ2dUhWK1RHMStrZGNzeHo2dFBzb25kUm5xaVhSeHJ4RWt2ZHY4?=
 =?utf-8?B?SFVwM1N4b1hLRy9URmk0dWhJSk8wUDF1YnpWbFRTZU9oQmJydlZpVkhmM1lO?=
 =?utf-8?B?NjhhRk01OVY2NjVVcisrZzJYWHVRVFE1N1pld05yS3kycWwrOTFpdmsxdEZi?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 923f259f-7e14-4994-17c3-08dcfd99c43a
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 13:00:04.6976 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eYOF5rkWn625UAzmEotJ5bMUQkldbwSax8fw5dIBkn/9z99f71KqMXtbIgEsTLrMwkZBsap3tn0do+Sqe34y7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6601
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

Quoting Luca Coelho (2024-11-01 09:51:48-03:00)
>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> There are extra registers that require the DMC wakelock when specific
>> dynamic DC states are in place. Add the table ranges for them and use
>> the correct table depending on the allowed DC states.
>>=20
>> Bspec: 71583
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 112 +++++++++++++++++++-
>>  1 file changed, 108 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index d597cc825f64..8bf2f32be859 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -5,6 +5,7 @@
>> =20
>>  #include <linux/kernel.h>
>> =20
>> +#include "i915_reg.h"
>>  #include "intel_de.h"
>>  #include "intel_dmc.h"
>>  #include "intel_dmc_regs.h"
>> @@ -52,6 +53,87 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D {
>>          {},
>>  };
>
>Do we still need the lnl_wl_range[]? This was sort of a place-holder
>with a very large range just for testing.  I can see that there are at
>least some ranges in common between lnl_wl_range[] and the new range
>tables defined below.

Yes, although we could do some homework to get a more accurate set of
ranges.

Now, about the different tables:

 - lnl_wl_range should be about ranges of registers that are powered
   down during DC states and that the HW requires DC exit for proper
   access.
 - xe3lpd_{dc5_dc6,dc3co}_wl_ranges are registers that are touched by
   the DMC and need the wakelock for properly restoring the correct
   value before accessing them.

Maybe a comment in the code explaining the above is warranted?

>
>
>> +static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> +        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>> +        { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUN=
TER */
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +        { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>> +        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +
>> +        /* TRANS_CMTG_CTL_* */
>> +        { .start =3D 0x6fa88, .end =3D 0x6fa88 },
>> +        { .start =3D 0x6fb88, .end =3D 0x6fb88 },
>
>These, for instance, are part of lnl_wl_range[].

Given my clarification above about the different purposes of the ranges,
I think we should stick to keeping the same values from the (soon to
be?) documented tables, even if there is some small redundancy.
Otherwise we would require the programmer to remember to check ranges in
the "more general" table every time a DC state-specific one needs to be
added or updated.

--
Gustavo Sousa

>
>
>> +
>> +        { .start =3D 0x46430, .end =3D 0x46430 }, /* CHICKEN_DCPR_1 */
>> +        { .start =3D 0x46434, .end =3D 0x46434 }, /* CHICKEN_DCPR_2 */
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +        { .start =3D 0x42084, .end =3D 0x42084 }, /* CHICKEN_MISC_2 */
>> +        { .start =3D 0x42088, .end =3D 0x42088 }, /* CHICKEN_MISC_3 */
>> +        { .start =3D 0x46160, .end =3D 0x46160 }, /* CMTG_CLK_SEL */
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        {},
>> +};
>> +
>> +static struct intel_dmc_wl_range xe3lpd_dc3co_wl_ranges[] =3D {
>> +        { .start =3D 0x454a0, .end =3D 0x454a0 }, /* CHICKEN_DCPR_4 */
>> +
>> +        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +
>> +        /* DBUF_CTL_* */
>> +        { .start =3D 0x44300, .end =3D 0x44300 },
>> +        { .start =3D 0x44304, .end =3D 0x44304 },
>> +        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> +        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> +        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> +        { .start =3D 0x45008, .end =3D 0x45008 },
>> +
>> +        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> +        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +        { .start =3D 0x8f000, .end =3D 0x8ffff }, /* Main DMC registers=
 */
>> +
>> +        /* Scanline registers */
>> +        { .start =3D 0x70000, .end =3D 0x70000 },
>> +        { .start =3D 0x70004, .end =3D 0x70004 },
>> +        { .start =3D 0x70014, .end =3D 0x70014 },
>> +        { .start =3D 0x70018, .end =3D 0x70018 },
>> +        { .start =3D 0x71000, .end =3D 0x71000 },
>> +        { .start =3D 0x71004, .end =3D 0x71004 },
>> +        { .start =3D 0x71014, .end =3D 0x71014 },
>> +        { .start =3D 0x71018, .end =3D 0x71018 },
>> +        { .start =3D 0x72000, .end =3D 0x72000 },
>> +        { .start =3D 0x72004, .end =3D 0x72004 },
>> +        { .start =3D 0x72014, .end =3D 0x72014 },
>> +        { .start =3D 0x72018, .end =3D 0x72018 },
>> +        { .start =3D 0x73000, .end =3D 0x73000 },
>> +        { .start =3D 0x73004, .end =3D 0x73004 },
>> +        { .start =3D 0x73014, .end =3D 0x73014 },
>> +        { .start =3D 0x73018, .end =3D 0x73018 },
>> +        { .start =3D 0x7b000, .end =3D 0x7b000 },
>> +        { .start =3D 0x7b004, .end =3D 0x7b004 },
>> +        { .start =3D 0x7b014, .end =3D 0x7b014 },
>> +        { .start =3D 0x7b018, .end =3D 0x7b018 },
>> +        { .start =3D 0x7c000, .end =3D 0x7c000 },
>> +        { .start =3D 0x7c004, .end =3D 0x7c004 },
>> +        { .start =3D 0x7c014, .end =3D 0x7c014 },
>> +        { .start =3D 0x7c018, .end =3D 0x7c018 },
>
>And so are all these.
>
>
>--
>Cheers,
>Luca.
