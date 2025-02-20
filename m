Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA0DCA3D0CA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2025 06:31:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 662E410E49C;
	Thu, 20 Feb 2025 05:31:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvMvzBnj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2CD10E49C;
 Thu, 20 Feb 2025 05:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740029516; x=1771565516;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sjh9Uvc9N0FJkDnQRdceNEEkat27p8UFbQwSjxvCqro=;
 b=NvMvzBnjat8Upbn1waKhE7ZUPH9rX6Iy3Hgl/H2Fe1GiW3I2PsPV5Utk
 4TSj3eFedN8zGJ8Nqye7BjtK4zMY14RA5kLomDSw4UCv8vwhwGXAfdPcM
 PSVtB0PUOCrdEvM/DBZSpLaDVPlak7t3UpMaI462N3PK2H8ePTSdTLUO0
 LafheCQm4LC4wAPtf3WSqZFzt2+p8CbWi4ZdBIQ1a+53LVUaysmBzkhKe
 Gm4falpRkmCup955t1EL/nawgm39N4YI50rzzVj/WimTfawOi7bSmN1Kx
 kwr2miEOoCWlrgtzQcqnBDiT3u0LXAgzp/RzboX6N6UCVL/CFn4QeJWGq w==;
X-CSE-ConnectionGUID: HJWtTOIWSn2ivJcG7KM+3g==
X-CSE-MsgGUID: OULGoGWeS4+JfWAT3b0+Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="40508152"
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="40508152"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 21:31:55 -0800
X-CSE-ConnectionGUID: 6MNsrCTQSXONk5szemTb1w==
X-CSE-MsgGUID: djHkzksqRBilkBZyilR7nQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,300,1732608000"; d="scan'208";a="115474961"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 21:31:55 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 21:31:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 19 Feb 2025 21:31:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 21:31:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PesiIWK5SNJq1gZAwnPa1bJQ10VNukcjtJhANPrxSK0RLyDSms102FTo/qLWUeYuk14pTkhvSwrzUiYstNwdbfsJdJV0CJt+2gGoZSGGdf898+QXwsjwmvPGIFOy9VCLS+B6SHoK8JtfDoPDHvRVt5eSwjM+hu9U+ohTferyvXFr1aYz4SPYzPCn28feorFsPQSBQS5Wa9wWtILKNuQTmrfYtZ0+2BfRn+7rb/eXSbybJVKYufPicqsI77mL0Y6lYia1SFJ0ZvYFE+fFosOm62Cy8w3/6UZgqllaQ3AhsijqMgRoDVZuDCgIttPpgVMVmrZXdmkM/1kMeTJ8RK0iTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7RhMcdds/OOEhGLn88kgEIJRevg9NNcn48fFqUPVaRk=;
 b=XO3viIC6hoGFubeO2d7h/e5Pq5kYaboaLsAi3KXYL5kTlEruExgrVYppbOuDCSoDfIEWgL2JV2ZC5tgvI1wQBKjNd0C1NuCDm7wWdw3Bwoabdp0+cPtHinFYz3YwaBx2CWk4RQRcrz9lKJO/J433qpMhQKfEz7MSxtdvdA6txzEcV+jKd9+7whK7KDl8pNj7m2y1hKEpmz3mf17v1zQHCtQTPKt1hmxTZr56X19EAcy+uxl6nhFgdTTz2A/ZyelZbprImqPBskSiSGHgAkuKgaO3m9kj53kLR0oqoLTT4IuFTtsWZkTL3lMczFnQmiukosY7Y9+y8hKarYGHtYJIKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.15; Thu, 20 Feb
 2025 05:31:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Thu, 20 Feb 2025
 05:31:51 +0000
Message-ID: <42653c73-2990-4370-bee7-13c3d728eab0@intel.com>
Date: Thu, 20 Feb 2025 11:01:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/19] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-17-ankit.k.nautiyal@intel.com>
 <Z7OBP8kdGZLtWCAK@intel.com> <b68b1bab-9e33-4035-a680-24ad861b957f@intel.com>
 <Z7XzI46iGhiA8JqT@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7XzI46iGhiA8JqT@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0028.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 5c799c78-8ccf-43dd-198a-08dd516fe104
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlpoNmo5VXZVWlE2WmpTajRNK0E5VzltSHdoQUphRjl0Wm9NWStSdW4zekVO?=
 =?utf-8?B?ZEM1N2V2eEtJaU53dTFOTm1sQ256TklHZENiZ3lSQ3BPdUFSamRtclNkb3Ni?=
 =?utf-8?B?cGF0MzNKQ3RDUXVKTWhaek1ORnZLdHB0eTZ6ZEo0OStLUzg0ZkhGYTVRUGth?=
 =?utf-8?B?cHhGdkJaME5nOHhTN0FldERxSXZ2bmZKNmk1TEFEUW04MUZBb3NWa1g4VVlX?=
 =?utf-8?B?RFRlaU1wNUJ6Um1xenQxcnVhdjdma3RmUStwZmxKZ1dKMVJDcUJWUnAvR3R6?=
 =?utf-8?B?QW5xNFBsM0FpeEJoc0p3MEhIZVkwMEFMSWFPeFpQVzFFTjhVNnFjWkRDN0xs?=
 =?utf-8?B?dEJPWVhMZmNXK2dhTW9RS0MyZTVZT256bEc4MUNYZTFyMlZPN1R0dUpZRVJY?=
 =?utf-8?B?aHZRRkNVU3R3YjcvQnY2ODEzUU1VbjNDMnd4dWhabndvcGUzN1FhVFBMUUpw?=
 =?utf-8?B?SkhlUzAyZ01QWnY3MzVVV0tYelZ5YXVjSm1XQ2UxSkFXWlNKR2p6a1J6TGtM?=
 =?utf-8?B?YXJEWis1OWd4RGtsenVzMzkvRW5DWEwxL2JBUjJaZ1VyUis5L05xWU94enBK?=
 =?utf-8?B?aGF2eTZvL1V2UmJ5WHR1ZlhxYWdXSG9GWTMvaW1MekVPRFB4VVY0NDJWT25T?=
 =?utf-8?B?b0l6cUlFNmJhWW1YbHo1OE05SzJTN3RYbjJWRHlKQ0x6VXZUZmtUemkrMFhl?=
 =?utf-8?B?NDZ0SmtqY2p1NFhPaVBNNWl6UnhycitiazhOYVRvb1ViUU5zYnFVQXU5MUtN?=
 =?utf-8?B?VThzZFA3WHFPdGcwNUJxN3NPTW1JWDliRUhxS0s4SjBrV3ZjcURpSk1pZkdW?=
 =?utf-8?B?T1FpOWp1elAxeWlndmptMTJsNDlaVmRNWGNzVnY1c1pxOHU5eFhGM3V4M082?=
 =?utf-8?B?S3BXb1JGWlhuTDVVZm9INmk3NUpKbDVTN0VOaFUxbzJWNHRsY0JWV1lseCtp?=
 =?utf-8?B?VTVOYmZBUDBmM3NKNlhyTG42M3IyNHM4Q1ZSbElkejhhNDdNYXpLejduZmtt?=
 =?utf-8?B?R3N6dDJ3SjNaRXkxRFJvNUJHbExlbVhpYXJOQ0FXcUZVYzd3ampxZ096RDY3?=
 =?utf-8?B?bDdnUVRXbjJSL0tIbXk2ejQraHVOYzFFcU81MEdZajFCbjdCUlp1VkxORDBC?=
 =?utf-8?B?c2Z2UkNTeTZoV2NIcE9wdVZjUUtqNk83NWRFNWR0d0JrWUlPVmVkeUh3dno0?=
 =?utf-8?B?VmwvQXRjZFlhcE1WVGhoTExFMU9tYjF6cExNeVZ0RHE2dEVRYWhrOUpscCtX?=
 =?utf-8?B?MFRBMHRyZTY4dzlsL1Y2STFkb3dXZTJGUDBhaEViZWZkMFdQbnQ3SEZXSDJ3?=
 =?utf-8?B?SzlWZ05KYlhlUVlIVWVYdk5kcXJYdVl6eHh5cllzb1YwL3QxWTZNNHNtZUVm?=
 =?utf-8?B?ZzZIeFV0b21HR2ZXRXZjQVRDOTFESktkOEUrU2xJQkcvR28yb043TmNHNU5B?=
 =?utf-8?B?VWUrd1dvWmRlWk85K20wWFQ5N2gyM2pGeEZSNk9XYlpndHVjOVg4NCtSTXIy?=
 =?utf-8?B?a0o0R3ZQTW9wc1Z5dmVjZDl5OXA0aG1iWFhkZlFFOHkwbDlBWkJKVUlRQnpQ?=
 =?utf-8?B?UXZzKzRqTWZXYVNrYmtPZVRGdE40anpiakQwenExME5PQXM2UnNCS09vRmRT?=
 =?utf-8?B?dnlJTGFvWll3dFUxZEduN0ZqWEJLNGRzWHZBNlRqQm9xTGg0RXB3ZXlxTHls?=
 =?utf-8?B?WVVHRFc0Yk5OYU9paUxDQjlEdnRlMElYK05JQ2tRelIxc0VyMUNUSEErcXFI?=
 =?utf-8?B?R0hRNmZzMHRiNFdDNjR2UVJKUG1FZytJYllkRWc5MXNzZFFOUksrOEt0d1lQ?=
 =?utf-8?B?S0Z0Q2VPNWhwcFd0VEpnbzYrU29SRjduYk5pRTQveE51UlEyUHFLeThtSk1X?=
 =?utf-8?Q?ULGvTQp8mb/HE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bVA1RjcrL3NUekE5cllNdHNMM2d1MlI4Um1nMGFvWnRKN2tKMkw3WkI4QnFJ?=
 =?utf-8?B?MG5KalplL0d0UmZCWEVncmVsWGd1bmZIOC80cXlieGw2cEYweE9vQzJJVWMw?=
 =?utf-8?B?SWowSWpYcWZiTVZDT3BaZmJrUnVVQ2FqU0dCTFpNbXYxU3UxYkZtUC9ZWEhn?=
 =?utf-8?B?YmRhNDlwQlRIQzg0NFdrT1JUaXgyL2VKUEFuTjJ6dmxiODFPMXZUeWx0WVFy?=
 =?utf-8?B?UWRGR0lXaGRDS0pIM2FFT1RVSEdiZlZvc0d2dUtOeUhaeWN1ZHZTdi9CempM?=
 =?utf-8?B?MHhIZzJEemt0Z3RKZGd3bWkxREwrcGFYd1MzMzVDOW8reFh3aWszNURFUXhT?=
 =?utf-8?B?bXdvQ3VXeXRqQVlFRDQrSU53WllWakFaRUpnOU1FUjNGR2hzbi9IMVIwR2Jo?=
 =?utf-8?B?OWNYL3oxSkdkN2J6UFV4YktkdUFMVHBoTUlhTFRmUi9zNUxDaDkrWjI2TkUv?=
 =?utf-8?B?RGNOSVNwM05idmlHOUhOWHNQY1ZNY295ZkFLNHBrM1JXLzZZL2JkZVVYeS9O?=
 =?utf-8?B?TzA1aVhieThPSEI1blFIMGxpc2YrZUZDZmJrcVRDMWN2RGwwWUJueDNIODZQ?=
 =?utf-8?B?VjFMc2QvdklGdUwwNUVHOWhLUjNDWTVHd2lJRkliVGlCMExXbXZqSURUb1da?=
 =?utf-8?B?OWZTVjIxWkZkM2piUi9lRFZHWUdQS3ZkYjFjMW5XQlM0eXhvLzVJUnRNYUwr?=
 =?utf-8?B?V3N5WGdjdDkxTjdkTlFVWUdFMStNa3VvOE9BRUU2bXVHTnY1Nmt3bWFoNy9j?=
 =?utf-8?B?WEN1QmJiY0w0U1RWeEpqMHh5bFV5bzRLVVN1OGZ2clFLKzg3ZXBTcmhVYjN6?=
 =?utf-8?B?ejFHelV3SHVVMStwVTJCcFVub25ZSnRuY1N0bXhicWEvUW9hSm1JbzJ0Nmtp?=
 =?utf-8?B?MVgwczh3L2lTZ1E2ZFZ3LzFYbG5nbm9VaStrZXkyZzROU0RPTm0vNWRISjBK?=
 =?utf-8?B?UTVpeTVSV2Z4Mk45N29MQWdyYmRTaTB6RmR2cFlwMjBpbEZYWkRVa0Z2eUQ3?=
 =?utf-8?B?U2NCYnBIaGgrTnpKdTdSTkFGNURTcnhVeDZmSGhhc2hJMmlLbSt3Zk15b3ZM?=
 =?utf-8?B?SjlUL0RsRXVaMGMxcHNFVXZNb3ZPU3p6dUpJcFN4emN4dnlkbFhTVG9lMnRY?=
 =?utf-8?B?akFUcDF5UjRRWW5ZbzEram96MnExenFzOTNEdjNLbkNOM3FYMDMyU3lQRGJa?=
 =?utf-8?B?aFFOdzFGUzdLUWNLN09EUzZ4ZlVGUFlXNE9zajc2OWllVUhhV25WVTl5NEkr?=
 =?utf-8?B?dzdpaXBCUTJ4Uy9FdWdzN3VXcXNLSEdPMWcvb1VMazNRUldBdmxZRVFYMW5B?=
 =?utf-8?B?M3gzVmk0WmJhbjN3QWIwM1c3b2xyaThGTFN1U05lY3ZsWG9CU3BkbU8zOEdT?=
 =?utf-8?B?RVhGaUxjcFdueitjaWpxV2h6a2tKalVPbEUvWDVTNldQR3Vabmk3NC9Tcm9P?=
 =?utf-8?B?cjUzNmNoS25BZGV1Zm9qUG9VcGM0c291Y1BJMUhyZFVYcnJaeDRrNTlJYmNp?=
 =?utf-8?B?aHh2aWwzUWlSK2hqQ3h0d2xGZ1ZKNXgzOXRoNG52eUEvaVVXNDRMdEN6TDRE?=
 =?utf-8?B?blZrdjVoQi8zVmpwYzFwOEdXbVVBaTJ1c2dGV3Z5bXlXbXNEWjhEVUo5OHFm?=
 =?utf-8?B?MW9oUUVCRUp5Sm50eTE1TVl2YXg2eCtYQzkvdGJyNXZnd3c1Y0FoRXErZFFx?=
 =?utf-8?B?NjFoUlV5OThpNW9XUUxHTm5wVGk1ZkdzZ2t4MXVhcm5qb1RlWUlZWmpQN0s1?=
 =?utf-8?B?UTRBT1VJS2V4d09WWEFQWTRyOGFHWHVCWjRUalJrTGtPU3FZcHNzNmZHaXBq?=
 =?utf-8?B?MTVHQnU0SmlIa0UxOG5nbjF0K2RRbTFEZk9BVC9WRWtmOENxb2RENk54V2hI?=
 =?utf-8?B?akw3cGd4bmMwWEZRTGVTRjBrNFlmUmpZZDh1UC9JUUMwbGpENnpJNnZJN2Fv?=
 =?utf-8?B?bnhYSFltUXVLNEpwV3U4N3VkRDdEcmxKMVowNFhKelZsM1lZcytDRFlqazRv?=
 =?utf-8?B?d016K2JYR01DSzVReCtjd1VwMVQ4M0NSQTZzQWxJdmJNSDZ3QnJDdzI0NTdN?=
 =?utf-8?B?Qjc2T3J0UzBqOGVuYk9UcVF3Tmg3L3RnbG43c1lPS04wdlFwZUx0bzFuMFYx?=
 =?utf-8?B?eUZ4WHFQZnp1NkFsdFE2VE1TTkFWbzFBYjFYTmJUanBwa3puQ3hZVHMrRHZN?=
 =?utf-8?B?YkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c799c78-8ccf-43dd-198a-08dd516fe104
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Feb 2025 05:31:51.8537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0BWAAvR3XHIB6qLwClVtnIX1qIuk8K5NHoRDRnW0FIt9fqlJPCobVXg+4e9Jkww8idaMR/i6dmg3wUvaIKX2Z5UWMCK3lbi+zJP/jyytxA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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


On 2/19/2025 8:35 PM, Ville Syrjälä wrote:
> On Wed, Feb 19, 2025 at 06:47:20PM +0530, Nautiyal, Ankit K wrote:
>> On 2/18/2025 12:04 AM, Ville Syrjälä wrote:
>>> On Fri, Feb 14, 2025 at 05:41:26PM +0530, Ankit Nautiyal wrote:
>>>> During modeset enable sequence, program the fixed timings,
>>>> and turn on the VRR Timing Generator (VRR TG) for platforms
>>>> that always use VRR TG.
>>>>
>>>> Later if vrr timings are required, vrr_enable() will switch
>>>> to the real VRR timings.
>>>>
>>>> With this we dont want to reset TRANS_CTL_VRR Enable bit while updating
>>>> the vrr transcoder timings.
>>>>
>>>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>>>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>>>>       Add TRANS_PUSH while enabling VRR for fixed_rr.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c | 10 +++++--
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c     | 29 ++++++++++++++++++--
>>>>    drivers/gpu/drm/i915/display/intel_vrr.h     |  3 ++
>>>>    3 files changed, 36 insertions(+), 6 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 66c5ad46bfea..c9d1c091b109 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -1755,6 +1755,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>>>>    
>>>>    static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>>    	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>>    	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>>>    	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> @@ -1770,9 +1771,12 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>>>    	}
>>>>    
>>>>    	intel_set_transcoder_timings(crtc_state);
>>>> -	if (HAS_VRR(dev_priv))
>>>> -		intel_vrr_set_transcoder_timings(crtc_state);
>>>> -
>>>> +	if (HAS_VRR(dev_priv)) {
>>>> +		if (intel_vrr_always_use_vrr_tg(display))
>>>> +			intel_vrr_enable_fixed_rr_timings(crtc_state);
>>>> +		else
>>>> +			intel_vrr_set_transcoder_timings(crtc_state);
>>> I think intel_vrr_set_transcoder_timings() should just program the
>>> fixed timings always. And we shouldn't do anything else here.
>>>
>>> And I think the VRR_CTL enable/disable for the always_use_vrr_tg==true
>>> case should be done at some more appropriate spot in the modeset
>>> sequence. We can add eg. intel_vrr_trancoder_{enable,disable}() for
>>> that part.
>> Alright. So will do the following changes:
>> In intel_vrr_set_transcoder:
>> -Avoid modifying VRR_CTL, currently, it disables VRR_VTL if flipline is
>> not set, and also writes guardband and other settings in VRR_CTL.
>>
>> -Instead of setting variable timings, just set the fixed timings always.
>>
>> Use separate functions for enabling/disabling VRR CTL:
>> -As suggested will create intel_vrr_transcoder_enable and
>> intel_vrr_transcoder_disable functions.
>> -These functions should handle VRR_CTL settings for platforms where TG
>> is not always used.
>> -I am thinking to call these functions based on vrr.flipline:
>>
>> if (is_enabling(vrr.flipline, old_crtc_state, new_crtc_state))
>>       intel_vrr_transcoder_enable(new_crtc_state)
>>
>> Thinking to add this in commit_pipe_post_planes() just before
>> intel_vrr_enable().
>>
>> if (is_disabling(vrr.flipline, old_crtc_state, new_crtc_state))
>>       intel_vrr_transcoder_disable(new_crtc_state)
> We want them called unconditionally from either
> intel_{enable,disable}_transcoder() or perhaps from some
> ddi encoder hook (not sure how early/late this needs to
> be done). And they should just do nothing for the
> !always_use_vrr_tg case.

Thanks for clarification.

As per bspec, VRR enable should be programmed after TRANS_DDI_FUNC_CTL 
and before TRANS_CONF and VRR disable should be programmed before 
TRANS_CONF.

So I will set them in appropriate places in the next version.

Thanks again for clearing this up.

Regards,

Ankit


>
>> Will try adding this in intel_pre_plane_update() after intel_vrr_disable().
>>
>> Please correct me if I have missed something or got something wrong.
>>
>> Regards,
>>
>> Ankit
>>
>>>> +	}
>>>>    	if (cpu_transcoder != TRANSCODER_EDP)
>>>>    		intel_de_write(dev_priv, TRANS_MULT(dev_priv, cpu_transcoder),
>>>>    			       crtc_state->pixel_multiplier - 1);
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> index e247055bc486..4151fcd0f978 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>>> @@ -456,8 +456,12 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>>>    		       crtc_state->vrr.vmin - 1);
>>>>    	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>>>>    		       crtc_state->vrr.vmax - 1);
>>>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> -		       trans_vrr_ctl(crtc_state));
>>>> +	if (intel_vrr_always_use_vrr_tg(display))
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>>> +	else
>>>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +			       trans_vrr_ctl(crtc_state));
>>> We should probably remove this VRR_CTL frobbing from here entirely,
>>> and just always do it from the intel_vrr_trancoder_{enable,disable}().
>>> And obviously for the !always_use_vrr_tg case we just skip setting
>>> the enable bit there.
>>>
>>>>    	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>>>>    		       crtc_state->vrr.flipline - 1);
>>>>    
>>>> @@ -536,7 +540,6 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>>>    	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>>>>    }
>>>>    
>>>> -static
>>>>    bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>>>>    {
>>>>    	if (!HAS_VRR(display))
>>>> @@ -616,6 +619,26 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>>>    	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>>>    }
>>>>    
>>>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>> +
>>>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>>> +
>>>> +	if (HAS_AS_SDP(display))
>>>> +		intel_de_write(display,
>>>> +			       TRANS_VRR_VSYNC(display, cpu_transcoder),
>>>> +			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>>>> +			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>>>> +
>>>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>>> +		       TRANS_PUSH_EN);
>>>> +
>>>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>>> +}
>>>> +
>>>>    static
>>>>    bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>>>    {
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> index 514822577e8a..9259964978b1 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>>> @@ -12,6 +12,7 @@ struct drm_connector_state;
>>>>    struct intel_atomic_state;
>>>>    struct intel_connector;
>>>>    struct intel_crtc_state;
>>>> +struct intel_display;
>>>>    struct intel_dsb;
>>>>    
>>>>    bool intel_vrr_is_capable(struct intel_connector *connector);
>>>> @@ -35,5 +36,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>>>    int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>>>> +bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>>>> +void intel_vrr_enable_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>>>    
>>>>    #endif /* __INTEL_VRR_H__ */
>>>> -- 
>>>> 2.45.2
