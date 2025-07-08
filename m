Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB1AAFCEB7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 17:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F95A10E681;
	Tue,  8 Jul 2025 15:13:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GXM5SfhW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BDD10E137;
 Tue,  8 Jul 2025 15:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751987628; x=1783523628;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kRAQQ1GidVEyLhZ1UPraxYKj2+g3O4JXI1C1t/Er/BQ=;
 b=GXM5SfhWz21zCqRyYZX1KHpCPHtM/fx3U5FJZ3LpBIsKQzXX0nFNiyb+
 EWJ8b6k+C3gr017aEOBSLSIbtIa0B+ad7UytY47Q2jKSTUh5F9KIHhCoA
 K744Tx8FbR1z1o/1pMlbGIf77CjxlpPSikonu9E2iUV5vVHhwV4T1XvoI
 XYkggga95k+VycjWzQViDoISKeN1gPRBrHNY2ERIcadaC+2GlYZFlq+sy
 hkY5HcG2uFTbSjccYma7iabtSSDgf0Ks7mAVYLCyK+M2wkEzr+IGMJvZv
 0lS12dv2YV+6Lt9TpufM9ROZdu85F18erbE5JUKKgtU+MwZXvOrHHT6ye Q==;
X-CSE-ConnectionGUID: vPcOUu69QIe4YixDcJLRMg==
X-CSE-MsgGUID: NpkqsnEhRluyfyNQcV1O6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="79661873"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="79661873"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 08:13:48 -0700
X-CSE-ConnectionGUID: n0ojScx7QC263q9DNV6Vow==
X-CSE-MsgGUID: UIETrXIDQNKWRXn2l8kGPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="179201028"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 08:13:47 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 08:13:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 8 Jul 2025 08:13:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.72) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 8 Jul 2025 08:13:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wIdqP1sUUrx3AsRwEJB321FVOs0jzyzoUQ/mIYwwDL9xQv5xcbfK9uI1+tzi2fceR60OaoSgQVg8+LOpSiL/rslZKQycwdZ9Kvrk+123jpnjxYwFerPKG0aiBhO2p4xxzp/qwqhh7BzwbmkcXbmtrpTs8C9CmxhT77ZJd2UQwV6daZEVKo7HC5C1hlD0xYyNESoUaBlkiEviIBLVQPy00jJ0Ecnj9CEBALPzhxzplDzK8aqXJh5xun2lw8AQ9oR13buoF8wgDuEH4/MRHFxGOxwzkFcu1FBa4wh7IaQ2l1pOKufCOQWvx2nL9wzzMSOxwNN76xLoZADObkio3BH8WQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=06E0BnMIWuNvmM8JCGUbgn0O3ufQ6Yey9PiaIrXAWK4=;
 b=CuooinBalE9bfnCrU8p1MQz3ioA8on6py1I0ufgemztPXmILEt6JmfmCBsKvC0uxcQa/5c106+I0a+//+FNZAExHnx0e2180SfoGfJCC7s7EiHBsNK4P6SndXmLszFaSaJ+dj0NIiXrDLLduiNJ6WsU7P5ZHYv9Tj9Fnqq93kpDCGQZG2LedRj60dCbf7lNirtvKPmgJUG7OYTvTUaG5rpTHv1U0s0ngvVO3PZXOZC9hAv7/VKlz56/dULcgwYhbdJh6ey01aUN8m1vjJ8ae4/MM/zY0eCi/WqUalT3c0kpYvxP7EgUhHv3THdWmJZAwE5PYe+/KqiXQQQEMoFfppw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.25; Tue, 8 Jul
 2025 15:13:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8901.024; Tue, 8 Jul 2025
 15:13:43 +0000
Message-ID: <094d5dba-3483-4133-99e8-9e32d42ba2f6@intel.com>
Date: Tue, 8 Jul 2025 20:43:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND 1/1] drm/i915/dp: Refine TPS4-based HBR3 rejection and
 add quirk to limit eDP to HBR2
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <stable@vger.kernel.org>
References: <20250627084059.2575794-2-ankit.k.nautiyal@intel.com>
 <20250706053149.3997091-1-ankit.k.nautiyal@intel.com>
 <aG0nwwRNpH7X7BNg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aG0nwwRNpH7X7BNg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0015.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: 3854fe5a-126e-4173-a5ab-08ddbe3206f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlZJL3VjMWsxZXBKRDJOeEJYV1J5YklMRnNxZW5BaXd0M1lNSjJ5N2N1UVlW?=
 =?utf-8?B?V2lEMVFRY3dkWnBIemt1clc2cm1JWnZBaGZzZyt5b2V6K3ZUR0VlWisycFc1?=
 =?utf-8?B?RURKaFJBRVB4ZDg2b3FJdHRDdmhjZjkwVmoyVGQxNXZJdFVlWGxEdHN5TnhX?=
 =?utf-8?B?NUw0Smt4SUpjaXRnQVRwMHpaN1hOOHlwT3Z6R05TcXB1N09jdlZlS3RIclpS?=
 =?utf-8?B?WnBndUhOWEJFMllGVGkvc1pNMGxrZW90VlFrQ2czaXBOUGFpY2N1YnhSVWc3?=
 =?utf-8?B?c3o5MmhXU0F4YjVNYUd3UGlqWHlHSmNiMEIwQnlMUWNEOVNRUWpwK3NSQ3Vv?=
 =?utf-8?B?NTVtNFNORXJUQ2xLMHJTeWlrRVNWQU9vTW5xWTlOelRlRFh2QjVXSC9HM3FX?=
 =?utf-8?B?OEhPTmNzRlFRWGdWSDlnMXIxSXVReWx0RW9tODB4by9leHh2aVR1anROYXZK?=
 =?utf-8?B?QUhIT1RlQTU3a3NyK2F6Rkt4U05IM1V1T2V2YzlQUGcySUtIeWVua05WY0hw?=
 =?utf-8?B?OWN1VDl4VU9MaW5iS3pOa05FNWdmeExDRjVzZzkwclhWbmFXUnlGZldKTEdI?=
 =?utf-8?B?QXEycEtML1JWL0JxR0h4ZTdQbkVXVmVtTTNkdCtXMDZtaHNuck04SllpV3l5?=
 =?utf-8?B?NU9lUzhxVlVGRHM1V2JYQVZqN2xReHVvSlQvck85bklTUDl0NVNlQzg4eEdS?=
 =?utf-8?B?WVJkTUdSaGpJZmViS1B0TUZzblN2Z2JxL1g5MmVUdC84b1JDby9OTDNRQlFk?=
 =?utf-8?B?THFNZWp5WXNtWGlpaU12djUraGlaUW1NMysySlFuMEptMEZsU3VORTVLSEhl?=
 =?utf-8?B?RDU4dlpFbUJ6dGYyU2RTY25xM3VOSEZWcjdHVmY0eFhrK2hMTUQxQ3dlRlpP?=
 =?utf-8?B?dmVhbk5Oa0ErWXVEWWhXNXZjTVNQTEtRZ0wrY2l0Q0I0b1hQWFJnSlcyL2lH?=
 =?utf-8?B?OFJBNVNtM0RxQ0gvV1FEVklweDgvdlcxWStaZkRZUkIvZFEyNUlHZjRobHEy?=
 =?utf-8?B?SkJBeVVWZXRWeVBRVUYza3lZZVdkcEJqcTRqc3AwaXhFeGIzblE1MENlYys0?=
 =?utf-8?B?WEpZUVVVVFVkUUpJY0hpNHNtSmUvZlNiRU5CWnQ5aUh4aXpkNnBtR1ZRMVdB?=
 =?utf-8?B?Q2dVZSt3U29EdVNFTm03eWVPV1IyQ05BVkZ0RlRCdnJDZVFVVFJJRk9OYThx?=
 =?utf-8?B?Vm95MlY1OGF3aXFKaGZFTnN1ZmIybWd6RVA4aDlod0NLRTlGcjI1TklycFk1?=
 =?utf-8?B?QlU0SDEyRGN5dUVhYmhtSUNHWW4vVWNEMnRJSXdFbHBZN2VkeWlOaVBMUUN0?=
 =?utf-8?B?elhPczcrZXYyYUs2RzVSM0ZpK1FCRWlJVG05V1ZEeVljYXJSb2dMT0xGNEYv?=
 =?utf-8?B?dU5BYUpUK3JaL3F2Nzk3a3U3TkJSUXNWdFJhamwxOFVEZWpUTm5IS0kyWFVv?=
 =?utf-8?B?NEZDR0x4MDBjdmdDQWdLZzdNcGFMS2JNYnoraTRUWVNFMWRYcEhDcm5waUFY?=
 =?utf-8?B?ek9uTVc5eUh4RVhqT1BSRHhFZWIyUUZjeVZmL2RkRFFSQ3IyejQzUjVoTTlZ?=
 =?utf-8?B?cXlrcldlb0lyandSSVU5Uk80YnVtbTY2d2FYMkd5SmdwdXFiaDZVekxvenQ0?=
 =?utf-8?B?Z04ybUtzMFNSNlB1aGNwQzhrTW5uemszNGQ1eTVxSmdQTklTWVBLdVhQVlRL?=
 =?utf-8?B?ZGpWMnI2WDFkQWc5MmUwNFV4Wm9GSFhac0RnQ3AyVjNobEk0SFNBSFJmMUNz?=
 =?utf-8?B?eklTTEQ1RFIzSzBtMXp1YjlYNnNzckRNYmJLQmVvZmlaamtPa0phQzNxanRY?=
 =?utf-8?Q?ahFO7DeUcJA4F5z5Mnv7QtBsht2pclr0z7XjM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SDhEbStheXdQU0lJN0VPME1SS0JNNzU5eXlqMmtPdmhNTG44ZklmcEYyQk04?=
 =?utf-8?B?eTFKVWZqQ3A3bExqTFVTckZobC9wZEhNVER2TlNROFdkZStoQkNlTkpDbzlK?=
 =?utf-8?B?SkExTXptUnp2ZnNBN1BMaktSSStIalhOOG9XRlpTazd1V1FMSWpGUjFQZXkz?=
 =?utf-8?B?ck1qVk1HdGVqdXJYbXdlcW5xSkY2NVJSVkI5TWc3M3F5YWJCODcwNExvWXZj?=
 =?utf-8?B?Y1F4cVU0Zlp2QmdqOEpkRnVuT0NYQzZCSk1nV0NGZWFkajkyNzZhODYvRWQ1?=
 =?utf-8?B?OXBBcWtHWXp2Uy9HNlQxcmVFbXNZczJOZlNOQUF5MjF2UFBOTVI4dU0xSkJC?=
 =?utf-8?B?NXBvSm0wNjluQW13eFY2N21RYUxZeUxVUkV4bElWdVZkVE5IUk1ibm5DZjQ0?=
 =?utf-8?B?SlJzU3pIVTNwdG5BWjhPVEFybUJRK3RPZWtLZk9rUHZERFY4SnlZb3gvRWNq?=
 =?utf-8?B?d0dWbytDVWdIQnZGTVhQVDBlaTRQSUwyamdvdkpDTU55Vm1YRG9udWtoSmd2?=
 =?utf-8?B?c3o4SDNJNWk2MkhGU0xJQmI2dnNVYmFpYjNDL3FpMFRpUDd2eXJWZHY1NG55?=
 =?utf-8?B?RmJGRFltM0F0UGEvZ3AzN1BOUUhHQlpxY2EvRzlORjZDM3ZYQmRYYlMreWlv?=
 =?utf-8?B?Y2ZzK3lWQSsxM0M3NHNZOHlic1lwb2Z1dkJFMDlSek1abHRvby9Cdmx6bkxu?=
 =?utf-8?B?d2ZEblJWclc3SzAvSTU1ck5CU0tHRnBoNStwMlBPc25YVkxXUjNKclE2ZlNs?=
 =?utf-8?B?RitBRGV1UUk0Slg5cS9lTWprN3JDYXQ0dWxiZXVnZ3MrWUlSZ2FsVG1acmZs?=
 =?utf-8?B?dG0rRENCcGtWeUx4K1ZCRWVjZ2ZTTmx6RkN4aGlpendIZk1WTFovMHAwTi8z?=
 =?utf-8?B?alhGc3VEclNWbDVWWTE2V21acmJXRDFTK0p2ZW5vanJyVzF6L3B2TWJ0TGw1?=
 =?utf-8?B?SVh5ek1yazNRMjBBb1NIVjBwMDFKbVNZMnlld3VMaUw0YjlUbzhreVdFMVU4?=
 =?utf-8?B?WkEzWjBrWHZYelJDdGs5SGtNVFhBdUZreVdsb2Iwdm9DM1NkaUNjOTdRVTJu?=
 =?utf-8?B?aUJYMlhwSjBFaUV1b1ZsZkp0a2RmNlF3R1lIYXV5WENsVlZTYUdjc1JLTGw0?=
 =?utf-8?B?ZDZhVWVZeEowN2xlK0M2ZGVBRjJRRlVDNTJPcElKanp1dlBsUXkrd2k5enlT?=
 =?utf-8?B?THAvZENoWFBQK1VmN2V0WFNXdnl0L2xoVWRFc1ZmK3llZEdQZCtKME9STjNp?=
 =?utf-8?B?a1J0Zmp3Wmhtb2FkdGozWmlyTUdVS2xBNmVHMDByR0ZaNlNLQWp1Y0o0RW1S?=
 =?utf-8?B?bGRNWG1JemhEcU1CVENyZlBsWjlNZVN3ckpNaDZzZFZLRVR0bHdYVHU1SWJv?=
 =?utf-8?B?Z0RuY1p6N2VCclZQVVdYNHVjcW5xUm1OSVF3T0VRdEU1L2xTSGdUM3NLSFZ0?=
 =?utf-8?B?cjVITzIyUnVqZjZmM1lBaDNvdER2WEZVWXVQcmJWVHBGNUdiU2dvMVp1THRV?=
 =?utf-8?B?RFl5TnZXa3B2UmtJZ3IwUmFiaGtqUTA5Vk1vaXYzQzgwdFZzVi95V2Ezb04w?=
 =?utf-8?B?V04yTmd6cnN5UFBIRVNMVXcwYXdYMDIwSzFFUTI5YjhyTlN2Y2t3eGFkYlVh?=
 =?utf-8?B?Y1ZVWkVzS0ZQdHZnV3hQU01wT1lWTzJVNG1PQlFtWkJ1b3BMZXh4RG1Vcm5Q?=
 =?utf-8?B?R0RhL09reFlEczZDNTNwYjJ4UUtTc1hSckkwTW5WTFdSS3k1TzBENHNpVFVE?=
 =?utf-8?B?blgyaG9GbGYyQU1XRTcxT1ZmNEd0ZHA3aUJvRFNvRk1IRVQ0bHRrZ1hBZjZ5?=
 =?utf-8?B?bjh6NXkvTUh4WEV0ZjZ0WjVUc09tUjFRRHFCenZRWFlNTHBEYWlFTWwwQm5r?=
 =?utf-8?B?alM4eC9xSFR2bkdVaVFRS29oMFhZb0wxSnZ2U1JVU0tHVW5mejRCU21BdjlF?=
 =?utf-8?B?OXNpcFN5c1ltMEE3SkFTMFQ2aFljenJVVlcrS0pTeXA5VmN4WHIwZllTcFBr?=
 =?utf-8?B?SFZxSnJrbi9WOFQvMDc1aG5kWGIzMzcwWS9JdWE4d0ZqdDAzNTFPM3VQMjR6?=
 =?utf-8?B?YkVGTlpzemxuNDRUR3lRWDBucUUydTNWVEsyN3JtTzZWYmxpVDJqdGVJOGRv?=
 =?utf-8?B?TE1HYzM0RjJzTVBLUFlXWmcrRE9lS01nWkhlR2Z3QUFxMTVHckc5bkYybUhr?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3854fe5a-126e-4173-a5ab-08ddbe3206f5
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 15:13:43.4369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jKuBxSMJHMXvU/KGJ+JzB40wefH59Pc4kneb0PrnWP06ZDsWVprs2Fyrs9XHZ3XUv6J+ste/EnGKWadSGSMwsxkq8P4zjiGJNUKNaTqg/84=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
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


On 7/8/2025 7:44 PM, Ville Syrjälä wrote:
> On Sun, Jul 06, 2025 at 11:01:49AM +0530, Ankit Nautiyal wrote:
>> Refine the logic introduced in commit 584cf613c24a ("drm/i915/dp: Reject
>> HBR3 when sink doesn't support TPS4") to allow HBR3 on eDP panels that
>> report DPCD revision 1.4, even if TPS4 is not supported. This aligns with
>> the DisplayPort specification, which does not mandate TPS4 support for eDP
>> with DPCD rev 1.4.
>>
>> This change avoids regressions on panels that require HBR3 to operate at
>> their native resolution but do not advertise TPS4 support.
>>
>> Additionally, some ICL/TGL platforms with combo PHY ports suffer from
>> signal integrity issues at HBR3. While certain systems include a
>> Parade PS8461 mux to mitigate this, its presence cannot be reliably
>> detected. Furthermore, broken or missing VBT entries make it unsafe to
>> rely on VBT for enforcing link rate limits.
>>
>> To address the HBR3-related issues on such platforms and eDP panels,
>> introduce a device specific quirk to cap the eDP link rate to HBR2
>> (540000 kHz). This will override any higher advertised rates from
>> the sink or DPCD for specific devices.
>>
>> Currently, the quirk is added for Dell XPS 13 7390 2-in-1 which is
>> reported in gitlab issue #5969 [1].
>>
>> [1] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> [2] https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
>>
>> Fixes: 584cf613c24a ("drm/i915/dp: Reject HBR3 when sink doesn't support TPS4")
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.15+
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14517
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 31 +++++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 ++++++
>>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>>   3 files changed, 39 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f48912f308df..362e376fca27 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -171,6 +171,15 @@ int intel_dp_link_symbol_clock(int rate)
>>   	return DIV_ROUND_CLOSEST(rate * 10, intel_dp_link_symbol_size(rate));
>>   }
>>   
>> +static bool intel_dp_reject_hbr3_due_to_tps4(struct intel_dp *intel_dp)
>> +{
>> +	/* TPS4 is not mandatory for eDP with DPCD rev 1.4 */
>> +	if (intel_dp_is_edp(intel_dp) && intel_dp->dpcd[DP_DPCD_REV] == 0x14)
>> +		return false;
>> +
>> +	return !drm_dp_tps4_supported(intel_dp->dpcd);
>> +}
> This feels like it's getty too messy for comfort. I think we should just
> revert the whole thing and quirk that one icl machine.

Alright sure.

Can this be done is same patch, I mean no need for a revert and a 
separate quirk patch, right?


Regards,

Ankit

>
>> +
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>>   	struct intel_display *display = to_intel_display(intel_dp);
>> @@ -187,13 +196,22 @@ static int max_dprx_rate(struct intel_dp *intel_dp)
>>   	 * HBR3 without TPS4, and are unable to produce a stable
>>   	 * output. Reject HBR3 when TPS4 is not available.
>>   	 */
>> -	if (max_rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> +	if (max_rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>>   		drm_dbg_kms(display->drm,
>>   			    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>>   			    encoder->base.base.id, encoder->base.name);
>>   		max_rate = 540000;
>>   	}
>>   
>> +	/*
>> +	 * Some platforms + eDP panels may not reliably support HBR3
>> +	 * due to signal integrity limitations, despite advertising it.
>> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
>> +	 * known machines.
>> +	 */
>> +	if (intel_dp_is_edp(intel_dp) && intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>> +		max_rate = min(max_rate, 540000);
>> +
>>   	return max_rate;
>>   }
>>   
>> @@ -4304,13 +4322,22 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * HBR3 without TPS4, and are unable to produce a stable
>>   			 * output. Reject HBR3 when TPS4 is not available.
>>   			 */
>> -			if (rate >= 810000 && !drm_dp_tps4_supported(intel_dp->dpcd)) {
>> +			if (rate >= 810000 && intel_dp_reject_hbr3_due_to_tps4(intel_dp)) {
>>   				drm_dbg_kms(display->drm,
>>   					    "[ENCODER:%d:%s] Rejecting HBR3 due to missing TPS4 support\n",
>>   					    encoder->base.base.id, encoder->base.name);
>>   				break;
>>   			}
>>   
>> +			/*
>> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
>> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
>> +			 * the known machines for stable output.
>> +			 */
>> +			if (rate >= 810000 &&
>> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>> +				break;
>> +
>>   			intel_dp->sink_rates[i] = rate;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
>> index a32fae510ed2..d2e16b79d6be 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
>> @@ -80,6 +80,12 @@ static void quirk_fw_sync_len(struct intel_dp *intel_dp)
>>   	drm_info(display->drm, "Applying Fast Wake sync pulse count quirk\n");
>>   }
>>   
>> +static void quirk_edp_limit_rate_hbr2(struct intel_display *display)
>> +{
>> +	intel_set_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2);
>> +	drm_info(display->drm, "Applying eDP Limit rate to HBR2 quirk\n");
>> +}
>> +
>>   struct intel_quirk {
>>   	int device;
>>   	int subsystem_vendor;
>> @@ -231,6 +237,9 @@ static struct intel_quirk intel_quirks[] = {
>>   	{ 0x3184, 0x1019, 0xa94d, quirk_increase_ddi_disabled_time },
>>   	/* HP Notebook - 14-r206nv */
>>   	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
>> +
>> +	/* Dell XPS 13 7390 2-in-1 */
>> +	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
>>   };
>>   
>>   static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
>> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.h b/drivers/gpu/drm/i915/display/intel_quirks.h
>> index cafdebda7535..06da0e286c67 100644
>> --- a/drivers/gpu/drm/i915/display/intel_quirks.h
>> +++ b/drivers/gpu/drm/i915/display/intel_quirks.h
>> @@ -20,6 +20,7 @@ enum intel_quirk_id {
>>   	QUIRK_LVDS_SSC_DISABLE,
>>   	QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK,
>>   	QUIRK_FW_SYNC_LEN,
>> +	QUIRK_EDP_LIMIT_RATE_HBR2,
>>   };
>>   
>>   void intel_init_quirks(struct intel_display *display);
>> -- 
>> 2.45.2
