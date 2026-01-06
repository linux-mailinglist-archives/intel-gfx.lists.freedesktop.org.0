Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D952FCF865F
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 13:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C4910E455;
	Tue,  6 Jan 2026 12:59:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdadRMZb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F4710E3DE;
 Tue,  6 Jan 2026 12:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767704343; x=1799240343;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=dzhoSYzLuzdJEYoxmcRx4rUupkc19Y++o5OVDbsxo1Q=;
 b=IdadRMZb85c6T+nXa6SVNiriV5KW90YehR2wIC5fx7ZdpsGMK7QxlH8E
 PMxXBkGx5T9GUoiYQkb68Wjgf2OA6mp7ujP5iUCPdldEQ6afHFJcinMwM
 n13NUc059SsC6x3y2oXeOO7tgjJ1DTShdNF4Vlx5Dib+UyAGI1mqSVOWq
 bD61DyrEX2lsad3JQBVW7/Ov2ExzDFNeU3Pc0DNqAXwFSLHH9QpGK0pnB
 +1jq80nQ3hCtok0MRvXYANV8pABhbMIa5eL8itNf9olVRRARmaXoOqhG5
 GW9kqwXrIUhfFsQx2Mpzr9WUP6D2+o3cr4N51WHiSHFw5Ng5MPHEHjkwQ Q==;
X-CSE-ConnectionGUID: HcLvt+aNQXWzWSp6mdfP9w==
X-CSE-MsgGUID: P+rd4xaUSyaet/XULqyBMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11663"; a="80517427"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208,217";a="80517427"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 04:59:02 -0800
X-CSE-ConnectionGUID: O8tpYtSXQ/ybfOt/HXYVFQ==
X-CSE-MsgGUID: qsY78/rvTPesXmo0myYXmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; 
 d="scan'208,217";a="207122182"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 04:59:01 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 04:59:01 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 04:59:01 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.15) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 04:59:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yT8qz6g0tF/vWU+mXimYOsYgcHhQYaJsCbJ9ExFOBevdiGd9FUpvmtXZ8OTscaEIErikpegJubEthgFKihBb5VHADKqmmvDmtIAv7/R32mlXcmzzAgnqRSqze78Y4KFa18r20+Y3ueuyVq+8cy3+vtqmUBkuwdaKtEJ+IujA1zHoFyG0HQki5wu2KQv7JEOsM8jhiJOohxty+mZBSZ+TMkygDnu6LTtH7aEYBOA83hAwzJiCec10qvYPB+Br2HgBLhsVG3oDTayYp6g0RhtPyCLikh4jTyNkwaPqRyPfOh0s0ycUBbNoUDxZRtYp4Pn4gIFtlpGl3o59ml+lPWoMhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nGM2bE/Z7zrQxHAZ6XPtgyOzmAHemG8SV7js6Yc0UkM=;
 b=Zc41Y4eWxP/CxIfobp1sCqAr7KEqBQN4Ff/4FJSt0VDdcTVvEiBKuGJv0OuF/htscD8yJq7topLXfYKpcZ3poE7IC/n8dIH9tVr6bebqSAZ+sY65apa67C3cxue7N6zwOEycuI8g+l5eePIyQXvObf20oJ3aX9xUvInovQNQJQe9sNoOoYLOR83aUVunI4wRv7xWKy/4OE0k2GlCyff1bapzdaOdRvnCSiDBfgZZC96lu3sKNVBN+wVjm4aMNUp+eecFJfK3/BPD4eEmU2Qo22zAOKAT68jOfXtorCT9S9X8x7M6YsCwRP+v9syOygxfoEH2xcQaj0Vn+Qe/hMqZZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by PH0PR11MB7168.namprd11.prod.outlook.com (2603:10b6:510:1e9::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 12:58:56 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 12:58:56 +0000
Content-Type: multipart/alternative;
 boundary="------------Wj000MUebBoz1sIYV2D73iYE"
Message-ID: <8e41d261-4edb-45c2-b89e-749ac49457ef@intel.com>
Date: Tue, 6 Jan 2026 18:28:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] drm/i915/display: Add DC3CO eligibility logic
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>, <imre.deak@intel.com>, 
 <jouni.hogander@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-5-dibin.moolakadan.subrahmanian@intel.com>
 <e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com>
X-ClientProxiedBy: MA5PR01CA0191.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::14) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|PH0PR11MB7168:EE_
X-MS-Office365-Filtering-Correlation-Id: f2046c66-dcb1-4a04-e5da-08de4d235a2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGR3YkJVVGZTOXRmeE5RR3ViQ3ZWeVpYekRNb0tzcmw3MFhYQkJUeS9hNi9K?=
 =?utf-8?B?Z0VXVkFGWHZuMTFaQVUzbEtVcHkxWUtKYjh0Ujd5OElRSWx4S0VMOSs4NWE4?=
 =?utf-8?B?S0FRN0ZycmFMcFJhbEpJWjFJY1BYV3l1MTlhVXpFQlpzWVZLTXZTRk5hUkls?=
 =?utf-8?B?cVJzL1BLTHhPdWVySXYvSmxhWnBGQU9TZnlnaVFIZkJmZlRtY0E4SWl1Q1M5?=
 =?utf-8?B?VnhsTWVTd05BVmlST2l0U0JIeGJ4T3hSMW5uRGFlNXY5RGdZRGN3dVlDMFl6?=
 =?utf-8?B?SFNvZGxKNEt1L2E2K2d2aXdZOHJodUp1aFpwQXkrbndzMy9maGpBTjhhU1pX?=
 =?utf-8?B?OEFRK2JEaUdKdVNtd0JUaEU5bE5RVXFBYStyRUZqVjdnTC9UbmdGbWVCdk1H?=
 =?utf-8?B?cGl5UmZKT0ZPZnRnV1E4bzB2UlVpNUJnREdOSFd2NFJybXpjZ3JSaVFRUDFS?=
 =?utf-8?B?QW41WUhXL1ZRdWx6eTZwS3JCb1JxckU2cndqdUVMOTZaWWk0MXBNZUl4VmMx?=
 =?utf-8?B?UDgydHNWOVByVlFCOCt5TTNndnMwMk1vV3FhSllXNmFWMndUd1o4ZVl1dVpF?=
 =?utf-8?B?Yzh3SHZkUm5LVURuUzM5RkRLYVVWV0wwNzZVL0dPVzlaQmhGMWFER0FmOUlL?=
 =?utf-8?B?blhwR3RiL3VtZ1dFR0hja2xWSDB0VnMyQ2R4bjRYcG5qSHlvMkgzUkpFTWxi?=
 =?utf-8?B?dVREcEI3c0d6WjVWa09WY24rR3VLc0x2RGxWOW5jYjZLT0Z6NmltclhFZ3Nt?=
 =?utf-8?B?N1BsSTh6bjUzMlZRY2xxU0hoeDZrbGs1cnl4THV3T0RrZmtXaExKMDh4dUVh?=
 =?utf-8?B?N1poYVFxNzZ2VmJBamFGaC9NdWNEcEFHNHBsMzl6Q0gyT2gvSU9xb2w5SHRD?=
 =?utf-8?B?R01HVll6eFJzMHkxZSsrRE1MYjFZU2ZqV0RLbnkwNFM5Z1FiallzOXdJQ1ZD?=
 =?utf-8?B?OFVJR3N1elVkejBaaTlVckc3am9waHhjenhQaWJtZHJvaFdvRjFTcmNLZzNn?=
 =?utf-8?B?TGJ1SXNNWVAwSmNabkRyN2E3SmFGUVVhcTY5MVJqdzFkbFkzQ0lPa2VpaUlI?=
 =?utf-8?B?VjAwL1V3V0J1bDBJcmpDU01qZCt1VHgvbG5oQjVGUHM0eTY1c2ExVWs1Rmp4?=
 =?utf-8?B?UjVhNnB3TEFrYzlGbUpEL2dtSEQ0ZmsxYy9DeXJ1VDFOTVB0angzdDJPZTVH?=
 =?utf-8?B?eS9uVWNuQnE0UnhiT21ib2RjYTRGdXJRdllQWHBUdTFlcm1vNThBdWgyMUNE?=
 =?utf-8?B?L3V4bEF6YXQ3ajFqNmFGSFdNY1J2NS9wR0o5aXZ6L1B2MnQrbUQ5aEN3SkZm?=
 =?utf-8?B?Mld5bFBWdHVMMnl5empUaG1IODRhL256eTJGSldyTm9TeEUrRGFQQW9jaCtZ?=
 =?utf-8?B?WUxRSjBpdU5BVXhyS3ZYWXdQSklWcERXZU8zWHBqbUpyVFpkM3NreHRzNCtS?=
 =?utf-8?B?K3VaTnJ0OWR4UEw2S1NWcnJIQlZBTjdBT0piVUlFb3BtQkZrcFZ5dDFiOURk?=
 =?utf-8?B?b2ZFNFd4V0NZM2dpYTc5Z29PR3dkZ3g4eXI1YXVmdnpPT0xONlpjZXg3emR5?=
 =?utf-8?B?L2doem44YThZWERHWWR5RldTbXBkQ3cxckNzY3N4ZHVLNTVXU3pwL3Q0eGpw?=
 =?utf-8?B?UGh3SnJsWTBvVFkraVZ0NHZTcUlpQTZLTEFPdE8rOElVeVBPcnZseFRtcWFk?=
 =?utf-8?B?dmZzT3JjanVlUXBBeFZNcTA5SnZsQXpGRGM1SXhxZWJmcG1pMURrVGtUeW1K?=
 =?utf-8?B?ZVF0dkJVL3pTSThBeXZFTERoUm5QUEhSRjNXRnhMeXpKcmVzTVBDZ3VjL1Z6?=
 =?utf-8?B?RWZORHR0bStFZFhSTGtQWmQ1a0QvUExPUDhidTQzVWVJd3NWMTNCZzhmcDh4?=
 =?utf-8?B?ZkdvQVNiZWJ4c29peHFkbEhQb2o5Y3ArbjVyWG5PYlZIOEE2T2Z6Y3d0UEFI?=
 =?utf-8?Q?NUUwRFIgqPPcOoDa47TRTVE7rcF7ZmRa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWtkeUF1ZkN2VjdyOHJtaFREeHNXdFNNUms1Uy8xTjdxc1lQS1VTNlhzWTMx?=
 =?utf-8?B?eE1MMmRHdXdrQlBJZnVRdjBETjZEYzV3WUt4VWZ5d09ITlN6Z05IY2prQnVa?=
 =?utf-8?B?RUpjRHlCNTJjYlRsUXFKRTMyS2hkemZUWlV1STNTMVpZbVNDVktpRm1rWUdQ?=
 =?utf-8?B?NkFYakZmTFBnNGc4czh6Sy9RWGR4cHNNK0UyUXBSa3ovRXIvUnZobWFnMDdX?=
 =?utf-8?B?UjhqSzl4ZEVBS01NcUJ5TmZXYlI2QWx5Q3IwYWhnbzA5bTVLemlySXFTZFNY?=
 =?utf-8?B?alIrZjd6SHZoSFhvaTQvVXMxVWtId2JtaG5Lb0pRM3I4dzVVMlBaV0xweTFm?=
 =?utf-8?B?SnZTcGN2OFpqUFdvdDNLMVZLQ2t4VkE5cUhMY0JDTEhrVjBvdmtkV2xISlhm?=
 =?utf-8?B?SGw2b2RWa2x2S2NkbVhsdG5wZnFpL2dlTlBacm9UbnpyNjBZd0tFRnNqTi92?=
 =?utf-8?B?T1VYYzlrS0g0K0tlbkJUNXBxWExlcS9vNE5FU3VaK0Q0RG8yRFFPVFBzUGo3?=
 =?utf-8?B?NGJBcGdrbi9jNGlyQVNRRmp0V3hISEhXTmZUNmlYV3hnVzZUMWhQekpuWkJH?=
 =?utf-8?B?YldjYU5JV1VwMFpmT3pCNDA0NjRoUGhYeXFsc3UrU1JGbGg5Q1RPSVo4cVV6?=
 =?utf-8?B?TnNxeElaZ05Rc2Z0em96UEJycE80eXJiMENzSVpWWlFKeGpGVGlEZXlUS3Bs?=
 =?utf-8?B?VUpjODZVeWhMNEsrc0hNaE9oYjl4bkxtZzBjNC9Sc2tjZnBVVnI3a0lXQTJW?=
 =?utf-8?B?blJ3UE4rYVNVQ2VWN2VubXZ4dnZzdXoxQi9ocURRbHBkSy9UaUNkb1plVmsx?=
 =?utf-8?B?b3RWK05hRnlCeFA3ZTd4dytxUWptRytmN2lJaDc5dWV4b3hiVTNsTkdHdnQv?=
 =?utf-8?B?YUdtNjlEM1p1TDQ1S2k5RVlYcTd3NUVMYVQ0dHNlSFF0U0FPU24wSDhvY1VH?=
 =?utf-8?B?KzVJMjgxZUQwWmRQZ3lFd0ZDRnNMb3VYL08xcW0vRkw2aUU1RU5xa1plbW83?=
 =?utf-8?B?em5QSVh6dk0zWHJKcjJFVjc4NExiMUVnemp1SS8wOFYrcVlaenNIRjhHWmRZ?=
 =?utf-8?B?MXBYQUoxVW1EZGlZZnRBMTE1L1lnQWJUYzgzSFhadzVkK3B2NUpKcW9hMThp?=
 =?utf-8?B?Y3RSRVZXK0NyZEJGL1o4NU1iblBQVFFUVWwxYTZvS2NFUTdQTmhabEx6dWZB?=
 =?utf-8?B?UkJ5L0RmVk9zRFVzUFVCc1VkTkFuaTd2MHZ3OFpuY3FnL1cyYVIzcUcwNy9h?=
 =?utf-8?B?QUdqdGlGcHJTYldtTWptQU9vY2FRYzBjWjQxUlpuMmZIRlczQ3Y3cTRWRDhQ?=
 =?utf-8?B?K2tyNmxzYnhQNnZuTmRzOEhnSXhkYmxzVzFoalF6S1NsZ2R0ZDUvckFXZE1Q?=
 =?utf-8?B?alhmWG1SU3J0NWh1by9hRzNRMjhZNlVwTUdBRE04Wk0wWXlJMnQvcUxkR3B1?=
 =?utf-8?B?L0RRSHc4OW5RdndTRVpZT2Z3MGlYR2pDVHVpOHRkMzF0MUd1anQvb1ZRNTFD?=
 =?utf-8?B?MHhWWllrOUZ2WFRkdy94djRJU2YvcW5abW5uQVZZbEdwbXNyZkVkbW5TRlp1?=
 =?utf-8?B?NU5RYm4zWnRjdlpleGtmeWhFS3VyRGtOaWtZcnJxUVE3Y1RxckxQV1VXMmR0?=
 =?utf-8?B?KzRZQW84TWgzbFpLbGhJeWpFcE0yYSs1cEhzbVJUNWRGbGEzZGc0cS9ydjll?=
 =?utf-8?B?b1BDMzRqanhpT0hQVVUrYjFEYVhLdDJBQXJwTHl4MEJJWnBEamZQbFpmZVBG?=
 =?utf-8?B?aHRWaHpHZ01BTVBBdFdNd2RWZmpudERZTnZBUG1MN2Fmam1wZjFlQ1BtYzha?=
 =?utf-8?B?b0k3cWV4Vjh2UUhKbll2SnllNVFjSGtJZTNrRGJLdzhBdjhubDl6Um5ZWThP?=
 =?utf-8?B?YmhrRmU3RVI3WVdvcDJ2ZGFaSjlWVHEyYVhrcnVlYzdySzdRUE1lRW1SNWc3?=
 =?utf-8?B?U1lpNFpBaWp6cUhXUUpiOXIrZ05MeHF2K3diS0N0aUtkY3JITUVGL0RvSGhv?=
 =?utf-8?B?OFlEemd1ekMvWEpQWFJiSWg2Tys4MTMwVG9BTlJycmZmUitQUkZYR3FsTDla?=
 =?utf-8?B?Q0VMMzVvL2dwREZucVhYNEhMUWdhWFIxaVJxRThBSTVCVTA5WUQ2TWVCZUow?=
 =?utf-8?B?NHZxL3pXSHp1QmltNzJ0dVl6VHB3RWdkQmxxUlpuWWxTTHd0RVY1d0hsOW42?=
 =?utf-8?B?KzRObXlOR0JpRUU0SnhhUTd1ZHNXMGs2MDU1VVFhUkpjS3RzR0VaWnp2bi9H?=
 =?utf-8?B?a3djSGNKa1A5RjJ4Z1puUkNVcDd1WnU3aTYrYkxkME9LNXFkbmpoSTlFWXFv?=
 =?utf-8?B?TVVnVUJ6aFUrNDZRdEpET3NJS0t0cFU1UzVtdEp1UDNmVDA1R1M4QTdydzVr?=
 =?utf-8?Q?VeBoutzpFr2hIKk/XBH1w4reBekh1BqF3Wohw8/WhvWfA?=
X-MS-Exchange-AntiSpam-MessageData-1: zmLFufHIrjslrg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f2046c66-dcb1-4a04-e5da-08de4d235a2b
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 12:58:56.7044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U6in/z8lthD0XFj9r2gvgOv0Pi91kqoN/wdHw5bd3LFyjJ9FjeKuYrQvptR//zfspndynfN/56yCepp5gGl0M8FVFdnZ4F7Eii0fM3Rb/R/XN231MA8vBc+oTwxBioA5
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7168
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

--------------Wj000MUebBoz1sIYV2D73iYE
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 05-01-2026 18:25, Jani Nikula wrote:
> On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>> Introduce dc3co_allow in struct intel_display and determine DC3CO
>> eligibility during atomic_check(). DC3CO is permitted only when:
>>
>>    - the active pipe drives eDP,
>>    - the pipe is single-pipe (no joiner),
>>    - the pipe/port combination supports DC3CO.
>>
>> When eligible, intel_atomic_commit_tail() programs the target DC state
>> as DC_STATE_EN_UPTO_DC3CO; otherwise we fall back to DC6. Update the
>> PSR vblank enable/disable path to follow the same policy.
>>
>> Also extend get_allowed_dc_mask() to expose DC3CO support on
>> DISPLAY_VER >= 35.
>>
>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 75 +++++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_display.h  |  1 +
>>   .../gpu/drm/i915/display/intel_display_core.h |  3 +
>>   .../drm/i915/display/intel_display_power.c    |  4 +-
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 13 ++--
>>   5 files changed, 87 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 9c6d3ecdb589..205f55a87736 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -6295,6 +6295,75 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
>>   	return 0;
>>   }
>>   
>> +bool intel_dc3co_allowed(struct intel_display *display)
>> +{
>> +	return display->power.dc3co_allow;
> Very few files should touch display->power, and this is not one of them.
>
> 'git grep "display->power" -- drivers/gpu/drm/i915/display'

Yes, git grep shows few files , I will try to move all dc3co functions to
drivers/gpu/drm/i915/display/intel_display_power.c.

>
> When is it okay to call this function and expect to get sane results?

display->power.dc3co_allow is only updated in intel_dc3co_allow_check() which is called from
intel_atomic_commit_tail().intel_dc3co_allowed() only intended to be called from intel_post_plane_update()
path(ALPM/PSR), which executes as part of intel_atomic_commit_tail().

>
>> +}
>> +
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	if (num_pipes != 1)
>> +		return false;
>> +
>> +	if (!(pipe <= PIPE_B && port <= PORT_B))
>> +		return false;
>> +
>> +	return true;
> That's a really complicated way to say
>
> 	return num_pipes == 1 && pipe <= PIPEB && port <= PORT_B;

I will update this.

>
>> +}
>> +
>> +static void intel_dc3co_allow_check(struct intel_atomic_state *state)
> What does "check" mean here? Or in *any* function?
>
> Check sounds like something that's a pure function that doesn't change
> anything... but this does.

I will split this function to two , one for check and one for initialization

>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *new_crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	int i;
>> +	struct i915_power_domains *power_domains = &display->power.domains;
>> +	bool any_active = false;
>> +	bool allow = true;
>> +
>> +	display->power.dc3co_allow = 0;
> That's now cached state with no stated rules on when it's valid and when
> it's not.
>
>> +
>> +	if ((power_domains->allowed_dc_mask & DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
>> +		return;
>> +
>> +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
>> +		if (!new_crtc_state->hw.active)
>> +			continue;
>> +
>> +		any_active = true;
>> +
>> +		for_each_intel_encoder_mask(display->drm, encoder,
>> +					    new_crtc_state->uapi.encoder_mask) {
>> +			/* If any active pipe not eDP disable*/
> What?

I will correct comment /* Disallow DC3CO if any active pipe is not eDP */

>
>> +			if (!intel_encoder_is_dp(encoder) ||
>> +			    encoder->type != INTEL_OUTPUT_EDP) {
>> +				allow = false;
>> +				goto out;
>> +			}
>> +			intel_dp = enc_to_intel_dp(encoder);
>> +			/* Port, joiner, pipe placement checks */
> Is that a helpful comment?
>
>> +			if (!intel_dc3co_port_pipe_compatible(intel_dp, new_crtc_state)) {
>> +				allow = false;
>> +				goto out;
>> +			}
>> +		}
>> +	}
>> +
>> +	if (!any_active)
>> +		allow = false;
>> +
>> +out:
>> +	display->power.dc3co_allow = allow;
>> +}
>> +
> intel_display.[ch] is not the dumping ground for random new code. The
> goal is to *reduce* the size of it, not increase.

This function needs encoder,port and pipe information, which is why I added
it in intel_display.c.However,I agree it is updating dc3co_allow . I will check if
it can be moved to intel_display_power.c.

>
>>   static int intel_atomic_check_config(struct intel_atomic_state *state,
>>   				     struct intel_link_bw_limits *limits,
>>   				     enum pipe *failed_pipe)
>> @@ -6565,6 +6634,8 @@ int intel_atomic_check(struct drm_device *dev,
>>   	if (ret)
>>   		goto fail;
>>   
>> +	intel_dc3co_allow_check(state);
>> +
>>   	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>>   					    new_crtc_state, i) {
>>   		intel_color_assert_luts(new_crtc_state);
>> @@ -7601,6 +7672,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(&dev_priv->uncore);
>>   	}
>> +	if (intel_dc3co_allowed(display))
>> +		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
>> +	else
>> +		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
>>   	/*
>>   	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>>   	 * toggling overhead at and above 60 FPS.
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index f8e6e4e82722..97987f082560 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -560,5 +560,6 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>>   
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>>   int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> +bool intel_dc3co_allowed(struct intel_display *display);
>>   
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>> index d708d322aa85..fa567c95029c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> @@ -538,6 +538,9 @@ struct intel_display {
>>   
>>   		/* perform PHY state sanity checks? */
>>   		bool chv_phy_assert[2];
>> +
>> +		/* mark dc3co entry is allowed*/
> 		                              ^- space missing
will add space.
>
>> +		bool dc3co_allow;
> Still unclear when this is valid.
>
>>   	} power;
>>   
>>   	struct {
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 0961b194554c..e99552f18756 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -956,7 +956,9 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
>>   	if (!HAS_DISPLAY(display))
>>   		return 0;
>>   
>> -	if (DISPLAY_VER(display) >= 20)
>> +	if (DISPLAY_VER(display) >= 35)
>> +		max_dc = 3;
>> +	else if (DISPLAY_VER(display) >= 20)
>>   		max_dc = 2;
>>   	else if (display->platform.dg2)
>>   		max_dc = 1;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 753359069044..9c616f449ad6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -3903,14 +3903,11 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>   		return;
>>   	}
>>   
>> -	/*
>> -	 * NOTE: intel_display_power_set_target_dc_state is used
>> -	 * only by PSR * code for DC3CO handling. DC3CO target
>> -	 * state is currently disabled in * PSR code. If DC3CO
>> -	 * is taken into use we need take that into account here
>> -	 * as well.
>> -	 */
>> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> +	if (intel_dc3co_allowed(display))
>> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>> +						DC_STATE_EN_UPTO_DC3CO);
>> +	else
>> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>>   						DC_STATE_EN_UPTO_DC6);
>>   }
--------------Wj000MUebBoz1sIYV2D73iYE
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05-01-2026 18:25, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">Introduce dc3co_allow in struct intel_display and determine DC3CO
eligibility during atomic_check(). DC3CO is permitted only when:

  - the active pipe drives eDP,
  - the pipe is single-pipe (no joiner),
  - the pipe/port combination supports DC3CO.

When eligible, intel_atomic_commit_tail() programs the target DC state
as DC_STATE_EN_UPTO_DC3CO; otherwise we fall back to DC6. Update the
PSR vblank enable/disable path to follow the same policy.

Also extend get_allowed_dc_mask() to expose DC3CO support on
DISPLAY_VER &gt;= 35.

Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 75 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h  |  1 +
 .../gpu/drm/i915/display/intel_display_core.h |  3 +
 .../drm/i915/display/intel_display_power.c    |  4 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 13 ++--
 5 files changed, 87 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..205f55a87736 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6295,6 +6295,75 @@ static int intel_joiner_add_affected_crtcs(struct intel_atomic_state *state)
 	return 0;
 }
 
+bool intel_dc3co_allowed(struct intel_display *display)
+{
+	return display-&gt;power.dc3co_allow;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Very few files should touch display-&gt;power, and this is not one of them.

'git grep &quot;display-&gt;power&quot; -- drivers/gpu/drm/i915/display'</pre>
    </blockquote>
    <pre>Yes, git grep shows few files , I will try to move all dc3co functions to
drivers/gpu/drm/i915/display/intel_display_power.c.</pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

When is it okay to call this function and expect to get sane results?</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">display-&gt;power.dc3co_allow is only updated in intel_dc3co_allow_check() which is called from
intel_atomic_commit_tail().intel_dc3co_allowed() only intended to be called from intel_post_plane_update()
path(ALPM/PSR), which executes as part of intel_atomic_commit_tail().</pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+}
+
+static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
+					     const struct intel_crtc_state *crtc_state)
+{
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	enum pipe pipe = to_intel_crtc(crtc_state-&gt;uapi.crtc)-&gt;pipe;
+	enum port port = dig_port-&gt;base.port;
+	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
+
+	if (num_pipes != 1)
+		return false;
+
+	if (!(pipe &lt;= PIPE_B &amp;&amp; port &lt;= PORT_B))
+		return false;
+
+	return true;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
That's a really complicated way to say

	return num_pipes == 1 &amp;&amp; pipe &lt;= PIPEB &amp;&amp; port &lt;= PORT_B;</pre>
    </blockquote>
    <pre>I will update this.</pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+}
+
+static void intel_dc3co_allow_check(struct intel_atomic_state *state)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
What does &quot;check&quot; mean here? Or in *any* function?

Check sounds like something that's a pure function that doesn't change
anything... but this does.
</pre>
    </blockquote>
    <pre>I will split this function to two , one for check and one for initialization </pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
+	struct intel_encoder *encoder;
+	struct intel_dp *intel_dp;
+	int i;
+	struct i915_power_domains *power_domains = &amp;display-&gt;power.domains;
+	bool any_active = false;
+	bool allow = true;
+
+	display-&gt;power.dc3co_allow = 0;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
That's now cached state with no stated rules on when it's valid and when
it's not.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+
+	if ((power_domains-&gt;allowed_dc_mask &amp; DC_STATE_EN_UPTO_DC3CO) != DC_STATE_EN_UPTO_DC3CO)
+		return;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!new_crtc_state-&gt;hw.active)
+			continue;
+
+		any_active = true;
+
+		for_each_intel_encoder_mask(display-&gt;drm, encoder,
+					    new_crtc_state-&gt;uapi.encoder_mask) {
+			/* If any active pipe not eDP disable*/
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
What?</pre>
    </blockquote>
    <pre wrap="" class="moz-quote-pre">I will correct comment /* Disallow DC3CO if any active pipe is not eDP */</pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+			if (!intel_encoder_is_dp(encoder) ||
+			    encoder-&gt;type != INTEL_OUTPUT_EDP) {
+				allow = false;
+				goto out;
+			}
+			intel_dp = enc_to_intel_dp(encoder);
+			/* Port, joiner, pipe placement checks */
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Is that a helpful comment?

</pre>
    </blockquote>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+			if (!intel_dc3co_port_pipe_compatible(intel_dp, new_crtc_state)) {
+				allow = false;
+				goto out;
+			}
+		}
+	}
+
+	if (!any_active)
+		allow = false;
+
+out:
+	display-&gt;power.dc3co_allow = allow;
+}
+
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
intel_display.[ch] is not the dumping ground for random new code. The
goal is to *reduce* the size of it, not increase.</pre>
    </blockquote>
    <pre>This function needs encoder,port and pipe information, which is why I added
it in intel_display.c.However,I agree it is updating dc3co_allow . I will check if
it can be moved to intel_display_power.c.</pre>
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> static int intel_atomic_check_config(struct intel_atomic_state *state,
 				     struct intel_link_bw_limits *limits,
 				     enum pipe *failed_pipe)
@@ -6565,6 +6634,8 @@ int intel_atomic_check(struct drm_device *dev,
 	if (ret)
 		goto fail;
 
+	intel_dc3co_allow_check(state);
+
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
 		intel_color_assert_luts(new_crtc_state);
@@ -7601,6 +7672,10 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		 */
 		intel_uncore_arm_unclaimed_mmio_detection(&amp;dev_priv-&gt;uncore);
 	}
+	if (intel_dc3co_allowed(display))
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
+	else
+		intel_display_power_set_target_dc_state(display, DC_STATE_EN_UPTO_DC6);
 	/*
 	 * Delay re-enabling DC states by 17 ms to avoid the off-&gt;on-&gt;off
 	 * toggling overhead at and above 60 FPS.
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f8e6e4e82722..97987f082560 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -560,5 +560,6 @@ bool assert_port_valid(struct intel_display *display, enum port port);
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display);
 int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
+bool intel_dc3co_allowed(struct intel_display *display);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index d708d322aa85..fa567c95029c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -538,6 +538,9 @@ struct intel_display {
 
 		/* perform PHY state sanity checks? */
 		bool chv_phy_assert[2];
+
+		/* mark dc3co entry is allowed*/
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
		                              ^- space missing</pre>
    </blockquote>
    will add space.
    <blockquote type="cite" cite="mid:e6ee14b445df7979d8bd90ee0f45ab7505d1e92e@intel.com">
      <pre wrap="" class="moz-quote-pre">

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">+		bool dc3co_allow;
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
Still unclear when this is valid.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> 	} power;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 0961b194554c..e99552f18756 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -956,7 +956,9 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 	if (!HAS_DISPLAY(display))
 		return 0;
 
-	if (DISPLAY_VER(display) &gt;= 20)
+	if (DISPLAY_VER(display) &gt;= 35)
+		max_dc = 3;
+	else if (DISPLAY_VER(display) &gt;= 20)
 		max_dc = 2;
 	else if (display-&gt;platform.dg2)
 		max_dc = 1;
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 753359069044..9c616f449ad6 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3903,14 +3903,11 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
 		return;
 	}
 
-	/*
-	 * NOTE: intel_display_power_set_target_dc_state is used
-	 * only by PSR * code for DC3CO handling. DC3CO target
-	 * state is currently disabled in * PSR code. If DC3CO
-	 * is taken into use we need take that into account here
-	 * as well.
-	 */
-	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+	if (intel_dc3co_allowed(display))
+		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
+						DC_STATE_EN_UPTO_DC3CO);
+	else
+		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
 						DC_STATE_EN_UPTO_DC6);
 }
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------Wj000MUebBoz1sIYV2D73iYE--
