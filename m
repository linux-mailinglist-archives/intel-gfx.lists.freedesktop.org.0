Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BCFA77E0F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Apr 2025 16:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D24610E070;
	Tue,  1 Apr 2025 14:41:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QfFej7sV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C128510E070
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Apr 2025 14:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743518505; x=1775054505;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=b7vp2rpyLPVRsLgc3iLdWNaJTUkyHiYuG9FWM3BqbI0=;
 b=QfFej7sVvNmNxyD5WxmxF77JTm2FGfbGYLnvpu+q4GqlcOdZfwPiDrfo
 rQjDn2JnQ7SK14FrOhozm0qLIs7TrN4reCnrEeuZsiITMbClDnzSMCBi0
 eu8u0cARWzuuuktIXqxUo8CCNvikesW7XJ/Mf16/9AQ69J1mkdkVuAqSy
 JYI6TYsBxn4cnUTx4o8NTIZoMCeEKg2aVWCFukWA2F9leYeYrRzlJ4TWQ
 viOYhijx+ZG8JEKP2X6hUV8nJ9kj/w174S7Zqp8Csjfim45+K8nxOiEu9
 KezkQuI51i/HqlxKEOnNKcXCrrTjV4MNN6FPGnYnAEurkWhV2Vh4oHjme g==;
X-CSE-ConnectionGUID: b/KlFEkcRmW4GjqYpoJSog==
X-CSE-MsgGUID: QHgHLNMYTbWxzQYrExm0PA==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="56215673"
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="56215673"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 07:41:43 -0700
X-CSE-ConnectionGUID: vm6hel40QT+h2J03Y+5vBA==
X-CSE-MsgGUID: v0n67GO8R0W0SN2z7rrtxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,293,1736841600"; d="scan'208";a="126929105"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 07:41:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 1 Apr 2025 07:41:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 1 Apr 2025 07:41:42 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 1 Apr 2025 07:41:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hDIyIi/JBiqehb41aoEeKmvUlCWxAoV+uftY3EZVspR5mlrGdwYG6juviE3XYDTqQzdhZN0Z0bFSr29aiqQ0O+SD4AejCsAN+eRRu6/hgPMmEb5/jwSrIu3jFYxw66JPyx8KX9s/UgKytmncAp/Zj4VoUpNbODZRvu7jwmQm20umISf7CgJ/fJOp2xv92SScqFLQXYOeLg0Y4vR6/okSa1Z1Nk9jgzjAyFFEdbBKcu7QhAxy75ulhTYeeYWxPvmkoTicHc0BwOQ42cpFxNH4sVeruPo2KgLfN7RuOO3Z5YHxjT+4GjCEjUzYzMmHr9wo8C+h8aj33UmzzUcdShFlnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EaY0xoro0BOkKvppO3tCuUrL1unPU1iJlifOT7BYo34=;
 b=N0aGyrRcX/CgUXLpMjzciW3zxVmhXcl0wMgJmVDCGAWNhpsp9uux/lAPToGOU40TwD/0rmZFMSbup2f7rnJWLw3JjzcptI56Xch7Uaf/lbl9/h422aVsCUlkC6M4yXEcI6KiPXBwXqXw7MJg7SfAtfcWB2YON+Zb1ooNfrCziZeXHbGzlov0gumax3U9ZaLXR0Ej9eUh/6JLmQWpqWKRHS1IL1j5VEoBeSNHp0gBMin90s2tK04NUIEnoIQSIdTMzbgiOtHQPd3648tLbeMogm9D7ulYS7HY++/5ATtHf7NNQa38jP+6mt46NTamgChVKLWBVFR7wNjTLLZZ2WN9Og==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by IA1PR11MB7890.namprd11.prod.outlook.com (2603:10b6:208:3ff::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Tue, 1 Apr
 2025 14:40:53 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8534.048; Tue, 1 Apr 2025
 14:40:53 +0000
Date: Tue, 1 Apr 2025 16:40:44 +0200
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/selftest: allow larger memory allocation
Message-ID: <csqgdpprwr43by5dcooi5jxcgftshcsjc2cw5g37tamprqeuwe@w5axoudbrhbw>
References: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
 <Z-eeySKZOXVESzy1@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z-eeySKZOXVESzy1@ashyti-mobl2.lan>
X-ClientProxiedBy: WA1P291CA0005.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::28) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|IA1PR11MB7890:EE_
X-MS-Office365-Filtering-Correlation-Id: 67fe4c66-a723-4178-6e19-08dd712b346e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VWp6VXBxbHdRQkZ3T1Y0bENkVDVZY0RsTG1Lb2U4NGo0Y3ZLTHdiME95dUYw?=
 =?utf-8?B?RkFvY3R1bUUrRHVtaGlYVHVRdzM4ZjhxaDRXMnNCUG12RDJqRXNHR1lvL0FN?=
 =?utf-8?B?MmxYMUJuVUE3SnZ4elpiK1p1UnNCRkxpS2F5S3dLb25ydTlQVmpGeWJrd2ND?=
 =?utf-8?B?V285TVhwYUZJRTQ4WUpqWHg0SXIyTE8rV2RDS1BtYjhtN2liMXB4YmZGeTFD?=
 =?utf-8?B?WHVJcEthQXVEYUQrMjR0RGlPV2gyN0lhT1FjbmhYUC95V2JiQVdpd0JmWlhH?=
 =?utf-8?B?R2tHOWlURk5RVmZOMEltNFcwVFVwa251TlFGZTFsaWNNbi9OVkFnc0tUS0NY?=
 =?utf-8?B?bmE1MVRMNHZQbmtrYWVYUTV0YlRaNVZLTW9kSlh2eDBxM0x5ZEVYZUNQSm1k?=
 =?utf-8?B?UWlTdjhLZWc3UDZoeHFxbm9YMGpUcHRKcys3emEvV3ljNmdXQlFVaEVKTmw1?=
 =?utf-8?B?TWFyNTFNODYwWUVzaEpyaUN6L0pvb05OUDZNUGpBUVJYTUVBNDNvOUYwSmly?=
 =?utf-8?B?WlhJa3dBbkw2VFJxTDV3MFZ1QlB4eGhrSXFiT0lBU2lLTHRIZTYzSWZNTTFj?=
 =?utf-8?B?bnlYaFFRQjN3Z2ZyVzcvcnNqVE44U0JnelZGRktSK3A1Y3F1RFVrSXFwb3JL?=
 =?utf-8?B?WW1ZM09qNHVOYm5YU2xPQVdwOW5hWjRqTUI3L0xjMkhSeDJKVHZ1eHpLc0lo?=
 =?utf-8?B?WDFXZ0Z5MkN1YXRZU0JlTThzODhjY1FuLzc3RzlmTGNzMmhVQldscXFlaFdW?=
 =?utf-8?B?N0J0cnVsR2dkTmJ5bFFLK1o3cy9wS2lGdXkxaWdwWlRMdmxQRTV0eGFWNlUz?=
 =?utf-8?B?Yjdqdk4ybU5kQzlWbExsUU1KQmdyK3dKV3hZMDd4NU8xU0V1MXdFV0tnbUJa?=
 =?utf-8?B?SHFpNi9VLzVDenBHN0p6dGZHaEgxa0tBdlQ4M3E2cTcydFppbGlZVkFsV3Bl?=
 =?utf-8?B?Y3lBKy9SS0JlUTlXSmVlR1duaHhwTnRONC9uaDRCR3dTTlJxRk5RQVFpRnFm?=
 =?utf-8?B?Q1pYZW03UU1vekhUc3Z6WW5wRzgzTnc4YXJNKzBlWDVZK1dMZUxVd2JKYUYy?=
 =?utf-8?B?V2wrQkwxTVJiSW1lZitUTUJlZ2lsTlZGZlFqYnRvRWdLUmFYOGZjR3NPOTFJ?=
 =?utf-8?B?di8zNDVvMlVGTDVvcFlPYkQybUlsYzMwYlVmSFBXTkZ5ZnZlRjlFUmxUL1pP?=
 =?utf-8?B?a0pidlBrUkF0dm9KcXlmV2prSnV3bmxuSzFjc2ljYWhybGZKOG9MZE5zeW8v?=
 =?utf-8?B?UE1WV2lBQzJOYkRDb1ErcThYRW1hdnVmYUwwUXl1a1MxMzgvZFRsWThQWWdu?=
 =?utf-8?B?aHNzVjFTL1paUDNWTXY3aHY2M0JmdFE5VTdEalFsWGgwY2M0bkhiSmltTEtt?=
 =?utf-8?B?UFc2TTdST3BOc1E4NCtNUWpiTDQ4QlJibkxsREFEN0NTdHZEVkYyU3ZGK0Z0?=
 =?utf-8?B?Y2RtR09sMXhZcXZYZHc3KzRKUEtvbkhlWmpPMyt6NkRTaUpmQU9lc29RY01D?=
 =?utf-8?B?Z0NkNkRkNFRWVi96Sk1TNWRNbjhPeFNoSUNEc2VPOVpCbGJXZllaWTZ2emRC?=
 =?utf-8?B?THRlZ1V1ZUtwYUlqbW8zVUJXMzJJZmk1bDJ2aC9xT0h1ZHNRdXVKRkNuSGF6?=
 =?utf-8?B?UUJyNHdqU3lUQVU1RmhmNmxBVk0yWEJHQmtFOHNFbmErY2JhK25la3FQVHZw?=
 =?utf-8?B?cDdFN0w1cXRpbHVhTHZhenRDQjFNOVkvcDVqNXJLZnhrVTFvMm1VRE8rZHN1?=
 =?utf-8?B?TlNub0NjckZSVVBxSDAzTVBLanlNaTBjcEwxVkxXbTRLME0wWVpYajhzUWw5?=
 =?utf-8?B?enlqUTh1aEhQczVKMGsxZmt3MWNmb0tsZHlCQmw4bE5vUXl3cDROVkhsQXVo?=
 =?utf-8?Q?AlQk98LWAqwJq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eEFvSmdrN3hCQ2pXdGJHay9iVFd3Umx0RURCTlBVYWh0bWU0Rm40cys0VDZF?=
 =?utf-8?B?NWc1cWwvU3phaHpqTEhMT2RrQnlvMmV6Z3o5VVlueDFaOXU4WnJlQitySnFu?=
 =?utf-8?B?ck5JTEJkUUx4Y1pqd3NIRkx1ajNCTmU2bFdFZkx3aWxYcyt4bW1VSmdEVnhX?=
 =?utf-8?B?dXp6U2c2NWpUMGNvN1hkdjVFWWhYZE80dTFQc1IwWmRzMUI2b0ZDaEtwSEtz?=
 =?utf-8?B?ZkdtclUrdlJQcHBpSzZzcEtHV25KMmFYcHVNckhzZDNDU1ZiMnBzMDFQcFMr?=
 =?utf-8?B?N09MdUVqaXFUSkR0eE5rQU1SRDdDT09oNXZZNnh0ZHcydW0yODFNeTFyMUhj?=
 =?utf-8?B?N1dKVXhBbXcvTGY1ajdYT2ZvYm91UFBPM2laYTdqQUR2QWUvV1p4NHZCYVRj?=
 =?utf-8?B?dlQweG83VFkrUnkyd0I1ZlRkdUdLYzJRTkhmZzREdWp6Rk5NbnhST0NaUHJN?=
 =?utf-8?B?L3dtbVpxaGNxR1BGclNXUUdsdzkzcjdZR29sK2NJUWRVUFByL1BnbjduZmZS?=
 =?utf-8?B?T2k1WHQ5c1JvaUtwaW12UmZLM1dRRno0M3dWT2plOHlFZ1ZSNGZFOU5jODV4?=
 =?utf-8?B?UklxSkc5c3VFbGVzdEJBT005U2t0TkdpN1RKQnduSkovYWhwWkhjbVZqQlpO?=
 =?utf-8?B?bUpwdG1mOUVJZHM3ZVcwZWpqdWlGZnBjSDI3N1NZVUhsR1lkUHRDK0Z2RmhE?=
 =?utf-8?B?b0ZIZTliSlhQd2MzTHZRMm50QUp2NU1OQTVXZERaWWVqT1FlV3ByNWZ1dHBY?=
 =?utf-8?B?cWhzRFJzRFNUV3ZtZWg2R0VTTDA1SlFRbzZGcHhhbUlqeTRJdmNhV0xZdmpt?=
 =?utf-8?B?MUwrMlZmWFVwWE5iOWpQT3N5QTBDeTllTitBekFUNEtYTzQxREFiUmd3Y1dN?=
 =?utf-8?B?K0huTE5ZVHpHZWp0OHJkSnpNeG8xdWdPTDh3MTltaDh5M2owOUdzKy9tN1Q0?=
 =?utf-8?B?bS95aGY4SGc1amVsSFkwUzZGbys2RFBwa2RITlYvajhLeDFtczJ1ZTVWY1FV?=
 =?utf-8?B?K2Nod2ZCekIybkYrbXJJTWdpbmxGVE5NcnhmaTNwb2FIQVZuRmdJZnA0RmFH?=
 =?utf-8?B?bjR3WWk3d3BGUjByYXBJWXdFWC9FL24va05BeUp5OHVSb0NyYktkL2JWdFNX?=
 =?utf-8?B?WmVYb2NicWpIdjF1QlRDdWZRYXNFMjI4SHN1QThDUjNFR01iUG9ldzM5RUwz?=
 =?utf-8?B?S09UMEhFUXZ2R2ZsYmNrV01JUEd6SUl5OFNXai9GeFR1NEtFN1MrREdTVFpM?=
 =?utf-8?B?Vk51RGFvVWZLU1Njd2trRzhEKzFHM0Q1N0ttWXQ1Z05VOUpMUFpsQktPUmpT?=
 =?utf-8?B?MlVsRFlDYzdqT3hHSXFaYkFMRlVDWG9PWm5zbTdLRXlXREwrNk5tNkdJdG1O?=
 =?utf-8?B?MTBNNjJaVEdpczBmSkVxUnQ2Y2Y5RkFYVlQvTFRBME1PRTdwYm15M3FNRnQz?=
 =?utf-8?B?cW5GdVA1Z2FGQWhCR0IzRHRIM2hFVjhiZnlVc3dIYVdFNXFOZldDZGdZNmNr?=
 =?utf-8?B?VTJmQ0FhTmxFWmx3bXBiSFpETnRGZzBXeVE3WDc4UmoyaTk0MkRncjNSc2JI?=
 =?utf-8?B?ZFM1THNHNzZCNGxvN3VmQjd2TEl3dEMyczVCWno2NXlncW5YMDd2aDRGazN6?=
 =?utf-8?B?K2d3T1hreVNpMDZEWDFkTGF6Uzl6ZlpmQm5IdEMyL1RvTEFrMWttTGhUbkpp?=
 =?utf-8?B?U2huVU0zRXMzZlV5N3pjMHk0d0p4MEdFaEczM01PcytiM1I0RXphTEhramo1?=
 =?utf-8?B?M1RHNzl4UVBCdzhReWVaS3RQOC9qNCtBaWgzNVZhNGpoejFBejE2VmREMmNF?=
 =?utf-8?B?clZIYWNxMkFWRkJoRGZkdzdEdVQra2VZOE1ubmJMYnN6RWlZM2NZTGpVckMr?=
 =?utf-8?B?VS9PMlYrdGViU29DOGRaYnlGOHRhNmlhWUpoWTBsQXJackJmUUVOcUhVeThu?=
 =?utf-8?B?T1dFWGI2K3R4ZDlIRVpxcTZWK0ExazY0ZlRIYzE3VjNjaS9qOHREVlVkTmJ2?=
 =?utf-8?B?dktBTTRkYkQwd1NLcWcvdGxLQlVyb2E0Z3dBTFdzYTZYL2M3OFdEZFdvOVdo?=
 =?utf-8?B?SW9nZVRkMm93SnZqamdzaVFxQ2hLY1VKSnJYa2ZNREtNL3BSMVFQZEZUNCs5?=
 =?utf-8?B?djFhMVNaeXViYlIraFh3KzlxT3VxWExPaWtoaitHWFlCbjl0dUlNWW1FbHNq?=
 =?utf-8?B?aGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67fe4c66-a723-4178-6e19-08dd712b346e
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Apr 2025 14:40:53.5257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RtCImqvrByr0bxl9I8lfEhUmL8LrkjAinkfEZyUCvyxHvqPOvxxK/VDei/XRdBNeiWuVuO3Wf+ShPor/+l9FYO/ubhxJfdvxKaQ+3adFbrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7890
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

Hi Andi,

On 2025-03-29 at 08:18:33 +0100, Andi Shyti wrote:
> On Fri, Mar 21, 2025 at 03:02:49PM +0100, Mikolaj Wasiak wrote:
> > Due to changes in allocator, the size of the allocation for
> 
> which change in the allocator?

[8569c31545385195bdb0c021124e68336e91c693] drm/i915:
Move the size computations to drm buddy

> 
> > contiguous region is not rounded up to a power-of-two and
> > instead allocated as is.
> 
> The allocator has always been rounded up instead of a power of
> two round up.

Look at the commit above, previously it was rounded to power of two.

> 
> > Thus, change the part of test that
> > expected the allocation to fail.
> 
> Is the failure part of the test?

Yes, the test expected allocation to fail because it expected the size
to be rounded up to the power-of-two with smaller buffer in place thus
creating the error.

Mikołaj
