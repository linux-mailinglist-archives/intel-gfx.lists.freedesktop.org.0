Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1C99BC149
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 00:09:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15B2410E4E5;
	Mon,  4 Nov 2024 23:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fNuP0SrO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2DC710E4E5
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Nov 2024 23:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730761791; x=1762297791;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CI+A21scJZcGC0dLL+6drldX/WORJ8DoB5bm6GDcHws=;
 b=fNuP0SrOr5E/ZbILAYcYVAx+GKOL9ouP0oifwozvPz87qIxndTPcx+3J
 1T2238RMd/7IlsS/VTYywEHRASjKG0O3gC7EdAlJlPYYbbrU0q/EIKux7
 EemUnrMtR68aD7u4qIh08mwSD+KMv19A9XfveAmkzXCet0eqfw7HZMLA6
 TUedklfzIjVxX6U+T/BuUHy/DVE/jIAxXqseCsQisUxNprLVtZRezih5i
 FyjBcpIf+aZe/wh10x/ZDUz/JTgbAbbI5ae3rUh11CSCtG6fr+hBsff0D
 jF2uexDSG1KBzqECjgu8THNJB+4pHkCaMQbBXEOVOPmDxnWQvD1cHxjII w==;
X-CSE-ConnectionGUID: 1Yr+KhOaSCijbF/m1IORZw==
X-CSE-MsgGUID: ueEm5G7zRCaM2m59Hef+JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30594133"
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="30594133"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 15:09:50 -0800
X-CSE-ConnectionGUID: +VbgQWTNSuyoUk+jbdxS0w==
X-CSE-MsgGUID: Fe5PpUgNSoGvgEjpKb9JlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,258,1725346800"; d="scan'208";a="83320647"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Nov 2024 15:09:50 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 4 Nov 2024 15:09:49 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 4 Nov 2024 15:09:49 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 4 Nov 2024 15:09:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JceAcFy1f0JPG5PkrvKVNB9UErhBvMFEkNShf11l+Rdpq1WstdXRSUBNvdEWuP62ye8CJEBKCj9ylwIBsWO8RkKkTl5VJ1u+ReGSM/QJeWkAFwNWo/kZbfNnioCsq3Kfqgbiu4xJpAkoPFOXRQjMOZZbs0E6JDJYTzK2EKwbINdDIsDYVvv052DPxLNLNJ9Pud8IvjKlezy0OOI6bVY32K/WxR/RaMdecd8Te2nofQmw7uxOq6mV4IvcuMeCScxZFOnaUY0flqXMX4vZcXVPtWA1meDMhm8rHOqji+YD4dqdM92g7JYyaIsYKTDW/ZrouEH71xS+zTvFKdSU5ZG2zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dgKBpVnoseHeADMHe61vwMUDbwcQiKk4CgAh//xIylc=;
 b=kf1hgIMrYG8ZvH42CFsoFPBpt3r+d/i0B974sdC5PNWxXlbs9DrCKTsrWh71ugVNMBE+4m2TPln6FKcGLHRu5lsLobiN3/jt9WaVn56rpU0OKm4g/zdFbxD6GhQixLRwM7RKs34B7QgicGo84xFQWIC3jp2tg2ySdDIkT4FM5dvAV+22orF2TlBda1JcLl2YB7D+2DRoaNs70OBxn+gTEbvssBS/YcZJHnpqlrwJHLsIWhQTTTIIDVFiY1krwO8izuMHaiIwNAVPMqpDZLZ2ABFCpM80fjsPukKR4OZXBeQN/gN/1jyVdnMkqHRX8OFtt25OtCTHVUYG+dv9DZ5yFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SA3PR11MB8076.namprd11.prod.outlook.com (2603:10b6:806:2f0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Mon, 4 Nov
 2024 23:09:46 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::d720:25db:67bb:6f50%6]) with mapi id 15.20.8114.028; Mon, 4 Nov 2024
 23:09:46 +0000
Message-ID: <2c1c07f5-920b-4f6e-87dc-752ae3725a2c@intel.com>
Date: Mon, 4 Nov 2024 15:09:44 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/gsc: ARL-H and ARL-U need a newer GSC FW.
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20241028233132.149745-1-daniele.ceraolospurio@intel.com>
 <92fb6446-7a25-49f8-b5ed-cead607f2070@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <92fb6446-7a25-49f8-b5ed-cead607f2070@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BYAPR02CA0039.namprd02.prod.outlook.com
 (2603:10b6:a03:54::16) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SA3PR11MB8076:EE_
X-MS-Office365-Filtering-Correlation-Id: ccae8091-f3ba-4a44-b130-08dcfd25c686
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YWhIa3VrV2JTUmh4N0lIYk81QlI1aFJCODFCZU45Z0srUEZ4aGdyQkRTN0tn?=
 =?utf-8?B?YXEyQkhPTnhyZ2tGVXV5MzkwOWRpNnlIZU5KRFFxeHp4L0wrVFM0bE5KT2lM?=
 =?utf-8?B?aDBoQm9DL3hoOFhLZWx1QWJYMkJXaTRjYVYrb3E0c2tNdXVIY3A2L3hUREdJ?=
 =?utf-8?B?LzhzbnRzNjM4Q0ZCL05CdXlDL29rcUZYWnIwczlSMVd1VGhvMGJJckRhdkdG?=
 =?utf-8?B?NmZLWndvYWc1Y3VOZnl4RHNPdy9vaTZpNkxsanlQVlRiaDdVdmdMVDJHVVNL?=
 =?utf-8?B?aUQxS3R4UFBtSkgzbFlsaG16dGhpaTIvZFQra1JHVE1wSmNNTkhuMUxNYnFr?=
 =?utf-8?B?aFVmOVFaZXhyMFQvcjl0cWNMNnZJUThvL0dQUW16WUh2TDVvckZEeWgwWVA5?=
 =?utf-8?B?SktqZElFb01tUW4vclYwcXFXUElid3YxNVcveTBTem11aHJiWnFHNmQwZVRG?=
 =?utf-8?B?QnEwWkRaeVp6blV1OTNpbyt1MGFNaGF1cC9Ka0w2L1IvUmZxMmFUdE04QXVP?=
 =?utf-8?B?Y0xIWEt4RFZhbm9nK05mZnp2MWEvMUJ6U3k1bDhwSHlBMisvYVlObG42aWp4?=
 =?utf-8?B?Nk9uaU56dGtibEVPS0poOWxiNVc1eXFTa3NUb05nK0c2V3hwOG9iRVkzNWVn?=
 =?utf-8?B?TktBSEFVK1UyTGVFVEhLamZWcVBXcGdrWHBMaG54bkZSQzhiMjlycENLVk1G?=
 =?utf-8?B?KzNsbjc3UExUdFFEUCtuTEpWTitqbTI5WVdiRkNaQ0UrYlJBZTlDVG5FMnVp?=
 =?utf-8?B?a3crRVRsSEJINDJ5Si9nd0F3VkdTUUhXNDZEcUt0NDZjN09KcWRBaDBnRlB6?=
 =?utf-8?B?ZGtYT0hnNWxxRFJPVTZzWEVQM2ZaSTJiclExR3RHM2NudEJpUU5UWlJqOWxj?=
 =?utf-8?B?a25CS1kyQzFLOE85RkJlWmNEaFMwT0ZrdkNOWGRJcEV2OHNjSEk0MUpGeWhT?=
 =?utf-8?B?WSt4QUpOL3IwZnpTMDVkQmJ4ZHY2ZG5uL2lXZ0ZKVnVxVzNnWHBXRlFMTUFG?=
 =?utf-8?B?TlBKeU83N2VoNjdsTGF0cUQ2ZFFscDhqcnViejFleld3RE9xYnE1NE84aGY3?=
 =?utf-8?B?dVR2M0xwT2YvdTlLblVyMmVUbTN6N1k5RjlwZDFGY2RJZUV5enIxYzhSTkdm?=
 =?utf-8?B?Vmp1N3VRaklvWXdnMnJWQjdWd2dtcHdSOUFKY29SMmdZK1d6eTUvVWRqa3ov?=
 =?utf-8?B?U3h2citnZDM2UnByUkN2TUZVUi9NNGJZbVh4a1hvTGdQdHI5eDZERWpMQ21B?=
 =?utf-8?B?bDh3Vit3NEtOWlpaVnNKd2N5OFRzcC9iTXNSTFJVaDAwYjdZdVhpUkMwUUZm?=
 =?utf-8?B?NkZwNlg4YlNFUGVraGw3WXN1cGNNRHdnMzRyeFdsemN1RFQ3ek0ydTk4Y29I?=
 =?utf-8?B?MElZN2Q4dFU5RGtQVXdXYXFnanZtUkFKQy9zek9heHlTbnloWjVmSGp4VVRM?=
 =?utf-8?B?RkNsaHRBZDlYN0N1Y3grU3pKTHVBSEFycnM1ZjVpaU14WjJBV0tzNE5teXRC?=
 =?utf-8?B?TGp5ekdsS2k4UHNxTXNSTjFiVTkyclQ3TDBwSXhORnh4K1Rvb281WG9YNlow?=
 =?utf-8?B?OUFJV2NsRlREM2FtMVdoMmlIQmFSR3oxUXpxekhTRmFsYjZpbTR1amhNWVpo?=
 =?utf-8?B?NldJZklMOFNxQm5wQzh0Ti81V0dSVVBVTlU4YU5NRURXRlVya3ByY1Z3b3pS?=
 =?utf-8?B?UmIyV3JQZEduMkJJKzUwR1VubEZXc1pSRE9Wa1l4RU93WDFDTTR5cWpqNUNv?=
 =?utf-8?Q?6cTWDdz7erQibSSvLw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejA3UXh2bUNKZ2pJdlFrY1I3c0FPSmMvZ0VrSndIK0lhajJTWFhkUnpjQ1kx?=
 =?utf-8?B?c1FsWE02MlYyelpkelFneSt0cVB1Y2dqRThVZ3lzek8xdFBCQjhSeTByakFS?=
 =?utf-8?B?cmhQUXRIS3JaL1FnUkVVQUlRc0l0YkQ5R2FvTko1OUtoNDQyZEZsYncwRVdQ?=
 =?utf-8?B?SHdTTXZKemVMYzVzUjMweG13VElPR1kzNGFod01wbGpENVNNV2dCUU1ZQ09S?=
 =?utf-8?B?QXVlTm1kRVEzK0dkWGhVMmJ4MDd1Zng5cCtGYmVPSHhCbjZxTE9LWDFwcjhq?=
 =?utf-8?B?dVZRUHZ0U2txa0w3QnR3RXBjQ0JldDl1QVJGaFZSQ3p4WWQxOUNpUzJyd1Rl?=
 =?utf-8?B?TzY4aE1MQXh5anV6SnZtTkNzRVZNUEdxNDhHZ0tSVnhCQkM1eStLZFQyMTRq?=
 =?utf-8?B?dElRWExqTy80YytvL2Z2cEhENXJ6dW9TVFUzWHNrbWtnaHNiQlp6eDBIYVlZ?=
 =?utf-8?B?SUV3UVNTNHBHVzBPL1crYnpIUXpQYTBrKzg1NzViR05OOUJIcmpkSklvY3NF?=
 =?utf-8?B?SkVtemUvMlVzRjVxK3lyUGJjOVpyUGRlQ3B3VjllMG0xdDNLZDQ5S1VFeGFq?=
 =?utf-8?B?RWR4YjVPbllTai9MZW94SXUvK2JKazVBNVBaWENxNXIrZzgvVVJYNTFIdGlL?=
 =?utf-8?B?QXFlaFpwZTJqbXJ3VWNxYlhIT3RLS0IraldmbEM3MW5BMkxoRDN5U3VyUzVG?=
 =?utf-8?B?KzgwV2I0ZEJBUTRtVmJ2Yi80UG9lYTZ6S1RvNGFrUmxpOXlZMUFNNEtxc2RQ?=
 =?utf-8?B?aksweDVxVmNXcE95SXVXVXcyemFMUzRBNXcwRGYzd1A0UHhId0V5TDZtbVdn?=
 =?utf-8?B?RWFpVFdhSjhCaFRSVWFFV2xGUEpZVWxDRWhpdWJhRFhsdzRVVEpQWFYxQ2J2?=
 =?utf-8?B?ZUZYWFJ3YitkSUlSaS9GbjRxTmI5VXFuL213Q01seForVmhCd0R0NVh3SElB?=
 =?utf-8?B?V1p6Q0VkVmxBZGR6azBvbGhQZmlSUHVCc1BHVm9oVHluMFo3V1RIeHNjWGxm?=
 =?utf-8?B?cDQzS1FCL2xxSnZMak1UQzk2OWtWUEcwNm1KTER3MFZlTzVGb1ZXNFh6ak9F?=
 =?utf-8?B?Tm1rOWtjS0lVK2pCV3QwZlBOTjVqdWdibFh1bnRuUEdaUkt3d1JINzc5eGhN?=
 =?utf-8?B?c0xlZXRRMTd0eXB6dnhockhwMDBUK2VsTWlwS3VyWEI0RzFWelAwTExxUURO?=
 =?utf-8?B?MDdxeTMzdmM3WVV4a3Nwd1dPZFdhNGJ2ZGQ4aFNIazIza0VDN01UTGNzMDgz?=
 =?utf-8?B?a1FDby9sQU9xaGErOEJYZGtVQlN1ZzJuK25jTkZPMENBRjZTNndhdDJmK1hB?=
 =?utf-8?B?L1M0c290M0hBSlZaVkowTXVrMkQ4cXBYZWxkdHVTMTJpUWZCTFMra3labGVS?=
 =?utf-8?B?ZkNjTGtZdHFxTE1IQVQ5eldTaEw2bXlSS3prdTBZeWVsN0dGdXNhMzJkd3N0?=
 =?utf-8?B?aTNHOU9hMTZ6QmZYa21PVFh5ck8wZ3BpTHdvTHlkT2hVVVN5SFR0aEFiM3RC?=
 =?utf-8?B?TkpMakI4c1JUQzRuL1lGbGZmWEQ4NjRhN3pVSlgvMTAyVzhKeGNHR1krdEZo?=
 =?utf-8?B?SGpweHlFeUtuSWdGbXNsREt1KzZLWDd0Tm1mRXJrS3BMUUo4NmRZanJDTngz?=
 =?utf-8?B?MzlvVERDR3NpL3VmUUlNR0V5a0RVcFliL0FvVmpyWk9QdkQwU21EUVlXYUMv?=
 =?utf-8?B?bFpCVW04Q1g5dmlzcjZWVXNDdVJaL09CSnVxbUZ0NGhnbkdlS0dFcmFGbHNr?=
 =?utf-8?B?Sy9FUGMxSHlMV1Y4RnRJNEE0SlM5SjB6cW92UVNRVkRMRk5NUnllcEpUWVdP?=
 =?utf-8?B?Q2NETEtDWWVONTByaGhsb0xsdWlWaUQ3YWdFK0NhSnlDZ1BhOXNyWEZ5dnBF?=
 =?utf-8?B?QWV1cGRUcXQyYTdXNDBleHFXcm83MXNucmNpeTVmR1M2OVR6dUtIU0F6K3lY?=
 =?utf-8?B?alhyejFNQ3E0bkRaM3BtTzkzS1hBQjY5dlRUbm51S21pa0ZHaVYyQTFxUWZy?=
 =?utf-8?B?T2MyWlMzZ2JNU2o2Q2t2N1MvOCs1amJNVytkMm1lZ0g2Vk44MDB6azllL2x1?=
 =?utf-8?B?S3Bobkp1VHUrK0hMN0pGZitYdU43d1gyQnZqbzMrTG5ocU9qelR3dTd6WFNT?=
 =?utf-8?B?UmxWLzY4NWVqMmErekU2WmJOb29BNkVJQTFCRmFUWm8rNkMxUDFMb0I0bW5W?=
 =?utf-8?Q?kJOuskxRbcEQuzZpZtBP8t4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccae8091-f3ba-4a44-b130-08dcfd25c686
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2024 23:09:46.7637 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pZuJDcWyErCeNnfNHCHg0UfaaZiAYtMZqUvCX2E0BKjer5U3grlTPC5lUoZMYmwmcNuJLQV94q8/hP0jR3dDFgkuSnGciJ6pKjqJf7kLHXs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8076
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




On 11/4/2024 3:02 PM, John Harrison wrote:
> On 10/28/2024 16:31, Daniele Ceraolo Spurio wrote:
>> All MTL and ARL SKUs share the same GSC FW, but the newer platforms are
>> only supported in newer blobs. In particular, ARL-S is supported
>> starting from 102.0.10.1878 (which is already the minimum required
>> version for ARL in the code), while ARL-H and ARL-U are supported from
>> 102.1.15.1926. Therefore, the driver needs to check which specific ARL
>> subplatform its running on when verifying that the GSC FW is new enough
>> for it.
>>
>> Fixes: 2955ae8186c8 ("drm/i915: ARL requires a newer GSC firmware")
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 50 +++++++++++++++--------
>>   drivers/gpu/drm/i915/i915_drv.h           |  8 +++-
>>   drivers/gpu/drm/i915/intel_device_info.c  | 24 ++++++++---
>>   drivers/gpu/drm/i915/intel_device_info.h  |  4 +-
>>   include/drm/intel/i915_pciids.h           | 15 +++++--
>>   5 files changed, 72 insertions(+), 29 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>> index 551b0d7974ff..5dc0ccd07636 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
>> @@ -80,6 +80,7 @@ int intel_gsc_fw_get_binary_info(struct intel_uc_fw 
>> *gsc_fw, const void *data, s
>>       const struct intel_gsc_cpd_header_v2 *cpd_header = NULL;
>>       const struct intel_gsc_cpd_entry *cpd_entry = NULL;
>>       const struct intel_gsc_manifest_header *manifest;
>> +    struct intel_uc_fw_ver min_ver = { 0 };
>>       size_t min_size = sizeof(*layout);
>>       int i;
>>   @@ -212,33 +213,46 @@ int intel_gsc_fw_get_binary_info(struct 
>> intel_uc_fw *gsc_fw, const void *data, s
>>           }
>>       }
>>   -    if (IS_ARROWLAKE(gt->i915)) {
>> +    /*
>> +     * ARL SKUs require newer firmwares, but the blob is actually 
>> common
>> +     * across all MTL and ARL SKUs, so we need to do an explicit 
>> version check
>> +     * here rather than using a separate table entry. If a too old 
>> version
>> +     * is found, then just don't use GSC rather than aborting the 
>> driver load.
>> +     * Note that the major number in the GSC FW version is used to 
>> indicate
>> +     * the platform, so we expect it to always be 102 for MTL/ARL 
>> binaries.
>> +     */
>> +    if (IS_ARROWLAKE_S(gt->i915))
>> +        min_ver = (struct intel_uc_fw_ver){ 102, 0, 10, 1878 };
>> +    else if (IS_ARROWLAKE_H(gt->i915) || IS_ARROWLAKE_U(gt->i915))
>> +        min_ver = (struct intel_uc_fw_ver){ 102, 1, 15, 1926 };
>> +
>> +    if (IS_METEORLAKE(gt->i915) && gsc->release.major != 102) {
>> +        gt_info(gt, "Invalid GSC firmware for MTL/ARL, got 
>> %d.%d.%d.%d but need 102.x.x.x",
>> +            gsc->release.major, gsc->release.minor,
>> +            gsc->release.patch, gsc->release.build);
>> +            return -EINVAL;
>> +    }
>> +
>> +    if (min_ver.major) {
>>           bool too_old = false;
>>   -        /*
>> -         * ARL requires a newer firmware than MTL did 
>> (102.0.10.1878) but the
>> -         * firmware is actually common. So, need to do an explicit 
>> version check
>> -         * here rather than using a separate table entry. And if the 
>> older
>> -         * MTL-only version is found, then just don't use GSC rather 
>> than aborting
>> -         * the driver load.
>> -         */
>> -        if (gsc->release.major < 102) {
>> +        if (gsc->release.minor < min_ver.minor) {
>>               too_old = true;
>> -        } else if (gsc->release.major == 102) {
>> -            if (gsc->release.minor == 0) {
>> -                if (gsc->release.patch < 10) {
>> +        } else if (gsc->release.minor == min_ver.minor) {
>> +            if (gsc->release.patch < min_ver.patch) {
>> +                too_old = true;
>> +            } else if (gsc->release.patch == min_ver.patch) {
>> +                if (gsc->release.build < min_ver.build)
>>                       too_old = true;
>> -                } else if (gsc->release.patch == 10) {
>> -                    if (gsc->release.build < 1878)
>> -                        too_old = true;
>> -                }
>>               }
>>           }
>>             if (too_old) {
>> -            gt_info(gt, "GSC firmware too old for ARL, got 
>> %d.%d.%d.%d but need at least 102.0.10.1878",
>> +            gt_info(gt, "GSC firmware too old for ARL, got 
>> %d.%d.%d.%d but need at least %d.%d.%d.%d",
>>                   gsc->release.major, gsc->release.minor,
>> -                gsc->release.patch, gsc->release.build);
>> +                gsc->release.patch, gsc->release.build,
>> +                min_ver.major, min_ver.minor,
>> +                min_ver.patch, min_ver.build);
>>               return -EINVAL;
>>           }
>>       }
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index a66e5bb078cf..b1f2183aa156 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -539,8 +539,12 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>>   #define IS_LUNARLAKE(i915) (0 && i915)
>>   #define IS_BATTLEMAGE(i915)  (0 && i915)
>>   -#define IS_ARROWLAKE(i915) \
>> -    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL)
>> +#define IS_ARROWLAKE_H(i915) \
>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_H)
>> +#define IS_ARROWLAKE_U(i915) \
>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_U)
>> +#define IS_ARROWLAKE_S(i915) \
>> +    IS_SUBPLATFORM(i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_ARL_S)
>>   #define IS_DG2_G10(i915) \
>>       IS_SUBPLATFORM(i915, INTEL_DG2, INTEL_SUBPLATFORM_G10)
>>   #define IS_DG2_G11(i915) \
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c 
>> b/drivers/gpu/drm/i915/intel_device_info.c
>> index 3c47c625993e..467999249b9a 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -200,8 +200,16 @@ static const u16 subplatform_g12_ids[] = {
>>       INTEL_DG2_G12_IDS(ID),
>>   };
>>   -static const u16 subplatform_arl_ids[] = {
>> -    INTEL_ARL_IDS(ID),
>> +static const u16 subplatform_arl_h_ids[] = {
>> +    INTEL_ARL_H_IDS(ID),
>> +};
>> +
>> +static const u16 subplatform_arl_u_ids[] = {
>> +    INTEL_ARL_U_IDS(ID),
>> +};
>> +
>> +static const u16 subplatform_arl_s_ids[] = {
>> +    INTEL_ARL_S_IDS(ID),
>>   };
>>     static bool find_devid(u16 id, const u16 *p, unsigned int num)
>> @@ -261,9 +269,15 @@ static void 
>> intel_device_info_subplatform_init(struct drm_i915_private *i915)
>>       } else if (find_devid(devid, subplatform_g12_ids,
>>                     ARRAY_SIZE(subplatform_g12_ids))) {
>>           mask = BIT(INTEL_SUBPLATFORM_G12);
>> -    } else if (find_devid(devid, subplatform_arl_ids,
>> -                  ARRAY_SIZE(subplatform_arl_ids))) {
>> -        mask = BIT(INTEL_SUBPLATFORM_ARL);
>> +    } else if (find_devid(devid, subplatform_arl_h_ids,
>> +                  ARRAY_SIZE(subplatform_arl_h_ids))) {
>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_H);
>> +    } else if (find_devid(devid, subplatform_arl_u_ids,
>> +                  ARRAY_SIZE(subplatform_arl_u_ids))) {
>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_U);
>> +    } else if (find_devid(devid, subplatform_arl_s_ids,
>> +                  ARRAY_SIZE(subplatform_arl_s_ids))) {
>> +        mask = BIT(INTEL_SUBPLATFORM_ARL_S);
>>       }
>>         GEM_BUG_ON(mask & ~INTEL_SUBPLATFORM_MASK);
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.h 
>> b/drivers/gpu/drm/i915/intel_device_info.h
>> index 4f4aa4ff9963..ef84eea9ba0b 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.h
>> +++ b/drivers/gpu/drm/i915/intel_device_info.h
>> @@ -128,7 +128,9 @@ enum intel_platform {
>>   #define INTEL_SUBPLATFORM_RPLU  2
>>     /* MTL */
>> -#define INTEL_SUBPLATFORM_ARL    0
>> +#define INTEL_SUBPLATFORM_ARL_H    0
>> +#define INTEL_SUBPLATFORM_ARL_U    1
>> +#define INTEL_SUBPLATFORM_ARL_S    2
>>     enum intel_ppgtt_type {
>>       INTEL_PPGTT_NONE = I915_GEM_PPGTT_NONE,
>> diff --git a/include/drm/intel/i915_pciids.h 
>> b/include/drm/intel/i915_pciids.h
>> index 6b92f8c3731b..ae64e8ec1adc 100644
>> --- a/include/drm/intel/i915_pciids.h
>> +++ b/include/drm/intel/i915_pciids.h
>> @@ -765,13 +765,22 @@
>>       INTEL_ATS_M75_IDS(MACRO__, ## __VA_ARGS__)
>>     /* ARL */
>> -#define INTEL_ARL_IDS(MACRO__, ...) \
>> -    MACRO__(0x7D41, ## __VA_ARGS__), \
>> +#define INTEL_ARL_H_IDS(MACRO__, ...) \
>>       MACRO__(0x7D51, ## __VA_ARGS__), \
>> +    MACRO__(0x7DD1, ## __VA_ARGS__)
>> +
>> +#define INTEL_ARL_U_IDS(MACRO__, ...) \
>> +    MACRO__(0x7D41, ## __VA_ARGS__) \
>> +
>> +#define INTEL_ARL_S_IDS(MACRO__, ...) \
>>       MACRO__(0x7D67, ## __VA_ARGS__), \
>> -    MACRO__(0x7DD1, ## __VA_ARGS__), \
>>       MACRO__(0xB640, ## __VA_ARGS__)
>>   +#define INTEL_ARL_IDS(MACRO__, ...) \
>> +    INTEL_ARL_H_IDS(MACRO__, ## __VA_ARGS__), \
>> +    INTEL_ARL_U_IDS(MACRO__, ## __VA_ARGS__), \
>> +    INTEL_ARL_S_IDS(MACRO__, ## __VA_ARGS__)
> Is there any point in defining this? I'm not seeing it being used 
> anywhere. There is no longer a generic 'IS_ARROWLAKE()' macro. So does 
> seem to be worth defining a generic ARL id list.

AFAICS it is still used in i915_pci.c and 
display/intel_display_device.c, where we assign the MTL capabilities to 
the ARL device.

Daniele

>
> John.
>
>> +
>>   /* MTL */
>>   #define INTEL_MTL_IDS(MACRO__, ...) \
>>       MACRO__(0x7D40, ## __VA_ARGS__), \
>

