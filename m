Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D77496F250
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 13:03:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3379E10EA15;
	Fri,  6 Sep 2024 11:03:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvLY+ogW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18DCD10EA15
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 11:03:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725620606; x=1757156606;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=j0vhlfLynIUSSbXz8Xa8+BqyMTHKHfBM46R40yr2Nf4=;
 b=NvLY+ogWVq9lAHk+XD3RyfTKhTAWhjVTOK3o/upigesPla6BL4n+JqBg
 NREyO/XsF4oX1t7Cc75CaJoEWPzRfgS+/53t2XInDFrptCFedirFsM3uR
 KHD1/kE4X3aiwtvhJW05PEkcgauZJw5ym5Q73dJwH7FZcB3jZcs5wPf4T
 K16isPVJBZGSOof7Z7ncJpxWpRaZVNgZbjGll9bz38P8IcdF8aTQ7dilM
 tN0GPUtsxFyc9FdkliA/v7SiL5tz36C2Omi43pNl+IPmZacxZXOznbZx5
 3+9zB6CH2/XOICxbD++NUlHLF/EOGpy1DwzeoENovcKRWnEyb9HoHYyn+ A==;
X-CSE-ConnectionGUID: NRFNDz1aT7yaiQ3BiR4Gdw==
X-CSE-MsgGUID: ABHx9n8yS4KYsCmnmjL5fw==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24523980"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="24523980"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 04:03:26 -0700
X-CSE-ConnectionGUID: sxWAwfwlTqiv31B4L0Jjfg==
X-CSE-MsgGUID: pVFiYD+tStWq3EAXHYpNWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="66466277"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 04:03:26 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 04:03:25 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 04:03:24 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 04:03:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 04:03:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CGn2/vJshqKyygytX2jwFk4/XrORQt2IDvbQhqU7X8N01hltQcdR4uDyamV/m1r3dn5EFjb7t0aFWMoNnWNgUvHtFtyj4d5+a5zNORN+FPjIgcDIu9tQEjHTGc0wnFpPZOvwztCNSaXU/glFk99+07LFlqRb9yswmJU+dDCka34fELfOIkR+hOJTCw104jFaSjl9/fg0PXDDxN3dHb9P0+VQKpWIURxl0mkkusld7hB9fQRK9zBYXreg/g0no593Rp/sQFzpCMT9LqSm0/msLkFunuytq6L2sDUF0NaQ/dDO9Fs9UWlFUtEVQCJdu1J8wMNvTkCPyRaSy+WY0XeHVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j+AF2YRzk/XRtf4VTekWzS2v9/Qr62GYiTJjsnuA+48=;
 b=RDFve3YjvYvAHpJrwNsdSXC5p4Ejn9jG8+y7+QI3tdTbqdiCdg9etqgs/rUSfzjvVbkBPGXUEe/vvJkOFequgM3bzQnQgRxP/DeXs8y/tLgq94DhFGOJ4p8fzo8FUjnRZ5DeBqEMuRp19myQL6nqKJflrdzCr3r3ygqtQWXoFe54RhWgkUFZSqkkt7DSI0gxg/n2NjUt5FsSR7Wcbu0bEuMkgLQ9pmpn1y7AtX4EIGrRpwps5iVLw6Sc3auQvLqpC9yC6a6MK14uyrWtPsVI3UKafzeweZsTMvHxhdI/t/rf6kYVWdxAoGDwo1capOanbouo7NbxIATGTo/b8llHMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CY8PR11MB7241.namprd11.prod.outlook.com (2603:10b6:930:94::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.28; Fri, 6 Sep
 2024 11:03:22 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 11:03:22 +0000
Message-ID: <22c3a070-f09d-423d-970e-9422d7021879@intel.com>
Date: Fri, 6 Sep 2024 16:33:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/hwmon: expose package temperature
To: Anshuman Gupta <anshuman.gupta@intel.com>, Raag Jadav
 <raag.jadav@intel.com>
CC: <jani.nikula@linux.intel.com>, <joonas.lahtinen@linux.intel.com>,
 <rodrigo.vivi@intel.com>, <tursulin@ursulin.net>, <linux@roeck-us.net>,
 <andi.shyti@linux.intel.com>, <andriy.shevchenko@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <linux-hwmon@vger.kernel.org>,
 <riana.tauro@intel.com>, <ashutosh.dixit@intel.com>,
 <karthik.poosa@intel.com>
References: <20240828044512.2710381-1-raag.jadav@intel.com>
 <07c01d49-aa9c-429e-bd4d-65cf2648329e@intel.com>
 <Ztlx-xAd2JSpolZA@black.fi.intel.com>
 <56zmt55kfwgeq3bsbci7ghooe4qv3nqxulbaipceng2jqb6dtl@hxvgnwznnzpy>
 <ZtoD-SoxljuJQuj9@black.fi.intel.com>
 <2kraxnckxoucjzdpxx2qqfu4dymegudms7qwdqfmsn2mqofxam@6sr7ymprietf>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <2kraxnckxoucjzdpxx2qqfu4dymegudms7qwdqfmsn2mqofxam@6sr7ymprietf>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::35) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CY8PR11MB7241:EE_
X-MS-Office365-Filtering-Correlation-Id: b394cc39-9691-4629-71a6-08dcce6385e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Skt2NFNCU3FJWnFFcmg2cXNxR2tobXIvRDhOOGhUNHJrSjdqY0pzNzRNc3Jv?=
 =?utf-8?B?Y29ZS1NVWEI0WjZtcy9Kd3dxbndTZjhrZnBwVzFxZTNaQmt3Qm5QTkdUK0RP?=
 =?utf-8?B?QmduWTREUGRaTitNVEJiWGJ3b2xjemlvZThTZVhxQUZsREoyREJ4VUFOOW1q?=
 =?utf-8?B?aENRa05xVzc0R3VWVHYwTjJRYkxGVVNqVHFJaWxpVS83bUNpM3Q5bHphWThM?=
 =?utf-8?B?QVQwelZPS1NYSTgzdVdUZjBJNGVqZWJwWkwzeUpER1kvVXpVSDRjNW0vVkw1?=
 =?utf-8?B?dVowU214cWZpb2lWaVRPQkZSclllUndZU2dmY3pMWDNLUmlJVE1aQTQ2ckF5?=
 =?utf-8?B?WTVJTEFvRXhFREFPc095cGE0ckhES0pqRGxhd2p1djNaOXQrYk0wbEh5Yzhh?=
 =?utf-8?B?YUdjZFBISHFGZWdSREdYR1cyUUJ5MUxkUWVSU054YjByNWl5dHJKUWhLbnVK?=
 =?utf-8?B?WVY4c0VZMExwWmgweEw1SUNwNGRLUmhXQk5pZmViVzIrRVVjS1IrYmxQZTRE?=
 =?utf-8?B?RGNEalFEY0IzTnVQQ2l2Rm5XR2RFdTRVdUhkR21ROUN5Ym83a0lMNEpFSUYv?=
 =?utf-8?B?aVltSENyMUFQR3RFWlN0UWVpMnVhUEtwZVJqVVNxeGkvUC9leWM2Q2lrVGdt?=
 =?utf-8?B?SnViRWNRYkczZ3BORnNHVnEyS0cySWxEUDkxYldBbjcxTG1pS0VoMzd1YS9k?=
 =?utf-8?B?dHN6THlFWS9NK2dYYWZxMTlhaXNPTXVNNzlvVTJuVE5NMGlFdUFYaHhiQXBp?=
 =?utf-8?B?OUlESWhQK2dxZjV4cHEyWkltdzRrUnRMTzk0UFFzSDZROWtDclRGUHdxcFlp?=
 =?utf-8?B?MzZSREF4bE1pU2ZreXJXYzNKNWpJelhTSE9OUGF5OXBJSmpHSE1IMGYyZE9L?=
 =?utf-8?B?RjFBV25UV2NWR29oeXJJOEt1NHFJaVZLWEdQWXdBcmE4MzBMR2laeHZXQmxZ?=
 =?utf-8?B?a2R6YlNXZDRSWHVYOVJBQWFvUjVoTnoxbDcyMURZU2paR21nSU9yRyt5Yldq?=
 =?utf-8?B?NmllZWg1d08wZFpRaEtjVll1VzdDYTM3UHNXT3FkVWJnK05hS0hoNXNwWk5s?=
 =?utf-8?B?Q011eTVSZlUxanQ1TCt2dGJjbzNiaCs5RjBuQzVGemZoUEx4a214c0hWdVVl?=
 =?utf-8?B?QnYrUXp2anRmc0NXR2Nybzg5U0MzR3l5ZFVnaEZqanVEblhvN2ZBbWZmbEFY?=
 =?utf-8?B?S3JoYkJzZ1lpSjQvVjVFWUJLcWRYd3RXVVcyTWNXZGZkaDJreEx6QjdJNFAv?=
 =?utf-8?B?dTVRLzYyZlNvQnlZSGU1ODhTNnNyTnZoMmdBRHBMTVYvOFhGK3BNUW1TSnly?=
 =?utf-8?B?Q2pFUUc5ZHN5dEZuNmlyaGgwTEFSQmxsVWdmTm5hYmRGRGtiQXlDUzRtR1RH?=
 =?utf-8?B?MHBxdUR6YVdxdldZRDBTcVk4M1ZxRkt2NGpNOTlvTG5TYkxpUXV1YjdNdXlI?=
 =?utf-8?B?ejBKZE1NTXVrd1p3dVJFbTZsRmJPc0wzbVFVSHA3cVZjbHFrL3dKWXFZTlpi?=
 =?utf-8?B?c2VwNXhGbFdBaldmQ1pBY3hIRHZ1K3dFamhHeVBzamtHUDJ3SWhFVHp2eUE0?=
 =?utf-8?B?c1pFb0ZaRzVlLzNkRVlyblo0UHNHTlk0bHQ0aWZGZExRUjdqYVB3Uy9YNFFl?=
 =?utf-8?B?L0Zta3JZWHN1OStFb2Znc1BJRXVMUHFHWGJ3dFFNVmZKSWVJYWJJYmN1K2VK?=
 =?utf-8?B?eXlEd1ZZdnpQMjhQczlBM0JnMlpQanJPMGV2U2NvMExZckJHVlIxYkVwUUJs?=
 =?utf-8?Q?Feyg2G/jHwXPR07/Ww=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em9VQ0tOV2IvYzY3ZjVZeDdFeWRSMlR0Ti8yYWFnK0RJY2RMMGJhc1dlOW82?=
 =?utf-8?B?WWJEa29keE1YT1NWZThTYld1WUZLMHFRVUxjQjRyencwSTVseDNzNDZ6NmpU?=
 =?utf-8?B?R0Zid0MrcnY3eHQzay9jTS94a0wrd2dLa2VXS1hSUVVCUmFPWitQVDM0VUFW?=
 =?utf-8?B?WW5WR2grSDVMaExkdGFMbWJKay82Q2FZTFdNai9pVG5yTTVHNC9tdnU5dkI0?=
 =?utf-8?B?eUFtNlFQTmM4VHdZTDgzcUJvMTJzMlk4aWhhbUs2MmNNQzd2TWxlenIzT3Fo?=
 =?utf-8?B?elJ3TzdzVjVCTHNjT0ZUd1ZYWlltdVFaYmpsaFBkSGYwbERBOXFCaFFhcVBQ?=
 =?utf-8?B?bzdteW5XVGZhWEpCMGhzL0xEMWJmbXNCRC8wS2p1RmpLZDU5MXI5aEcwRG9Z?=
 =?utf-8?B?YkhoaDJ3M1BZWmRqRUZQR084YVJUK3ZxT0RLQ0h4a214alB6QVUybVZyRklU?=
 =?utf-8?B?TktQUWV2V0M3UUpYK1FlRnErcDhqL2p2ZGo0VkJScFhDOEZXQUhvMXMrR3J5?=
 =?utf-8?B?SFZIWVlRcU9IYlZBUlhmZHhrb1ZLRmk2KzdSV0xHMGdwcFRidU5iZUlmZXpI?=
 =?utf-8?B?VGlIZHRNdTh2MDJGQlhhaTRUaXRXdFNrWTVSSy8xRkhXL3JYV0xKWHhSZnl6?=
 =?utf-8?B?OHltWVhIdWo5dHdsSGRKNFdLNUU1M3JvVmVWWkkrTTF4WE5YODloVE1mNHdG?=
 =?utf-8?B?c0JPSWQ5TnU3YlJLemEyYllKUkdRWUljV0NGT0o3NExXRlNJRHFqZ1o0a1Fl?=
 =?utf-8?B?aXJ2dXhSTm8rSWpGZk5vRC90WWxCYnVxSTZiVkxFNWZOMkxhNmdDVGtkb2hX?=
 =?utf-8?B?NHJNTUlqcHVIdEJMbTlmSTRnYnUyYnErL05ubmp2V0pHcmM1LzFMZTJjandy?=
 =?utf-8?B?SHFqNXJSUFJCbUJZenNHM2VEeklDWXpRVzlTZnZub1lHQ0R1ampxdVBPREZx?=
 =?utf-8?B?R0RlcjVLa0xWTnNLL2lsTjB0QlRxbTQyQUNzV0c3Mm54UEtuN1pON3A4M0k3?=
 =?utf-8?B?TGVhSWJ4bFl0eTJsSEtoamdyelVISWYwT2dXRmlLVDJLejB2MEhkUFlQUVNw?=
 =?utf-8?B?Q3gzMEt2dG84eWFDN3BoMGgrVVVvUS9URm1peHpoOE5OeHBKNFhkaXJPUVRK?=
 =?utf-8?B?blk0ZzNCcGxKaVQ1TXFxQnZreHJvOUp3RmVsb2o1ajNXNVhjS2lDTzlFUjU4?=
 =?utf-8?B?UGNOTCtLR3Y0NFhCS3VhMWFZRHpBUlpobnRkRTJTMEZDcXJtUlFQVGcrSWdr?=
 =?utf-8?B?aEZYVW5RVDQ1VXVSWjNYRmJJZlZWUzV4dFlVcGFEVmRVcDNwZFdPRTlla0c5?=
 =?utf-8?B?c0ZkSjZ6Qk9BTDlqRWFKNExSQ1BJWjVwWGYzMkY4M1JINm5UYS9PTGpjSDV1?=
 =?utf-8?B?N29oUjQvK0JPcW9iVHJQYS9DWC9sUkpJRlAvU3Y1WlF3OGFVWUNQcXFOMWdh?=
 =?utf-8?B?RmZ1aTZ1UkxYcGxZOWpZWVA3dTZZZmtpdFVHUU15Q00zZ00waUZCLyt1MjdE?=
 =?utf-8?B?TUtaOVZDVUpSRFFYdFNmV096NDRkdC9DK2pJc1VpU2pueFN5T3VNT3VzcXNK?=
 =?utf-8?B?NlVBOE9uYUUyR0dTVFAybnBNMVNJSVR3dU5lUzNueElRUTRkbGg4TXZramg1?=
 =?utf-8?B?dUVzUkdpZDhsSDlpdnUwZVN3cUtzekVLNk1RVEZ0YWlFVDZwWUlSRlRvVkdy?=
 =?utf-8?B?L2RubS8rSHpVTEtEVDdQZjlDVXNtNU0za1BZWnc4cVhmMGJjMXcxOVJtRlpL?=
 =?utf-8?B?MEhNTUsvYnpSVUxxaUN2dFMyNFhpWVlXc2k3dDM4QmtYTEEzR1pxb1ZMUVVk?=
 =?utf-8?B?QWE1Q0JFZm5mdEp4ZklpdGxVSjBSSE00dUlnSXRsN3VMOWRJdkF3RjFzeUJ6?=
 =?utf-8?B?QmhtVzlJRWtjYk5OL2Q0NDBCZ0Fkd01iaFF2cmh1byt0RUFPbUpsVlBLTE9l?=
 =?utf-8?B?TTRVOWhPcVhCK3NPS1ZMNkJsRkZFeEJ4N3pWb3BDMHlXa0NIL0c3MXQxK3JS?=
 =?utf-8?B?ZkpZSnBxamJxb0lidmpkRGJnRzlYeERyb2dWbHZsMTU2ZjZ5Um8zQitkZzJL?=
 =?utf-8?B?SVBGNmF3SjBYZGk4RDd5U3ZMUUlkcTVtMjkwd2pxbHlSN2I1TDVlMEtjYTdm?=
 =?utf-8?B?R1lDQ2ppN3lWNExMdCtCY0pXakZubElFbkY4V0lpS09NbGhRZ0R1UUV6dUxB?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b394cc39-9691-4629-71a6-08dcce6385e2
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 11:03:22.4239 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nZMvWbcJ4SJ31nwoq4W1gSS/wj1Ie5jIdIoaXV+FDNq7phL0NYh1Ixlgm0OhGRa/nVo3LUOEeEFR1CbrpjWzAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7241
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



On 06-09-2024 11:56, Anshuman Gupta wrote:
> On 2024-09-05 at 22:18:17 +0300, Raag Jadav wrote:
>> On Thu, Sep 05, 2024 at 07:39:31PM +0530, Anshuman Gupta wrote:
>>> On 2024-09-05 at 11:55:23 +0300, Raag Jadav wrote:
>>>> On Thu, Sep 05, 2024 at 11:56:15AM +0530, Nilawar, Badal wrote:
>>>>>
>>>>>
>>>>> On 28-08-2024 10:15, Raag Jadav wrote:
>>>>>> Add hwmon support for temp1_input attribute, which will expose package
>>>>>> temperature in millidegree Celsius. With this in place we can monitor
>>>>>> package temperature using lm-sensors tool.
>>>>>>
>>>>>> $ sensors
>>>>>> i915-pci-0300
>>>>>> Adapter: PCI adapter
>>>>>> in0:         990.00 mV
>>>>>> fan1:        1260 RPM
>>>>>> temp1:        +45.0°C
>>>>>> power1:           N/A  (max =  35.00 W)
>>>>>> energy1:      12.62 kJ
>>>>>>
>>>>>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
>>>>>> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
>>>>>> ---
>>>>>>    .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
>>>>>>    drivers/gpu/drm/i915/i915_hwmon.c             | 39 +++++++++++++++++++
>>>>>>    drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
>>>>>>    3 files changed, 51 insertions(+)
>>>>>>
>>>>>> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>> index be4141a7522f..a885e5316d02 100644
>>>>>> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>>>>>> @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
>>>>>>    Description:	RO. Fan speed of device in RPM.
>>>>>>    		Only supported for particular Intel i915 graphics platforms.
>>>>>> +
>>>>>> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
>>>>>> +Date:		November 2024
>>>>>> +KernelVersion:	6.12
>>>>>> +Contact:	intel-gfx@lists.freedesktop.org
>>>>>> +Description:	RO. GPU package temperature in millidegree Celsius.
>>>>>> +
>>>>>> +		Only supported for particular Intel i915 graphics platforms.
>>>>>> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>> index 17d30f6b84b0..9f1a2300510b 100644
>>>>>> --- a/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
>>>>>> @@ -7,6 +7,7 @@
>>>>>>    #include <linux/hwmon-sysfs.h>
>>>>>>    #include <linux/jiffies.h>
>>>>>>    #include <linux/types.h>
>>>>>> +#include <linux/units.h>
>>>>>>    #include "i915_drv.h"
>>>>>>    #include "i915_hwmon.h"
>>>>>> @@ -32,6 +33,7 @@
>>>>>>    struct hwm_reg {
>>>>>>    	i915_reg_t gt_perf_status;
>>>>>> +	i915_reg_t pkg_temp;
>>>>>>    	i915_reg_t pkg_power_sku_unit;
>>>>>>    	i915_reg_t pkg_power_sku;
>>>>>>    	i915_reg_t pkg_rapl_limit;
>>>>>> @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
>>>>>>    };
>>>>>>    static const struct hwmon_channel_info * const hwm_info[] = {
>>>>>> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>>>>>>    	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>>>>>>    	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
>>>>>>    	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
>>>>>> @@ -310,6 +313,36 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
>>>>>>    				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
>>>>>>    }
>>>>>> +static umode_t
>>>>>> +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>>>>>> +{
>>>>>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>>>>>> +
>>>>>> +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
>>>>>> +		return 0444;
>>>>>> +
>>>>>> +	return 0;
>>>>>> +}
>>>>>> +
>>>>>> +static int
>>>>>> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
>>>>>> +{
>>>>>> +	struct i915_hwmon *hwmon = ddat->hwmon;
>>>>>> +	intel_wakeref_t wakeref;
>>>>>> +	u32 reg_val;
>>>>>> +
>>>>>> +	if (attr == hwmon_temp_input) {
>>>>>> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
>>>>>> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
>>>>>> +
>>>>>> +		/* HW register value is in degrees, convert to millidegrees. */
>>>>>> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
>>>>>> +		return 0;
>>>>>> +	}
>>>>>> +
>>>>>> +	return -EOPNOTSUPP;
>>>>>> +}
>>>>> Let's try to have synergy between previous attribute, such as hwm_fan_input,
>>>>> and this one.
>>>>
>>>> This one's simple enough to be inline IMHO.
>>>> Besides, it's already in synergy with hwm_in_read() which has similar
>>>> implementation.
>>> Agree this is pretty simple to have an any helper but IMO it would have been cleaner to have a switch
>>> like hwm_in_read() to return -EOPNOTSUPP in default case. i think that was reason switch case was
>>> used in entire file.
>>
>> Extending on the simplicity argument above, if() makes more sense for a single case.
> IMO lets prefer the style which was used in this entire file,
> that is more readable along with other attributes.
> Idea behind switch was scalable attribute for future.
> It is something related to individual preference therefore
>   let's prefer the symmetry with other hwmon attributes.
I agree with this, but even if this approach is used file-wide, there 
were concerns about using a switch case for a single case while 
implementing the fan_input attribute. 
https://patchwork.freedesktop.org/patch/607642/?series=136036&rev=4"
So I suggested to implement temp_input the way fan_input is implemented, 
at least we should follow this approach to maintain symmetry with new 
attributes. But in case if there is agreement to use file wide approach 
then please follow that approach for fan_input as well.

Regards,
Badal
> 
> With that
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
>>
>> Raag
