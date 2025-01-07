Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 802E8A039AA
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2025 09:21:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3432710E306;
	Tue,  7 Jan 2025 08:21:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lu3XihIi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1477A10E306;
 Tue,  7 Jan 2025 08:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736238098; x=1767774098;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FtTpg1Ttwr5z6zc12EL/F4a4r5fqD5fNI0o82XDHOP0=;
 b=Lu3XihIiSLEg+RIwZLzdps1YIN0pMZp8OdRLSQtEohwC+ckJR9HoDm8t
 pwsWRkcuWyznJdgnRpCRH4zDjjUt4mnINo3XRaEhdoeApn6vO9zj2S5LK
 TqP0JXWLmTVW3hEf/gxPv10Lr6P/C1VHeIQQIUKSEER1j4qOVPK1rtYU5
 /K7KrsscJjcUAsHVBO1mgHMZLqZujAAntl5ZngvSZ/t+Nkh5pUDSPbQWP
 /IBjvIiJUJ9duLg31/fwIVtolujaognVoIqnLp6W7s7wJB78cPQZwN3aO
 3wszV9A73aJqxtJobHmhfaJYcmyJxefvdcuVsK71M2iZtbqtepJtbDIbw Q==;
X-CSE-ConnectionGUID: VkFkOqpzTqSOYjq5aczRIw==
X-CSE-MsgGUID: n7J2X7S2T2KlX2uefP39uA==
X-IronPort-AV: E=McAfee;i="6700,10204,11307"; a="36303720"
X-IronPort-AV: E=Sophos;i="6.12,295,1728975600"; d="scan'208";a="36303720"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2025 00:21:37 -0800
X-CSE-ConnectionGUID: kKnp6t6+QH218UJPY3kJ8g==
X-CSE-MsgGUID: TeTSRBUdRRKluQRSjokCKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107321796"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2025 00:21:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 7 Jan 2025 00:21:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 7 Jan 2025 00:21:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 7 Jan 2025 00:21:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m0Aq/PQ8IuTiTYlYY/nK8AFbJ0wtGb4kfisshls5ZCl5U7v4nRQTczIzGWQtoEj015n4iu3RAgpSdgzH45fAUgk1PJbuVa3FXvZwUi8ahyRGLodKNmjVzcBlc0r8yr+7ffZV6O0cOaMoXrWhjhUfiQJQNNP5GU/e+7hG1daSorpj9yquZQTfYeNqI9YtsvkbPCkk9Wz7YBBtBwLcXfYN1eBjXLoTNi9HQrR0kCFaD6fshfridPSGfzKgfvT2aZbDKgQi0SR7Tt23Rn+/De61d54vXdRIOsm+r3yCOGQtTGEB0rWNluCA3cPCqqhbMj/IqSFLPnLuODixJrhCe4R1FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZCmZFXOGbqCCg1uvqHq3S2NVu1342+JmpJA55uCnBU=;
 b=VitgxrHHSbPjWhulGKyY4Qzu1yZvOjjtE7l1h4t35odMPrckTwKLO1m+vMExUhKAIB9Li8tlc+TGtTWp1upEzRF1A4lhl4SonVl1ibWEOTAfUPjyKFwF33U0xFQqKbylr5zg3j2mtsJdZ+pI6TmjRBBMHqIYWPvdM6sZUWQXzB5ghIEIkWZTZMy/3xZEarMHnpnOSVwXL5xVqTl7pgHXlkdH52e4ttu8T0f+I60kQDJY2TBzIXRzu30nepo2uRnWrBSraT6MkxAcT1yxmNI6V1SoH/zMWR4oove+OZQCfY5OJGRn+pf+pbKxMJGUUirSXYWG7RY1OLBILQ77aXSsCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Tue, 7 Jan
 2025 08:21:28 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8314.015; Tue, 7 Jan 2025
 08:21:28 +0000
Message-ID: <eec5f895-bb21-4447-8167-65d6d46ee1dc@intel.com>
Date: Tue, 7 Jan 2025 13:51:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Return early if dsc is required but not
 supported
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <imre.deak@intel.com>, "Kandpal, Suraj" <suraj.kandpal@intel.com>
References: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20250103031424.1732774-1-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6913:EE_
X-MS-Office365-Filtering-Correlation-Id: e10197ba-8aab-4c75-3249-08dd2ef44851
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjJOaTVSSis1UWVRbGptNGFRRG5UbHRWWDVMK3NwSnZXcndaSzRLeVJWZzkv?=
 =?utf-8?B?WGpuRXJYcWlRTkFjMVhpNzh0dSt1dklkRTlvZERDV01lWC8rZlM4dWxOb1Fr?=
 =?utf-8?B?NXh0Nnc4RGJzWmtwaE9Ec05lbHl6T0crOW10QVdtUWVVaFBqeUMvdlZQdm9W?=
 =?utf-8?B?ZjNYOWx5VE11SjlzMkFKWUppTkRiVkFsZGZobDRiZWVxZVpBa0gwT1A0YnpN?=
 =?utf-8?B?TUtBU21aa1V3ZUN1dlQ5SElzMGpKVDBHQWNBR0JON2dhMDhUQUNYK3UrSU1z?=
 =?utf-8?B?YTVlZ0ZleFYxcUV6S041eStZVE9aSE5PTXA5SkJQQ0R0d3c0elZqeFRRZ2NY?=
 =?utf-8?B?Unh3djgvSmptOGlUQ2plajBwVXp6WTJVS2hEYzFLZStoME9XVE5vcDY1Z3FC?=
 =?utf-8?B?bGpWb2VEQ1dSSFlxKzBYejNiZ2VZNm5tZXd3bGxiaU1VSm5oSWJ2b3FmeEhG?=
 =?utf-8?B?MWU5UXBBM002QVpacTE0K3IyNU03M1ZtMUt5NjBoeUdIREdGc3FxZ2VFVzNN?=
 =?utf-8?B?WllLVVp0bklXdDVIWnZGQXczMW9GQUhpQVprZk5Pb1UzZXcyU2VZdFdZQ2JL?=
 =?utf-8?B?NVpzRTZ6V2l2VjIrdmZNNlI1NVY5ZW5RTFFHNzV4M0N0T3VwTGcza0hVN2R1?=
 =?utf-8?B?M0tWN3JLUk12dXo4OWxSbStJVzFLSFJTOHVxVGx5NGZZbzN4Y0N0S1F0Ynpo?=
 =?utf-8?B?RDAvcGRKakVjQWhIaG94c0o1aERXVTQvZTNwT2tsQ0R0L2h4Y01kbDZqMC8v?=
 =?utf-8?B?Vi85WWpDRzFES3Q0cHpqc29kYXl2YlhtU1p3TGEvakNTTi9oTzUwNXQvWkFX?=
 =?utf-8?B?U0RmeWRtMEFiWmVNWDJFa1RmcUxjWW5xUzQ0S25FaHhBcHV3WHliZzllWVcz?=
 =?utf-8?B?OUJuYm1TWFZCdDd6RHRIZlhvaEsvTjdqTGM1dDBYVGxQRzU0eDRKSVhMbGNN?=
 =?utf-8?B?UWtoUTYzV3RSamtPeDRJY2hqd0VEanczOUMvTXV5Z3V6Skw5dXV5ZjZYVVAw?=
 =?utf-8?B?eGJhK0JrNm9vb1lJSllaVWZZMjdiS3h4R2p0ZzJjUTF6V3lMWkc5OFUxOWtZ?=
 =?utf-8?B?VFppNHROalhZcjlWY0QrVG5BV2txZzFGNHJBc2RlZi9pS3B5U1duOUZ1aWNT?=
 =?utf-8?B?QkZrNlhhZ0NDTDNPK0prWHMrME8yYjNleGRYWC8vbVE4ZjRINktrVFVXN2hG?=
 =?utf-8?B?R1l6Wnl3N3gweHk0WjhVYnBXZ1JHU2JzWHBvQ2l2dzVDMVB1ZjA2d0lzeS82?=
 =?utf-8?B?RW1Lem5TYi9WOTIyeTgvaUlVRm0zZmUzMVllM01yaEg2RFYwUmY2SzZtb2gz?=
 =?utf-8?B?eWJ6N0NZaW8vUVZRcVBnWGlIYUpXTzlqZGtrZFFZN1JhdS9zV3NhZmJsc09l?=
 =?utf-8?B?SmhzcGJMRk4wTVdyS2lJbUpvVDgrK21IeWdqNWMyVkdUUWJNRWFpcVRySGRR?=
 =?utf-8?B?MCt4NkNRdFhvMlpSZGs4RDhwdmtITnA0RjRKN1lBckpQdlhDRDVMYkpFZ3c0?=
 =?utf-8?B?RWtPb3V1RzgyQ04rL0hTb2Z0YUhhMEtmU3JXby9UQkh5U1d3bkpicEdvN1Zk?=
 =?utf-8?B?SENrdXUyN1V2dG5ZYzM4aFUzQlRFQm9ReGlUd0Q3VE93clFNVnh0NFZ4blAx?=
 =?utf-8?B?RXFVeGNBRWM2UnlndTBUdXM1S3AvdzN5cEg3M3lGMGREWm5FOW93N3k0V0VZ?=
 =?utf-8?B?Rm90UTFpMVgrdWpJNjdtdE1uWjhhZGhTNDdVVFRySGY3Q1R0WmtEVDAwNzlu?=
 =?utf-8?B?R0puRjA5aDhvS2dINHAvR2NWQjcvcEwvQm40SzBsSm1BQk1JcTlRdkExaSt5?=
 =?utf-8?B?VlZCbjRrSDc4YlBXMFlHTWxxaWFZeThwS1d0OEVkV3gzRytFQldJRzErekp5?=
 =?utf-8?Q?KVt5C+HMJjTpl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dUcxMVVpOFV2M2cwcU5TWGNoUWI1T2RCWGlIL1FlMjRNcWc5WW15L0xXWXN1?=
 =?utf-8?B?TDc4YWtORUlhVWIrNVRYZ01pM0sya1VTcExpZXNSSTNVVmtzdDM2YTlIQitD?=
 =?utf-8?B?Y0g1ZmFLcmNwMGFTTFVLbk5SNlh0ZWhGS3E3UXEwanZrUjNlNzFGelVXVnli?=
 =?utf-8?B?U3lWM0JCZjltbk12bVk2cWt5UU9HbkZMYVA5OWh3VzZqQzUwSmVSREExSTlZ?=
 =?utf-8?B?VFR3OHRvVUZFV1RSdE9ReGQzaFI4MzAxaU96VFVEQ1VDdTZJNXdxci9ucExy?=
 =?utf-8?B?VnJnM2V4MlNhem4zRHRvaDVkdGJYblVZejdzREQ4U0s2MjBJbkpMSUo5MVAr?=
 =?utf-8?B?VEVFdmY3T2VHUFhtSFNKM3JOblpRU0pORFVINTFQV1RhZ2tDdE9nS2JGbUdD?=
 =?utf-8?B?cGkvT2JTT2pOb1YzWEtXcnFVT3hZVTR5UmJHWlYxS0k4Wm5zazV5c0xZMTlO?=
 =?utf-8?B?cFFZK2pTaUd0dmN5TzRBVVg5aTFkQ3ZxNTYyWDhGU2o2d2JpaFBhSEdtYkIy?=
 =?utf-8?B?Mlh2cHR0MitBTm9EVnhoeWhpZ0tYMjZQdFJjOFFRUUFIZHRXeHhhbzJSdGhI?=
 =?utf-8?B?ZVAwVlFqMGMzd3Yxa3JBTUU2L1h6RndqSC9BYXN2d3A4N09DZ1I5RHVrMTJF?=
 =?utf-8?B?WEhNWXMvaEF3a0NzQnRQdEllT3l0Y25ON3duSk1XODRLTTM0VTQrdVJYczFr?=
 =?utf-8?B?T2JXdzFOc1VEVDJCWmhoK2FkZXhtV3o1cUNoVXEzYTRyRjlFOG9OREJsTlBu?=
 =?utf-8?B?R3ZYOTRNRy9ZeFdLenNwRTNoMWVYM25NWWt0dkJ4b0tYRGlvWHpESzhnU2Jr?=
 =?utf-8?B?MTdLNW50N0tzL0pDOE4yTzk0NitWeXYzOSsyRUR6aDhLUTBQMHc2dUxtR3pK?=
 =?utf-8?B?RDJaZmRUZkY4akJRd0hUenppOE1PVVpJWlJHaDY1RjFpcGQwaFpWTVJnRk4x?=
 =?utf-8?B?MWxKQTdHTDdyUVo5RWhPVFB6djhWTHBORlI2YzZBQ1JQNHA0UmtBNUpXWUFK?=
 =?utf-8?B?VjAzMS9rQXF0UURTcHEyUU8vamc2dVdCZGxRTWVGaDNsdmg2UlFsaXU5TThS?=
 =?utf-8?B?ZEdkaDlPUXBBQlF1RkxtUnRTRmtUa0lLbWtWZHlHKzFwVGhzQTB4L2pCYStB?=
 =?utf-8?B?TFlpZVEwaHJReXQ3RWlPbE54V2t2NFJTNHR6V0s1ZjBBQUhtVVo4Z2poSU5X?=
 =?utf-8?B?bVQyYmFwdGJtVVk0NTVlOUR2TGxDMmZOWmtxZGk4bWd5OGRtcE5PK0xOUkd6?=
 =?utf-8?B?Y2J0c0NEMUdFQnFrZkRmNEYxb0RRWmZvVVgrU2ZsUFVZbjNiTUEwd0d6MW11?=
 =?utf-8?B?NHQ1cWtlcmhyKzMxaUpTcDhTUTlyeWxGN1Byek1BemlnS29rOS9OTTJqYldI?=
 =?utf-8?B?VGFPQ2QyWVYxWm1YNEx1MGVKRlJrQUlqelhpUlZlRUhHK2MzVVJ5Z2F1Nk9z?=
 =?utf-8?B?VTdad1NUV1c3dVh1TzFGSXJjeGRWWjBTMU9nTGJZczhIcmFWWGFGS3liM2Jz?=
 =?utf-8?B?c0R5NWNUZzlZOC94K3JIdUdPbW9rTGlVa3JiUjhPU3htdTUrUDBpRGlhbXFY?=
 =?utf-8?B?NjZMUFBjUld5Z3pJdmZpdVZ3RE53anN5alFoQ0hqbk1tUGFqMCswMXpRVkw1?=
 =?utf-8?B?TGh0TW84ck8vUWJsZHFncTJRK055aVR0SmhxWXRaZDRxTncvMVgrSVdQMUoz?=
 =?utf-8?B?RlVwc29MUGE1U0JZSDl5MTVlZUdheFdOR1UzUmc4UjUybHlEMnp0cVg0VUhV?=
 =?utf-8?B?aVBOUXNrMEk4emZneE55ekVEZFJpSjBUb05YS0dydnpmWjdGUzFWeGZpNUFZ?=
 =?utf-8?B?ZFYyR2txb1IrOXJlOW03cmJJRThGNm5nSG5KamFWSk1qb2RuZ0E5azlHQzZw?=
 =?utf-8?B?a2Y3ekgxSS9QRzA4OXJJVWZkRm0wNE9RYzl4b1IrYkZ0cm44Ris4aFJLMDlv?=
 =?utf-8?B?bEVOcGo3SElQTWgzWXhDbUU5NHpFWS9FdmVxU1RZVUJ1aEtScVNZTWNEWFVH?=
 =?utf-8?B?d3VMOUc0cCtSRnExRTF0Z2hpdmFpTFdMN0k5alUzNllXWWRCSlp5UDFSelFu?=
 =?utf-8?B?ZTZZZWh4L2cwT2xVU2J5TFJWR21EeXdIcWlQVFBMWFNIV2tpWm9JRGtGMG5u?=
 =?utf-8?B?WWUrOTJSQVBPZzEwVW9PZVhsWnduUER6NlcyWHgyRHIraWtsbzhyTnBNQnZz?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e10197ba-8aab-4c75-3249-08dd2ef44851
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2025 08:21:27.9070 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lqs4drFfjltTQzLwPr51nLJw6saC0Ju94SWXBTVN9ynYd890aWurmyx2Ycb6KkZ+B30B35JAw8ZYRD44W86Pddn1EGNVM7Kedo2j3WS5WFc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
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


On 1/3/2025 8:44 AM, Ankit Nautiyal wrote:
> Currently, when bandwidth is insufficient for a given mode, we attempt
> to use DSC. This is indicated by a debug print, followed by a check for
> DSC support.
>
> The debug message states that we are trying DSC, but DSC might not be
> supported, which can give an incorrect picture in the logs if we bail
> out later.
>
> Correct the order for both DP and DP MST to:
> - Check if DSC is required and supported, and return early if DSC is
> not supported.
> - Print a debug message to indicate that DSC will be tried next.
>
> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Thanks for the reviews. Pushed to drm-intel-next.


Regards,

Ankit


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 7 +++++--
>   2 files changed, 10 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 0d74adae2ec9..4fa0e0b675b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2642,15 +2642,17 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>   			dsc_needed = true;
>   	}
>   
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not available\n");
> +		return -EINVAL;
> +	}
> +
>   	if (dsc_needed) {
>   		drm_dbg_kms(display->drm,
>   			    "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>   			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>   			    str_yes_no(intel_dp->force_dsc_en));
>   
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
> -
>   		if (!intel_dp_compute_config_limits(intel_dp, pipe_config,
>   						    respect_downstream_limits,
>   						    true,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index fffd199999e0..0433f2ff77e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -633,14 +633,17 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>   			dsc_needed = true;
>   	}
>   
> +	if (dsc_needed && !intel_dp_supports_dsc(intel_dp, connector, pipe_config)) {
> +		drm_dbg_kms(display->drm, "DSC required but not available\n");
> +		return -EINVAL;
> +	}
> +
>   	/* enable compression if the mode doesn't fit available BW */
>   	if (dsc_needed) {
>   		drm_dbg_kms(display->drm, "Try DSC (fallback=%s, joiner=%s, force=%s)\n",
>   			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>   			    str_yes_no(intel_dp->force_dsc_en));
>   
> -		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
> -			return -EINVAL;
>   
>   		if (!mst_stream_compute_config_limits(intel_dp, connector,
>   						      pipe_config, true,
