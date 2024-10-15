Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 451E999E352
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2024 12:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E4A810E555;
	Tue, 15 Oct 2024 10:03:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSGITbs2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03A1310E555
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2024 10:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728986625; x=1760522625;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QCmqwz+KpQRh/5rUqnkPIHJuHX0z46sAvrvgG97Bqq4=;
 b=aSGITbs29lmVuqSllXoRcvHUwnkZwjlYoQ2/KzFABBez8ckwIIP8Nopt
 dawmGY2M9PHCjtIVSzOu7kbEDwvEOBU/EjGp4OuqNLYV/UuECCzQgZ46s
 VWawcaVwAE/XtMZOqXyPnwYCRXzmfuVKajsafJ7a2rY7kkimZv1EcdE6W
 tCEItlc3wfEixbeB886x+qsPzJfsS0dOdthe39zWK/x8RV8/yxvuR9YkO
 WnY0L+WgBoilWtaWxd8vp2s4NsjtFgmhpFmPg0T/Nz4kUWtIfj4NM3wCW
 qI48uPsDq9h1Qh/t/5p/YX1Zfcu3Zm1YBWD9eCYWr45xUmtcP5ZKqYzgQ A==;
X-CSE-ConnectionGUID: Y8fAQuXXSxadn04yFLpjMA==
X-CSE-MsgGUID: H4st5h7HSlO/795+lyc+Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11225"; a="27814110"
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="27814110"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2024 03:03:31 -0700
X-CSE-ConnectionGUID: 242+VGakTZuN0lpAWau9/w==
X-CSE-MsgGUID: Vgldtt5NT9CH1NWRGzE90w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,204,1725346800"; d="scan'208";a="77717796"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Oct 2024 03:03:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 03:03:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 15 Oct 2024 03:03:25 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 15 Oct 2024 03:03:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 15 Oct 2024 03:03:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x8AEAx+cE1RTFip4a1o4Uo8mQqaWHRK0jxxEEDfy4lFHfq4+thmSq6jq30pSED9lUj+3vQrhoQeaV0i3HnmHGM54ff7lyFTuufa6nyRQfa+huhpBte9m6SjfmUZpoA6oHHr8vBKoLW84cWPLKNXij8R7OM3YOEoOmm9Ry7JbINX9AKd3pROXdC3ciQngTnWX1BrDBYb+5rB66MWu49gzmKV+dXj3fqKUl5AZttKFfkbN9QGZDll7wyJ72Y+RR9W5Ue8zN5vXuauASmdT4L35NTLplRPz5lJISoNaAU5TaESVxWWOczB3M2Plz0mxtq4wynKd+wyFHy1flfDkYgTe3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KGMQ8+RM712gCRwEvC9vmp69AhYJ9G1aMX4cT08SjJU=;
 b=LpepGFnjLKdz4bpIP8XBkvY9c0hCgowkfUB2HKcHTOtRmqOX4fJdoaQ7RNd2K7iV8hx2Qkuz7s2Nl6Z/+C3tDxwuEfUFgnNukELqciPzcJFjnIuZv9s+EWz5/JRBz8q5A26jQcJclCXY6fsAm+sIAerKWBRbpE47ZbS2NqsdVma5WeNkeu8Ph5Z05Hfh5RpqIUCggeWV2Ie7IwcRr3ekblLkSo4L4YecCBy4VcSMxxAH+Bx8RfgMqM8srq+zKRFE+mK/whQcISorHfh2JkF6rdolNDMK6rTCe60aJDNBZC5Mys7ZBeTkisMkt0l9pbibY41OhSsKqHJdEhlz8cMtmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 IA1PR11MB6394.namprd11.prod.outlook.com (2603:10b6:208:3ad::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.27; Tue, 15 Oct
 2024 10:03:02 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.8048.020; Tue, 15 Oct 2024
 10:03:02 +0000
Message-ID: <f114568f-8a3a-44aa-8d32-9220e5a99a5f@intel.com>
Date: Tue, 15 Oct 2024 15:32:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-5-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241011103250.1035316-5-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::17) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|IA1PR11MB6394:EE_
X-MS-Office365-Filtering-Correlation-Id: e6f6d2da-9fad-4346-0f36-08dced008df5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a3ZKSjhENDl6SmZ1TmlhbkNrdmNoRkFIOGNCbGNHYVYrODFZK216Yng5a0lj?=
 =?utf-8?B?Uk9rQ3VuTktsUjRvVk5TUEhwQlZrK0VwQmk2M1hBeGkvbytFVGNBN21yZmJR?=
 =?utf-8?B?cGVjeE1yMWgyQXNYUUFSdFVDU0tscEVXZnRvT05yTjBvNURqMkwwRW1RbjBt?=
 =?utf-8?B?UG9yRk9TdkE0UTFjMS9jK201VEVwUjlCTU55TVlHWmt3cy9xekZXd016YTVW?=
 =?utf-8?B?SVpPL3JvSjZRSmk2dlIzckN6TXdmbXJTTzk4bURyVmdyTlVVd1d6UTZkUE5S?=
 =?utf-8?B?OVlCSWVyOWJKL0FsSXM2Ry9UNUlvZkltWGpTZE1VN1M0LzQ0VllkYTFMMUdY?=
 =?utf-8?B?Wk9SR1g2WVZxRGJlWTM3WE93cEc1WHIvbzVyb3ZTdHVkak9jcEcyK1JiR3JN?=
 =?utf-8?B?SW0yay9CRzhlUitTYnUrdUt0RU5pSllzZVF0WnVxcGE1RUE0UXhLbFNIbTlJ?=
 =?utf-8?B?Sm9ueUxMUm1hRnpubEo2UEc1Rm5EWG9IM1MrTHpJOEpyaE1wZmdWeUplTnI1?=
 =?utf-8?B?N0FNMDB4RjZDRkhjejIweEFEazR5eHRKNy9NNzd1ZVF1bFlOTVYvK2k1bWJZ?=
 =?utf-8?B?R3Q4dmpjVStuVkl4MXlIYUdJd2xYYlBTYloyVkRWSEovL1JCL3JSV3N1WnRt?=
 =?utf-8?B?SEFFT29tcHlkaWkwS0EzZVpaeDZHSFg5SDR1V1pIc0FDS0RvRjJuZ01DUEdK?=
 =?utf-8?B?WVdBMVJ3TFpYQitzdWhiYUpuOXZscVNEUy9vc0FwTXZGczJXMFNlb2NJU0kv?=
 =?utf-8?B?L1hnSHVXK3BKc3dXYlpKdU9jaDdGekRtNFV0YzFLbEE2eTZUOEp4L1BIbURO?=
 =?utf-8?B?dXBteGNlWk5VSW8wdUx5MklFVzUrTlRWUjNXb21HaGpZOU5Rb1hVUnFFTkFK?=
 =?utf-8?B?U2xoQVhveC8vU2ZyQUhQaFdIZ2t1bkRXS0xWWnpOdFc5eG0xRC93b0hhUHY1?=
 =?utf-8?B?YnoxZ1dyZHlZcEFEbExUbFpNUEUwMTZMbWtSRXJqVDRLZFl1dGJKL0hKWE5P?=
 =?utf-8?B?Y0xzTkhZY2tqV2Z2azJDMmRLNDNrY3dWNlliWXRobWx3MXNtYVgycGtNUHph?=
 =?utf-8?B?N3lIMnhNTC9ONEZBUVJsdm8wSWFCTHB4cHdlc1ZqcUwyNFFpMVYzaVNrNGlz?=
 =?utf-8?B?d0xJRjBrc2VIZHpmZXJma0N1THEvQlVad084SVlhK3FDdkQ4YmwvQjI4MkFa?=
 =?utf-8?B?T1gvaU8rMHlDUUdhMkhKNlorVU9SOHFtZlhXLzA0ZkN3dGVqaUYzSzhzbVdR?=
 =?utf-8?B?OTFucEVsbGdsYlI2SUoxWVljbHZ4WkRyNFV5RUViYjBzTFZObklGdkhteGFn?=
 =?utf-8?B?blVhU3NCdzdabkYyYzBFTnUwNEpycXhMYm1PVmtCbW81eW5NU1BsajRUMGpy?=
 =?utf-8?B?SUs4M0xiT0lDS2k1K2UwZWk0QUM1V2FHemtjYnkzOTU4Zmlsb0plSGV5dFJp?=
 =?utf-8?B?eUlPVDJjemxnNk43TWdiMUdXYlBMSHFzRFg0MkpOTDdjVjJiTlVTd2ZNd3Rz?=
 =?utf-8?B?cjZyU1hKOWROOHk1YTgrOVloUTduZmZUTlByNklwS05JdjJERUZnelROajU2?=
 =?utf-8?B?Wi9HMng4ZERNS0Q0TnN0TW9MNWpoY3NIMUlyRGJUTlkvUkJFMzR1cmxyaWdl?=
 =?utf-8?B?OGVzdmFkb01xblNzRzdCMGJnbGszKzkrVWZxRlJ4Qklvc3dOZ1B6R1YwWStp?=
 =?utf-8?B?a0pSWnpBRm14ZGVINXREMStCamo3bkpXSFVYWDUvdHFOYXJLQ1NZZXBBPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGh1Z0wzaHVzV1B5TkFxUCt2cTRsTDhoV2xTZFBVbjdiMlZxV2Q2VTJZWTRE?=
 =?utf-8?B?S1oyUUtKTjhrTlBiNWVxUEcvNjIvV2xTcWN4ZzNSMEwvRFRXSU5OYTR4Y2dV?=
 =?utf-8?B?VVRacnI1ck1EaW9WRkZDSmNTcFdRQmc5UVduTmw2Syt4MjhLa2JJSkpmRzhD?=
 =?utf-8?B?SmtaeEhQdFh3dnJHcEpPRkROTHR2UkFBUkJHaGIza3pXcXpCWkFBRXJiVnVF?=
 =?utf-8?B?NHZ6RG53S2JTVmVyYy9GZlhqZDhvUXk1RmdTNmN3YnRwNjBZbm1QUzAxeEg3?=
 =?utf-8?B?V3J2T3lCRDV6dXhMeFRqbDhBZ2F4cjJRNGFtY0lhMXAzajFBSU54bE4yY2ht?=
 =?utf-8?B?ZkxXT21rUjFvWGxDK2VzbExjdUozelY0am94eDZUT1Q2WW5nK1FPOXpuWHZS?=
 =?utf-8?B?N1haSXFiTU8zYS9ZZkZINXVFUVpYakREN3JMMXNacnhueDJLREpTeWVodVYv?=
 =?utf-8?B?YTBKVHR6UEg3TzRCcEw3L1RWN3pCdlpVYVA1NjN2a3JyNzF2V0tnMVpTT1pt?=
 =?utf-8?B?bE0vR0x6bm9uaHhOUi9nK2dKQkd5dHRMeXoxdzR4a2tidDFrY2oyR0U1d09Z?=
 =?utf-8?B?OUVnb3hKc21FMyt5VWttM09IMWRoWEI4bXVXbXFsYnBFMkdjbXhBZ2Rzdm95?=
 =?utf-8?B?SGN6ank1SmwxQXhYeEdOMHdCbGpPT1dIWmk0Qk4wVk4zVWdyTm8ySHVrckd1?=
 =?utf-8?B?bmh6Y3MxNko1SE1OMHB4TTMwT2ZNUmcya0dqVjY5cXNaYURDS3hHN3ljY3RW?=
 =?utf-8?B?WkVrbS8vaUxacTMxRWUzTXYwT0NLU0EweVliRnJEbzI3YVlRVndvMDdTUUZh?=
 =?utf-8?B?QlBETFB5V28xMlVmT0lTQmxzWkx2YlB0U2Z1S2ZqQm4rYmd3V1ZDcDBvNlJX?=
 =?utf-8?B?NE1WWlQvYzhRZGpiWENWdWNUQTFVVzlZaVdwemgycHJ4eVdNM3J5T0p1aXUv?=
 =?utf-8?B?Y3dFdTVJSkJTbVJYUDBWZWtjRGNKY1dvSG1ZZkp2cm1CRXdwNmNjWExoM2pC?=
 =?utf-8?B?UlJ6SlVqQlZkT05EVllLSitXRTRsYXBGL1luckJzcDFyc25rMFhUZ2hWYlN2?=
 =?utf-8?B?SWNzYkNmemExV1ZBYURybmtGalpVWHN0L0FockJPU0cyRHlWQ3hLeC9rNU8v?=
 =?utf-8?B?NDdYR1BndGd6U3RpZkdYRXVyMXU1azR3MW0zTTNrZzIzYXBIaUh2Z0dtaXkw?=
 =?utf-8?B?STVReXlqZnphWFpwbnZIZDZUYkVGWkdVR1dib01DL1lKRmwwelpvbC9vZHNn?=
 =?utf-8?B?dWlxdnN5TC9OQXN6ak5CbGh1OEFVYm1FUWZGOTZvT2FQMGU1QkdhQmRvNDRk?=
 =?utf-8?B?d3MwMXF0SFRaTGtPUDRMbUdJU3ljY1pWWEdXMUVkd3lldG9xZWRHaGpaNnAw?=
 =?utf-8?B?TEJjL1M1WmlGbnRRcWYxZ2o2R01DQVB0Yk5Kc3lzUkpBdlgwbnpMUHNKL1hH?=
 =?utf-8?B?Y0tocVhZd2R2OVlLOUFZNnlZaTVWeHpXRW1QUUFJMmhSYWpiRGtVN25BNSs0?=
 =?utf-8?B?bXU4bWZ1WnVWWkFuZjhrUis0ZUovT0dGMmxMMTR0emlnYzFLNWZ4ZVN0ZUww?=
 =?utf-8?B?Y1ZieXdQaHhtK2ljZUtLcnRtWXRxV1llOWdyL2JRQjlzbTZrNm54bWxwVXNH?=
 =?utf-8?B?ZFMveUQxZForU2MraE5KUzdJOEhjUzBsQlpoVEVuYkFvQ1MrV0FWNkh6d0NP?=
 =?utf-8?B?Nzk2YkpjZlBFVmZUU2FjRklWZ0JvZ2ZpNUJWWU9OcFVjeTNRMCtIdERDM0J3?=
 =?utf-8?B?QjlEeitONERKMml2SmtUNEFVS1NiOFRYb3JSQ1EwREcyTTZ0dzUrUWtnd2VI?=
 =?utf-8?B?NUZEay9LZDA5b0h1RzU2dVpKd25QSU9EOHNVRThxVjI3NUhvSVM2TW85RzZs?=
 =?utf-8?B?UmdjU3pEalZweTgzcGtGMUxGY2h1cmFlTFRCRnJvTmorSktyQXRhd096dUZs?=
 =?utf-8?B?dzQwQjhBenFSZU5TMnlVS3djRk50OEx4SGs5dW9uendsZzc2OFRqU1lVc1dD?=
 =?utf-8?B?bVhxNHRFdUU2aWE1T3FMUVBWWWp4Z2RGWVVkWWFyOWdHanRaTFpjRTdReFhW?=
 =?utf-8?B?SHNzNTNUWFZxNEZhQ212YlA0Q1hsQjNlVGtHNTIyZTRxa1NyNmhWUjBRS2N3?=
 =?utf-8?Q?l7Y5iJk0L7DAr24LOG5d4s6C+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e6f6d2da-9fad-4346-0f36-08dced008df5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2024 10:03:02.0821 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YK/7U5CvTv7H5amyLuvIeFLcW6K+yDd1hG/BpYoing6dDnRrSzH+mspTVR/C5dDrahT16tOs685dHKp6k85SyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6394
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

Hi Raag

On 10/11/2024 4:02 PM, Raag Jadav wrote:
> G8 power state entry is disabled due to a limitation on DG2, so we
> enable it from driver with Wa_14022698537. Fow now we enable it for
typo
> all DG2 devices with the exception of a few, for which, we enable
> only when paired with whitelisted CPU models.
> 
> v2: Fix Wa_ID and include it in subject (Badal)
>      Rephrase commit message (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h             |  1 +
>   2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index e539a656cfc3..bcd7630c1631 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -14,6 +14,7 @@
>   #include "intel_gt_mcr.h"
>   #include "intel_gt_print.h"
>   #include "intel_gt_regs.h"
> +#include "intel_pcode.h"
>   #include "intel_ring.h"
>   #include "intel_workarounds.h"
>   
> @@ -1770,9 +1771,26 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>   	intel_gt_mcr_unlock(gt, flags);
>   }
>   
> +/* Wa_14022698537:dg2 */
> +static void intel_enable_g8(struct intel_uncore *uncore)
> +{
> +	struct drm_i915_private *i915 = uncore->i915;
> +
> +	if (IS_DG2(i915)) {
> +		if (IS_DG2_WA(i915) && !intel_match_wa_cpu())
> +			return;
> +
> +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}
> +}
> +
>   void intel_gt_apply_workarounds(struct intel_gt *gt)
>   {
>   	wa_list_apply(&gt->wa_list);
> +
> +	/* Special case for pcode mailbox which can't be on wa_list */
> +	intel_enable_g8(gt->uncore);
>   }
>   
>   static bool wa_list_verify(struct intel_gt *gt,
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 41f4350a7c6c..e948b194550c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3568,6 +3568,7 @@
>   #define   PCODE_POWER_SETUP			0x7C
>   #define     POWER_SETUP_SUBCOMMAND_READ_I1	0x4
>   #define     POWER_SETUP_SUBCOMMAND_WRITE_I1	0x5
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
Add this below the I1 bits

Thanks,
Riana
>   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
