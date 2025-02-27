Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F09BCA47A03
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:20:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81F3010EA5E;
	Thu, 27 Feb 2025 10:20:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TzDv5SVl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18F6610EA5E;
 Thu, 27 Feb 2025 10:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740651600; x=1772187600;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YnJ8xVy563JLVuCtfXanJak+LMK3vj9g6/3N3FxS5ak=;
 b=TzDv5SVl7z+3n3RZWm48O4DfX1pYGPnAG9IxDHlpZxhqjhccoUsK0eZi
 azIQ3SDUBT/nl8+jKlxAYMM/NKAm57tcYIoBbOhc5/PNVhIPaG36WQv/P
 mTiir9TXS557HgGtTrmtyvBtld1NGJsygo23L8J7Fo1SRAGW4RU9Dtv9x
 Tu74PZ02mpaFzpYCUwXX3IfRZ5e6h6BvImwAQeBIoGSMnsWftSCAn/p/M
 f5RYknezDsexPcxudXJD3bDiiqk05ia38Zpx6uUL7+Cl1HXcEhenBJWvq
 o4JNEn1XNpyHf74OV8O+T2CcoHhNXHYOQOV0S+gWakyKvXq8gPbZdjIrx g==;
X-CSE-ConnectionGUID: uAcTZ/0tRUKK5S5+Yr4JFA==
X-CSE-MsgGUID: u1jHLz8cSrCHVFnB/pC5Yg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="64001394"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="64001394"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:19:59 -0800
X-CSE-ConnectionGUID: D5chfXHXTimUnnWlFYNb/g==
X-CSE-MsgGUID: EbJUC52rRWqNy1GdwRA6Pg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="121918663"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:20:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 02:19:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:19:58 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:19:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=duP5aO53E4dpfZvmkvkAOawkVDYl6zgq94gA8PW//n6wWCiXa1PNkBWAJCTSWYvpScd+WZnlGtcfF1z1vemIAhudnBZk1zjR4C0PSuCEqa9upy1xfu9sNQ9DMMcnug2Tq99f7geVSPYjw05qcSWGFS3ULzBFi4ax5Q/4EQ2n/u6qLaRNZVet1+LU4W2pxe0W7UBt53tX+tvDIvCu9N9Y48gvK0yIajEVrhfj0TQ0thfED5dlDU0sgBt8bHgDAqD0lVRHBWGqQtrj8tzyZTaoKzvAeuh+dAAQYQGJB7q4FXAzVqUio8oED1eqpS4thmXy0oxyOaGykv7sLn5iv/C+rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qyGqwgLpb5RyOq1ZlvT0/Xj1ftFDNJU86czXGms7Gzw=;
 b=daiFEcgLxizRctF11RAbbiIehGt7B30SmREmm5H8M/tya3WjJhZ+DVRol7bkLE3YOpetGEeMxVMo84GlbTm8wPKnovUWzHfZqJh2j6ndt4kRVQSiKmQaHmfSLOlSEt/W1BZDB3PEm4w3rTa4SDyXzIqd5dRUuvXdPi8z8IFOM6kDduANuKK2T/5Tv7qIAQgXyDCvbPVHBl+9iwo4PXJ2QegZ9qNi1f6HHll0mDGm19qAKJOyPRFWBpeGjwpcKjFzCloRkU6VLrrUzKHWT0bLGgAK9B+DqUTMg6TAfoTdWmgW5KTZtVE9lSzAAZqggt9OUXr92ihsw+Gr05af9jSTGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Thu, 27 Feb
 2025 10:19:42 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:19:42 +0000
Message-ID: <59b35297-279d-4027-8bd7-bc3059dc152c@intel.com>
Date: Thu, 27 Feb 2025 15:49:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/20] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-9-ankit.k.nautiyal@intel.com>
 <Z78WqyOtIE4bT-fR@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78WqyOtIE4bT-fR@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: ae61f4d0-d91c-48b2-0a34-08dd5718403a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUFPTlY2V1ZodnZKK2dBVitVWTRaQWZtMUFTNnI5Smc5ZHpVOUU3Z1V5WDRk?=
 =?utf-8?B?bzNLMVU2ZUczbnVGS2VhYjRHeEVzQndvU3pFenRhNXJLMWl5MVlLQ2dGdzFN?=
 =?utf-8?B?SW5qaWV5eVRpbmc4M3VweW5ZQkJQZGpzNnhoR3l6aXRCMnhZZXROL2N6U2tN?=
 =?utf-8?B?RjdaQzNCN2FTOXBsYjVwalJNUVRSbHVQRURyeGxjWUhQV2hyeG1TZFpITXd0?=
 =?utf-8?B?bzZOUlA2MXNXYWZ3ZzBiMHVGbUhkSTc4eU94bkpkSFMzbnM3OWk3QjMvSytR?=
 =?utf-8?B?M3NqbDhSR2pPQlUra0NmY28xQWRudWZhVTVGdnhuckVzV3NoUnNNY0VMVnhB?=
 =?utf-8?B?QlZTbW1JRzJTZDRTcStnYTJieENzUkE3VDh3cUZaSVpsRzhDR2VJV29ZcUlE?=
 =?utf-8?B?TWVqQjJLaVdpTW1aVndreVgwc0tjMENPbWt4aXdEVDJxdk9QbU1BZ1AwL295?=
 =?utf-8?B?OTJ1WG1BaktodWEvcEcrMlovbVpsVFZPZ0E5eDdaUnRyc3FVUGZVTEN0MjBn?=
 =?utf-8?B?SlZyK2tpa0grZzBneURCSi9yY0tEcnBIaU56N1pUTTUyNGVxWFRoeDhqM2lX?=
 =?utf-8?B?M2U4Q0xGeHp1MlFDRGdzTmhTbE9GQzUwQVoxOW1EbkRCVjFwNGZka3dDYU1t?=
 =?utf-8?B?aTErU3IwdmtIYTJCaVJydjdmUHM5R3JvQTdMa05JcHZSVDk1Y1ZVYVV6alBY?=
 =?utf-8?B?Q3duRG5DdDZLd1MrSkJQMkhEUy8zRFRkcHNKU1ZpY3VpTWkvbWp3OWZ3b3VX?=
 =?utf-8?B?TUw3bFNlV1dSN25BVjRjZmsrZnZ0b0hUci9jZFNwV3pBcUFxdUpScUE3dGFk?=
 =?utf-8?B?K21ZZFdaWWVyTEdVVmoxblo2Wk4vM3hJMHJkT2xGUVh6ZGlFdUFqZmlaUUQr?=
 =?utf-8?B?bjU3Zzk3YlBVbHhsRDNEWUNFc3pDRTI3d2ZWR0NFNDZYdllpQVBDTG5kd2NT?=
 =?utf-8?B?emp4RWNpOUM1QUZnem5xME56VTJPSkltWHpqR1dRUUNNNGxrVlVDdkpKSGpO?=
 =?utf-8?B?WFRWeitzdXJUdVZReE9mYkdiZVgzOUE1NWlNd3BZb1dSaW8veHFyZE9uZHY0?=
 =?utf-8?B?blh1c01FaEJtLzVqYUNvNU9hK2tLczlPYmhlcng1NXNqcU1KU005QnpBWURF?=
 =?utf-8?B?ejZEN3BENm9UQ2VKWU1IdWFKZFhQYlJ0MHhQZnJoL3lOcjk4VWVqVklsUmtw?=
 =?utf-8?B?V25NT2owdyt5WTU4T3lOYlEwV1ZTRzc1Yytjbk9XcjB3MmFkKzRzMjVzZ0V6?=
 =?utf-8?B?TTFjWXlpeVpNZkYwcVlrTk83aC9sS1VJN0FpNW1QdHdCZmRwdlhYNXk1M3lk?=
 =?utf-8?B?YUtXQ2I2ckZTWVA5WVlEWUMzVnhJUEsxWHBWMmxhekZyczgrZGxIN3FSNDFL?=
 =?utf-8?B?US9wYlFXdVNGWW9sdGJuQlBqK2VJL3FyWWlZd0tuZEE4a0VuVVJvd0dabkRC?=
 =?utf-8?B?UW9PeVJSRlRtQlh3azVPbTEvTGtOdUs0alN6a1d2NVJ6Rk5lR2JydUpnU3Ru?=
 =?utf-8?B?RmdkRnNMQ0pJS3A3L0lHRDJiZlprdlpOTlpjajZxaEUyTDd0TjlMSWMxL3Nv?=
 =?utf-8?B?N2tuYjdINzB4Q0ZMQ3hXT3Qwclk3ZWhzM2V0aEw3eEUyYit1Mk5LUDQ4aXNY?=
 =?utf-8?B?UllidGszZ2x1bExxcUk2a2dKZUpkQnVHVThyWDhlQThEN1FxL3JKVU1iNHE2?=
 =?utf-8?B?RW1nMXgzNXgrRk13eTdSQjlJSE9PQlFvTE9CNnRxRThNNWlxUXp1ZzBvaDFz?=
 =?utf-8?B?RjVwbnBNYlRzL1hGL2I0WUxiSDBzT3IvWmtVL0ZuNzBGUFYwWUwwYi9xY1Br?=
 =?utf-8?B?UlQ4OVh2b21XaUw0WlA5Qzd5SHJVWEVvQU84OGE3bnhVZmpQTzcxMUd1TXJT?=
 =?utf-8?Q?G1OonPeG6YHAr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2JTZlYwV1FuazFiYk9QQU9FN3paMjV6VjVvTE5ndGlZZEE5REU5aU5HVXBi?=
 =?utf-8?B?R2REQTFobHdyTXFpMmI2OFJtaTNlTUsvZndwU3hSZkY2Z2NKdk5wUzM5VU1v?=
 =?utf-8?B?T043c010Q2U5WUJpb3BBZ09SR09JazRYSTJyODhpdTFzcXFES2JLK0xTTkVT?=
 =?utf-8?B?ai80dWpYOU9XcXZ0dUlrN2NvY1U0UHlPNElxUCtVZGxiQitYR1pFdjI4amxa?=
 =?utf-8?B?UEpMaWszM1dFV1h4ZUNmd1prM05PY1d4VVR1eXRSVU5BbU1wUUpTSGhUUWJr?=
 =?utf-8?B?NGhCNUZHd2haVHFFUGZpUGtSVmNxYlFJbkdGTHFnbUVuMXdUSDJ3TUFtTUEw?=
 =?utf-8?B?d1N6R1EvYU05NVA2bHFKMDZTcjFReWdQMy9lOFV4clNzamNBWUtxZGV1WEpz?=
 =?utf-8?B?N3kxMS82QTZEajNTWnJ0WlYxWFBwdEVEK0M4UktRL1Z6UUkrR1grVHo1ZkNF?=
 =?utf-8?B?OTZYTkErWHo4V0RSU2ZuNmdBaWt6dmMyUmhrdEJsS0pQbkpMbHZFTFJhdE1X?=
 =?utf-8?B?a0ZSMW1QV0w5UU9MSjE2a3ZCa0phWjJJalljQ3crYit1amMzM2VidmNTeUV3?=
 =?utf-8?B?YlNDSndUbEEza1AzdGUwSE1pZ3Y2MjJHNTNsakEyU2xTUUFpK0ExOHpFdGNi?=
 =?utf-8?B?dXA3TGNUTExiRWJmbFVETE1GcXJXNFhPOVpFZ3IrQkd1UzVVL1k0YlN3NTZZ?=
 =?utf-8?B?QjkzYlVkTXJtTHdzcDBLVFYrcEtMYitTNEpYSDRhaVlYclNleFNidXVERGk0?=
 =?utf-8?B?bDNlUUNwcjF1VVBiQzlUc2krZTFtb0Vac3EvNVlpSXp6WmRUV0NBWUcvQitJ?=
 =?utf-8?B?RndmWFVxVk9mZ0hYTkNNektnZFUrMjh1ekpJUVBYN0xZdkhoVHhpSGdRbXJJ?=
 =?utf-8?B?KytvL21PcWc0T0V1NGlCa2ZxSEYybmxsdVZxZkxWblJzNzNGblg1VzFYK1Jv?=
 =?utf-8?B?bWxOTWxPbEpQRk83eS9TcGZyQURnd0lucmtlUHVvOGVtMEYzNXgrMWJ2cnZK?=
 =?utf-8?B?Rk15RTlnRVovSXdWYi9ZTDlGZTJZb1ZrUy9ETjJ0c0NwdGh0YXFjeitkc1VU?=
 =?utf-8?B?Unl5RW4xK0o2OVVnWGluQ09HY0NrZW16VVBOLy9VWjlWNk52b216QVVFZG9C?=
 =?utf-8?B?OHVHd0Y2c2Q2Zkh0QmJ6ZytNZmNQb0MwWW1lcHc4TVo0WWFJdW53ZUwxRVE0?=
 =?utf-8?B?R3Nqc3hqR2cvaGw1RzFjZmJicUlILzFUWk1KSDZWVDNVVE1pQldEeXBBcFh3?=
 =?utf-8?B?NTZqc1I5QWZ1dG1uL2E4VFAxeEs5QkxLemtuQjZFQXJwa3hBcEZqOGJBYm81?=
 =?utf-8?B?VTJ4SllmaHFCWkxWMFpadDY3U2V6OVh2c0JoeGNYSUhRMlFwOGJTUnkzckhn?=
 =?utf-8?B?TnFBemQvQ3ptZ2xUZk00Smo4cEtybnl5MmpsM0NYUThJdnIzL1NRWW9yK2x6?=
 =?utf-8?B?OUxlMURueU1kcTR4dHVHWlR2a0ZhWXV0ZS9uMlJyZnJmUDdFNFRlcnI0UlVX?=
 =?utf-8?B?ZWpidzJzdXZsM2cvZXRwRjc2RU50cVFkTkQ3Mkh5aXJFcC9iYytuTnJJTkta?=
 =?utf-8?B?bDVHM0t1VFZ5cE5lUHFUTVdpN05TUEFpQUhsM21FdlQ0RGpyUmNoSU0zd29P?=
 =?utf-8?B?WE5ER1ZURnVQZWlJSDRkSkppM1NaVXlEekVPeXVPVVhwVitqWHVJZ0xRS0kz?=
 =?utf-8?B?WGdHOXh0cHVRU1hwbHJPb1FUak95NExXZ0tJekJKUDFqT0dNQVIvMnMyQ2FZ?=
 =?utf-8?B?b0Z2T29IT2REN0RXWDhQbXVHT0Z2M2EyMXlMMFI3YW8zMmFGNHloZ0o4WDZH?=
 =?utf-8?B?aW56Nml3N1FmU3B2UzI0NFUxYUN3Yk54R21zb3Rkdm1BSHl3TTJxdW4wOFZI?=
 =?utf-8?B?dFpOSWphVUpkZ0ljeDQxOU1TM1FLK0pXSGIxeHZZWWlxYWZNaDhrMFZHNGJq?=
 =?utf-8?B?a0FtYmYxbzFSVlVzcndMUlp1alFodVlUcmlteFcvVWtvRzlPNFk3dm4xd0ha?=
 =?utf-8?B?Z09xekkycVhaN0xYQmpoNmFjSHRQRU9adWx4SXZKT2R2b01Sd05OUHlhT3Q3?=
 =?utf-8?B?ZVVTMHhUM2oxZGM2dWJPZ09oeE4yb2JZNjErakdORjVTTVVrOVhJSml1QkZI?=
 =?utf-8?B?MlZ3VnhNQW9ZUzQxeXJ0MUUxcmQ2NkkyWVRIOGovSmI1SXpqVXpsQmJORE8y?=
 =?utf-8?B?Y0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ae61f4d0-d91c-48b2-0a34-08dd5718403a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:19:42.8173 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wmP4qVw8tloLiBzYtGRunuMp6NaqHqZZbGNC9hSdrkjPnSDd3AfJbMJZ15Ev6YnZJiL9w2ovlX89bFce5GCZXWjjH+VcyQFWh1IvvcmeWIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
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


On 2/26/2025 6:57 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:05AM +0530, Ankit Nautiyal wrote:
>> MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
>> refresh rate.
>>
>> Currently for link training we depend on flipline to decide whether we
>> want to ignore the msa timings. With fixed refresh rate we will still
>> fill the flipline in all cases whether panel supports VRR or not.
>>
>> Change the condition for link training to ignore the msa timings if
>> vrr.in_range.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> index 3cc06c916017..549e4ebd9404 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
>> @@ -725,7 +725,7 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
>>   					    const struct intel_crtc_state *crtc_state)
>>   {
>>   	intel_dp_link_training_set_mode(intel_dp,
>> -					crtc_state->port_clock, crtc_state->vrr.flipline);
>> +					crtc_state->port_clock, crtc_state->vrr.in_range);
> I think one thing we are perhaps missing is the readout of
> vrr.in_range. But we can't really read that out during driver
> load since we don't have the connector information read in yet.
> So if we do end up doing a modeset during initial_commit() we'll
> clear the MSA ignore bit. But I guess the GOP probably wouldn't
> even set that bit.
>
> Where things can go wrong is when we do enable actual VRR mode
> and there hasn't been any modesets since the initial_commit().
> We might not have to perform a full modeset to enable VRR, and
> thus we would never set the MSA ignore bit.
>
> So I think we will need some kind of fastset support for this
> DPCD write after all. Though we'd only have to do it on the
> first real commit when we clear the inherited flag.
>
> But this is a pre-existing problem so not something we have
> to deal with this in this patch. Just something to put on the
> TODO list...

I agree. Will add a TODO for this as well.

Regards,

Ankit

>
> This patch is
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
>>   }
>>   
>>   void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
>> -- 
>> 2.45.2
