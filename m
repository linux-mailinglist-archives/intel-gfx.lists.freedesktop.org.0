Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D54FC976727
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:05:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F90310E211;
	Thu, 12 Sep 2024 11:05:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GT/o1aYr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C2210E211
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726139108; x=1757675108;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r+Y9YcskPzzQ6dU7Uic6Dj5w/Ko87IgF6bc1APuHviM=;
 b=GT/o1aYrEppNH90B0MTlwTvtwW8KwzsCuDdgpmRmSLVervd78sB1mnup
 asZZWC0iFnhCuabmBVkCccBTcS0O28t3Mfctz89OdUWk4hPzEWJgv0jx0
 793JkJaIhGPaVFDeLzSo+BZ0UjFXCfqIPazMX8r/79hppsDQbOQ5L8826
 pSiX9BJnXkv5ZbWzy5xbV5x95j5Fc+KVE7rZNO5iMiE4+pZth3zEI709R
 14ZXQhPgVxX/72VgdAIJZk07cmp5qWrDNDNrsQgDy2DuELgxt5vTvTVQW
 +oYVX2CiXMJcz1XaSOSHYaolEOufG9eQcjvlvttF7Q54sgRtrO83kS9Kl Q==;
X-CSE-ConnectionGUID: t36CLQLmTBWosvInaVGinQ==
X-CSE-MsgGUID: feAZOsvMRUSD+tP9oMEw9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="35647437"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="35647437"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:05:07 -0700
X-CSE-ConnectionGUID: oEwsdaFwT9eRtyNvKYy5dw==
X-CSE-MsgGUID: RgwPF7RCQZenbTKI2NaAsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="98379672"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 04:05:08 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 04:05:06 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 04:05:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 04:05:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 04:05:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wu21eWAcsZgyo2mn2cQqbVObUcs4vO1QbMqsEBTdK+b392ChRPje7advN5jnWHHmcUsqgMUvPR8omAMiOE0LDeZChgeCIffOP360WmT15Hfr97UyVqQD9pG9PK5RkOpHLEzr7wghC+OTi2aWeBF8ZoP6h20J/htKycJ2Aq0OyQN8ldlIGwT8pYjBYNiQ3ag9goGx370hFQCCejPWuP2CpjuF+zGK8ruORuxbX2lN5Y3yoRFtqvLXF2w6ZsJsoNF4yTyABbQSy+udT2j5p3PKExFkFBbNVGyQKESOEePPPoZu9YePxQXCN5g6s6TkrZZbjIOvdZHSDKwN2/IElKWHFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GAGhdowPMYQUbT1YGAXfSoCmAuu+gvl5ywJFlVXU2Hk=;
 b=u27rrwa6TEBvp+7Y4ZnwQqCgVAsugBYHK0bj2y/pqBEjA/pMFdjhnT6uvLB7/SD4jZRUtEdfiUIyYtpRYARYPL1MeyxOxQpsN589bZb21CZSEHGuUaXjIyu2HgqVefPZtfgG3UUeSjP6N/4bfo7CmfM/mnfzX00yzmsCZ5u8f2iJB6Cf/zlC6A5JWqd3P+OtqnXUsGQv4Kqd0z2J55+rGlEbIxlmPuEmm+2LgzP1kL6KmGwQDTQy2HNpONi52VE361lt5e2ZiouZ5mrpZYSdBAJb31JqnJSwn4w7QK3Tb/QI9CiY6bCpGVsTGpKgrWZpw9BYLUFUXRers1S+oqyPvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4757.namprd11.prod.outlook.com (2603:10b6:208:26b::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7939.25; Thu, 12 Sep
 2024 11:05:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 11:05:03 +0000
Message-ID: <f7a05e1d-d3e7-40b1-a6bb-4e6129ab64dd@intel.com>
Date: Thu, 12 Sep 2024 16:34:56 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/19] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-8-ankit.k.nautiyal@intel.com>
 <ZuH6v1ysrM5zp4rN@intel.com> <98619708-7750-4a4c-a1d1-8e67965a6909@intel.com>
 <ZuLJU88Vqrzd_XX9@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuLJU88Vqrzd_XX9@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0004.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4757:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e6c5ebf-7523-4ff9-9a96-08dcd31ac096
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TGNnVTBiWHJRbU9VNmxZL1dKZzFBd0pVK1EvaHNBYzRpWnhwQ25zMUlyME1h?=
 =?utf-8?B?Uk9xa05DOWlmWU9Venl0V3NPWWE2MWZCOW9FcC8zS25NbE1SQlZSQTdOaVpF?=
 =?utf-8?B?MnBsMm80RjRFbXVzSjlkMmtLelQ1aGlQemFaU2huK3NGbHBWNkoxc2c0dC9x?=
 =?utf-8?B?QzhNby84cFpVM2x6TGdxUEQzWWc4MS84SElzNDduMUVWSGVOdFZIaEM5V2pG?=
 =?utf-8?B?NG1lWjNWTWhaZE1GYS9NblhVYnQ3Tm9vdzBHZ0JpMDZyUkppZGtVT2toRWl6?=
 =?utf-8?B?YTFaYnNDNHVReWZodTdyWkJUTit3TEZFWElMMjk2MTZHTHNwUkloOFM5Vkky?=
 =?utf-8?B?b0daSSsxaEhtMTR1Q2ZDdnd0Y01TME5lYmZJRWQyeVVkeTBIRU01VFRuempK?=
 =?utf-8?B?WmlrUmlWNHFtS3B2NDdJVHA2MXI1RlFkdFBsZGFLNlZQZElvNnB5MEN5NzBs?=
 =?utf-8?B?NG9uNE5GdDBaalNMa2ROUVpiSDZXSGEvd3B5NmxTUzdhN0F0aXkyRlh0d2dl?=
 =?utf-8?B?MzduY0JFeCtKdnpzYk94TE9PdFMzcW9UOGNHSnlXbWU2U1VsUDFsd0FJdGZz?=
 =?utf-8?B?ZTgyZy9yd1hObG9TeElsSUhLZnBrOFFEcFQwVUVnRmptMmpzUCtiTHd3ZUVE?=
 =?utf-8?B?UnFyY0t1V0JIM2F3d0FrOTErUFRDMlN2RUhPTkd6S3NnL09RbVo2RXVwcytH?=
 =?utf-8?B?bWZGb2Y2dG43dFZkaHRZVC9oV0ZHdXJKb3RXb0xSMEpGVHdTV1RKUGJZY1RV?=
 =?utf-8?B?T2lMTVRSRkVaZ3h6MSs1Q3ROd1BxT1VMVWpXQ3lSOFlSV2wxSTVwczB1UHZj?=
 =?utf-8?B?RW4waERmNnFEVXBjWVpIRjdQMUFVRUJCZUsyM2pLVDFSVWVVaW02TWVqaVIy?=
 =?utf-8?B?YjdhZ3V0TWt3V2FtMEhKN2ZoM2pHTlRkS09OZlhlT2kwaytJeWRjN1oybGJr?=
 =?utf-8?B?enU0SnRBdjlIUjZkT2RvdnBDTEcvYTJOcVMrMWg0QWV4dWpXR013bXFjbXhI?=
 =?utf-8?B?T2RvSVg3OXdrZ0hJUFZobDIxenZ4dExzRm8zeHFMcVBtZVdOTWh5RzU5SjZw?=
 =?utf-8?B?VnlMUGFSb0N1TUgrdld6UGxHYWZXckFxRU9rWnJqUEs4Z2NyUGpTaDRzUlBa?=
 =?utf-8?B?Z3A4SUFoMGYydXRQdi9LZVp5aXpudXdPTy9DaDB2T29Kdjg2WGNjN04xNXhR?=
 =?utf-8?B?U3kyRjhPeitKeFJsbklaSzJZREc4VnFPSHc3MzVHazBPYS9SL0wvaitiS3dV?=
 =?utf-8?B?bis4b3ZtallqYXU4bldCc29NcDFPdVJiNFBMMlZNQmhINnBEdGs3NnpPSEkv?=
 =?utf-8?B?RzE3aHkwUEhCMGFVZDRJWnpoWDdzd2R1MTlHei9ydmI4SkIwOEhJV2w3VjZp?=
 =?utf-8?B?NEtoYnQ4aldLOFdseDQwQmErS08rbFkxbUhIdlJmRFBmc2NlbWRva3RkRmRI?=
 =?utf-8?B?U21LLzc0VVUxYzhnbDFxaThHR2YzRVF6bU4wWHczeWVQMEk4TlJwQy83RXRj?=
 =?utf-8?B?cmZxZzR3WExzck9kREpxU0ZKVnFYQzhCUk5heTBDN1JyOExWb0tRRi9VY2pR?=
 =?utf-8?B?RlpzMmlJVWxVaDgxaUVHR1VIWUtDdkpKTE5sNWMzRHl1N2hnVUtpSENNOTEr?=
 =?utf-8?B?NHBzc3c5cU9JTXNaUHIvWkhReHAvVzdMbFhPdlVlZE82aFZ1REh3SmsvMjk5?=
 =?utf-8?B?VE9xU1pCWEl3bjRaQ0NOYU8yeGRxcm9OSkRFM2VXYXJJaGFiMVJjSXJ5YmFp?=
 =?utf-8?B?Wmlyak5HSXdwM0x0WnVkL3FtZlAyRFIzWFFuMnVYTGFpY1FwMnFucm5XVzBY?=
 =?utf-8?B?WXZ0WFdCMWNFM1lYNm5uUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WjJCaDNhYnNFVHdoN2dzamlKdHFna1dybHFrck9RMVJ2Nm8yQ2NDL1hBUFc1?=
 =?utf-8?B?T09sSkZ1RUFZOGVNdlBzOWl0bVdxSWQrcWp3OXYrV3B4NHJhbmRDRzhpZUV1?=
 =?utf-8?B?NDZIaHJpRnVWblBEMWJUcnpaQW9oUHRTVS9jYWxUL1QyNWpwTU9rcDVFRldK?=
 =?utf-8?B?dEEyMHF4MzdoTG52bUYrdG95ZldFYTc4V0Q5TThML1gwT3F4dDRDaVNJYXZM?=
 =?utf-8?B?c0hSS0RXTWF3OGVIYzBIU0RJSjVPRTQ1NTdPMmNIWkRHU2tNdDByT2d0cnpr?=
 =?utf-8?B?RTdvMDJ1VDJhWEJ6QWJBRy9WQ3dpVjNXNkE1WjVtSlBYTFU5V09LZ0ZudThS?=
 =?utf-8?B?dTRvaHgwOUVMZ1JGa09QV1JGQW1VbzhFTUM5c25QQ2dSSmNoTG5xQWE1S3Ji?=
 =?utf-8?B?eHBTTW9OZmdpdWZtQkJWNFZDekRyYXE0ZWFodU1CU3RKTHQ0bVdhK1JmZWw2?=
 =?utf-8?B?L2h5NHQ4U0pXRHNMeUlwMEJJQ2N3clJnd1VYS0dUY2gwZXorR2JIb1kzUHhM?=
 =?utf-8?B?eHptMVNRTnhEVzJsYlJDcndVOGVkd1NxSUNqLzVlRUp4ZjEydnZEcEpQZXpB?=
 =?utf-8?B?SFkwN1YyeXJqcXdXZ1Q3bDJQWng5VFAzMkVLS2JPeGRPVUNZSmg3bFFZc0tm?=
 =?utf-8?B?WXZBVGswbFcxdzZ0UnpGeXQxMER6QjE1eXVPVkdvVHlYYnprUUlNUzFQaUEw?=
 =?utf-8?B?SldkbGVPUk5yL09hcFZXUG1VWWFmeTg2a0lxakx0TytPaEZPVGl1ZWpLWkI1?=
 =?utf-8?B?MjN0Z3lDc2xPUVJKYWo2cDRuL0N2VXRjc2I5RGJsaysrZVBod1Fyc0lFUkxY?=
 =?utf-8?B?K1lDNmxkYmJ6Nzk5aXRnTGJiZkk2SU9TaW9FdVJLbXZmTXhvRml5ajQwbUYw?=
 =?utf-8?B?QXRUdE9kWnllMFVKbGVCNHowQ2FFdHpGMndWeWlYb2E4TWNrNUhTa1RrVVcy?=
 =?utf-8?B?KzEzWjlzUzZnVmhrTW92d0tqanZFOXFxdDJzM2J2T3RwSU00anJ4bndEYkFX?=
 =?utf-8?B?WWdBT2xJV0haaDUrNi9kalExOHdIdWVpWkJoTDVYTkpXRkRjK25wcDZVWlZq?=
 =?utf-8?B?S3hJVUxsWVNCc3B0ZlBCcWxEQi92OGp1VXI3dzlrNlhWbk9pTFcvNlZ1M1pZ?=
 =?utf-8?B?RzYyTWl3R2FWMzJJSlRzTDFOZnZvbEVxL05uWTlLcnBSUGhad2tHWnRJb1Fi?=
 =?utf-8?B?V1FJdWJ0TEQrLzg0VjNNR0d2emtIY0dDTVowRS94M1dPNmw1QnM5aXc4b05s?=
 =?utf-8?B?YTIwNXUybmdSQTZpaldMZWdyZW1tc2xMc2lkYkxaVWk2VFNvSmhSSHBqS09v?=
 =?utf-8?B?QjB3ZXlxSnpoY2FGYjFjaUtzNDVFQ1dsMzVrNmhWd3ZHYlpLVTRMdDMwWmlM?=
 =?utf-8?B?MFIvajVYYXd3d2tUOTgzMW1xYU5ZTEpOY20rRmRhSUNUd095K2l2QlpTRXUv?=
 =?utf-8?B?bHBNbDkwQ2pJT0I1Mkd2cTB6MHYxR0Fwa3lMUHJKQ29MS3VqTktrMXFBd0cx?=
 =?utf-8?B?aGNxTnV1TnI4NlF6eXU4L0F2aHlGdmlKR0ZrSXBpYmRvUXphNkpiQUJsSmpz?=
 =?utf-8?B?ci9NbThhQlRCbkxUbnAwelc1bktGMzM5V25xVWlSQ3MxMmtDdFduU0Z3VERa?=
 =?utf-8?B?d2hEdDRWQmprQXhYL0FVMWhzSERhY0FJSUNvb2lSUjZsOE00Z21RRFZGYlZq?=
 =?utf-8?B?Tk9uZitTbXZIeWZua1lSdm4wZ2lEK0hwVXVEa0dZWnFWUFNSZ3ZQbG5uaUZP?=
 =?utf-8?B?OW54dFBmVkJHeWxSODZGUnR6N2dKL3duWVB4Lzl2S2k5djdHZm55T3QvQzh0?=
 =?utf-8?B?c3ZzeEN6KzF1Qi9xNnhRdm9VaHlQQkd3dzZCRlUyWkg2M3ZBbVU1dFYwZ0FW?=
 =?utf-8?B?blVXYWt6M1J6RlJvS2s1UXp2WmllaDQyVG5tVlhMNnZ6ODJHOTI1WFpjT2RU?=
 =?utf-8?B?Y2dNU3AxSFhJRkVzanp0WnZBSEhnS1MrWGNmNkVjT3dIZ2tMVDNnSU11cFp4?=
 =?utf-8?B?MHBwWk1tUVJhaDJJUDhxd3RSRVJiSXY1eXdBNmQyWXdydHZlUzlmVnBaVExN?=
 =?utf-8?B?RXlCOVFLUXROTC9wRFl6Y3RNbDVaSFhYWkZocldzU3Z5REE3dU11dFFxbHlq?=
 =?utf-8?B?TEdHWGZrUkJrMFJnS0xkTE12aWloN283ak9HK2lVd2VDYnVmZ1EwWG9TY3Y2?=
 =?utf-8?B?TGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e6c5ebf-7523-4ff9-9a96-08dcd31ac096
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 11:05:03.6875 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgBMXCCH8I3tlpVIC+WJ5dPlRAnzp+MULTbw7MgTD/LH7RQPjhey2VOVerIb8lBUjbIjeR7IMhIbXe3frXAyAsXHR+Xy5N2QuKKk/NlGHaQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4757
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


On 9/12/2024 4:28 PM, Ville Syrjälä wrote:
> On Thu, Sep 12, 2024 at 03:50:34PM +0530, Nautiyal, Ankit K wrote:
>> On 9/12/2024 1:47 AM, Ville Syrjälä wrote:
>>> On Wed, Sep 11, 2024 at 06:43:37PM +0530, Ankit Nautiyal wrote:
>>>> In preparation of ultrajoiner, use number of joined pipes in the
>>>> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c     | 9 +++++----
>>>>    drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
>>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>>>>    3 files changed, 10 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 65044f63d1f5..6c503b5968d2 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1412,7 +1412,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>>>    	}
>>>>    
>>>> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
>>>> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
>>>>    		return MODE_CLOCK_HIGH;
>>>>    
>>>>    	if (mode_rate > max_rate && !dsc)
>>>> @@ -2520,14 +2520,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
>>>>    	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
>>>>    }
>>>>    
>>>> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
>>>> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
>>>> +			       int num_joined_pipes)
>>>>    {
>>>>    	/*
>>>>    	 * Pipe joiner needs compression up to display 12 due to bandwidth
>>>>    	 * limitation. DG2 onwards pipe joiner can be enabled without
>>>>    	 * compression.
>>>>    	 */
>>>> -	return DISPLAY_VER(i915) < 13 && use_joiner;
>>>> +	return DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2);
>>> Pointless parens.
>> Noted. Will remove these.
>>
>> Besides this, I am wondering if I should change the variable
>> num_joined_pipes to num_pipes or num_pipes_used? So its values 1, 2, 4
>> make more sense?
> I think 'num_joined_pipes' might be the best since it reminds the
> casual reader that this can have something do with joining, as
> opposed to just about the number of pipes generally available on
> the platform/etc.

Got it! Thanks again!

Regards,

Ankit

>
