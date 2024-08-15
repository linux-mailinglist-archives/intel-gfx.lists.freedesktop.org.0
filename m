Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 841239538C6
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2024 19:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC7A110E481;
	Thu, 15 Aug 2024 17:09:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iYYZKumR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8E5210E481
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2024 17:09:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723741768; x=1755277768;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=m/dX2D+lP1mnIx4sPkDncWPzSjHq42EUCLFRFrWCFl0=;
 b=iYYZKumRwKA4B9N9vBT4TOhTJUpf5j/rDSRB3WKp6ut00+u1C1U4MTch
 BN4gR/QSp9/EWJV/wz9TIKee4s9Irc44TXEq9cU8U7NO/ESCj/PbPbByH
 8xq5Uzc+ReCi3J523titmRuPtHva45uVcZORUqVy+r8Y4DXfzaAXEavYJ
 cg0KlUGij4IsGoZftHPL+qZBeNIA3NIIxGHqGuaXA//jndADJj3zMxpuq
 9Pt3igoa81dU2nre+ulOJJu7HLmMAWrnvICmzcqx12R90ZmiSdW+qzS5K
 TUXRIyiMYPE51Plu+YIUr8wy5ZTnvnXV1Xjv6vqa6CfXlRV3qQ0MBeZC7 Q==;
X-CSE-ConnectionGUID: /1d4yMYaTBChbfCfC8OU9w==
X-CSE-MsgGUID: fOzkHRGXSLK3Sicgwq5lHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11165"; a="21889480"
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="21889480"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2024 10:09:27 -0700
X-CSE-ConnectionGUID: ms+yEyyjQrOgSvnT9jlClQ==
X-CSE-MsgGUID: SwsTQigxTi+9qTwtni6h1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,149,1719903600"; d="scan'208";a="90126378"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Aug 2024 10:09:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 15 Aug 2024 10:09:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 15 Aug 2024 10:09:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 15 Aug 2024 10:09:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EpBUS/Gui8IW7pDZxZVRZSAnpPpmXmntvIWBfGlsj67uwY1IEVe6W3roIt5spYUewMkWLOuur253r4mDpteacGziKrlg9KzKSyhKrgKxxk88DWQII+Ecfjpc12FfST8+BVwOiUGxtKqHgraY7sDt39/u/ADxhCGnbjo7t9e2MEBOdK2vevaDEDSozZ7/ozmmx8QESNB8t9+Cr+GUtUuS3cQzGuklDayyM7kjgyg0Zh4CYVthqOG3k4TfFujW3bUrszYMQJDW9Kee5s5plsWG312NGIfa6mh+/5SeXDI3zJhI5RxEnHlbriTadE0lDA+LOEbcBQ0QfdiRekPMLdJ8XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oUzgvJcU1bAmfvKqeyWnzLYkD5bXcU19WekIrq15PVY=;
 b=f16kHFZ3mkPU4aYYLBQ6zZsNRqk4Nk+XjpC4yEYwjicXWsuQxSozjNRNw8ZYdayVbRVEXjYr9GG455OOv/HV3iGOs8OFziIwxT8yugnM+sVpoUapBEOd9T3t27HlqY0faFWODPakuW17dIcdT7BPTPw57wHC6xm+zLdXBiNI7FfVyL4mhep8+jkM/r/R0aFAchIx143+2waVK4xmXds7+PV5E07kycA79zQmn2SFF5lJAr3v+Dc3stfiYQHMt50PLJwkFArIejzfgmOfQmRN96dJ6HfaKOqxXnQ29oQO5w20vkC2PQ8FeQ/d6R4+VVle8APtJKtAjIND3/ystCaHsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7010.namprd11.prod.outlook.com (2603:10b6:930:56::19)
 by MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.18; Thu, 15 Aug
 2024 17:09:23 +0000
Received: from CY8PR11MB7010.namprd11.prod.outlook.com
 ([fe80::5976:5330:937e:d741]) by CY8PR11MB7010.namprd11.prod.outlook.com
 ([fe80::5976:5330:937e:d741%7]) with mapi id 15.20.7875.016; Thu, 15 Aug 2024
 17:09:22 +0000
Message-ID: <a4338df4-764d-4bb5-bd00-73076019e53d@intel.com>
Date: Thu, 15 Aug 2024 10:09:20 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent
 taints in CI
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20240808204943.911727-1-jesus.narvaez@intel.com>
 <CH0PR11MB5444A9A2D05F8E115DF635EAE5BA2@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Narvaez, Jesus" <jesus.narvaez@intel.com>
Organization: Intel
In-Reply-To: <CH0PR11MB5444A9A2D05F8E115DF635EAE5BA2@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY3PR04CA0008.namprd04.prod.outlook.com
 (2603:10b6:a03:217::13) To CY8PR11MB7010.namprd11.prod.outlook.com
 (2603:10b6:930:56::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7010:EE_|MW4PR11MB6761:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e3d062a-1c86-4c05-3792-08dcbd4d022b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q0JZa0t4OWRJcWlxQ0VMY0MxSUhwdGtJTFZVWE9lK1BQN0VyUUpVU0dWZ3ZE?=
 =?utf-8?B?S1d3b1k3L210V1N1bU90c3hVWWJVRE5LMHF4VlozVloyZ1F1YTVUbjZ5Z2hM?=
 =?utf-8?B?L3E2M0c1OTlvV051M3ZmT1hwTW40UFBCa0hCMm0ySFU4VCtMUkF0bnV6VUt3?=
 =?utf-8?B?REh2YXl6SVRuZnM5dVFKcGZ0M0t5MkUwSDBGT3RWUEh5c1cxb01qeGFPTTA0?=
 =?utf-8?B?OHd4Nndpa0g2dit4R2d0clhPRlhENlY3YStCMDFUZmJzVmtaTCszck1QbldT?=
 =?utf-8?B?VEJLWHVxVit0cDBBbUdXam8rb1lGdmYreitzMCtVZmtvK1BUa0hsNS9xNjBj?=
 =?utf-8?B?QlBRU2p6U0FXNElMamF5TmU4NUgyYStvekY1Z2pPYVk1OFYwU1V6eXJyOUJ3?=
 =?utf-8?B?dkdIajRWWmZ6WFk0bm9EYWVMQ2hPaEhhV2kvMzBCT0EzbmZnRHBFZVdyU0FR?=
 =?utf-8?B?MzlNQXBlWTdtdGlIRDBrUWxOTWV4bHNVRkc3bHdOTm1PM2dWN3ptdXV0ZUJ3?=
 =?utf-8?B?bVdNWTVheDlsOGpxMzE3L1lxMmd6NXgyUWw2QWcxUzRITG9Ka0h5bkdCeUNE?=
 =?utf-8?B?M3p4a3JoMTVZVi9SVENqbU9mNTRMQk5vV0lITUh2dGVsRVR4cTlEQnJyUVJK?=
 =?utf-8?B?MG9lRXkrSDYyVmRPeTR3TDNpSk9melloOVZOb2ZxbTdrUW1lMklwSVNER1hM?=
 =?utf-8?B?eHN1WlE4SjA3UnhhQWxEKy9vMkt3NVpLWStnMVViNzVvMUluUWwwcHg5Vk9w?=
 =?utf-8?B?VWUvbC9JRVM3WWozR0ZNS05EaGxpQzFIdTUzQ05CeXN6WU96azJlSSt5MU4v?=
 =?utf-8?B?SkM3djczcHdJQ0tTZmQ1UXkxamE3VFVsV2lIZU80Wm9COFFOakY4VmY1RzFK?=
 =?utf-8?B?eEE1R1BuVWMveGZPczlmYlhDUGNmam40UjZvWWdGWW41TjNhdFd4ZnNwUVZT?=
 =?utf-8?B?c2NKeUZtUTJMV3gwUER3ek9hUGxzeVd4dWRLeW14UDhCcU0xcFluZFFGZkV2?=
 =?utf-8?B?cExiTHFIV3U4QndNOW5jL0N6OVNVWXRKdXVpTkczYjlNTlh4bXRjVlQ5K1pv?=
 =?utf-8?B?LzZ5Y3dodmpXM0tteGMzbG40Y2wwNGY0M2N0ODYvRzVja1dWV2FocjBxOFVu?=
 =?utf-8?B?dzF2MlZSUXh3T2hDNzJBY3hDSjdEYkJXUFFPZ0tTQ3FCYTFkQnRsZG5RV1N0?=
 =?utf-8?B?eEJoZDdQQ2FEQmdlYkdwNDVDb3kwKzJJSW0vdFltdzhnU05CMjE5NWxpOEh4?=
 =?utf-8?B?bGw5YU0vU2F5dm5CcXJDaVE4V3ZxU0tIcDNYQUFWMHIxL1BBcTRaR2RidjA2?=
 =?utf-8?B?SnpOMUlUS0dXVnNweGJER3pKL0pIRkYwdEhqTXBvUlVTeWRGZ2xCSXRvRUZn?=
 =?utf-8?B?bVBXT0tLTVUycFIvc2YrVEQyNGlhaWhxVkc3eHc0OUQyN2M2N1F2ejNYL3VQ?=
 =?utf-8?B?d0NtNE9mNml2Z3lPYVlsdGdSN1Nva0JOQUx3NXV1ejM5K0FpQU1DaGFBelRS?=
 =?utf-8?B?ZTEzOHRmZHZSUUxTVzZkNkVIM01ibmxZRmJMNjVCNWhVQlF3MXgwNE5acjVU?=
 =?utf-8?B?T24wMVk0YWtleGUyK1hubjI5T25wbmxYaHI0V2dNdXpySU5lUTJ4SC85SE5a?=
 =?utf-8?B?Qlc4TlQ2bmEwRmxzTURmSTJWcy9vK1dhYlZLazBoS1h0R1A1YzJQTTNPcjR3?=
 =?utf-8?B?QmtnMjgzcFNuNGFVQW1Zc0N3Tm5LaUpaZFp0blpVTlE2Qm5ob3lDaGROZ1ZU?=
 =?utf-8?B?bG44VmkrSWx3WHR0UHRxL09RNWhkSFlWSFhoTVAyV0xrMWtYYUtvbWFnQ2tM?=
 =?utf-8?B?cFlQNldBUE9xK28xcStMZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7010.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXdBNjVWd1ZucGRyc1VrWXN5bG5XNWlwdnlkdExOVVgzMzNiYUsveHVFdm5X?=
 =?utf-8?B?S3FzUklNeGxaR2t1LzZlMlNLR3NidGtNTndOZHI1SFJ0U0NRRXBvMGUzY0ZV?=
 =?utf-8?B?VXA5dDlZVFZYREsvNjg2aWRCMkRiOFhVMlNQcTNXN1dPbkZhV1ZRL1JOZ0Vs?=
 =?utf-8?B?dXcvUmNpUTdldGE1WEs5MUw5UnhFZ2tWYnBBMXA3REVkKzlhTDRqZjB0L1M2?=
 =?utf-8?B?ZWR6YVFBTVdLYXo0M3J2NzVxZjdGVm5EUjZOUE1saFZzTVhKSFYrWXFQZVhV?=
 =?utf-8?B?Z3k0N2txNWJFVWVzMTMveHRQREowVXJLVm1MdVJ4UWd5TGN6NHhJRStNenRw?=
 =?utf-8?B?SjRkMkk1K0pTazVFQWtEUVRPN3JQa1l3TDFZZTZBcVZ0dWVCM3cxUXlDTjUy?=
 =?utf-8?B?YW1wRHNadzJhVmZJMnRUc2prUUVKZFBjNm9lNXJiSEs4QkdvUVdOYnY3ZWlR?=
 =?utf-8?B?NjZ1d2ZZZ1l3SVp5SStSOE0yVFVCMEtRMm53TEdRVVdsNHlUbGwzSHVZTGg3?=
 =?utf-8?B?SWRWYS9PTlhLT0xwdFJTZUlWcWVHTFFDUXZkM0ZmOG5BZ2hUQ3JIMVIxSk04?=
 =?utf-8?B?VWlqL0FGN2QwL3ZucDlLa29NMitERDB6emlQUTNEZzd6bFgwMWZDSDNpNldT?=
 =?utf-8?B?SFc1MnppLytacWRKVFNsWkQ5am00Qm1uWFFLUDh2U245MDRFSTNpbVJRMGtK?=
 =?utf-8?B?Rm1mdG8yZzFldEp5RjhDWXRVK1pDVHJnTklZeXFzQUUzMWhaaitGMFk0YWxH?=
 =?utf-8?B?TFQwV0dubnM1TjFMSm9XY2Y2c2xWekp3VWlSLzg3TXJueWsxT015RmlmVTJw?=
 =?utf-8?B?K25vWDRpQnlFQjFVUnRDeFQ4T2crMW1FNkRTeStqOExSeU1PUEQ1UFVra09V?=
 =?utf-8?B?SDFIcTN3V042cWtGTmduUENuNXhmSjJhZWZQTUdIUEsreWJ0bTBDNnh5dHB1?=
 =?utf-8?B?VWF4WDMvMkFrZTRhQU1lQnFMM1R1UHY4aCtZbFRLSnhzM0o5Tm1NOCtFbGlZ?=
 =?utf-8?B?NDZVTVpIMHd2ekhLcXlHVThiK0xRaXdwVGU3Q2U0d05QR1IzSEtXejZnTS9S?=
 =?utf-8?B?OXp4VVBDUUNReHRvcERlUzZBM1RKZ3kwMDJpS01MMHF2WElxS05GamYvYkJL?=
 =?utf-8?B?aG9TTmpZQmNzamt6bzFEbE1tQ3RmdmFHR2FYclFkY0w2TlJKNUJyTFFBcTR1?=
 =?utf-8?B?VWNvYThVcDU0Z1hkbDhyVzVPRzRNQldiWDJMN3dxSjRYSk1iQUk4cWpDS3Bx?=
 =?utf-8?B?d21IQlFLMi9WYTRXbVdmQVMyaGJ6bnlrMm40bE1oelh2dUZZMUFZUzVueUE4?=
 =?utf-8?B?OG4zUFRHcmRxNmtCblA3MWFONHlUcFB5a0Y3a1hQQlhmdlIyUFdseDdCQkox?=
 =?utf-8?B?eFoyaXdoZXp2V2FxVjVzR3I4aEQ0RDYzWTBKSTFlajZTN3hRWU1sRnZiUlVM?=
 =?utf-8?B?REZ0ei93bDQxcDNNRXVYNlJYQW16MC84MkYvM2ZQQ3kvUGpGcERGUTlTYzFB?=
 =?utf-8?B?TEU1VEpNc29GcmoxaEl6SVZtR0FHMDVLN0UzeUxSRjVHVy9TdUhJem9Uc2dy?=
 =?utf-8?B?cmoyVTVGSU9VQ0tDTVpCWFVYdXFGNVI0aFlCZ0tOcldlZGdyNDcxaDQvMzd5?=
 =?utf-8?B?Sm9NNngyVW9LRjl5cGtJWkdtQzZtcUJ1aUpjZ2hTeGhOZnZPWFFnazhKUURj?=
 =?utf-8?B?Yk9jNzRZdDNKRnVqRGYvRjJWbS9UdHhIMG4zWHFtemV1ZlEzRk1jK240MHAr?=
 =?utf-8?B?UEVuUHB0QWJuUGJ1dUFja1NpeEtSTXkxVUVUbW5vazNhV3R1TXlwc0xjVmM4?=
 =?utf-8?B?ZHRwZHN0TTRjcWJGQVhjS0ZsbUVtR0tTcEhoQWQ5blVYblNxOUd6cjlUeGcz?=
 =?utf-8?B?bGo0d2paSThJaklXQ05MUzRnRjlTemVUSE41azRMVGxMa1hLWi8vb0pOMDAz?=
 =?utf-8?B?V1R3aHYrcXYwVjVTdGNuMll1RjNUbHRYZTVUNm9ndURxYmtkWU1USld4dHUz?=
 =?utf-8?B?dFVpSEZkOWE2cHZYbnYrdmtDT3pLQVNUWllnbzFCekFaQUVXVXA0L05CaWZZ?=
 =?utf-8?B?R3QrNytoeUJ2bklybTRUWnVpd0QyZlpPejZKVWFsU0VPWG9HeldMYzlDS0lF?=
 =?utf-8?B?UnphS3hwbUpxVGhCMStLUHhFNXZ1N250MVh3d0I5eDB0QmIzdm9DeXlscFBQ?=
 =?utf-8?B?VlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e3d062a-1c86-4c05-3792-08dcbd4d022b
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7010.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2024 17:09:22.9203 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tpWNgwY86JYa2ROPvwi4bpcg8c6Peq5+QJpXvUuTHxdIuNUVX6AbBFcxwfDsvxPuv1lMuXIqbCkqTsiZyQFGJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
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


On 8/9/2024 2:39 PM, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jesus Narvaez
> Sent: Thursday, August 8, 2024 1:50 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Narvaez, Jesus <jesus.narvaez@intel.com>
> Subject: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent taints in CI
>> This warning was supposed to catch a harmless issue, but changing to
>> guc_error should prevent kernel taints in CI runs.
> I'll defer to your judgement on this, but IMO if we just want to log when this
> happens and guarantee we don't throw kernel taints in CI, we might want to
> consider using guc_info instead.  Not blocking on it, though.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt

Hi Jonathan,

I think using guc_err would be preferred because we still want to catch 
the error when it happens, along with preventing kernel taints in CI.

- Jesus Narvaez

>
>> Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 +++--
>>   1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 9400d0eb682b..c3a5d9e1288e 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -2014,11 +2014,12 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
>>   
>>   	/*
>>   	 * Technically possible for either of these values to be non-zero here,
>> -	 * but very unlikely + harmless. Regardless let's add a warn so we can
>> +	 * but very unlikely + harmless. Regardless let's add an error so we can
>>   	 * see in CI if this happens frequently / a precursor to taking down the
>>   	 * machine.
>>   	 */
>> -	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
>> +	if (atomic_read(&guc->outstanding_submission_g2h))
>> +		guc_err(guc, "Unexpected outstanding GuC to Host in reset finish\n");
>>   	atomic_set(&guc->outstanding_submission_g2h, 0);
>>   
>>   	intel_guc_global_policies_update(guc);
>> -- 
>> 2.34.1
>>
>>
