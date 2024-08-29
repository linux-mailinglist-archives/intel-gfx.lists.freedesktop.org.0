Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A53409647F0
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 16:20:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CA3710E6B9;
	Thu, 29 Aug 2024 14:20:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZkzwmkLQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7F810E6B8;
 Thu, 29 Aug 2024 14:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724941207; x=1756477207;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k6gpr9+VekM0oOrMJTej1ulwjANzXhFpY8e95BDkM7U=;
 b=ZkzwmkLQNH80cVjKPrbh+1pLeuI7GN1vBQwl/KvusFMxJ4AYQBTOX2Ab
 1bPE7VvdY1+kTGm6fyBN2fnIzuUqhUFIX82w2SbEwOmlt+SpzzgAbebjP
 WTrisVNtJlbEpElKKt12BylF7hhzqLHJeb1OZ1Tifv+OKjaXnmVJR4B10
 M0M3BvZ3Pm1klIVmJFNX+TEyuqa8o6Loye6SywEhKmTKIU+c/BmKwnTE5
 tva8StkHiv5znmRg00BwaS/2aDkBEpIrMQOt5I7Wg0aXyR/+pITWQbFSS
 SJ/d0biPkq/Ih1A1nL00yHQvBlu/cpAlNP+uOSpw+nx7XCamu0RKTu6s8 A==;
X-CSE-ConnectionGUID: wTv9MD9aTeys1mqiKCUuYA==
X-CSE-MsgGUID: lUi82ucsRDKHrFimQla/Lg==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="34192377"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34192377"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 07:19:59 -0700
X-CSE-ConnectionGUID: Cr0uZQQhRda5lfjj0gOVPQ==
X-CSE-MsgGUID: +P+nD5IhQ2OcSXB5pziLhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63650092"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Aug 2024 07:19:58 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:19:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 29 Aug 2024 07:19:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 29 Aug 2024 07:19:57 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 29 Aug 2024 07:19:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SiEZtr7JaCAndJL+I6rd+fh6vusxu2jb3ArfwyyLNxKi00+pcUYgbDPYjqcQ6WGp3P3xK3nQ0s2DMAFRGVmppu3PkMOKP43OdrmgdM9ujQQWjMdwrbBrgNi3nuPdJeHue6bqE1ZfeG38B/WjHug6Yfq4uzziAGpB+Do52B3UGITgIYQvaN+yJfBcwRWYaSgUhFkDhJ8iXoMdDykTTOFtZetbfAkNcdn5zIyN9Fh3DSmYanEd2x8ICxCNCuXmNMb3GoFqVaasJBR/kAAkx59T/ryZSjDEi+7kea7OmFtF/gHg4+9QjBHwN9SxLiubXBaZ1Y7u9bQbJJlEjznDsnCT6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6yShMAon/uXj+MTxsqNxB41KN0rG2+0CBZhqHY1uQ6w=;
 b=BmeQGU17mGA2fh2qIuC0C28HXK/ERJPw5Uhs6FKToM0yipHL1eDyx2TKe64okJjIFKyIUzbrSwkDGbc70L9BCu5ZtMUxeg30rdbobZQFm06zpXb5jVQOcXKkajSdraYfVjec3yZhJzXqAmYz21gJGDLEQ5msSec4nqOtQIpjX7bORor3/pP49A05ou916Cjzpg+BpZUdu3F9fTqn2QAwkiS72XKiQqMIZ1U4yeXA0M0HzYhc1gqihmlik81fC0RNMXzF8vIQZLNHcIBH4iPqnJ/W+Bd+x7GV2Pxi+sz31fQFcTGCbceMZidl7DELhB0kDIF6IX9RUvKlV4AC71GdZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.28; Thu, 29 Aug
 2024 14:19:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7918.019; Thu, 29 Aug 2024
 14:19:54 +0000
Message-ID: <09c8de69-78c4-470a-a948-8879e9eeb2be@intel.com>
Date: Thu, 29 Aug 2024 19:49:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/12] drm/i915/vdsc: Rename helper to check if the pipe
 supports dsc
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240826111527.1113622-1-ankit.k.nautiyal@intel.com>
 <20240826111527.1113622-6-ankit.k.nautiyal@intel.com>
 <87frqr1mo4.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87frqr1mo4.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: f0e9ed70-7293-47e9-622a-08dcc835a6fc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUpJMVlWaVdnNEVBbnpLajRSRGtrMDFpZlhrK1dKcWpYdHdSL011S2tUTC9k?=
 =?utf-8?B?a0dVTURzZnc0ZTVnUktHUGVWR3l5M0lSZFhKMVJaOGNyMWpxcis2Nnp6SmJG?=
 =?utf-8?B?V1hscnBTZHRpYkZrRllaZzN2WFdEekxHcFp4NlVqbENnTjUranNxZCt0MmJO?=
 =?utf-8?B?UWtlQWxKbDJqc0VBSjdtbkZGVWQ5dTA0ZXZ6OUJ2Skk4ZTNPTS9xOTY1LzJB?=
 =?utf-8?B?dWtwRUZwQkxYRUVONk51TGxMY3lIQU5WTC8wd0FmdFBuZXB6TVNOWkdCbTNu?=
 =?utf-8?B?bnNDY0ZQOGx6NzFzL21zaU0xZ2pBcGpDY0F1aGhoS0FSUlAvNXlteHNJaTQ1?=
 =?utf-8?B?WWMwMDQ5UFpSOUltMkhiYk0wU2c3WVJSamFYb0N0OUdReHBOU2EwY3pBZjEr?=
 =?utf-8?B?cVloQzNINnRpSWVYdXlUT2tXWVBvZm5KOXNiOWNCaVBFRGRtSGQ3dDkwbXIz?=
 =?utf-8?B?L3ZvWkdTTjYyUXpkUWxkWk4xUkJsZ2FML2VabnNiZm5Cb0dpcUVFcWJYajZH?=
 =?utf-8?B?WGFBYTdqQ0RuWjRkVzlWd29WbVhROVNCN09BOU9tNHlSTEJkNlQ2cU9pY2p0?=
 =?utf-8?B?UkNSck1ibU1pb1M4ellTNk1qYlhoOGRjdmNUaGF4SEZnUG5WVjBBaHZETXhK?=
 =?utf-8?B?MTU4RHZYNURJY1NxOVAvK0ZnQndSVVdZdHRiamtKVHVtL1BZM1ZFT2x4NnJC?=
 =?utf-8?B?VDRWNGNnRW9aVkIyR2FPMk5CUzdnQVdPWUNkSVNBMW84Q2h5ZFpNSy8rTmV6?=
 =?utf-8?B?WGRmTmVWaFdIdlNrQ2ZWd0NwRDhmUFFyaXNkOE9YYmJRZk53RnlKNWxXRTBI?=
 =?utf-8?B?bjRUelQ3eHFtUDlKUm9JSjdrMnFRQmJvaEcxanNJWHRhQ2owQjdReUJ1V3V3?=
 =?utf-8?B?cXlaR05JcmdKSmx2ZGVDY1NwLzMyckhmMk9vYVVFNVJKM0tQblRYREtyd0tq?=
 =?utf-8?B?Q093Q0hjbkpWT0ZFRGc1Nk1YekZzSVZUdG5vTzdZbk4yd2V2eCtuOVBoY1hC?=
 =?utf-8?B?OTdmemxiM0VBQS9DdGwvZFo0eG9OTXBOUmRNaVdOd3lJYmM5WVRKSmVrdERy?=
 =?utf-8?B?enB6TkNoZFlzL1I5ZmptUWloY3B3NTdBemlJcjhCUjJjQkNvbzNZVWRTTk5V?=
 =?utf-8?B?UE15a1lmWW9uZ0dDaTVjd01hRzBEYnFldzk3Yk92QmkyUEMxcnV4MytaTlp3?=
 =?utf-8?B?V0FMQkNacU1HTUJEdWp0dER0UUNXZENHZlhqRWFQQVoyRm9iNU9kRVZSWXhk?=
 =?utf-8?B?bGVINHcwNk5paHFqTVBib2V3VWNrNkoyTTFMb1Z1QmJXd3l6czNYWUtlZU10?=
 =?utf-8?B?VFFSd2J1S1NYTUh3OEFOcHFwcWR1SnErNVI3ZzVpQ1JyMm43ekIwbWdrSHhu?=
 =?utf-8?B?ZFd3SlJNbTRhSVRCckMwaDVWM3dwZjEwYk45WE9IaHBJbWNtMll3bEl2d0tF?=
 =?utf-8?B?NnFlM2o2NGlFMmpJbm5mZVBWOEM5dVhVUS91dUZEaWxGVGFabkRrT1RPbzdr?=
 =?utf-8?B?eFBqWUpwQlh0Lzk0K05hTXlJM2NGS2c1K2NjbWtkczA0UmVwRUhCTVMvd3ZF?=
 =?utf-8?B?dXhXVi9tcUxCdTZyeWlKN1lsWkkxalNzcHowRUlZdlN3ZGNEaURJdzJ4Rnkv?=
 =?utf-8?B?UFRRUVUxNE1HOWJPaC9RQTFtUHpDTnV5VFNKUUI1Yi82Y2lPZkxNdmhQNFpJ?=
 =?utf-8?B?SndqTFgzVjNhSTVNaUtWZDFCRForeGhwdTcybmVHYUhaMWx3Mi82VS9qbXRU?=
 =?utf-8?B?dStSZ0cwV1ZTVmtuc3pJU2F1cmhJdkcySFBjRENseDJnMDVnUTRFMzN2Y0dv?=
 =?utf-8?B?WUcyd25MTnFJWEVGSWd1dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2VXK2c1dEgwNWFHc1F6dWNwZm9JRUU2dE4xYVM1QWhibjJNc1d5alNZRHU1?=
 =?utf-8?B?eFBjTy9qcnI3Ni92L3d0aVROK0p4T0Nidzh0Qk5mTnpIOXoxUUswbVVpU0o2?=
 =?utf-8?B?aGR0NVNGYk1KWTNxQjl0UXg0OUNvRG02K2pqWUdBMW1oN0o1Q2lnRmZWVmgr?=
 =?utf-8?B?TWxpV0VQVCs2TEUwdnZWRnNKVGZCd2lYb0pXeHNBV3B1a1d3UGlBb1BUNHpT?=
 =?utf-8?B?bVZkcjZtM3pjdlJ4VzlCbE5mSmRoZlhmRmtkeWpHUGZUQzU5bFE0VWtMQUhB?=
 =?utf-8?B?Y0tOTW5EMEVnZUc3UE1FWitsTjVTb2VkNTBHbGxEWktsY0pTby9EdHVNRmtp?=
 =?utf-8?B?bTByMUkwMUpKZDN5TEZ6QkJMOWFTVEZoUHVsODZtS2xKa2lEVFM3ZE9EVW1R?=
 =?utf-8?B?MEhKWWJjTkQxeDVCbDJUeUNmbkczeUhSMTBKWnFoT1BrYUVncW9XekNrS3Nt?=
 =?utf-8?B?ZVNnZXVhSlVZRjZnTThsQ0VRbDVQbythWHNkcm5XcTZMTTEzMnBJQ1F5alRB?=
 =?utf-8?B?NFRHd1picGZMVldUME5GZUJtNTJ2UVQ4dzI3L3ZTOVZhN0tGZ1llRDdZUUtF?=
 =?utf-8?B?Z3NBY2NtTnJUc0dlZFBqQ2dxWjNwQ0t5THZzUFZ1VE1MKytGWWhKNlFVeGVR?=
 =?utf-8?B?M2pXc1VyaEN5MTRXNS9OTWU5L09EeEVGNFRJWDVDaGp0YVpMelVaV05oK0RM?=
 =?utf-8?B?aXJYT20rQWJxeDJTRy8zNWFLUDVEYVlXOVdGd0Q4eWhhRUxZVFZOM1AzWHZr?=
 =?utf-8?B?NEQ3V3ptQkxpdEtCNU1xak5LMEJnR1NiUjFGdzd6eDZtSGIwTDBDc0UxeFdL?=
 =?utf-8?B?UXJEY0hVM0lkdjMyNzBrelpBK3dlWTJYc25ud0wrcjZTS3ZXdjN6Nzk0emcv?=
 =?utf-8?B?Q2hqZ1JVcDJMVlB1aEZSN0ljay9DVVpFcXNzdlVDNnRSMlFaM3liQXhtUXlq?=
 =?utf-8?B?dlMvVFFIbC9sOEd3eFgycTA4bW9ibmJ3N01RRUFKOXdMNlFJdVFLYXlIZTIv?=
 =?utf-8?B?dEpCQUI3UzJHK3JFZnA1SXoxbW9jeG9iWHhpSFIzYUVFYnpPSWpONWN6dnRZ?=
 =?utf-8?B?dzczb0NtSUhlYllBYTNFZVNKSU8raUZyK3pmTHIwZzFMaGxnWDJEdnlPVjQy?=
 =?utf-8?B?QytpYzNFVW9yNnhEeGdzelBDRlE2NGtIclJ4eEdVTnJVbVRKbUQ0MlU0VmMw?=
 =?utf-8?B?bkd2b2ttSUhRcWs5enpsMWdjZ3VhRjVaQXIvWDUzS3N2YXNwRFdVVjJabXZQ?=
 =?utf-8?B?cksySGpjNWVKd1NzRDdLOGZaeFE1dDJsb1p3V1VWV3lCOWN6KzhWekI3S2sx?=
 =?utf-8?B?N0FUOE5MZFNmU0l6dlF3cTNzY0hybmtkYnIrUDllTldLV0JBdHdXK3Q2QkVn?=
 =?utf-8?B?Z1IvMkl5WklwQXNUZ0plcGZZZ3BtMWIxVHlXODJTbnBxcVNYcVBCTVNNaUxh?=
 =?utf-8?B?dmx0MmxZR0xVSTY1emdtTlBpM0wreXlleUZ2QVNMSnE5eUxwMmJhaWhsdG44?=
 =?utf-8?B?MzBrM1VIZldyUnc2STlwV0g4TytxUDhNQ2dMVE9uZmt0Y2pOOHhjK2s4UzJr?=
 =?utf-8?B?M01PYXZKMndDbVRNQ1g1dnR6VjhQSGEvSkVJS0YrYTI5S3JlU294T1oyMS9U?=
 =?utf-8?B?OHJreTFHcTZXbFRxV0RXZ05oMXFVdnRBRkJSNmc3NXJ6M05WREQ1RTYwazZC?=
 =?utf-8?B?NVFJVStEZUREQ2d4S3RCWVhld1U3SEJqT252R2g4TG5QQlIzQUlXbm1UOXBo?=
 =?utf-8?B?WUkyVnhsaDdVWDBHSnVGak5GYlptTFcxZGdHUDNQaU0zTCs0Tm9iMHc0V0dI?=
 =?utf-8?B?Z3BwNFVOR1QzWFdrMGc5VUxsWktyblFWd0RkZjRXZWdIOWlPRFZIU2hnd2VC?=
 =?utf-8?B?cE42S2x1dHorYjBTTFAySGQwY0FqYTBHVVNaSDdiajVzU3hiMW5TdEtMcVd2?=
 =?utf-8?B?MEF5SVllVStUK1U4V2grWlcyQnk1Q096amovMTNPM01ES0hRVFFrZnljTVVm?=
 =?utf-8?B?bE84VWllR0FELzI2aTlUaG15WHFhbmZBZGhsV1hRQTNjYlUvRTlBaC9pVjJN?=
 =?utf-8?B?WE4yTVRTTkkrSytLa015dDcrVTVKLzFTQU5zdnFodkNDUytIT2hLeU9RaVJl?=
 =?utf-8?B?QzZJdjRNWHZjbkdrMmRuQnZ5R3ZTWGtPRHpUZkplWXRDWnJDb1JFdHpzMDk1?=
 =?utf-8?B?a2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f0e9ed70-7293-47e9-622a-08dcc835a6fc
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Aug 2024 14:19:54.4363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ilb86/BHNUf1sOBIC9RldR31T9KfeDCy4RoZh/JwyUcFLbcoJhzkvVaKx0jrplyqd+9MilF1GCkplLcjNU1LzdsWPnb5WojFThNT9BlvqI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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


On 8/26/2024 6:11 PM, Jani Nikula wrote:
> On Mon, 26 Aug 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Rename the helper is_pipe_dsc to intel_dsc_is_pipe_dsc to prepare for its
>> future use across multiple files. This change is a preliminary step towards
>> making the function non-static, enhancing its accessibility and
>> reusability.
> Maybe this belongs in intel_dss.[ch] actually. It concerns all of the
> DSS/DSC regs.

I realized that I missed moving this to intel_dss.
Upon reflection, since intel_dsc_is_dsc_pipe is also being called for DSC PPS registers, would it be more appropriate to let it be in intel_dsc.c?
I’m open to any suggestions.

Regards,

Ankit

>
> BR,
> Jani.
>
>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 14 +++++++-------
>>   1 file changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index 891346f1f09a..6d60b72a9dfb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -35,7 +35,7 @@ bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state)
>>   	return true;
>>   }
>>   
>> -static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>> +static bool intel_dsc_is_dsc_pipe(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>>   
>> @@ -366,7 +366,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>   	 */
>>   	if (DISPLAY_VER(i915) == 12 && !IS_ROCKETLAKE(i915) && pipe == PIPE_A)
>>   		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>> -	else if (is_pipe_dsc(crtc, cpu_transcoder))
>> +	else if (intel_dsc_is_dsc_pipe(crtc, cpu_transcoder))
>>   		return POWER_DOMAIN_PIPE(pipe);
>>   	else
>>   		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>> @@ -395,7 +395,7 @@ static void intel_dsc_get_pps_reg(const struct intel_crtc_state *crtc_state, int
>>   	enum pipe pipe = crtc->pipe;
>>   	bool pipe_dsc;
>>   
>> -	pipe_dsc = is_pipe_dsc(crtc, cpu_transcoder);
>> +	pipe_dsc = intel_dsc_is_dsc_pipe(crtc, cpu_transcoder);
>>   
>>   	if (dsc_reg_num >= 3)
>>   		MISSING_CASE(dsc_reg_num);
>> @@ -538,7 +538,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>   		rc_buf_thresh_dword[i / 4] |=
>>   			(u32)(vdsc_cfg->rc_buf_thresh[i] <<
>>   			      BITS_PER_BYTE * (i % 4));
>> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> +	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
>>   		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
>>   			       rc_buf_thresh_dword[0]);
>>   		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
>> @@ -592,7 +592,7 @@ static void intel_dsc_pps_configure(const struct intel_crtc_state *crtc_state)
>>   				RC_MAX_QP_SHIFT) |
>>   			       (vdsc_cfg->rc_range_params[i].range_min_qp <<
>>   				RC_MIN_QP_SHIFT)) << 16 * (i % 2));
>> -	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>> +	if (!intel_dsc_is_dsc_pipe(crtc, cpu_transcoder)) {
>>   		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
>>   			       rc_range_params_dword[0]);
>>   		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0_UDW,
>> @@ -726,13 +726,13 @@ void intel_dsc_dp_pps_write(struct intel_encoder *encoder,
>>   
>>   static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>   {
>> -	return is_pipe_dsc(crtc, cpu_transcoder) ?
>> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
>>   		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
>>   }
>>   
>>   static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>   {
>> -	return is_pipe_dsc(crtc, cpu_transcoder) ?
>> +	return intel_dsc_is_dsc_pipe(crtc, cpu_transcoder) ?
>>   		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
>>   }
