Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B218D1750
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 11:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8B7F10E1D3;
	Tue, 28 May 2024 09:35:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ng1SrldG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE20F10E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716888954; x=1748424954;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=G2Omh3Pv3+azQCTucyXjB+viP5ycsuf+cMFY17EzWJs=;
 b=ng1SrldGr58QpqlMXIFF/qHGftYVkb6fDs5Y2Rxb8exCjpqaaKl6aVyy
 4UDqOZDEvaEHsyB3WMDeR00DeVhFExSr3mnIKCCjJrWMwn4ZeyCUN9+xD
 A93XUompKYzyFSFe1UnGn8xE6KFT2pVsWNi8XLjhhSZDBqwGuGvQNqH46
 xoAVxmARju7H+EAy565mIx8xzVs9feIO0sm1+7tDxAoUe2Gp5gNcP183h
 tsJO7PW6ZAfYZCdQqDK7R3tCQke1ZZcRkGaKpCCD0F8VymtWhetLYbYsF
 H9zQBn6SVgvi5J8sQmL9XfUUDGPaT2LQ7yvpXysEF8vjpNKIJF55ic20M g==;
X-CSE-ConnectionGUID: eE+eu6OGRzetrgdp1gfYFA==
X-CSE-MsgGUID: iYmISfpFTkKmjDkXE5jTDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17010545"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="17010545"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 02:35:54 -0700
X-CSE-ConnectionGUID: LcWyIJjdQui/EjayyIyBug==
X-CSE-MsgGUID: 1TrqzClIQDGvoCCWvCp2ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="39450673"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 May 2024 02:35:53 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 28 May 2024 02:35:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 28 May 2024 02:35:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 28 May 2024 02:35:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T8/b6UKlkCL1vy5Tv6RuBJKDswq00Le7Vqvm0afXVEDhnT/ZW9okcQW3tsTX5/EKREpHJt494+jXmQYuAh66I1BoqLQ32/EJa06SI/p2EtIm4qTQSzQrkrZal1+IDTBsoCuPDprZd2xbvAw0CjO5zLvHuUGrjBVd5zH7LwxL1k6a+Q6hv28z0xtDYbSChqezF5Of4W6lP8BgT3jcTtmk1rUeFYa35HdpMX01NvI6+lmriWVzqySLo/eezXHl8i8kuYFo5baKOkDHY7oiCtMJZ7nV0mBxysMaEEzpEzZd0rOgvXmY210pnviXSGazyhEzX4GmvscsdvIRnlkjxvmTpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pP487Awo3oNfVdwOlK7euQuRDqmaFm8W/0ZGC50Juz4=;
 b=WMkGj0De3/bPel3/AYaAq911p1ELApP5ujgs9veQk52qote+P/MnnLbsBSE/DSvhGEQq5h6sybugH0cs1hbXxw9Od4ylgCrXXbgYprOAcGqh7QvZYmBGf58ld2nml6GtuUAKIx7NxbyhGUzP5wCL03LTEpKHHy5qln50TRoCvMKe+GyMAUL1ZbF1Oc4bWVRk7AbzH/3srbXJ27ffkFM6wCCfMOlXJPZdwV4vw7qalskDL1fNQW/E2Alc4HtwWj4EH1NsW7E+xxvfO9UfVyg2GRldnhX1bXE9xstm6qPjGrvOl2OuK88CPz87Jxti17GWpeY4glfxN9XZmYY6U2W3Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6777.namprd11.prod.outlook.com (2603:10b6:510:1c8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.29; Tue, 28 May
 2024 09:35:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7633.017; Tue, 28 May 2024
 09:35:50 +0000
Message-ID: <9d97dc69-d0b6-4113-8379-50878e3c3937@intel.com>
Date: Tue, 28 May 2024 15:05:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/8] Add refresh rate divider to struct representing AS
 SDP
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240524102432.2499104-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240524102432.2499104-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240524102432.2499104-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0158.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6777:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e6393a4-634b-451f-a821-08dc7ef98f9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y3Jrem1GVmFzZHUrYUFDcWpYYUh4cGl6OVFXQUhrMDh3QzBPZmRTSVhLZFh5?=
 =?utf-8?B?V1Z5S0JnNWxaTFdsZXIvdk9NZ3NPQkZjNzdGOXpLNjN1VUxlNmhFc3NWc3lx?=
 =?utf-8?B?TDB4bFlDSWdIWlkxdktDeldBZWZoelI2bEVJN056Wi9ja29lOE8yWUxNT0Fm?=
 =?utf-8?B?T2JpWXpFUGtrVjNyZWM1czYrODlBK1pNRjFtK1RZV3lMckZzeUJCRnYwU2JX?=
 =?utf-8?B?Y2JOdUVBZXJxZXFXcnY0NjJjbU9JKzV4c2hHNjRxUjIrTXJhcTQ2MVBONkxJ?=
 =?utf-8?B?T1hHRzc3RzZpdnF0ZlZRaUh3V2plVEF5ZDgxSCsxV3IyY0IrdmxwbHpvRUdl?=
 =?utf-8?B?L25TcGE1UExUUVNjRTJPTTBEZzlaRG9pc0wxNkJ1V0crUFZzbVdCYkU1eXZt?=
 =?utf-8?B?YmNTOThHUGpnQ3VtcmxRa1dqdnoyL05uZVRabzZYUGt5OU14OS94TkFudHMr?=
 =?utf-8?B?ZEVNb1d5MStjWFJ0L0hXQW1HVUNYWkR2OTRPWm4zVXpJZXJlcWJld01zdUdT?=
 =?utf-8?B?ZlRCdEE1UW5CeGgyMzJ6R2FkSmRBVWhaYzF2NDRQSmg2UUlWVkgvaHljY2FE?=
 =?utf-8?B?dFJacEV5RjZXVEhhcmNZVDFTRDd6MFVHbitudXlNRjhSdm5EUTNmSXFoMkZn?=
 =?utf-8?B?YXRoQTVLc2lBWlNBNk00MTRlSXNick1JMGtKcnI4b0pFM0pDOVdRQjJIa0lN?=
 =?utf-8?B?N1JpSG5IS1pOL0hiRUMxRmwwU0cvSTZvczhLTGFYQlpadWFZU2I2STlQeG02?=
 =?utf-8?B?UjVuSlJ1OVJ5a2E2cUdqcUl1aWpjZ0txN2NIdE1Qdk1PaXgrNy83NkN0eGc2?=
 =?utf-8?B?UkhDVXEwYy8xWWhkdnk5b04rMk9kK1NmejJwZDFNQ0t3cTdDdCs0VitudU5t?=
 =?utf-8?B?WGZCSG8rT3N6M2ZaVWY5Sm1oQU1mUUtpSzVxZ1NFR2VUV3lsWE9UblU0Zk9z?=
 =?utf-8?B?TklITUFUU1ROOFYvRmhLYzBkOEZnUnlLTUFtTlFYblVsc2pwQy9wV0pvQVNO?=
 =?utf-8?B?TWtQWXNMckxQYUJxeHNVN1pUVXpSdjFKMXR6UzdBL2g0TUM1MEovNWFtQTE1?=
 =?utf-8?B?dDl3MzhtRWhIeFArVHo3aVdiZ05yMGQ4NXBNNXlRUldGOTk4ejczQzF4eFJI?=
 =?utf-8?B?RlZVOXRIWGhTU0creW93OHd3YzM2aDd1NGJONXJrZkVQQ2c5Q0prdFJ3RGVl?=
 =?utf-8?B?M1kxRzVuVnRlWHp2S0hRTjd0eXhpNVNLY3lhRDViM0trd3ErUlhUZGpKTVkx?=
 =?utf-8?B?RTJqZmI2Y0NreUNhS3J2NjdBemloMjcxWlROQUd2UzFqZWU1QTFoYVEzcjA1?=
 =?utf-8?B?WWdvOTNMTzVpN2NGSXYzWE13R3oraVpZN2VCVTZQYkdCQVRQeUJZOHBjM2c0?=
 =?utf-8?B?VlB3M3hzTDVWWXBQUU1rOTVWM1prSnpQY1FMUjMrKy9KWm1Ca205clkyRS92?=
 =?utf-8?B?UFBId2lBRjNaV3l2R21Zc05sUFFZUDM1eXl3NGZKQm1PbjBlSE1yaGFoazhq?=
 =?utf-8?B?aWtXdlVDUGQwN012YmZNZldvS3BwZ2JDY1pRR1N1dlV0azBVK1A0bDZweWpL?=
 =?utf-8?B?NEN6a2txTlhMNjU1SDBEdTB0dlZ6bkRUQmY0OEhuem1CVnRUQzZtNUNCemln?=
 =?utf-8?B?Tld0TU8zRldZUkFXcUVIVzVQcFU5T0cvQ0UvcTVybDJwSzliQUYxQVFoWnFo?=
 =?utf-8?B?K3JPckZqTXFMSythUFNGTDZ4UmdQV1RFRDdPeW12ZWhJVU9ObFZOS1J3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHE2Y1lORkRHZ3BORVJDUnp0K1dHcDZ6VkRveElWdksxd2h0NWQvUElwcWhx?=
 =?utf-8?B?RW44VjY3dzNDdGthM3RpYUJOVC9GT3lTNmFicVFHbzJJWEpBbUJYZlhYR2ky?=
 =?utf-8?B?M0lpcmxQWTFod0s0b2RmNTNzaWZNaDhoOUttdDJiOFAzb0Ntb2p6VEQvTjJU?=
 =?utf-8?B?cXhuQlNUbmVlaWwxUllzWTV2bkVXZWJuazBpOG54aGR0ejNROWFoWGlidDZP?=
 =?utf-8?B?bkxrcXlDUzVrYmtkNnpVRzhHWFdhbERWN1dISzZoTWQrbWZxVTNtaHdncGZI?=
 =?utf-8?B?Vk85dkNsaW9xMUxmN3o0d241UCtrZnZZalFJZ2hsMjAxSVVNTndVVk9TMlRH?=
 =?utf-8?B?SS8zaFlFdnlnY0hTc2NVbXFHY3NuQW9vSXRqY0NIV25XenRzV2lYVnNZY0J2?=
 =?utf-8?B?Q1N0eXFtR1U3OHovdWYvdHhYS2F6WE5OUDVManhTWmd0T09FR3FIb091Zy85?=
 =?utf-8?B?ZVFpV3d4RmRDVlcwNTlhL3dleDdxajFaUGhSMUVLRFBxM292bWdxak5JTTda?=
 =?utf-8?B?UjIrNU1abnBEanliY2xWZDEwYTVDQ0lYT3U4MnBBZUp6OXBKQTFyMXdxdzAr?=
 =?utf-8?B?TVpUcFJEVjYrZitQVnVFdTZwajAwQ0lLc04vcThCSTJkcFhLNENHa2NaaXY0?=
 =?utf-8?B?YzJ5b0FhTEdDKzdCYjFLa2J6OXhVcGpHeUU4SzJmOXdFcTNGNzgrRmdlT2p3?=
 =?utf-8?B?bWJ1RExJcHkrZHp4VUxSS0VwRVVPZVM2em9QdW5obWVOMWlmeVUvdStlRjh2?=
 =?utf-8?B?a3RiTWovbVhDbERmRlowcVNGL2JPeGc5b0xXNTFXUjN0V2VlTXNXZXUvRzJp?=
 =?utf-8?B?bk1PRUNqTTVOYzlYZjFtY1dwWGxiU2hLbFVwOFFCNmN0TFdRWXRQYWxmS2sr?=
 =?utf-8?B?bnNOQWh4TlRTWERlQTRGVXFjMmFad2UwMEY3TUYyNzErYXUxRUx3a0JiTmtx?=
 =?utf-8?B?S2Z1S2VYRmxyaGQ4aDM2bUZJOHZUZXpaQzlGSmpuQ1N0UmFpbjhXVit4RUtO?=
 =?utf-8?B?K0hVdWNody9NMVdwcUdPSzBVa0FlTDJDcVlEb1hHU1ArcW5JY2c3TTZLeDBD?=
 =?utf-8?B?THF1NDY0b2tVeFhZNXdUNFp3a0JvcHJLTis1SXQ0MG5TcGNLd2pwUytQdFB1?=
 =?utf-8?B?aVJZVDk5WVBDOHZFeFgwanFsTTVrcHJWNENzWnNNVGhUL3JCZ1ZvTkZodWR6?=
 =?utf-8?B?OEpjaW1HcytScUl2UVMyeHRXOTA2RnpubU5jSkp0YXE0QjhTNWRScVhzbGdN?=
 =?utf-8?B?RzFqVS9paU96S1haMFVKalJpY3lFVjViUE1IVmttekcrM3VBMWp6SlBGKzRW?=
 =?utf-8?B?SWprbEJqTmV4VTdmSXJNT1A2bGhxYmliMFdhRmgxQWlOREFNd1VzZ0FNTHd4?=
 =?utf-8?B?OXh3T0x1K3BKdDhBa3prKzdtdkZET1RHRW1uREpGUzRzSUM0dG9ONlZCTnN4?=
 =?utf-8?B?QlVDa3RGY0w3MmFJRUY1ck56ek9vekl4V0FuNUNzUldGZnhBa1dvQ0VWb1FP?=
 =?utf-8?B?S1FzUUlEZUtLZTVXOU1pVkhoOWR3dGZSWjZjL2N6aGZIN3ZrN1A5N25sK3V5?=
 =?utf-8?B?b0liTmd0RTZCYkRRUDRuZnNESkFoQVc1cmJ0Q0c2SE82dVlROWZnVytveHFr?=
 =?utf-8?B?OGkxVExaOGwwcVhHT0RPSVNnRGN0VjlOc2oxUmVDK3hBdm5VTnpFVFdtM2J6?=
 =?utf-8?B?WFUzOFFpRG4zUVlkUlhlNSt4WXJWNjUvdHNCd1JyYlZFdWo0NnBPN1FydlpF?=
 =?utf-8?B?Z2xVd01WU3RqTWNUWDF4WVVXbjJoak9GT1p1WDdpbWxMa2ZYamh1U09Gb3dY?=
 =?utf-8?B?dUdYS1E1c2dsRWRPTUZyV3JNTWxSVGhsVlR3TExDZ3dMSXJic1R1ajNncEJJ?=
 =?utf-8?B?MWJXaDduSlZndURxM1NLZUtadnRpNEdneWZaeUROTkVNMGxsdnExV1RpcEZo?=
 =?utf-8?B?WWpZblRrNU5aVjM0cUpRTnVoRnB0L242NkVla2p1VWRPZWljYmVIN2ZiZGpD?=
 =?utf-8?B?TGhVRmFJSkNteE5pUk4rRWMzbjBQQmtwQU5KRmwzczQ2bzJCdXQ5akF6T3ly?=
 =?utf-8?B?ZVlqMjJsN2dwM1JZTkVlSzFuekR3ZmZzOEYwM2JMTjVDOTN2VDk2a0R0a0RF?=
 =?utf-8?B?ejE3YjBIN2h4WFFRSWFCbkJ1V3daaUZDZnNzdXlKNDZKRUlSMkFuWVJpT0lU?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e6393a4-634b-451f-a821-08dc7ef98f9a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 09:35:50.2073 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Geqwc/7pchiADLV1vUPUmj95UucN7wVaTgTonZtGpvj8tYJLv6tcc5SXhu2hJGldyeO0lkoKv8o61ZzNtAJPsBuksGKHe6jEAfTQcaOOUX0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6777
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


On 5/24/2024 3:54 PM, Mitul Golani wrote:
> Add target_rr_divider to structure representing AS SDP.
> It is valid only in FAVT mode, sink device ignores the bit in AVT
> mode.


Add prefix : drm/dp, also need to send to dri-devel.

Regards,

Ankit


>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   include/drm/display/drm_dp_helper.h | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index 8bed890eec2c..393dbf8cf6ab 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -122,6 +122,7 @@ struct drm_dp_as_sdp {
>   	int target_rr;
>   	int duration_incr_ms;
>   	int duration_decr_ms;
> +	bool target_rr_divider;
>   	enum operation_mode mode;
>   };
>   
