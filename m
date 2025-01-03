Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCEA5A00897
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:28:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D8C10E884;
	Fri,  3 Jan 2025 11:28:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fiewaDPb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDC010E884
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735903729; x=1767439729;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=okTzIAKOyxqfD/zPfyRsrz3VQaKpKTO/hapMOksyToc=;
 b=fiewaDPbvCVpmCPJOwSL3RL+desrEMu3jhHOXUYBVHmzQAEXe6N4eFVN
 rz9akwp9qSxaxogBzr00KKWMdEDjQIPXf2YafgsyNusG5fNnkL4xgKcqU
 nzWiEqR1Yzvwvo2/PNn/ii5dQ7Ye1x+czsKENjQ4PTlYnP2KblpL4pqmf
 XCwucSDfjarnxSj1IU/0M3dFt8I4kxFKLH1/eNMpE6Vq4NhjdBX995C7K
 V7Zscw2JEeYF5I5U8l3KWVwfCluAEgPnQtgLvRhokuQlJrpSvAo4Q+ywm
 I+X8UWY70klqKQ6cT2amIhbMOba3EqRiZ+CgfWImQluoeFd3sQU33JuNG w==;
X-CSE-ConnectionGUID: c3dUF3dbT4yUZ1lrpv5rQA==
X-CSE-MsgGUID: CyP2RyfKTmSWxFRL3MRdsw==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="53561901"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="53561901"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:28:49 -0800
X-CSE-ConnectionGUID: mDvEdeEwRwWyTXQZyjheOA==
X-CSE-MsgGUID: MQQC/L3mSjyZGWdr0lXb5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101639796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:28:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:28:47 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:28:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:28:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bxVEuAel3gH6uIWJ9TifBC0nwDT9ideZd60t6qr0OingrljQYFE0Iu5dwlp6bjyj8Be8VA2h+kkx78RIP88LtbtwT6PVn2gTHtksOXPU20dC2oj1SoItjkKrxwIRRUs78IxqLa5BCYX3KCspCD+d5i9IOHD7FMODc0wR9+Y4Whb8ZWJlVyFgpjUnXecNX6mvqlY17un8cZ+7wphixYUtIs1WSUEatF4NtkSTkxLXjKHiCpt5pfv6pBFz2efDyRZ22ypYGgkczD28yuLMogj2SE0oJD3OU5qjhNp9EBDHq4TXJbXRaM13bETe1Wkr03PIrp/Lq6HJSlN9zxm+CkQk7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E2f2GFVHyOguO9gzOIq1boRedfcdb81LHY6daoavidc=;
 b=gXTo3H6FAMbNrY5O8OBSHgRGqUp3OYQ3Apk+Gv5yPjjJQ6XgSQZ//Cb9Gwr1lThQklvuhCL/G8ZTaMDuSjSQXu5uDt2LTZuXHsK4jpkXjLs7OFvYFVSNtwc8+BIiqkLxcUUDfQZP75xNsco0xhUgZpznxBCwUNMCAMWWyfnUv2j8nVQz8o02qhXJVBgtGyRg4Eo0D2mkQUybWLAjwZbC5PCJLEuxAeqNLttLrsk7ZCbOpXNfjgQdtViEUJCN6r0++pqDpAgdWwGWbMQigyFtSPXghXowAa5HMFoKgVepzv0dnx66OYUmhIz3gmdveftYpADuOnI8FMm+swypKMQ0YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4698.namprd11.prod.outlook.com (2603:10b6:303:5a::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 11:28:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:28:41 +0000
Message-ID: <6e64948b-e443-4b59-89dd-fd729e59de82@intel.com>
Date: Fri, 3 Jan 2025 16:58:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/18] drm/i915: Introduce intel_vrr_{vmin,vmax}_vtotal()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-5-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2P287CA0008.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4698:EE_
X-MS-Office365-Filtering-Correlation-Id: 85f891a6-7002-4a40-905d-08dd2be9c623
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmlWMzhsZTZpTVpJZ2RZRm9SdzRpckpva000K3I3bWhoMS9pcVhJZVJpREow?=
 =?utf-8?B?c1VxL2IxS3c3d0g4T0kxTGtqdStmVTZKY3RQMjhPMEtkQnpid1g5NENzaWQ5?=
 =?utf-8?B?N3J6Q0l2Tkk0Y0FsT0MxSFYwdFowZFNic3ozM0VKamlGWDJ2NEJINVoraERO?=
 =?utf-8?B?UVdvZEV4Ym9qVkwzMXJzRkJaeFRua3lXa01QQUN4bzFtWkNSV2x0VkE3dm40?=
 =?utf-8?B?UEtpTjV2ekxzVzZBSFdtWTRpNGVwM0JOVmpFa3B4WjhpOFFsbUVyN2ZlNHlC?=
 =?utf-8?B?bjh2SGE2WnpoS2V0TGc1OHFUWlRDcnlKWnZoNHN2dnZ0SXh5Mys5WkZtZEJa?=
 =?utf-8?B?OTlxcFJDVStpOFB1M3BsT0paTkhtdFNZb1ZtZVppNlJoTCtpZm5wZUNPNHJk?=
 =?utf-8?B?dzAxbUV6eWZuc3I0OFVzZVZZZVhzVkNEZ1Y3OEQ3MStCSmsycktZekFZUTNs?=
 =?utf-8?B?bk0xWHJtODk3cE1UM3JXR2U3MER2ZmVxVVpTOUpkUzh3WXhUeHNXKzErSHBV?=
 =?utf-8?B?M3Uza3AxNEg2ZlJsOGcxY2VSc1g4dVhOUnpiWGlPSVZmWXM3M2FweXJqdWw0?=
 =?utf-8?B?RmJPTUFON3QwOFI2RjIzemhPeXFSYy9Dem9nM2pwZmk3N3VtazB0MmVqZndB?=
 =?utf-8?B?bnNLNnc5WnhRbEhjaFQ3djNhU1BJaXo3bGZWc2VKR2JJYWNHZGo2TERHOFl2?=
 =?utf-8?B?d3kwdnlSZXB0ZWlvTi82T3VodXBZdk8xaGNzQ1A4YmpDeFJwdkJab00zaGZL?=
 =?utf-8?B?WXdzdW9TZXlsOWl2VzZldjEzRUlzZXRvR3RoRWc3NzYzY1pMdE9hUGI0cDFn?=
 =?utf-8?B?VkIvRloxY3ZRVjc3eU43Q1ZHSFRGMzZzbmUvUzZCWWFBQU1KQ28xQ2lVdGZI?=
 =?utf-8?B?cG14dS93SFBIZ09XeVJYMjAwcllxNTBTQ2VsQW1NamIxQWlweWJwMHpYTWtz?=
 =?utf-8?B?RlVucCtRQnlQRFF3c21BbitOVytPcU8yZ3VBeGVIY3k2S29kd3B5elZLYVQv?=
 =?utf-8?B?WXd2SEhnN2lsaVgybUlyWFRGMXR0UlhNaTlXQ0Q4VTNUZnZEWnIwR1ZVZ0Za?=
 =?utf-8?B?MUt5a1p0Umk3TkhmTnozMHE1SHB2OTlrV2FKS1ptTkx5dDhjcFdwRWtBajEx?=
 =?utf-8?B?TUptalRGS3NsbVRyOHFPRnRUMWxOckpOM0thN0lFZWV1MklVSDhQS3BQUEdQ?=
 =?utf-8?B?TmNrUnNRNmlLRStTOGdCeTUzVXN1MUJQUmxYbWladkZOVk1aUjB1YkhIc1Nj?=
 =?utf-8?B?YUZIMGNJcWZqQ2Nnek1QWU9NZ0pnTzEwak5UUUZRWDUvWlo3a0hXR3FiQldJ?=
 =?utf-8?B?RkZIM0VIRmM3RXByM0FYendhclUwdDU2NDQyV2MrZzVHUG5HTmNkOTFMU0FU?=
 =?utf-8?B?OC9VU092Q21RYjZENTljTmxrMVZUNW8xUUNLMGoxeE44NG5QQXQwcjM3T0kz?=
 =?utf-8?B?eUJ4bkpSNG43UzMzU2hyUHlLci9vdHBIeTRHR2hsTXVPOHpSYVFYRUJreGdr?=
 =?utf-8?B?ZnVPTDVzZzIvalZ0c2hXTS9ITVdZNStkRFBtOTZNZE5aeVBWZHdBUmJpQVRN?=
 =?utf-8?B?M24wemppYkFndGRTaUxkcDMrcllIZWJhYVZvOTdtT08yL1lqMWc3NlNrQkxq?=
 =?utf-8?B?dVhDaFFKNlpFL3ZDb0lUQ2ZvRURWRjBlZFBMY0JlbkZVL3k0dlUzbXVOTjNP?=
 =?utf-8?B?bFNVT2wyRnJVSUF2YkRkWnpIblpnQzJZVXFnTUtINFNmcVg5ZVY3WU5JNGZ3?=
 =?utf-8?B?OWh3eFlaa3A2Q3B1dTczOGNrbmgwNnFKbzZQMTYva0c3K0hNcUptckZ0WDlG?=
 =?utf-8?B?VW04MUxiMFdOQTlLd213OHpTQ044elc4dlNFNXpudkEyRXBlYlcyZmJYUDRu?=
 =?utf-8?Q?al++R+pOM435P?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlArdlMxbTBNck1DSkZyVnZ6dmVOZWxPWEJnWHI0THRrenJIV0xMNjlRb3By?=
 =?utf-8?B?Q2VJWWovbVJKaXlHUnNiRkJKUlgzZVIrZ0ZlZEhtbVJxN2ZURHpsUG9uak5h?=
 =?utf-8?B?WjEvcWhLNkFMbUhvY05hQWIzbTJCb3BOeWh4STRBVTJlSVZHaEJ3WjUzc0lY?=
 =?utf-8?B?NjVuNExzNnViL2tiRDJyek5RaVVLck9GSmtyOVB3OXVOT3B5ZWlLR0dsMVk1?=
 =?utf-8?B?T1N6NzlERnoyVXdJL0JHd1BYQVpkbVE3c3F4WUEzZjY5VWhhenp0REtmaWxR?=
 =?utf-8?B?VThKRmZ3Yy82bjQ4bSsrT0llTFhCQU0ySXJkUzdlRGtXcml0N2lWTVpFbm9D?=
 =?utf-8?B?SEREWmZ4MWpjRlJBWTd4SlNFeFJxSjQ0ZkwvSnU2eEt1d1c1Z2I4dGZjWXBz?=
 =?utf-8?B?bFpvR3ZIUkVoRGJNU01yQmJvM2xkL2lldWluUjRtZ0tyRVpCMVJyWG1DL3hH?=
 =?utf-8?B?cHlzNWZjdzJCNUg2WW4zRFR5REJMbU1HbW1tc09qN3NBVkJUYUlaekYrUVJa?=
 =?utf-8?B?dXZyeGdZU05NNGdQMG1LMERUUnpyc3lhYTJ3Vk53OWxMZXRBYitXOTNUcDJs?=
 =?utf-8?B?U0dvckFjbUpZSmtRek1pQmc4R3JYeDE5SXVMZ3VBUzFmOHVGVGVER3BtK1ZU?=
 =?utf-8?B?dWR0SVZLNFBFRjBzeGtsOVhZcnM2VTJrbWIzcWF5dDFaU2pDcTBqMEhNZVVC?=
 =?utf-8?B?YzRLcHF1bkMzS1hOUkRXWjg5eDV2M0s5ZDNHTmM1Z0JXcHdKaUIyblhBbG4z?=
 =?utf-8?B?WnlQSDJ1eDQzNlUwcUVJb3YwTXljSVpFbEFUajR0Vjl0YTgreVFmWnVHb2I1?=
 =?utf-8?B?blRGOEYzTzBETWZLYW5JL2hqb1ZDYnFoYWtobFU3ak00V290aExvYmZUa3FY?=
 =?utf-8?B?U3Jwd1ZLajNiT1kwZGJyek9ZSEhDS3VZdzIwOThmdXpNcFFER0FRNVlEa29M?=
 =?utf-8?B?V1JHeTdoTU04dWNoS2J1bGpYK3lacEZMam9qQU1JYUdGZHNkOC9WVlpQck5n?=
 =?utf-8?B?Yno3ZHpxOGVmYkN2UEZDOG5ZazFwL1NXZkFWNk5QRzRBYUhNRlFqOHNSamZx?=
 =?utf-8?B?UmtIZ1BjR2tQZlpmNTFydXZBOG5NN3laT0d0OHVhQ0JhMnRUS1k4WitqNEpV?=
 =?utf-8?B?Z1NMMUptSGdQSlN4RENEbm5sc1F1bmQreTRRcElLT2dSdmhOMGpvRXB6d2Ju?=
 =?utf-8?B?eTBPYm5DdTdLWTlObExmNFdpNnJhdFpKVERpU0RLT3dSNEFUQ1czc0xpd0dR?=
 =?utf-8?B?S0V6T0c4djIxV2Y0bDN3THlXZFpFUWFudXk5SzBtVHhWSE9pb21NbDBWeDVM?=
 =?utf-8?B?ZkpnL3ZPaWNhckxyQlBQMG01bXRVT3pWMjZCWmwxUUpZb3BGYlVkMmVwV1NN?=
 =?utf-8?B?VUxlQ0hONGREcU9mWW9yVWNXUnZ4OHVyNDcxOG8yNzFDYnNweng3MDUxazJu?=
 =?utf-8?B?WHZWdWplem0rOUYrQzhkZTEycUZiaFdlL040bmRPcExxVjRkcGtuaUU3bkVJ?=
 =?utf-8?B?R0xCQmh2R3p6ditYUlcwSWNOM3NGb3VuVi91MGg1OFlyK1Q1eFJtVENLZTha?=
 =?utf-8?B?QWVINTFVVUFQTUE4Smw2azNWMmdrcEUxdEZqRlYrak9zd3JnNUpPK05aNjRD?=
 =?utf-8?B?dVpxSDBCNmlXN3J4dDdiM2YxWmNYTTJoZzlyMThaVjljM0liN1B4NHB6bUZi?=
 =?utf-8?B?cU5ibGQ0aXdLTXlmQ2dxV1BuZGsxbm9FVDBBWit5RnhKY0hRQWl0Sm5HZklh?=
 =?utf-8?B?bkdUQ0t6SlBCTS9GWG5MWGVKaGhSQmRKVGtEeXJXMVRocjEzdXg3TEptVTZC?=
 =?utf-8?B?NjNjektuZXFkY0g2alZGWis5NFQ5SW1EYVNqU0hKZXNvSXpYUjg0Tk9KVlhp?=
 =?utf-8?B?MzdTa1NNN3VLRGJXKzRSYm1XM2t5RDg3dHV2Y2VNTXpQV24xUTE4M3FwSGZi?=
 =?utf-8?B?ZituT1Zra2Z2ekxtVmhxZFRobWVEVVVxcndkOS9ubDBINWRtMVRPVWl6TUlQ?=
 =?utf-8?B?WElLNzBhb0xNOUdDYUNUZ1htQVdjdkpXYXNHVEJXcDVYWkQxVERHTjlhMlRl?=
 =?utf-8?B?UXVTSWgrSEUyR3M2bkRUU0RQaHFkQmtMMFBtSEhBOU1PQnk1ZTlKWmhyV0N0?=
 =?utf-8?B?QzM5UlVhaGF3TCttVFBUYjQzSFE0d09aUTkydGhNUFZwU0NHTjhvZE0wTHdh?=
 =?utf-8?B?REE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85f891a6-7002-4a40-905d-08dd2be9c623
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:28:41.1628 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RhArbjtPOLZQSZiiFqvpzryd0NfC5O/lmwTOi6Q0kOGX9AVhZ83+NbS/u2027JZS2GbqtKBr3OGisUC1DBlWOhOZgh0yrPrLsUZEon4ZFbU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4698
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> On ICL/TGL vmin/vmax/flipline won't actually match the
> vtotal valeues (currently they do, but that is wrong and

typo: values


> needs to be fixed). Add a few helpers that will compute the
> actual vtotal values for us.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c    |  2 +-
>   drivers/gpu/drm/i915/display/intel_vblank.c |  4 ++--
>   drivers/gpu/drm/i915/display/intel_vrr.c    | 11 +++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 ++
>   4 files changed, 16 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index e6f8fc743fb4..fcb8bf9cb313 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -140,7 +140,7 @@ static int dsb_vtotal(struct intel_atomic_state *state,
>   	const struct intel_crtc_state *crtc_state = pre_commit_crtc_state(state, crtc);
>   
>   	if (pre_commit_is_vrr_active(state, crtc))
> -		return crtc_state->vrr.vmax;
> +		return intel_vrr_vmax_vtotal(crtc_state);
>   	else
>   		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index a95fb3349eba..6f0e0c64187d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -523,8 +523,8 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
>   		drm_WARN_ON(display->drm,
>   			    (mode_flags & I915_MODE_FLAG_VRR) == 0);
>   
> -		adjusted_mode.crtc_vtotal = crtc_state->vrr.vmax;
> -		adjusted_mode.crtc_vblank_end = crtc_state->vrr.vmax;
> +		adjusted_mode.crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
> +		adjusted_mode.crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
>   		adjusted_mode.crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
>   		vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
>   	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 1b0a8e001141..0d40402fe043 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -103,6 +103,17 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
>   }
>   
> +int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	/* Min vblank actually determined by flipline that is always >=vmin+1 */
> +	return crtc_state->vrr.vmin + 1;
> +}
> +
> +int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->vrr.vmax;
> +}
> +
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
>   	/* Min vblank actually determined by flipline that is always >=vmin+1 */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index b3b45c675020..75db88ae9cc4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -26,6 +26,8 @@ void intel_vrr_send_push(const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
> +int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>   
