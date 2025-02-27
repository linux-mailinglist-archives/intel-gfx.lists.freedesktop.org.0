Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD391A47663
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 08:15:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6178710EA4B;
	Thu, 27 Feb 2025 07:15:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOKo49vy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A57410EA4B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2025 07:15:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740640502; x=1772176502;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5VpPG3WGw2kaU5TJtYPb3baJL6zgdlELrRXCOCdVKR0=;
 b=WOKo49vyh3R4K6KdYu3p2DJkJDPqwHBJTR6BooWc8qTdUOW5HH4vpr0f
 jU1N+jw3haSmR+syezbBgE8pP4PVHPYdjUtrwWaVM/CAQhZpGHeqiBAXf
 lWmzf9Fo5AkrtndkhZWAaiQTOXuVIeedw1E8/OKv0q18co0NcVFOPwHp3
 W81/+Ic6oODqY1RMFxDtOPw9Uo9z7gK/b7j/+JZj5sETS9FdUildkNntq
 dh1q52eJanWbgxEuqu3+z14z5sZmAVI+pn62RXoKtwe0IGuLZFkyitBG9
 lJ0etmVYTVlcervEqdrRkltkr44WCmjOJ6PNPNo+Irh0UbTXtltPWMeKM A==;
X-CSE-ConnectionGUID: B5JWhtwzTa6CS+ZKW0FZjg==
X-CSE-MsgGUID: uTXErYfLShapDYNO8Q7HNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="45295902"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="45295902"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 23:15:01 -0800
X-CSE-ConnectionGUID: o4i1VXQLSPOGaV7x+Wl0IQ==
X-CSE-MsgGUID: nyLwnAC/RYKezV1sx7nanw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="147865051"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2025 23:15:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 26 Feb 2025 23:15:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 23:15:00 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 23:14:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LJO0MkYPf0z74zV4YH+I07qAOuvFTljBd+qnAb18Z7WBuaGmbXspJggH01nM+BeTCPBv3/6GzdVeP74HGYerFdhe+HDVVhy4JulDo4RAs9zeXJFdvu9hA3OGATY77KVXPFnpy8/zRuH8SwXR7Q/La6tSAcdDtEaagAZh7p64YJ0zBcVgpDKfGN+W9MvmE8hWg812Si5eWEm/zXxLswKZWNE6sI/8GSZrKH78KcINaw4kHVjAaLqpi1PLO3hvJvEnrNWYq3pFGgx0LPBbyYUmXZVIMTnW9MLM443DxlaOAIgl6gvin/TRD+ESiHrrEi056E/SMDBJQlroVHo0r6sdnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuQaJMJzFlaOpRZKF04keEfnZfnsQ776U3BtqoUd+bc=;
 b=dBSBVBMEdWS3FWSYiB68VTZgO0areeRupqUOUQSTZmY5NwBRkT+guhd/H8zg2Yb2fbvVfc+JaQhs77OclyRHXSzabTPGgd4wekgrOyypU7i5jjtN40lCmxKl80B5FeqfJ7Lq6SmihSQKSm3sedrq2S60ERkaDfqR9n42dQsNPXx2v9Cs7n6/11IBND4ESxfgdxsk9nKI2RFr7bkDZdOTfF0nMVIdm8TuW6NBGss8kMifr5Bt9+3nyhtwaEkSPMf3f2kd45nLKp1LQfIwYNeHpZAaPHHihCmUjHHyH8uzTXpbf3+FmZRyYqQ5HggrBDcGm8YhUqy1WygzkM/AKMPe/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2704.namprd11.prod.outlook.com (2603:10b6:805:53::11)
 by MW4PR11MB5871.namprd11.prod.outlook.com (2603:10b6:303:188::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Thu, 27 Feb
 2025 07:14:42 +0000
Received: from SN6PR11MB2704.namprd11.prod.outlook.com
 ([fe80::513d:aaea:b097:afb5]) by SN6PR11MB2704.namprd11.prod.outlook.com
 ([fe80::513d:aaea:b097:afb5%4]) with mapi id 15.20.8466.016; Thu, 27 Feb 2025
 07:14:42 +0000
Message-ID: <d73044c2-6732-4ad5-8bbb-5eadc3ec0176@intel.com>
Date: Thu, 27 Feb 2025 12:44:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH i-g-t] tests/intel/kms_pm_dc: Add log information to dc5
 psr test
To: <intel-gfx@lists.freedesktop.org>
References: <20250226064037.80089-1-mohammed.thasleem@intel.com>
Content-Language: en-US
From: "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>
In-Reply-To: <20250226064037.80089-1-mohammed.thasleem@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0049.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::10) To SN6PR11MB2704.namprd11.prod.outlook.com
 (2603:10b6:805:53::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2704:EE_|MW4PR11MB5871:EE_
X-MS-Office365-Filtering-Correlation-Id: c0271e9b-846d-425b-2268-08dd56fe67f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M3ZSVlhLRlcrUHdyZTFkLytXR3d2cEpQSFV1dFQ0aGM5ZVcxU3laemdXNm5i?=
 =?utf-8?B?OVlKRkJlNmRIbzFFeGVYTFNwUE5ScTNJNkdUcHlNT2lKMW9kVTU2VkMxQkRa?=
 =?utf-8?B?ZllzdWFwTllGcjBYOEhTQjVrNGoyRyt1SjVWVlVVOHpZejkySlNRUU51Zkg5?=
 =?utf-8?B?UHVha29La3VUTzdlTTZWMWFyZDBuR0QwWWRqeXUyZ2VvRWcyT3kveXBad0JQ?=
 =?utf-8?B?TittV0p4NzkzRExHZzZWMFc0cVZRV2VHV3Y2TXRQNkQ3cmtXRHlndnJPRE14?=
 =?utf-8?B?bW9yblRJdXhYSENQeStTYmdJU3lFZHB3SWs2eTFBWE1LZDArak1QYTlmQUYr?=
 =?utf-8?B?MXhJYzY3dVNzQVVzUmdocndaZnBjMCt1dWxNRjB1dGhyVkUrYU1LTmFJK1cx?=
 =?utf-8?B?TW9xSEo0aG1jS1hEcUg5UEpOSHBJNytjR3RPQTdnUlZ6WWxwVGJwUTArRmd5?=
 =?utf-8?B?MDJwdkZhU2F3eVRjam5yWGs4M2ZNMDBNeVhNaGhkMnUydnNwRFkvZmJRL1Er?=
 =?utf-8?B?UHF4a0lnc2ZhR0VVYkRvUXZ4SlRFM254WUNCdE1zRVFscTlHb2s4a0xIOGI3?=
 =?utf-8?B?SjhHOXpReGhNUjdXRlRrd1RLRm5KYVhnZ0VRMG50UlI4ZmdrNi9veCtCQmU3?=
 =?utf-8?B?TjlBSXUzM0gyUDRqUkZRQkxDblVxZXpEL3lKMUJqK2thU0hsSmJsaTRnL0hw?=
 =?utf-8?B?eXVIUXVnckxoWHNqY3RsQVg1MWFnR3ZDQ1UyOTROaVBQVHpPRThEd2VkSXIy?=
 =?utf-8?B?aXRxV3dHM0pCa2piV3A1ajc3WXV0ZmtOcTlnTmlkZ1lHbk9udzRBSTBMdE5W?=
 =?utf-8?B?MzlNRTdXZ0FEZlk0bGNJeWtwTEM3cmxLemRlK2ZVZGlFWjhuamZQU1dkamhU?=
 =?utf-8?B?Skl0Q1B5ZWFaSnFBMHFDV1F3dHNqV1RJR3lwTzZYaW1zY042OU1XVjZLemdl?=
 =?utf-8?B?TDZRZGpYYWtocVhKZkRHVVRLR1ZWdHoyTFdncnlRcE94U1lmd0prT2MyK2dG?=
 =?utf-8?B?Tk1TekZRaWUxSWcwUktmZ21ic1ZMTjVlS3VxdWdFb0doVHlCaU5XUi85cjVW?=
 =?utf-8?B?aWdzejlpL3R4MUxYMi9KOXZKVFJEWWR4WTFEQkxZOXN0bUhhaExWUkY5NnY2?=
 =?utf-8?B?eUN1cVp3b1h1ak9YOS9hNTFaVXpZM3E4bEJ2UFVMcm5FNXdPNUpSY0pzSktm?=
 =?utf-8?B?TDEzTXN6OHdWYzBZVWFBUFpiZ25uQ09LYnJscDBZQm5nVVRwMjVGS2VrcHZp?=
 =?utf-8?B?YkEyTGVKVHY0djRCSlc2WVhwTm45MHNVSUVOdTJma010SGtWam1KdkZtd2NP?=
 =?utf-8?B?aEI0eHF1QndxeGQwemRid2VSeU5wNTBhVE5iSmFoeTVVeWUwZTZ3V3hVandH?=
 =?utf-8?B?REp1NmMrWjFPZDRyWnlaZVpmU2J5djVHbHFXaGRhVXJNOU5OZUJKZjluR2tn?=
 =?utf-8?B?WlhpRGlGWXNocWxadWhxVDA3MlBQQm80QjlrV1JxM3UwVFA3bE1jayt6RnF4?=
 =?utf-8?B?ZTR2d1B5aDlFb01aWm5NeXQxeVFmRjN2WUgwcG91bUM0ZnFVNmxFdWhEMHR0?=
 =?utf-8?B?OHpGWlU2TzBQSFJLa0VMaWZ6UjZ1Y1Q3Q2syaHBYbEwxZTF4Y2E5OWhNbzcy?=
 =?utf-8?B?dWptdkszWWRBbklEUHJ2NlRkaVp6RnYwU3FncEREdEEydGpHNHRpMGJZSXc1?=
 =?utf-8?B?YUFzMG5qYWcxeU1ZYkpCWkFVLzBGdlU3M09tMnA3WkIxNkp0TjQ1RC9MSElZ?=
 =?utf-8?B?YzZSSVU4MnlDcitmczEzQnl0QnVYZm9pMW40dVZMQzdPT2JFNUpJS3I0ZE9z?=
 =?utf-8?B?RktCbmc4blN2QzdpYzJoNXRpL0VhNFhBdkY2VkwyZ3FSeXlqU1podlF5Z2lZ?=
 =?utf-8?Q?F72v41IsGFMRQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2704.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0dXWHIwTzEycklqcFRCbUtzQm4wMEpveDFhdmFzRzd6WjNvcnRKUU53b1V1?=
 =?utf-8?B?N093ZXRIbXZReGhkQTdNNmVuUnoydjE5VzZTTXVtUnZzdXZpSGdxaWo5TXRR?=
 =?utf-8?B?WldRNWJ4Rytldkl3dU9JVytLcmVpRmNoSG5nNHZPVURKeXc4N3hsZ01RRkZO?=
 =?utf-8?B?Q3NhWlRoYzM5UlVVQlkycTlMRXM5azhJWGNlaVltTjRJejdPeE44LzA3bE1P?=
 =?utf-8?B?WkE3KzQ0ZklUSlhSZ0xkbElmV0VkREpBakxLN0FqRytZdExMSnpmRi9QVzBy?=
 =?utf-8?B?ZEp5cGZ0ampNU3NOR2IxT1l4VWtGdDVhcEYrekNZaEllVG85aDRZVkR1YXZk?=
 =?utf-8?B?ZDJvbnJ5a1cwSzgvM0NPbzhTbGllSGI1bGhFWVE1UXptN1ZRT2pMcWk3cStl?=
 =?utf-8?B?K0lsMW9HQnNUNkxMWFoweGp6ZjZVdmhGWlB0RmZyS0lQNjVuSW5uVVlaUThw?=
 =?utf-8?B?MUhISVcvUkE4M3YreHE5Y0JhQ0xQNTV2ay96NHJOMVRzWXh1QmRrRmRRcUkw?=
 =?utf-8?B?MDI2dkxwbTJuR01FcTR6Ukc2SEYycHZ1OHpIem16UTFVbGIrbmJBLzhicnJU?=
 =?utf-8?B?UGpyUmFzcjlWM1BKNVZpdkovQ1FrcW5adldseU1ZY3hGTWIyZ0lVSmE5U2Zp?=
 =?utf-8?B?b3ZJS0NickI0Vkl4ajRMbWR3eTM4bmxnbWtHd3JpRzQ4cDZUZEhoWVMwTENM?=
 =?utf-8?B?a3BvdE1nWUkveVduK0lqWldtczN6V0MyOVlpMHBPZkJMdVVITkpndFM5c2Jz?=
 =?utf-8?B?VlZaNnRySEVGNE40M2ZTOHE4MnZHQTJtSjJVWVZiUHJ4cUo0YkRqZUpaaWpp?=
 =?utf-8?B?dmMvZWtoclRoNnZMeVF4aUlGL3JRb2lIWjNFRTJUYzVxZUNNSTlvbUU3bXBu?=
 =?utf-8?B?ZHdTeXQzQTVTWGVMWWF3bC90U3dtejN0RXZHaHhlbm9wU0RUaHVtbEdjeXU2?=
 =?utf-8?B?MmFkbWRmSlZKanJNdUZmSlBScFc1bGIvYmYxa29qRHQ4R2xJTG1wcWJFVDhL?=
 =?utf-8?B?QkZKQldMZGpnSEY0blBvbHQ5cmN4ekZkUUpnUjVSUld5NFY2cnRCMzUzelRG?=
 =?utf-8?B?djJNaUk1Yk1oKzdjNFF0WnpDVVJFVi9hZEMrSEg1QTV1SFdIQy9lTGJuMW9Q?=
 =?utf-8?B?TW5HWVlrbklGMTJ1bHNydzZKY283eFdLSDNxaDZyTXFDUjd5S2JvdDVGSWxm?=
 =?utf-8?B?OWRyUG1VQkRHZnRrb3dtOFRoYlptT2RLbHNZSTVIUWhVT3pScGltS3NWTWRH?=
 =?utf-8?B?RnZsdVk3cDMzTUlrdWk3azdCcU1ZS09RQmdIZVlac2gyRjRnVHZ6UjNWZkFC?=
 =?utf-8?B?NzJ3aWZoUzNzUjhHYm9KSlRqQ1VmT3JYcFpGZm1ZSFNEcjhYTTQ0V0NaZGZn?=
 =?utf-8?B?elZ4QUg5QXpVYlB3VDNVQ2ppZ211VUJMdmhEUnVkRHhneUw0MGVVSlNwcUhY?=
 =?utf-8?B?UTgzbVFYcldaNmRBUDRFNC9WTVJRMGVQcEJqM3hRdzdCMmk1WUlFZVNTRm1I?=
 =?utf-8?B?bmNFVUpmV3N3RUtvYzV5ZWY0a1hwUXZ1bjV2SVkvS2p5MXRPaTV6VjFvZWFE?=
 =?utf-8?B?c2FGRFFUQmF3UHlNMUFBMFFFdUFTUDVBd3l6b1BZQ1h1c0tMYnlTNTRYb2cy?=
 =?utf-8?B?WGFvKzBoZHNwUUlDYkZzSkswTCtDOENRRFZ0alR3MHhZbVcxVUZRbVFUTjhv?=
 =?utf-8?B?UDY5OWJTZEdRVER5Y1lTa0lIbUR4QzgwNG5PNmNpTXptSHJ4OTZpQlJVSHZM?=
 =?utf-8?B?NzRCRkgxa0ZheE96dnNyMysxMWdseS9CdkEvYm95SEFMTGRKZjlOaCttcWNK?=
 =?utf-8?B?NVFiai9Oa3Z1eUtROWJzenNRbWUrS242cjJaUk1iY2hFWmdzbUFHRDlUeVBQ?=
 =?utf-8?B?anRWTUF3OWZTSU9TOGtkVTJSNVZhVXNoY3l6S2NXczZ3bHo5MUtINndJYTBI?=
 =?utf-8?B?SHdISFNScWRka3N6SGdwbkVOejlKemwrakx6SHQ1Yy84ZTRhaWhYdFZ0cUhu?=
 =?utf-8?B?YnVaL1R5bGR1M3lQSXp0SlcwbUZVZW0ycVdwc1VlZUt0cTc0T0M0d1VEeTJ1?=
 =?utf-8?B?VWRTVE1rZ3JubHY1SlZlclJmWFlVWXNyQXhwTlFUVXVrYS9ib0RtS2thUFp0?=
 =?utf-8?B?TCtnZnZ5RGVxUHIzMWxESHRPWG5vMnBncVlMNzBPODZNS2RhNW5qbFBpdmI3?=
 =?utf-8?Q?Y1J7Y83YonOAK2j6Ts38Te8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0271e9b-846d-425b-2268-08dd56fe67f5
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2704.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 07:14:42.5369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hx6nH5PiQFKWBeHnf/9kgerb20tdGCp3yT7ntv5pE5him2pO8TcgqC2fG9Jtt03LElBZsblFp3YqN9SyMGd52oWkKkoUT3MDr0kIezbGoQ/+xi2XCcKWS19hkCNG8ldS
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5871
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

Hi Thasleem,

On 26-02-2025 12:10, Mohammed Thasleem wrote:
> Pipe A is required to run the DC5 transaction. Adding log information
> to indicate if any pipe other than Pipe A is selected.
> 
> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> ---
>   tests/intel/kms_pm_dc.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/tests/intel/kms_pm_dc.c b/tests/intel/kms_pm_dc.c
> index bbb29d7d9..1b10c7959 100644
> --- a/tests/intel/kms_pm_dc.c
> +++ b/tests/intel/kms_pm_dc.c
> @@ -160,6 +160,9 @@ static void setup_output(data_t *data)
>   	for_each_pipe_with_valid_output(display, pipe, output) {
>   		drmModeConnectorPtr c = output->config.connector;
>   
> +		if (pipe != PIPE_A)
> +			igt_info("Pipe A was not selected for the DC5 transaction.\n");
> +

Till gen12 , Only Pipe A is low power pipe and from gen12+ to xe3 , pipe 
A and pipe B both are low power pipes , Add this info message accordingly.
>   		if (c->connector_type != DRM_MODE_CONNECTOR_eDP)
>   			continue;
>   

