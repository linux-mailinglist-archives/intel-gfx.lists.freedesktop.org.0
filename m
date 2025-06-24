Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0574AE5DC7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 09:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9B310E4E6;
	Tue, 24 Jun 2025 07:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TIfdTBQN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4AEE10E214;
 Tue, 24 Jun 2025 07:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750750360; x=1782286360;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jp8Ln6TYYBv+L7d8gvAwqCj7/g1H0m4lcgOzMcifZDo=;
 b=TIfdTBQNX5mmnRET7bdMrfgbRz9RzD5WVRI5ZsfKLx505Ee3k8XE3oai
 kRG9aYppgpA2O3Cj5TYEKZL4rOHYDqset79U/ef7iUlQ+TIy/ef452KTY
 tL/9QdayGFrY+y/ac0xK/dD6cS9k3lJlqVKyk6rbavNN5vtHKij8uMgwC
 gEeXGgDmpHYw80caRc2BY6iV5/+C5xZkNudGODN3B5doxZu9z12F+qE2W
 3KF2XwSWFghywyVxnzNNgh4dt/BrlvFwU/kbmBa12VefWZ/sbISrY0wiN
 xY3uo0fzpH6zu/jFWFgkXP6E8FV8MzV1+8g7ANqyTnUo6H4dWPiZ/dUIx g==;
X-CSE-ConnectionGUID: U2sceqjjQRyAvGSM3NT+MA==
X-CSE-MsgGUID: RW8tPHUaTfepTjxWLkPiSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="64038219"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="64038219"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:32:40 -0700
X-CSE-ConnectionGUID: dqwexnUETJmoQ9442UJw4Q==
X-CSE-MsgGUID: OH+uG3IaSQK7fti1G0KrZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="189035886"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 00:32:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 00:32:39 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 24 Jun 2025 00:32:39 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.79)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 24 Jun 2025 00:32:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Em1cU3JeCe2GERiL5C6OMVHNBQqIiS+v9pke8K+TnHL+KeL7cJPaA9CTID4MnI0rZFgpWck7xk2pPWYPmB+FLcRQPc/dTrIDNVZJC3woa/Koqtzm7wtQs3wfG4MBOR6ZfyBdy2+RfSYpWE72EzGEWPTpst5X1TIFdQjuIZv0qVLrZjSpCZ6mEITMJRSV9O/+89VArCrtOFDLlJR+gvrfePfaBDELVrNvDDsZSmG5KwYVUKqCgJFhEeTsq5FoFECv6PCUf2vu5C0M8pFVILobK7600YG6I3VxyyQDeeBQYN7RD2m0e+V9vkj5ML5Nqa68nJmV+v7S7SdttZE5U22P/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9fzvsW1yQgKU486bY2RzWSL5VT3mUaZWGTH2jqHst0Q=;
 b=jPN4Yb18nVgY/X+moxo0HAjJ83DoihHFMbExbfMOAC4VT/la1EV4v7DRPLNva05ZbQ5KsfKZrlwHWXaodfFxt3YZ06p2yg7K4Bf9MkUoEB1N+c0cQzBtmiXdHTnIe0kr2vwaciDYv7aOgcrlJIA1Wu9Iswehd12Op8VL5uuk8KmVJ7HEncJt3z0VtLIiSfXznfB0d/uK4PtD7wX3mhMaX+H+m1R1Mn/ZGiezXZRPangSVoPEzTc1DI/V/5OFjk0jzknTDKxJYkR9uSFAU8urHhjGfPnoB3BYeQaCXukvnBFgtOvZH6+MKmlxk3/pl4VkorWROBHJIH0lG6OG5kH7KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH3PR11MB7674.namprd11.prod.outlook.com (2603:10b6:610:12b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.28; Tue, 24 Jun
 2025 07:32:36 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8880.015; Tue, 24 Jun 2025
 07:32:35 +0000
Message-ID: <6c8b5484-613a-4d6f-9bd8-f01ea9747f03@intel.com>
Date: Tue, 24 Jun 2025 13:02:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Add device specific quirk to limit eDP
 rate to HBR2
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250620124417.2041233-1-ankit.k.nautiyal@intel.com>
 <20250620124417.2041233-3-ankit.k.nautiyal@intel.com>
 <c120ac2486fd31d6990c553109a0d5b843f0fc16@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <c120ac2486fd31d6990c553109a0d5b843f0fc16@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0169.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH3PR11MB7674:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f843c55-5598-4eb6-0aff-08ddb2f14a19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UkUwd0dWcTdsVnpweU5tTFdtWnVOQVllcytNV1NNb25NSFFEOFI2Y1lMb2F1?=
 =?utf-8?B?bVNkS2xkZk52dFZ5dGE0T0VDenJGSzByM0h1UVdJaFFHWjBiNjMyMXBzTXAv?=
 =?utf-8?B?K0tOLzIweHZXanRKU0wwakk3dEtlTTd1NW1GWVR5eTVlcXpYOTFMZFJ1ZERw?=
 =?utf-8?B?YXlET3lHRTZrelFNYnRCVWNLMi9Ib3JrSkIwZGlXRmV0eFp4eWdKd3JzV2ND?=
 =?utf-8?B?a3IzZGFVUEFkcEErbGlKaE9RaFNkZEZ6cmJUR0xkeFMxdmFROTl1MW9kNkhO?=
 =?utf-8?B?RDg1eEdMbklKQmo3djI4bWRoVlBZY1YvcWg2WVlES1NDK2xoSGRpb0VsSFlC?=
 =?utf-8?B?SzBJQTVFbGJzQ3poa1o5VFZVSkt3WWsvVG5ZaXNqR3JPWmpISTRLY2VBWkdN?=
 =?utf-8?B?NExTTG9lYjZuR08rb3pVVE5Gd1V2ejRLd2FRTnluMG5xNUR2aW9UVHF1TVl3?=
 =?utf-8?B?b0dNT3BBaXNNRkhNaTlLNFE5d0hhS01PekNJMkJyYitMUjQ2TEVIK0taV3VC?=
 =?utf-8?B?NGpiM0RoQld0TGlkQngzdm1hcWZ4UXI5U295Z29ucEpDekZyZmhrRHowR05i?=
 =?utf-8?B?WmNCc3J3YnE0S3NBL1JqUXRnNTNrUzBwYkNJUkx3d1lqTFNndmZBbVdzdU1m?=
 =?utf-8?B?aS9zOVYyNDlFaWNRRTNqNExyalorckVmNXV5cElBNWorVlJCVmJDa3U1RVVT?=
 =?utf-8?B?TXZKbWRqWWRNbzhYNmQzMVJ1NmlBSGxzMlB4Y0V6VjlVTERyWW1HN1FLaXZ3?=
 =?utf-8?B?azlZK2lpcWlGQytFY29ZOXJ6VG5pNFV4VGZiL0wrTTZ0YWJyUWRGbHRmVndB?=
 =?utf-8?B?OHRuZ0dqUW5TM0NXbW9zQjhlNXdwZi9HL0J0bXR4bjlRSTJwcTRrenVuYlVE?=
 =?utf-8?B?UjJiSFY2MUNlMnhObkpReUdhZFQyMGFMOHRlNGFsOVBla3B0SWlyUDZOUVBi?=
 =?utf-8?B?ZW1YSkR4K2hpYnk1UUVGckJ0cVJNdWV1anF3RkMvQm12bkE2TGlKeHU4cU9F?=
 =?utf-8?B?MjdqamFsYTk1VG9nY09Ta1JRNGVFeURtNzcyTlM3cVZCUUVCZnhTdmt2QzQr?=
 =?utf-8?B?aEJLTitQS0lXaE5rQnlKUFpZS1lHT2JhSW5zMkkwN1BSYmx3RmgzbktERnNV?=
 =?utf-8?B?Q29NVzlKMjNGcjMyblkyY0d5RXRFSFNuT2Mrbnd3eW8ydDN1aUZyM2kwVDJO?=
 =?utf-8?B?VExrNHVoNEhsTDN0bjZtOWVpQjE3SGtGaTdsUU5QNU4yQ0kyQnkrbEVBWXJo?=
 =?utf-8?B?VHBzZmx3cUo3V29DZnhKdEhWRzBTK3FaT0Z6M0RXT1ZBM2FMMVR6NjM0TEJK?=
 =?utf-8?B?M05MN3NCZGtnNlYzMFYzdWtITFBNYzQzWWY1SGV4TWxDSzZJTm1sT0FFS2dQ?=
 =?utf-8?B?NE1JSndETG5yMUlxdU9MWHUxK3J1MDlYbGtMa094ZG5HL0hnRVpRa3RYa21U?=
 =?utf-8?B?RnkrYkFUUDhGRWNvZjZBYmoxK2d0OTNaajVJM1Zqa3l1RkFxRlQ4NzQwbllh?=
 =?utf-8?B?b3RTQVRPdnNqeFByWU5raFYyMkN5WVFPK0l2OE5tcHFwdlZtb3FBVDN2YVd0?=
 =?utf-8?B?NGtNZjV2Y0h5WDE1b2NmcjBIUWJGR2xvemRHWGl6T2FmQ09qbVlhWXRiS0Rz?=
 =?utf-8?B?Y2FhQTBxQXhsTGZmaW5vd3dBem5QZUZ5WmY2Qmo3VTBTRWM1WGkvTUVqTmt1?=
 =?utf-8?B?OEJGdDZrSm8zbDJhajNBWmJmcjFRS0UyaENNc0pEVEdmOXROcm4zanptK1Qw?=
 =?utf-8?B?QnJ1SlZZT05ndlM4Z2lXUXB0VVBacUZXVnl6NVp5NzJ0dExEUW9uWFhsWU9V?=
 =?utf-8?Q?Rxk3cPB9Qdt+PfMk9yHPbOU63FNsqArllh5C4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QURsYW5PNmhYNU5aajI5RitOK08rNSs5bXdEYWZkSGs5OGtkc0RyL0RvVDds?=
 =?utf-8?B?a01MSjVIVEYxQXVTWWFnR2ZqSmRCdEZGdFIvVmREc0ZKV2VVeFNwTlVXc3B3?=
 =?utf-8?B?SG1NR1lVR1V1cVc1NzRnQW9GdSt2TStDeWJqRkNtTFZQekptb0U0Q2h2VGZQ?=
 =?utf-8?B?a0JWaUVPTUhXaTBzQW1IVmwxZjd5S1UzTXc4K3RHRkJGdTBnMjJiZm1JM1E5?=
 =?utf-8?B?dUY0TmNZQ1VWNFdVUzJHQXlrSHhOYkhJMGlwOHhYbVMxWHhodXhlVTJXc1dy?=
 =?utf-8?B?KzhlbFN2VCt0NlJyTWJqcFZvR2NFWnNaamJIbkswWTRIYVdFNkQxc3dUaHpn?=
 =?utf-8?B?OGZjNjhCTWt6YVBWV3duWkhUSWVXRHFsUUQrOUhNWTltb1dwcFpBZkxNT2Ev?=
 =?utf-8?B?eW5HTjBFanVWZXVLSjJmQ2VqT0ZmMkpjTEpJZ3dLVW5XcEJGMzlTNlF1Q0dr?=
 =?utf-8?B?dXcyV2Jpalkwc0JwSHRJTVo0S3Z2UWtqYXNUdWRHZUlSWlJRSUNXdzRyd0s3?=
 =?utf-8?B?V0xoVThLTHFTNXN4ZjFjclhQMlJTV2x4OTlST1ZyNUp4Ymp4LzlxR01GMHZQ?=
 =?utf-8?B?RE1tMXdDOFB3Vnh5N2lVOFBIdHZHY3ZYRDVCakJaUnVlTmJiL0I1dnRiOENh?=
 =?utf-8?B?RXl1OENmWUxnZ1pmL0grbVFPQUsyYWlxODR2WlZ0S1lxWXlMbnEyUXpoZ3dn?=
 =?utf-8?B?a1JEeXZOWnVEMFd1WHlIK2ZvaEh6UC9URis5am1mWXJKQUUrUW5CRTNsRlNT?=
 =?utf-8?B?ZVpRTDVwVGE0SmIvUWY3YUwxcml3eDNwc082Nnc0b0ZESFpnMGlENHpwL1Jv?=
 =?utf-8?B?N2QrU3lNOEVxSnJydkhwNTBnelRwT0Yzek4rdlRPYUVWYmllTEMwQVF4NjFZ?=
 =?utf-8?B?VXNXVzUydjYyb2FHK2QxdkdsczZ5ME9tamc5RnJJRU8wYzlRZTBiZGxzd0lU?=
 =?utf-8?B?cmFoSmp5SFp6Q2w1Vy9OLy84S0RWWDV5Z3N5Q0QrV1IxTHJLcEo1WjN1dEhB?=
 =?utf-8?B?Ty8rMk5PMzdxZ2Zld3RvTHNEZVlpSTdoYVdObTFMMWNPSk83YkswUkZTUkVU?=
 =?utf-8?B?aDhSWVRSWkkrck4zeWRicW9HNG9tWFRLV1dTUEZSZU9lb0NKRFo2Ui9YYjQ3?=
 =?utf-8?B?WjFzVHBEc0wvRXcveWxtM2lkNjlJS0RQUnJmc1VMbWJNUG84OWQyaGllYzdj?=
 =?utf-8?B?eUQ0UFU3dEgyVkUxanVaVWZPTWZHQ2JSZ2hGVHhGZ0ZCb1ZWQ3lXWnNaTjNv?=
 =?utf-8?B?cXl1YytFVEhmN2syRHZqSDZCOW5udFVvdFQxNWMvdmp0eEkrRTE0L2JqTUpo?=
 =?utf-8?B?UXFZdGVJQlJLN1F2MnZjUUtiWkNjSXBJMzBLOTBLRUhTcmxrQlNTRGdTYmpo?=
 =?utf-8?B?QjRDVjMrY2l5T2tiaHVIdWNpWHQ5L0l2aUxFaGdoMEFwbE5sbHlFRkVTRWY3?=
 =?utf-8?B?VnFHb2JENUtYaDUvMzRKMmVVRm0yaDFINzg0M3FyZEZrcVRHeDlTZkVDeWxY?=
 =?utf-8?B?Ryt2NjdVdW40MVh1TTFwMXJydlBqR2x5T0dmKzVWM3VOcU56SnV5RmRMTHFh?=
 =?utf-8?B?ekMzNVd5Uit4dE1FYWZxdDR3UTMxaFVXQlROYWxFMFdOcHpEYi8vMm1nRENG?=
 =?utf-8?B?MGhoeEY1aVBtczBrU2pRQ1ZHTFRCbFZHWGN4UldHczZFbjNob2NPWGNkUzdj?=
 =?utf-8?B?UnVpOVduWkk2U0NkY0lTUWpBSUdKd0dqSnVab0orMVM1ZmgwQVFlc0NXSURS?=
 =?utf-8?B?MG5CV0oxdy9XWE5Qdk1UUlJzeTIxK0o5WEdRaFJnZ3VCVmRTYjNwKytiWkts?=
 =?utf-8?B?TW9adEFqQTN3bVpWMldBOGF6Vjg0d2xQL0ZNYXVMTGVKcVp6NENJbVZsMW4x?=
 =?utf-8?B?NHJ1V2Q3UEFXOUVONlpKVDd3SnQ0SW94Q1BpcWFDSWx2dU02ZU9XWUdzbi91?=
 =?utf-8?B?RWpTcGlGTVl4b1B2cks3OUZNOW90MmVVTlJTcTdSbkFLVHZFQ2ZBZVlIZWF6?=
 =?utf-8?B?emp0QmVkMjl4L1owZVhsYndZZWpsY0lxUXkwZ1pnTFZnUFRvMFpMRkpxOUN4?=
 =?utf-8?B?TlRNeWVmc0M4NjNrV3dTR2FlYzEyS2RXQ2dsbnc3QnB3SExJMENQdEVkWUdi?=
 =?utf-8?B?U1QwWFVwckpjbyt2Q3ZGclMrMzdOTVRUcUhZdFp3U09aanBuSm9HaVZCRk9Q?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f843c55-5598-4eb6-0aff-08ddb2f14a19
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jun 2025 07:32:35.8343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fse+RAOX5G07CHt8i82zlO53o1YG14lWqfz5IPk70QCYEDDIHlsmyLfm0UT8VIXxk9H6TOhijddxDr96UmNzpjFZvsn19ifyqDgebMLTglk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7674
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


On 6/23/2025 3:29 PM, Jani Nikula wrote:
> On Fri, 20 Jun 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Some ICL/TGL platforms with combo PHY ports can theoretically support HBR3,
>> but in practice, signal integrity issues may prevent stable operation.
>> While some systems include a Parade PS8461 mux chip to mitigate jitter and
>> enable HBR3, there is no reliable way to detect its presence.
>> Additionally, many systems have broken or missing VBT entries, making it
>> unsafe to rely on VBT for link rate limits.
>>
>> To address this, introduce a device specific quirk to limit the eDP link
>> rate to be capped at HBR2 (540000 kHz), overriding any higher advertised
>> rates from the sink or DPCD.
>>
>> Currently the quirk is added for Dell XPS 13 7390 2-in-1 which is
>> reported in gitlab issue#5969.
>>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 42 +++++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_quirks.c |  9 +++++
>>   drivers/gpu/drm/i915/display/intel_quirks.h |  1 +
>>   3 files changed, 45 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 74f331ae97ff..4441fef4f853 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -173,10 +173,25 @@ int intel_dp_link_symbol_clock(int rate)
>>   
>>   static int max_dprx_rate(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +	int max_rate;
>> +
>>   	if (intel_dp_tunnel_bw_alloc_is_enabled(intel_dp))
>> -		return drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +		max_rate = drm_dp_tunnel_max_dprx_rate(intel_dp->tunnel);
>> +	else
>> +		max_rate = drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
> The way these lines go back and forth with the revert and the quirk, I'm
> actually wondering if it isn't cleanest to just join the two changes
> into one i.e. fix the commit, that's it. What do you think?

Yes I was thinking about the same, but as per discussion on patch#1, we 
might not require a revert.


>
>> +
>> +	/*
>> +	 * Some platforms with combo PHY ports may not reliably support HBR3
>> +	 * due to signal integrity limitations, despite advertising it.
>> +	 * Cap the link rate to HBR2 to avoid unstable configurations for the
>> +	 * known machines.
>> +	 */
>> +	if (max_rate >= 810000 &&
>> +	    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>> +		max_rate = 540000;
> It's misleading to call the quirk QUIRK_EDP_LIMIT_RATE_HBR2 when you in
> fact apply it to all DP not just eDP. Maybe it should be just
> QUIRK_DP_LIMIT_RATE_HBR2?

I missed to add check for eDP, intention was to only apply the quirk for 
eDP.

Will add the missing check here and also in comments.

>
> And you don't really need to check for max_rate >= something here. It's
> really just:
>
> 	if (intel_has_quirk(display, QUIRK_DP_LIMIT_RATE_HBR2))
> 		max_rate = min(max_rate, 540000);

Agreed, this indeed is better.


Thanks for the suggested changes, I will add these in the next revision.

Regards,

Ankit


>
> Anyway, I think the overall result is okay.
>
>
> BR,
> Jani.
>
>>   
>> -	return drm_dp_bw_code_to_link_rate(intel_dp->dpcd[DP_MAX_LINK_RATE]);
>> +	return max_rate;
>>   }
>>   
>>   static int max_dprx_lane_count(struct intel_dp *intel_dp)
>> @@ -4252,6 +4267,8 @@ static void intel_edp_mso_init(struct intel_dp *intel_dp)
>>   static void
>>   intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   {
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>>   	intel_dp->num_sink_rates = 0;
>>   
>>   	if (intel_dp->edp_dpcd[0] >= DP_EDP_14) {
>> @@ -4262,10 +4279,7 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   				 sink_rates, sizeof(sink_rates));
>>   
>>   		for (i = 0; i < ARRAY_SIZE(sink_rates); i++) {
>> -			int val = le16_to_cpu(sink_rates[i]);
>> -
>> -			if (val == 0)
>> -				break;
>> +			int rate;
>>   
>>   			/* Value read multiplied by 200kHz gives the per-lane
>>   			 * link rate in kHz. The source rates are, however,
>> @@ -4273,7 +4287,21 @@ intel_edp_set_sink_rates(struct intel_dp *intel_dp)
>>   			 * back to symbols is
>>   			 * (val * 200kHz)*(8/10 ch. encoding)*(1/8 bit to Byte)
>>   			 */
>> -			intel_dp->sink_rates[i] = (val * 200) / 10;
>> +			rate = le16_to_cpu(sink_rates[i]) * 200 / 10;
>> +
>> +			if (rate == 0)
>> +				break;
>> +
>> +			/*
>> +			 * Some platforms cannot reliably drive HBR3 rates due to PHY limitations,
>> +			 * even if the sink advertises support. Reject any sink rates above HBR2 on
>> +			 * the known machines for stable output.
>> +			 */
>> +			if (rate >= 810000 &&
>> +			    intel_has_quirk(display, QUIRK_EDP_LIMIT_RATE_HBR2))
>> +				break;
>> +
>> +			intel_dp->sink_rates[i] = rate;
>>   		}
>>   		intel_dp->num_sink_rates = i;
>>   	}
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
