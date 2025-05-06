Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D85AAC076
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 11:54:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EE8910E63D;
	Tue,  6 May 2025 09:54:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cbKTLWeS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2C4610E339;
 Tue,  6 May 2025 09:54:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746525280; x=1778061280;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u4amkc9Xt1OOzKRATm1uVx+qoyFA0sB1ySWVqRM8Te0=;
 b=cbKTLWeSm0MYK6G0z2/woPrBNi1Vt2aOyzLSoQlHqg7TMpInYqy3PXAR
 YzywrdtZbqcLTZUcKS5jFfx4/suKirraLOgLcmL1uSP/bHULlmAq2JW+0
 jqx1FW9tv3bs58lpPv8alAnVeZlRLlJmziUxdqNE85F8GefNeCacZhKY2
 2BLlpmcYtX0U/jbqz9ZoCr6tly8q9XQXWHf1vOKV6iZ5G48Q4eXWJUZSR
 rHc/UzR6YmtI7SYkiqFpO4iGzGtxGpCnJxeqrpwuhN1sOVolaMc08BFzg
 Uvyu27wQYMcOKgdEJkF1ZGTfc4O+dCc0dKAae69irkptkNjFO2GajpSX1 w==;
X-CSE-ConnectionGUID: IfYGRPT0Q1GatpAUgaekwA==
X-CSE-MsgGUID: AlpGz9cLRda4yerjNiGHSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="47895420"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47895420"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:54:39 -0700
X-CSE-ConnectionGUID: e2PcliRiSOigI3e3Yw+LEQ==
X-CSE-MsgGUID: ZCtYACsHQjyQFj8I+jH2CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135563860"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:54:39 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 02:54:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 02:54:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 02:54:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=apz8AcBDAdXiJHoFawjRssUVwdQCUxaIlXxxzNVfSWR2r6JZtGF+R0SEWFqpVhH2kacYTSwTNP6/pKW5jSlgr0BYt/xQ/kajuFaAnn8YeQLIxk4jl4o5A7BVYcT24sBaYOOF/Z/CLtapebqj//A8WdpK66NwQ32kXY746C1MSIvL4yGCAIztGw5QVDIrJ4N6wKXVHhJz88G7rEKeF5bB3wQrcKrcsjaJhdfuH9pHnIW5yCWH6rd9Tv7EARNMn9b2WdavPnWThm3e/XJ1/dRs6rl3grWRemcHX5PhOGtLmG7goQRJc4xkHMTOnGiCvS7LF9AwynQaOxKVWwipUBkzug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u6jysuPJFPyxiUxvuUkp1QSWDywDbZbW8CjIdFEPfu4=;
 b=NFZKSVZ6FxATWDuTm3HQ3U1/4FUGB5IW6duwsvISH2IyvEUcyfjtKyVcoETj5t92rtwYLkZw7g9un040VsuHXN+c/cRV9OUCQK6qdDsiEtndsCzfohsAOekYTS/MduVCp8vD4HEvL+lQHjEagzwSGCPN9J1QMIjb2gv/pBJhy4AJZLzavBtBdLtViqtlbRlieuPRd7QT2fUE1hN4KQ3lowB5gUX3acwWW71PC+oK6FF+opjWACdpdpHFIgZ8c+ICPG4hXe8ZZtxnPvE5frZq3kCb7RFn3eDHE21uLFpgKdb8rcITYwtF2tIbD0ovKjbf0sQgPjNA6OrqgZehhZSpZw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 09:54:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 09:54:20 +0000
Message-ID: <43f4f053-ba6a-4aea-9164-7393363b9a5b@intel.com>
Date: Tue, 6 May 2025 15:24:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/12] drm/i915/dp_mst: Validate compressed bpp vs.
 platform restrictions
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-4-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-4-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXP287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:49::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5256:EE_
X-MS-Office365-Filtering-Correlation-Id: 94ffaa3f-eb2e-4a5f-b8fe-08dd8c83f8f2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHdyeHNISzFGckV1Y25MRkJQR1hoYmJUVC83TXhyVkk4VEJ0OTBiWTN3cW1H?=
 =?utf-8?B?U0Y3VkVrODRXNEk5eGR3WmRSU2VIcjg4UmphZmI1dVdmcXk0OHY4c3JQemFK?=
 =?utf-8?B?c3M3KzVoeXMxTG5FcFBkZWdxTUFVVktwbDVNZWtiWGpueUt1akNYRFU5YmlH?=
 =?utf-8?B?MUlwRkcraDk0bFU1TDYzK2Q4WGxOUDFzZjdZR0ZNVXFsUm1oUEJmUlpKdFFw?=
 =?utf-8?B?T3dpekQ5aGhvTTVlSVUvZzBOaUxzU2hIQjBZUDVoREhRVURNQStKVDRWdkpq?=
 =?utf-8?B?RnVESDF0N1pqOG9BSkoyaWVaUnlXVW0zd1ZBTmw3aS9ZUlRsZkxVUnZDZG9Q?=
 =?utf-8?B?MmNRYVpIYnRzQTFwbmxhOFNWdlc5US9HVU5peTkyVXJRVlBPUU8wV0ZWSWFP?=
 =?utf-8?B?UTNESmVZdWk1Q2ljUStENFZxUUR0OWVCMm9VbVptdlRiY1VLNThHSEkrdi9D?=
 =?utf-8?B?d0NsMk44ZytDNHE2MC9wK0xjWTRIK2d4cElpd2tVU2VtVE5WZ0RCTzFjTmFs?=
 =?utf-8?B?Z3c5emRTNy9Ba2pVeTJZZnR5eStQNDBmUC9qODdxRGJkdzIrcWlHNTRIa0lm?=
 =?utf-8?B?WTYvMG5VUnNOR2FsemY3VGZqZHg1RDZ4UFVERW8yUUU4UHdsenFiRjlZSWM5?=
 =?utf-8?B?dWVlL2FodUl3enlBOHpBR1dLK2lWakhQaGRvZWpCb2tVdm9YRXNIb2VwUzJO?=
 =?utf-8?B?cGxodE0vN2xmMTdQOHNsUXRhODVUY3VmbVhTUkRlVFRkZVArUC95VjEvOU9v?=
 =?utf-8?B?TE83WXlZY3BmdVNRaHFVTE4zTFMwMzZzMUxHTWZLZU1rUzN5RlJxVVFXSDZk?=
 =?utf-8?B?eVc0VUtVYXcrMVRiSm90MllyWEFrRDBxWmZFZm1VWEU0TzhWRk5mNWhmckln?=
 =?utf-8?B?bWRRYndRYjlsdVNselVYa1Z3b2sySFZUanpkc2dZVFVUV2k1cFZnd2FqZEZL?=
 =?utf-8?B?WG5ObGM5eFNBVE5lMGQ4ckJGSXNBMFc2djFSUXpMUXdwQVlDWFhZeHN1U3dy?=
 =?utf-8?B?am54a3hFZ0tPU2pVUTZQd2FJR2taOU43ZU11MUpQRldMaXJPbTZLdzVsMWts?=
 =?utf-8?B?a3YydldkS1R6OVlUZDBvc3Z0NjIzQitFblNDNFUyY1pGR1NwUUhuT2xnb0dO?=
 =?utf-8?B?TE16alZuQXh0TG9KU2N4NFVFOThVWHNFUGNKNDhKK28yYXo2SDVwM2c4T3Z2?=
 =?utf-8?B?TFozb0lydHUvTXRVcHFrclVJRXQxNVJ5SHcweHhyMUZsZkhVMFFUM1g3b3pY?=
 =?utf-8?B?ZTFYREphcmY4TW1NVmZFV3RtTGVlbDcxbzFaR0o3NndZTk4zcms0cmg2TTNM?=
 =?utf-8?B?VFRvSzVIeEFkT28zakhHdEdiQ0ZnL0xFMDhxajRNVUI5Nks4bGVodnhjOUhB?=
 =?utf-8?B?LzhaNjNQRFE0TmpZTnV3Q3pGdTcyZFp3OEpVZXVRWlY2QW9YbkNhRXg4N0VP?=
 =?utf-8?B?M0NqdXc0WWM3cmRabytZcXZtTEFvMVR1SWNiWEliTDlna1JMOGpkWFBZRmxp?=
 =?utf-8?B?N0N6K3BCdEFVZHZNK0FkaHIrM1VBRlRNS0hLSG1ZSk4zdFFiUzF2ampDZnd5?=
 =?utf-8?B?cXUzMFZpd0VWN2txL0lGRjZlRHRPamFQU2d4Q1dzdE5LZG5IcmJIRlErdys0?=
 =?utf-8?B?U2ZqM3g3R1Vxb1NkaXJPZHZjOFdGSk1WOENiMGhnays5eDdGdFVXeW9NZ1lS?=
 =?utf-8?B?UDFHWTFoY3dFazFqNWo2QmhpeDFjN2FEaG1HaVR1UUFlQ3UyQTZ1eUw0SjQw?=
 =?utf-8?B?a05aVHRYVlZIcmVwc2ZvYUswWktUYzVhdWRlelpmRDN3RjJPNmFoRWJvb3dD?=
 =?utf-8?B?RXkzKzZUbmFMVmhjSjhFVjVIOFFSZEFlRWVtdmxWTkNZMDhEUFVack9ocVc3?=
 =?utf-8?B?UHk0T2EvKy9pTXQvbjNIQVplN2JwUVFZdTN6OVZSOTBJdkVEaXdzUlNIcE5N?=
 =?utf-8?Q?dpmVozblHAo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWdZVzVnSEgySW9Hd2RQN2lEelEyUVhGWDFyckdWQU9XRzBYR3B1dno0Z1Z1?=
 =?utf-8?B?U1RWU09jMmxLNXlnTmZ6MzYrOVMrdnBzaER5T1llMnIrMEdTL3gwb1l2d2JD?=
 =?utf-8?B?b3duWCtHZ2Z1WXg4RmxsUUtiV3lNRUNoQTZ1M3pqMFpBdjY1V3VHeUFiU1FY?=
 =?utf-8?B?Y3ZOZFpvZS9nRWFHZUF3amc2a2psd05YSkJGT1IwYldwM202b2ZTMEZ5ejU0?=
 =?utf-8?B?Y2cwSThCV3RrME1EOWkwU0RFakU3eDN6NzNoL3ZiQTlaSDV3TU9XVitGanlJ?=
 =?utf-8?B?UVJrTzVXcEFYUEZQTUVldXJRRzlxbVRXM2lWYllQSWhMbDYrMkdoR0M1ZjNQ?=
 =?utf-8?B?VFpHMWIvZzlKc2prcTMwdmlVdC9GUms1UjV4Nm9OcHl4VTluRDRwbVB2Tmlj?=
 =?utf-8?B?Y1JLbWZ4L1VVb0dvdlFkcjNqUk43bWVTd0dQUFZocnhnV0ZkRkdZdUJ4Uk8z?=
 =?utf-8?B?NGdaQ3hhR1ZFZmNvWmkyQ0lUQ0VIVk5CSllGUHhEdHFlbkR1R2ZkMXRBNGJW?=
 =?utf-8?B?MVYyWk16QlpmYm5KWWNEcmkrZ252WG1hU2ZnQzFsQ013T25oZHk2TkNFcVJk?=
 =?utf-8?B?SmJ3Z29YbS9UNnVmOVRYeS9lMTE2ZHh3Sy9ZRW9QWFpHeVBOVjhrS1ZGeXZL?=
 =?utf-8?B?SnlLMDBiRGRKVG1McFR3YkM5ZVJSUVBLbUpjRjNkVWt6TTBsc20xTVRmR1Ax?=
 =?utf-8?B?NGFRd3NiR0dndWRab1Myb1lBUEFCTEhoN0xoRkFVQm9LWmd5UlluY2hDR0Ux?=
 =?utf-8?B?amQzWlpBeE5NNE9NT0tOMnRaSmxyam5BdWFpNmZCYUtpZ0h0blFmb0NLSFNz?=
 =?utf-8?B?M1ZpdjFEVFV3bjZXZnFGZE1wWlc5Rk1vQ3VJRHlRVTd6TnRNMHVLdVZwRU1x?=
 =?utf-8?B?cXhvV2F4SVZtWXYveFkvL0Q4NGgrQW9RMGRqQlFSdGxBRFdtUXRwTEFaUXQy?=
 =?utf-8?B?VmR0NzRlejlSZzZEejlwZlVXdVM1cE9kWkk2NGZWMXhFV2YrcjVIQkROaGJ5?=
 =?utf-8?B?VXJEZ0RDYlBMa1VBK2pqQkp6Z1Z4MkZFSWdmbWRVaU04ZDYrcUlQUjZkMm90?=
 =?utf-8?B?bFlabGVvcVB1M1VWenBUelYrTjJFQmFUVlRqME05NjJKMjl6bWZnTDNrM1JW?=
 =?utf-8?B?cVFBNmdMR1Q3d0o3OHMrRXg4ZmlYd0pLODNFaWZDcWdMcXJkTWpMZ1Q0b1BI?=
 =?utf-8?B?SUtMVElXT0VxeG9HMWlNTHM5TndYVGd4R2dEbWxlaW5pL0ZIYzIyRDl2Z09J?=
 =?utf-8?B?ak45N1hSZHRDK0QwQkVVSE9aakJZYVcyeStycFN3YzJjTW5vUEJzcDFuUHE3?=
 =?utf-8?B?VFVwb3dxTHMrV0NTMWdObTU4UVpwWWZXSmJhOTdDTTliVUpMamJoZEduWCs1?=
 =?utf-8?B?YnA0UFkrTlNZNnlHODVxZkp5T3I5QzBjbExKZGFvMHR5UENaUHdrbTRKRHNn?=
 =?utf-8?B?YU96YkhTaDdBK3V1WW82ZHJDNk80ZStlQ0NVd0grdk1OWVFUa2djcytFcllv?=
 =?utf-8?B?cHhyUEc2dFBzNnFjaXJwV2l4M2FGTC8vaEZJbmp1TDFXVzFIQUJkZkgzTEtQ?=
 =?utf-8?B?NmphQTEraFdtZXhWcml2MTFiOC9ZNDhuSWxPRCtKZXBZRkNic0JQMkNrZHJD?=
 =?utf-8?B?Z083bXZETGN4Q1l6QnFrQkFjb2x0dzg2QlpnTTZTS2VQZnBtcCs4SVpLM1JC?=
 =?utf-8?B?a2dScmJROEhUcHk0R3FLdFZTMjlZVnFFZ1ZmdTBMRDB6QWNkQjFhS3NRUFRi?=
 =?utf-8?B?SWdVcWZScEpBRmp1QWtmZnQ0K0ZyMEp3K29FVzJ0ei93TVlzNkJTelVkc0ZK?=
 =?utf-8?B?cDAxOG9KL1F2aC81WUNjNjgybHJCWTFhcVVHT0gveXVYVStBNEVIWUVtM0x4?=
 =?utf-8?B?VUdGVkM2M1NING5aY2NSTjVsNEpJTEVKeGpmS0ZTbThCR09vSTZTN0dZQmpo?=
 =?utf-8?B?VjVTTEJlaTM0d3pnT1BXWlk4U2FxMmVNK1BLWXA4SThUMzFvT3RXWTVjaUFC?=
 =?utf-8?B?eGwyMFlyY0xYSUUxQXc4eEowUWtySXlCM2tTeGxZdDB2dDFPdUNDNDNNbzBh?=
 =?utf-8?B?TU5WSmFsd3lmaHlIb3dZVGFOaktIcVRJbFhFUjF1c1hCQlBSbXMvN3VON05z?=
 =?utf-8?B?c3ZHM3RsaW5vbWNzS2RLWTVyUmpYTHg3VC9iR2ljLy9YVERDVjF0TmJpbC9x?=
 =?utf-8?B?L0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94ffaa3f-eb2e-4a5f-b8fe-08dd8c83f8f2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 09:54:20.2895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YysEjWD3j5RDz7eIm9+Vc7pHPpDJ7oOepF3tkaot87Zx4bpF/6UMbbNKJk5BXwBidy1Wtupr1srE74eDIevhOlCwOIezQyHtZAjmYXAgKck=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Atm TGL supports only a fixed set of valid DSC compressed bpps
> (6,8,10,12,15), but this is not taken into account while looking for a
> bpp in the minimum..maximum compressed bpp range.
>
> This happened to work only by chance since atm from the above min..max
> range it's always the maximum bpp that is selected, which is one of the
> above valid bpps (see mst_stream_dsc_compute_link_config() ->
> intel_dp_dsc_nearest_valid_bpp()). Before selecting a bpp however, the
> bpp's BW requirement should be checked wrt. to the MST total link BW;
> after doing that - in a follow-up change - the validity of any bpp in
> the min..max range must be ensured before the bpp is selected, do that
> here.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>   drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++++++
>   3 files changed, 13 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d63aea7ee9c80..5c206faadf93a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2110,8 +2110,11 @@ static int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector)
>   	return fxp_q4_from_int(1) / incr;
>   }
>   
> -/* Note: This is not universally usable! */
> -static bool intel_dp_dsc_valid_bpp(struct intel_dp *intel_dp, int bpp_x16)
> +/*
> + * Note: for bpp_x16 to be valid it must be also within the source/sink's
> + * min..max bpp capability range.
> + */
> +bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16)
>   {
>   	struct intel_display *display = to_intel_display(intel_dp);
>   	int i;
> @@ -2175,7 +2178,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
>   	max_bpp_x16 = min(max_bpp_x16, fxp_q4_from_int(output_bpp) - bpp_step_x16);
>   
>   	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
> -		if (!intel_dp_dsc_valid_bpp(intel_dp, bpp_x16))
> +		if (!intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16))
>   			continue;
>   
>   		ret = dsc_compute_link_config(intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 98f90955fdb1d..a9dd9ed1afc9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -147,6 +147,7 @@ int intel_dp_dsc_sink_min_compressed_bpp(const struct intel_crtc_state *pipe_con
>   int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector,
>   					 const struct intel_crtc_state *pipe_config,
>   					 int bpc);
> +bool intel_dp_dsc_valid_compressed_bpp(struct intel_dp *intel_dp, int bpp_x16);
>   u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>   				int mode_clock, int mode_hdisplay,
>   				int num_joined_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d8033e55dc093..8e1ed3b38217d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -330,6 +330,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   
>   		drm_dbg_kms(display->drm, "Trying bpp " FXP_Q4_FMT "\n", FXP_Q4_ARGS(bpp_x16));
>   
> +		if (dsc && !intel_dp_dsc_valid_compressed_bpp(intel_dp, bpp_x16)) {
> +			/* SST must have validated the single bpp tried here already earlier. */
> +			drm_WARN_ON(display->drm, !is_mst);
> +			continue;
> +		}
> +
>   		link_bpp_x16 = dsc ? bpp_x16 :
>   			fxp_q4_from_int(intel_dp_output_bpp(crtc_state->output_format,
>   							    fxp_q4_to_int(bpp_x16)));
