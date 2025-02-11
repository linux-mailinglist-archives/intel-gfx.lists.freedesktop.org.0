Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8951EA30690
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 10:02:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4EDB10E44D;
	Tue, 11 Feb 2025 09:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ODbiJZ6D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB8A410E44D;
 Tue, 11 Feb 2025 09:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739264525; x=1770800525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lpy8KJ/tWJ9L0qC+ivZocJ31bpq0QaO9veBdtG1yURc=;
 b=ODbiJZ6Db2wO5AwLP9o15D1HGDlNsHiTENpeMX1Bcdabh9Z0+4WnW7oT
 sqAOnRrruLHSVsxR2cUGBmkBb0MOoIWCQYJyGA6srw/2zS4zt2dBngiio
 /poYRxkWgWFlBvisIJpVSEkpbW+TM/9t4e78GIctgP2vqOBJ+cVMqiL9U
 l0FynKf8AIUoiboHVLeXbbFO84mXgxumGgIlEhsZxNIfPopQLK70u9+Zs
 nIGZidVkCtkPxgG/hSmrv3Z3gGlFMOrH72nTDeJcruojsmL1Vif939nN1
 rT4GCTKJw4SDGEfP6cAT9h19PkZuIZ6g3PavWXmsCUe1PyhkcLt5/lGbk g==;
X-CSE-ConnectionGUID: f9Q1cRdeRVChWnlfpM6LRg==
X-CSE-MsgGUID: lyARjZ1eQ6GpLeHDHKxiGA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="40141948"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="40141948"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 01:02:04 -0800
X-CSE-ConnectionGUID: 0lEt9O5CQTeYS4mF0OxpdA==
X-CSE-MsgGUID: 6ALNlTSNRrK+3wSnN3ocdg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="112915359"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Feb 2025 01:02:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 11 Feb 2025 01:02:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 11 Feb 2025 01:02:03 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 11 Feb 2025 01:02:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JR9W1lKhzfYJZCmqM0z2fB0XXMH6POFgIUhL/OI5FIPALfaOrFAiigPa7ChQlxPbd7Exo9RMOKZACR03xP7bcJvrVw3NbaPwLCcRpnuHp0XFw2z5NpUFsaPgUXC8xJ/vF59Th0t8K50wR7gqbOhTUaiEFoyEPNrT7HJA9JzUEc574ZTuSn1tiCABIO/KFSgCycsKf0/jzTo1AbBPyUa2dRcy1L10bhupdLxztdgeIB6z0LJjLWycwS2Xuldr0bjM6kggq9Zz8iS6gRC/tZ0Dht0UdLe58h+clXy0doObBlpb4E50Fq6fWNuj24GDCwrDYyPo8p1+snx3Hy+aWB2g2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RQvNw4jHgO4pfYzuWmW1IKvVTSCXaLjrC7fs45Pq48o=;
 b=w6uT1ICKY+z7fQIBhJKQrgPny5KgZvRlCx0CCoVjzZoKxXIyvbPnf93+tI0dVpW0QGgB2OgVgKJrUn19RboMqHdUxEizbyzuQM8GkQsfTf7f2YoeRpK81VJ4wilPst81OcqKnTZ1vghQf1G7AKGEY+QEzF/eAKWv3mCOzjqU83Cri1p+iGBkr6gNUS2OQLQBf1IJLSRup4Gz9hw+26+s3v0NRzRfGsbaFYqrqnXcvoAnxyzr4qhqfikTGyAs/ilfnIknfGKjcJdUEe8+hPIvk46jB1pZK5IAZMzRde86mEIfGVFgwauE0HtEJCJNNY5KNgDtMP+Aoe6Zi7ShKScbIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Tue, 11 Feb
 2025 09:02:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 09:02:00 +0000
Message-ID: <ab41a4ef-91fc-4eb9-9a60-018e6aaf957a@intel.com>
Date: Tue, 11 Feb 2025 14:31:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] drm/i915/vrr: Don't send push for legacy cursor
 updates
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
 <20250207223159.14132-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250207223159.14132-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8787:EE_
X-MS-Office365-Filtering-Correlation-Id: 503b7b63-626b-4411-2aa2-08dd4a7abeb2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TjVVeVUxOXAwcnYwd0hjWnR5ZWhYRW11VWdyejh3NHBwb3VUZmhYL2NDUTVY?=
 =?utf-8?B?UjBkbmNkZk9GUW40VHlwdDV4TWFmbmVJUFNzUzNHc2w4K2NJcWFJb1YweXpl?=
 =?utf-8?B?WWcrZCs4Yi80V0p6VElCRkxPNi9DMWtLbE96QUovNER0M1JJbE15NUI2YXdE?=
 =?utf-8?B?Mk5NN2NQY2puMEVMTTBEclo2WDlCNVowMkZOa1RmTEIzSzN1T2JwMEkzbDlI?=
 =?utf-8?B?Ly9KcUJMWEZVSlQrZDh1WmNmQ2ptUVcwSFQ2RFBTa1hBWkN0WFB4TXRzSE5S?=
 =?utf-8?B?a1YzVXgzMGN3WlRwTXB3RHpGbDdJZzNvQUF3dVFzRFZDZVVTVWxPR1J4S0xE?=
 =?utf-8?B?a0M4VFV1VUxBbWJ1TERDNnhHaVl1WGFab1JxaU51NHFwQ3VXNWRsZWROc2Qx?=
 =?utf-8?B?OTFObEZSb2JzbEQ5SGU3dlBVcGlTM2ROcEtCMVpUK1hFSUpaMGRRQi9uVDFI?=
 =?utf-8?B?TitkZ0NSdUppZVdUUjNva1ZHZmorQXZGd3RzVlp1MHNUV2JUWjlCV2tYYS9s?=
 =?utf-8?B?UHZPYytzb1NqZlJwQmNDUHJ5Qy9UWUtWSWdwVy9BelIxL2FVUDJnc01IdEpz?=
 =?utf-8?B?N3FxbEcyMEZDaUw0NVRLYTNLcTVieHhaWU4zMmVOUUREVm9qWklVWjZBVDhQ?=
 =?utf-8?B?dysxeG41d2pSSEcrOXJRU3VuZnZ1UkZ4N3J3WWNVdzhRbGdTR3MwTnVlWFNx?=
 =?utf-8?B?VTg2TlZuUFk2bi9oQ2V2WTdsenk2MjVicHpEd2lWS3hUSDRvK3hnZTdTWFIv?=
 =?utf-8?B?WjNXSEVGcENLRE9FLzZUdlFCQUlhem1rMXgrMUpFd3h1QnNHaFFONjBBSmJx?=
 =?utf-8?B?V3lBV3VUSUVRTENsVGE1S2xaNit0M3ZKUlQ1Y2dMUERldEhRRmJ3M3dqcTZ1?=
 =?utf-8?B?b1NGcDJzbVhGVVlnU3lnaE1DUDFDbldUUEw2bWpTY0M4R2x2Umw2amJmTFlj?=
 =?utf-8?B?bTJTaThiZFZSSCtVRkw1b2J6T0tnZEhQdmZ4Nk1hWWFEc1diSXpMZDZubmc4?=
 =?utf-8?B?TXVyRytaV1ZabkQvS2gwM0xXT2lKNEJlWldMVlR6OVBmZ1NkbEtNb3FNR2tw?=
 =?utf-8?B?T01JVWU3MGp1TE1pUUw4YkZ4ZjlqQ0lFUlRkU0N3WE9wWUxSaWcramYyZDVu?=
 =?utf-8?B?YW41SnYyMHRoN1F3YUNWbHVWczJDU1hINEpvU09LWTAvRWU1a1c1dVREcVds?=
 =?utf-8?B?NmRDSW5iS1VTTkxYRVU0ZU5rbmlyMzdKcG5HM2lPeE9xTWQ0cFNSb1ZBZXZ1?=
 =?utf-8?B?ZFRYSU01Q2JJckNNZCtVNWdBVDFxRXF3bC95bDhsemt5cnl0WE9wdmI0Qnlh?=
 =?utf-8?B?dm05WFkwVVpvajg2ai9HZWQ0Y3B5QjVLR2lyWVhsT2U5RWpObFBwbkw3Vkov?=
 =?utf-8?B?c0J3eWJFeVZnTUFIUTBWaU4zNlR5QVpsL3JuT00wNHpmMmx1UkFST1VFdkNT?=
 =?utf-8?B?OHYzcmNWTXY2YnEzc3VEcXE2V2E3OEwxcDRpNXJXWGRZc3dZbkZtK2FEZE9l?=
 =?utf-8?B?T1c4ZVpxMUNud05QNVRZUFhMdXVJaTJxb3IrNzU5QVlJME84VHViVXNUWTdW?=
 =?utf-8?B?NlpyUmNtK0l3RjFaWjRHaGU5dnBJcWc4TFBGVUNlY25Ia3c4R1JqK0lJT1JV?=
 =?utf-8?B?Y3p4OU8wN3BwMkFkQWJBQ3FwK010OTlzSkQyQjhWZ3ZYSUtiNGc3azcxUFBi?=
 =?utf-8?B?Y0M0U0ZOaTQxUEtWS1kwbkFqbUhoOEUxeTBRMXk3ZDNlbmJUY0VQOWxmSCtm?=
 =?utf-8?B?WVNRY25TTWx0cDBXbEI4ZE1JVzB0S245ZVJKbHhjS3YrNmErNTY1UWdUemhy?=
 =?utf-8?B?MitmL25qS1Naeno0VkNmTERwLzU1OGlodFFxbUd3TGRnUGl3VVJRN2Nqa0hH?=
 =?utf-8?Q?uqr/v2lw1cHSz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dS9lWDlFbTRXdndiOVlhTm9qR09QZEpSczJlZGwvT2J3eXZuWCt6UmNYekpH?=
 =?utf-8?B?WFhzVVNQTG1rVlpndGVTVURUTktSZ3ZDclJoZEZjQmxPeTFwMEUzRWFQUjRp?=
 =?utf-8?B?Q2d4MGZsOEhxR1dmWnlhVU5kSExrTnRXaDNZN3hPbkRaWGptZmVUM0h2Njd4?=
 =?utf-8?B?WXNLZnZZbkFhSzg3WDh6am5iWnNmM1VONTRHRmRFb2kxTnZtSFFOeWs2cm5B?=
 =?utf-8?B?NmVPdVBhck5SQTczL08yY2Y0aFdCMUthM0oyYTZIZzVmOHJKdjRvWlo1Y0ZV?=
 =?utf-8?B?a3BDcDhhYys1MGpDZ09wRjdDUUc1RitEUUw3cng0OFFRTWY3dVA4WnJHOW56?=
 =?utf-8?B?R0ROMVRJaGd1RnM1Z0RGSVgwUWNneStBMXpOcnB1Wkt2UFF6bHovb1RvUXc4?=
 =?utf-8?B?Zmp6K3FoUktKZlMxMXFqV2ljOUdET05Yb3hhd1E2NldoOG4xNUdFbHVJM2k1?=
 =?utf-8?B?eFFXbkkvUHdLMmUvMEsxd1o1aXBleHp6YU9yNlpwRzNkTUxuS2M4UlR6OW9x?=
 =?utf-8?B?S0VIMmxFS29XVkpxQUE2dXFDSndkV1cwZE9ZSkFPMEhQR0h4V0hlbUdhVzdY?=
 =?utf-8?B?cTRJMHNhNmZ3R01yUndZZy9lTHRCSXFyNDA1bHRWc1MrQVRqWnRmU2xsQmlx?=
 =?utf-8?B?UGhUdXVYaUxWMWZrUVdLcHlLVnU5VzM3TTFRQVdRVU1qYWhQNlVkY3dlcGds?=
 =?utf-8?B?b3lqQnZtTXE2cWlnaHB1WjZ0QjBtWlB3TTRYeitUQUdYeTF0UGdnclNKaXI4?=
 =?utf-8?B?U0hJcGRnMTRWOTc1c21pSVR4SDU1Y25PZmh3dEFqTTVoM2YrRXZrWE44YU5z?=
 =?utf-8?B?MEtTL1hpb1BIR3NzTTBOVHdWcFZoTE1RenZGbjBrZWo5dm0xeENSd2FUWHc0?=
 =?utf-8?B?T25rMEpoWk1zcERINGxwV3Z0OCtwaHpwNkZFK3gzZTJnVStvVUdiZUdwRW93?=
 =?utf-8?B?dHA3ajduazd3alRLTWNYK1dMd0c5dG9NY0gvaVgwZWcrUk5sWE5nL012ZFF5?=
 =?utf-8?B?N2xUMkJzYWxqd3lzL1lHazJoQWlWck15QWt3Q0Y0ZGlmMUlDcTJHb0Q5NUVN?=
 =?utf-8?B?eGNBQnlJN3pNSi9DWG41K29SM0tUMmNhWWR3eEdab1U1UWQvQW1yUTdGZ3JY?=
 =?utf-8?B?ZnEwem1ZbDBxVmtSR1puWTB4OUsvU0JMVzdXbTdtKzlTeDNKZ21ocDA5UWxj?=
 =?utf-8?B?bStrUEJQUmNObEppYVRNOE9KNWZWREhrZzZoOUJEbkxOT0RubDhVRzF5aE0y?=
 =?utf-8?B?YVJjc0JUR3p6WGZUM3pOZUFKT0hiUkRZcmFxZFpIRUY2RkxyYjI1Sm1hK1gw?=
 =?utf-8?B?d0tJeGxiT2FnRStGZTkrZVNQa3p4c2JOS3RQTmh1VFdudWhYZ2xIZ2lpalN1?=
 =?utf-8?B?Rm9oRzBSamVoWWhZK0tDSzdTMzBOUVhLRTIycE9MK1dUT2xUalJab3pGcXh0?=
 =?utf-8?B?eCtNbmxIOFZULzJhTGVvaDN1czVkVWJEUEJyd0ZjL1FLdDl4cWlmc1huZVND?=
 =?utf-8?B?SEVMZGx5UkY4ODZJVTVQM2VhUlFUUGU3MmF3bEV1ZkhUZmZvUWJXT1hHWmpm?=
 =?utf-8?B?cUhCemZOdm03RkdMNHVURXhWWlh1YXlDeEpwY1l5MWpRemNwUUJlSmE4THlU?=
 =?utf-8?B?TDZRaWxCbWRPRlViR0ZhTHZLNWs2S3llcXhicFJBckplajh6WnZCUWlmeUxp?=
 =?utf-8?B?TzMzOERCdHVKOUZSOXdaWG9EU1doQjMxckliSkJvdjR5RHRZOEhmQ2ZsSHFE?=
 =?utf-8?B?VjYyTHFJcitMcmRRK0xzbnUzYVA5MzdDa0JVQVY0WGMzbHZKTVpZNjBwOWp0?=
 =?utf-8?B?ZS9oZ2JWTmthUzBIQnFmeU9VM3hvZnU1TVk0dE1wTHkyVVAvLyt0a3p5YTYv?=
 =?utf-8?B?UWZoT0Y5b3Z2N2JGcXlJMHJQZEY3cVNDL2dHTUNiUGpwakR2YmxRYlQ5UmZN?=
 =?utf-8?B?aiswWkdRekc2aVE3L1B4T1Fyd2s0eXlvL0RwVFpvdUJ0U0JuUVIvelAyZDVy?=
 =?utf-8?B?UUJ6S2pnQ3dkYTNTTG9rR2swZld3OXZMUmswOFByMmZFSkdoUnpzMDJzZjFX?=
 =?utf-8?B?aXFsSDNjcTJCMDNJNDhWcE9KQW5La3pjNzJuNHhEQ0c2RTNQT3FHMDdRbkhQ?=
 =?utf-8?B?NVZBSzZXZUxyTzBOdXFZQ1BkZGRzVzE1NkVFNEU3UEpxcE5JT21SUlh4RlM3?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 503b7b63-626b-4411-2aa2-08dd4a7abeb2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 09:02:00.5839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JTyraHiYnIzND8fBQr1fpc7U7ta5P/EunMm7JQbPOY3UvEdeTUj6XmkScxvPUjt3Uqw0i3tlgqyowh/lJiRs7CcBb0Mt4JyZJRtrqF3p4oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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


On 2/8/2025 4:01 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> We don't really want legacy cursor updates to trigger
> VRR pushes because these can happen willy nilly and we
> generally want more precise control over the pushes.
> The fastpath in intel_legacy_cursor_update() doesn't
> send pushes, but if we punt to the full commit path
> (with the flip completion short circuited) we are currently
> sending pushes. Skip those as well so that they don't
> interfere with the push handling from normal commits.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
> index e69b28779ac5..8fa3e64d4d52 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -714,7 +714,8 @@ void intel_pipe_update_end(struct intel_atomic_state *state,
>   	 * which would cause the next frame to terminate already at vmin
>   	 * vblank start instead of vmax vblank start.
>   	 */
> -	intel_vrr_send_push(NULL, new_crtc_state);
> +	if (!state->base.legacy_cursor_update)
> +		intel_vrr_send_push(NULL, new_crtc_state);
>   
>   	local_irq_enable();
>   
