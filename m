Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +H43M7Xc6GnOQwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:35:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F024474EC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 16:35:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0373D10EA12;
	Wed, 22 Apr 2026 14:35:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDDpdhU9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6429F10E2BE;
 Wed, 22 Apr 2026 14:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776868530; x=1808404530;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u9UoAAw3UhmhnAwRkG4ICNkdQD+Hax3Cja75H5N3jiM=;
 b=XDDpdhU91+In6EdWZUQVTBP0mzf8rj3DU/OapOdH4Ij2tysfkmcT1DT3
 1kkNgyFGbQCKV1YJMHFYVI/I9dm2DmHQmGNjEv6SjHrpusbhhfngDWVHl
 ls706Ceh39iosXGFGF9LSXdEUVhZrmEzEKLN6hxLa/EYEWvfYrKN+JFTS
 tZfZtuZijFEtfPUYm+rft1xJOxVzIZG06raX7nG/XAljPlwgekMGptob5
 jMzovxjapMLiUxHPoBqq1x82B2cDA9p7rgq6/lOqQb2TvAV5Lrl/Jryac
 qaquMVry25KO1ql4fNLfyq4j2OROcWpVqAfmiPIiC6B2Wu9IV6H3KSwUS g==;
X-CSE-ConnectionGUID: rqWqHx1zQIGRbvznm6THUQ==
X-CSE-MsgGUID: 0q2Dln4bQLabsbqVg0amxw==
X-IronPort-AV: E=McAfee;i="6800,10657,11764"; a="77526774"
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="77526774"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:35:29 -0700
X-CSE-ConnectionGUID: mqUmXkSoRbOFuq4qapDrZQ==
X-CSE-MsgGUID: Sw2GrFDyRcuXlvBNoJz0/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,193,1770624000"; d="scan'208";a="234158515"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 07:35:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:35:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 22 Apr 2026 07:35:28 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 22 Apr 2026 07:35:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GaGeqEYHDTfoQ4K8QMuQtMywiJvvilqGM8BsvQkomLUXxzLMVf5I8lTAAkC93o452xs0PK5ibFknxI09T2EVvYI0E99pdr+IJWE8T4fL5t1/lsrR+ZDrhtuyoxBPOmAT88uDKxFiEIlO3s6SI9UBzMg2L7390xscSjTndZws0yMPGkYFRrMoj0rE0sRY4FrXo6OMi7KAScKruzhYIKP6NcfS7inKnf1oQhfWg1nlF8j9Wwttd7rgSlrnoCufVhptoBg1O/IMD4gjp9uuY5qEppDxFaJNGPlkvcxNOXZiIblJTFOBRkJ3nRWLBS6MEZVYugKtasglx4hcYxdldpeS7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4mIgxj4YQVPSSMfKDlXFUsxLNNzdziDnV6cJrHQGuI=;
 b=muyRzFxo6k0Lc3UHJ5oWBjnhe+Hwi0R91hPwhEIJ+JStq0q2r7AFjDbtwI1vj0bW0uSrox2kqqannuiThgPSaYaTzljhmQFfL1JyBTrg2XCw7EQcCHWv6iJDq7sB+CokoopDbnS7eXl1hob1ug7YLR3rNSPfDG6hgMxcst7arW1ZUSuHm/y5JIcqyyWBzbgX8IHPJZhbJOBk+Bbea3FSddJxAuq+qgDFSQeAdEExO/JuFEGcgaKi4HMGf/Hb0gKMsl57YctUWlyg757IqFodI087ylk7nOSkDEr4B3OU0NLjWkFQWG69VEEoxvjjZJyDlChMqmqY6cHY3TvxACXyjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW3PR11MB4716.namprd11.prod.outlook.com (2603:10b6:303:53::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.18; Wed, 22 Apr
 2026 14:35:23 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9846.016; Wed, 22 Apr 2026
 14:35:22 +0000
Message-ID: <570fe6e0-17a6-49ce-8395-8a939ed16777@intel.com>
Date: Wed, 22 Apr 2026 20:05:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computation
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260326171557.2065632-9-dibin.moolakadan.subrahmanian@intel.com>
 <DM4PR11MB6360CCD357456767CF73DD91F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DM4PR11MB6360CCD357456767CF73DD91F4242@DM4PR11MB6360.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::7) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW3PR11MB4716:EE_
X-MS-Office365-Filtering-Correlation-Id: d6871046-7a4a-4d81-1d43-08dea07c62ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: /UxZj5IJpLJ5rByQyvOZ8vv0vrpZLhU8xLj9/N1fDI4Bcu/0VJTS6GHwiz8Ca+zOg25uqdyz0Imt67hhmJyfPb9jRof6YmEerWbsEnUL73Ih4MbsIz5A3hTL+rWuG6ZNHMbD+4PnezkmAPzJRK8gseStBvMy49/f0EwfffgjslTK+w+YOmn8bY/J2492oYzGEAheO4vIne39XTW1Mt38Ecfc12khrNTk2a0dgeJbxVdUiuDVNoKUdVHPDFLOmosLE2x1HsAa6TK/FT3CrN/e7qmxnzhXwfFO143plrHhOsgHCXNXwXre+IqDI8BxkjKtGoUjv5oUy5IewLz/gwe5BTGN8w5sHj4l/DoABQsSs/vUPDObGIHGWP+FXtiCnXUYY5B/hMEds8A+HaG0Wssn3KzcmpMIVt3zqGYbo5pO8JkZQYelxtpC+VbmU7/TRuoyw9e4+jwBPX/dGYHVyVtEnJSgQ6NJNuxdDGMAbVvuA5QhwxKOLbRxJ7ujV3ZtFrMqZ3ZpUl6yZE8YSYQbyp2sr9KM6+v31vswHMZleAnkTFj7TUXquOXilxnC4WpSQ7663acPJksJ3P6SD+scfhsNgRJ20/A6xyo0SC1qfP9bYahe3Uw7wojb42RIqibJBauHLVVYBiORoKMLVdW/oZedxQW5nnmH4UnIPvliKlt+4w3L/ockR5+20lCiMiSAWhL4syTbRQoaWOhNqX3AGqGfJqeFrVVJJRV1qns8LlbI9mw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bUpiQjRwT1hXQXRoZWo1TWhoUlZ5dzIyeCs1cjcwVi9ta0FBa01uaXBBZnJ5?=
 =?utf-8?B?b1UyT0JPSzNkR1doRllTYjIzMW9ubXFhYmgvWXRBeTBYTnRIMEVkVWR3bmsv?=
 =?utf-8?B?cHRKRktGNkFaUUhiYUY2NzVMY3Y5M2Q0VDJkdEI1RG5NVytTSjNxRXl5bkhD?=
 =?utf-8?B?TEJtd1RFRU9QWmtNVktPcXFPcnowQktEbGZHU3hCeVFabC9jU3FtQWJHczBJ?=
 =?utf-8?B?RjJYMTI1T1hFTzJxWW40cG14VktXMnNER0ZwdENtd2dreS8xbzhxczVtWGd1?=
 =?utf-8?B?WktvN0pha2QyWGZ4Z0xPTjRBb2hXMkpSb1NBQXdsSkpOaGh4L2oyZWJwUHhK?=
 =?utf-8?B?em04eFRvYUhoTXU3WEluQ2xEZTVldnloQ0c3RE1QTmt5b3pOdnpQMnIwWFdq?=
 =?utf-8?B?ZjdCWitVZ2J1Snd3eVY0YnJDRGJEc00yRWd2M0NDTTRkeGVOWktDSmNxeEY4?=
 =?utf-8?B?UEU0WnpjazNaMEFST1RscEdTb3k5SnRHL3BWL0RxNElxTzJlR3NMT01yc3k5?=
 =?utf-8?B?WVR2UFBSV3BBWWxXU21jSjYxbHN3T0ZPUDJqMGJvTFNRclFZZUk3dXNvb2dJ?=
 =?utf-8?B?SzZTU3VERnZPcVVjK3MwbDhIRVUwbEhhSVFaUU9XTWhYdk5GeFMweWVWU2pT?=
 =?utf-8?B?NUFCRUJRcEZYQk1vMjJhMUl4dFpFTmVhbnFqSDZPU2FyT2FBODFDZzlqUmpv?=
 =?utf-8?B?Qm54Uy8xak5mTkxzYVVrSUdacHNaVEJBUVRyUEZ0MVRGblYxMXlSbGtNU1lB?=
 =?utf-8?B?cWtwQ3Y2REQ4YUNpUy9uTG5vYWFnbnJJNnBKcFZDQkI5TVBuNVlya2kxc0pM?=
 =?utf-8?B?VUY4LzhMYURnOHdJei9YK2E5RVdRK3dvZ1dNVGdGOUtISE1HRlBPa29Saml6?=
 =?utf-8?B?cmRmZHU1aUQrT1ExSUtscWtKRFE3Tkc2bnhoMzZSZCs0cVh5U2cyYlVjNzlU?=
 =?utf-8?B?dEIxN3hhWWEwV055UzRoWEtoRXNYaC82WHdaSnMzNG1JRGNWYzRSUkZTSFpN?=
 =?utf-8?B?ZGE0cGNrWllHTzRNQU1ER1kzL3lGQllPMDJkUTRXeWUvQ3Q3YytWMWdPZGF0?=
 =?utf-8?B?dEVBMFRSdi91OGE4NENUZ1k3QjJPMEdlWlR0aWNhZDhYQ3pCY3doWDE5aHBC?=
 =?utf-8?B?RFRoK1VMeWQ2SzdYME1UUXZ0Q3hBZTYyeHFZUTc5T0tTK0RqU3g2c2RSTS94?=
 =?utf-8?B?b3VlNHY0M1BnczBFbVhubTM3MlRKK2lpeTRYeUJOby8wUHNmNDNnUUd0Tkdm?=
 =?utf-8?B?UkkreGZ3b3IvZk1nNmhlaCtTMXZZcytMMFVjajhVeDVnNEY1TE5IVC9oVC9P?=
 =?utf-8?B?a29NbFNEU015RUpZRGg2YUtSU3FnVWlmNENSU2hxWGpEM0NLaGJQZGJzbG1L?=
 =?utf-8?B?U0QxN09WTTZ3Vnp6Nk83dlRBN2pSY2ZtODRVR3JnNEw2YjRlUitUZlAxQWRL?=
 =?utf-8?B?V2ZlU2ViQnUvd3hGSUpVcVd2aDNocC82cjVDaTFMRDdKVUpVblVFdDlUYUsy?=
 =?utf-8?B?RFlzWnc2QWVWOXdMTEFWSmxrSXE1R3J1NnEwa25MdyszYTZ2M05qaTRWVjZC?=
 =?utf-8?B?T3l4R043SFJWV1hRT2UxR1JBekJ0Z29mU2MzU2NJUmR3aVUyemM5L2ZLaVlx?=
 =?utf-8?B?Ym9LNFVIZVJWZUlBVHBIblRTYjAxY3NrRTdLT0s4d2hOb3VtbG1PU2lVVnM4?=
 =?utf-8?B?WDFSL0QyZVJkNmpXUXhvcS9mQW4yVG1HM094elVZVFJZUm5JWGpxMEk4dll1?=
 =?utf-8?B?UzhzQVRCbzhXM0UveFpWNWR6UHoyV28rakNIVlJaTTZ0V0lQUG5UV3B3dmVK?=
 =?utf-8?B?U015aktva2dBbTFWRzh3ak93T1R4VEhkSlUxb0hIUjk5aCtCYkFkWXQ0RGts?=
 =?utf-8?B?Vm5JUjI4YUdoUm5Pc1YyWXRPd2d3R3VtdXZtZnk1Y3dlVWdJdFRJWmkxb1lB?=
 =?utf-8?B?M08xV1hWdm5EZWxvTnFoc21CTkUxZmM2aGVQY3RIUEl0YkdCRVBXdEgwM0JN?=
 =?utf-8?B?SDMzcFpyaEtXcm1wV3pWUmpSZElMZUo0MzIvREg5eGNXMFFhUjg0U09RcVlT?=
 =?utf-8?B?dFBoYVltdHpweS9XMlRjM1U3N0pqRnRnWTZNQ0p6Z1RqUHFtQS9WMndwTEow?=
 =?utf-8?B?ZkdJWkhxWVZ0ZDFmQXJ1SVVQTjJCaC8wWWo4M01zSEh4ZEdKRkZ2Z3NQU0pK?=
 =?utf-8?B?NDZZZjdtMThWSTcxeW1adktrSjNKZUkxOWQ2TytpVDdoNnpRMnoyRlQ4MWty?=
 =?utf-8?B?NGxqaEJJNlhjaWZuQU16UldkbWpacmg5ZENKaUdwOWp0VGlEdlpBV3hKd09T?=
 =?utf-8?B?K2RMQ2xxRXdJSWFDamxWdzBpQWdDUTV4MGFYT2YyYzBMenlDcUVSTSsxS2VZ?=
 =?utf-8?Q?YAmf0AHjkQa/RMzgRD+WYO3rS2DSw9em6X5CxdTqUfkrT?=
X-MS-Exchange-AntiSpam-MessageData-1: HLJeG44vkR3lkA==
X-Exchange-RoutingPolicyChecked: k+l0DUwKOC94tqf47jAejRksh/KIjCwd7apuZMZTutJKlZSYowQYBW0F6hy6Xn2aYI7C2weixMQfk+NuaQP7xk1wRcFZNew1wiAc6HQT2kUfcOSAbn9bzvJt9R4M78Taz9fAUSE/2GNwVg4XEsIXJONEcm31CCbb/mk3FsU55X4Ev1aAGxMHdo6QRrakfyVWFx/oDYj3yOM4LGjOvkzSZV5L9svsv3+B1zl6e7By3S/tME7uPT02CRY6ZWlp2QagD8VyI/fLfCBq0UW7L1HtPiNbfyUIEcXKg4SSVxta9cgPF/D8dqwTaHkNneN3whTTSxVPnQWHdveScLvRaWVWjg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d6871046-7a4a-4d81-1d43-08dea07c62ad
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2026 14:35:22.6526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d6PVNW4OrsNoD56m/t2Q3XeA2LKG5NzDbzMCC+7dYoHBYwcJCvRFWwQQINJIeWWkTOs/SGEbi1s8Co8F0tpV7vFAmcZgnwx8Q3qoKmQJLE1rInkd7gRD3KzJ9GN4az+h
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4716
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D0F024474EC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 14-04-2026 03:12, Shankar, Uma wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, March 26, 2026 10:46 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Manna, Animesh <animesh.manna@intel.com>; Shankar, Uma
>> <uma.shankar@intel.com>; Kurmi, Suresh Kumar
>> <suresh.kumar.kurmi@intel.com>
>> Subject: [PATCH 08/19] drm/i915/display: Add DC3CO eligibility computation
>>
>> Compute DC3CO eligibility during atomic_check based on pipe/port constraints
>> and runtime triggers, and propagate the result via intel_atomic_state.
>>
>> When DC3CO is allowed, request DC_STATE_EN_UPTO_DC3CO and reduce the
>> DC entry delay. Otherwise, retain the existing delay and set default
>> DC_STATE_EN_UPTO_DC6 .
> Specify reasoning for reducing delay, would be good to add as comment.

I will add reason as comment

>> BSpec: 75253
>> Signed-off-by: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c  | 98 ++++++++++++++++++-
>> drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>>   .../drm/i915/display/intel_display_types.h    |  7 ++
>>   3 files changed, 101 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index f20d5ebe06ed..df0eaf6ae76b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5943,6 +5943,81 @@ static bool intel_pipes_need_modeset(struct
>> intel_atomic_state *state,
>>   	return false;
>>   }
>>
>> +bool intel_dc3co_allowed(struct intel_atomic_state *state) {
>> +	return state && state->dc3co.allowed;
>> +}
>> +
>> +static bool intel_dc3co_port_pipe_compatible(struct intel_dp *intel_dp,
>> +					     const struct intel_crtc_state
>> *crtc_state) {
>> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
>> +	enum pipe pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>> +	enum port port = dig_port->base.port;
>> +	int num_pipes = intel_crtc_num_joined_pipes(crtc_state);
>> +
>> +	return num_pipes == 1 && pipe <= PIPE_B && port <= PORT_B; }
>> +
>> +static void intel_dc3co_compute_state(struct intel_atomic_state *state)
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc *crtc;
>> +	struct intel_crtc_state *crtc_state;
>> +	struct intel_encoder *encoder;
>> +	struct intel_dp *intel_dp;
>> +	int active_pipes = 0;
>> +	u32 trigger = 0;
>> +
>> +	/* disable unless all conditions are met */
>> +	state->dc3co.trigger = DC3CO_TRIGGER_NONE;
>> +	state->dc3co.allowed = false;
>> +
>> +	if (!HAS_DC3CO(display))
>> +		return;
>> +
>> +	if (state->modeset)
>> +		return;
>> +
>> +	for_each_intel_crtc(display->drm, crtc) {
>> +		crtc_state = intel_atomic_get_new_crtc_state(state, crtc);
>> +		if (!crtc_state)
>> +			crtc_state = intel_atomic_get_old_crtc_state(state, crtc);
>> +
>> +		if (!crtc_state || !crtc_state->hw.active)
>> +			continue;
>> +
>> +		active_pipes++;
>> +
>> +		if (active_pipes > 1)
>> +			return;
>> +
>> +		for_each_intel_encoder_mask(display->drm, encoder,
>> +					    crtc_state->uapi.encoder_mask) {
>> +			if (encoder->type != INTEL_OUTPUT_EDP)
>> +				return;
>> +
>> +			intel_dp = enc_to_intel_dp(encoder);
>> +
>> +			if (!intel_dc3co_port_pipe_compatible(intel_dp,
>> crtc_state))
>> +				return;
>> +		}
>> +
>> +		if (crtc_state->has_lobf)
>> +			trigger |= DC3CO_TRIGGER_LOBF;
>> +		if (crtc_state->has_panel_replay)
>> +			trigger |= DC3CO_TRIGGER_PANEL_REPLAY;
>> +		if (crtc_state->has_sel_update)
>> +			trigger |= DC3CO_TRIGGER_PSR2;
>> +	}
> Leave a blank line

will fix this.

>
>> +	if (trigger) {
>> +		state->dc3co.trigger = trigger;
> Here if we have 2 pipes, trigger will still get updated. Harmless but it doesn't look nice.
> Would be good to fix it to reflect default value for trigger if more than 1 crtc's.

when two pipes are active control wont reach here, It will return from
for loop itself.

>> +		state->dc3co.allowed = true;
>> +	}
> Here as well.
>
>> +	drm_dbg_kms(display->drm, "DC3CO allowed=%d trigger=0x%x\n",
>> +		    state->dc3co.allowed, state->dc3co.trigger); }
>> +
>>   static int intel_atomic_check_joiner(struct intel_atomic_state *state,
>>   				     struct intel_crtc *primary_crtc)  { @@ -6623,6
>> +6698,7 @@ int intel_atomic_check(struct drm_device *dev,
>>   	if (ret)
>>   		goto fail;
>>
>> +	intel_dc3co_compute_state(state);
>>   	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>>   					    new_crtc_state, i) {
>>   		intel_color_assert_luts(new_crtc_state);
>> @@ -7505,6 +7581,7 @@ static void intel_atomic_commit_tail(struct
>> intel_atomic_state *state)
>>   	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
>>   	struct ref_tracker *wakeref = NULL;
>>   	int i;
>> +	int power_async_delay;
>>
>>   	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
>>   		intel_atomic_dsb_prepare(state, crtc); @@ -7711,11 +7788,22
>> @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>>   		 */
>>   		intel_uncore_arm_unclaimed_mmio_detection(uncore);
>>   	}
>> -	/*
>> -	 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> -	 * toggling overhead at and above 60 FPS.
>> -	 */
>> -	intel_display_power_put_async_delay(display,
>> POWER_DOMAIN_DC_OFF, wakeref, 17);
>> +
>> +	if (intel_dc3co_allowed(state) &&
>> +	    intel_display_power_dc3co_supported(display)) {
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC3CO);
>> +		power_async_delay = 1;
> Add comment explaining reason for 1ms delay.

I will add comment.

> What happens if DC3Co was already enabled. Do we need to enable again at every commit ?

DC state is disabled in the beginning of this function, so it looks okay to re enable here.

>
>> +	} else {
>> +		/*
>> +		 * Delay re-enabling DC states by 17 ms to avoid the off->on->off
>> +		 * toggling overhead at and above 60 FPS.
>> +		 */
>> +		intel_display_power_set_target_dc_state(display,
>> DC_STATE_EN_UPTO_DC6);
>> +		power_async_delay = 17;
>> +	}
> Leave a blank line.
>
>> +	intel_display_power_put_async_delay(display,
>> +					    POWER_DOMAIN_DC_OFF, wakeref,
>> power_async_delay);
>> +
>>   	intel_display_rpm_put(display, state->wakeref);
>>
>>   	/*
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h
>> b/drivers/gpu/drm/i915/display/intel_display.h
>> index 552a59d19e0f..6eb84f9d8791 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -535,5 +535,5 @@ bool assert_port_valid(struct intel_display *display, enum
>> port port);
>>
>>   bool intel_scanout_needs_vtd_wa(struct intel_display *display);  int
>> intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>> -
>> +bool intel_dc3co_allowed(struct intel_atomic_state *state);
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 6830f911d94d..6c7f5bbbc821 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -632,6 +632,11 @@ struct dpll {
>>   	int	p;
>>   };
>>
>> +struct intel_dc3co_state {
>> +	bool allowed; /* DC3CO eligibility result */
>> +	u32 trigger; /* Bitmask of active DC3CO triggers */ };
>> +
>>   struct intel_atomic_state {
>>   	struct drm_atomic_state base;
>>
>> @@ -658,6 +663,8 @@ struct intel_atomic_state {
>>   	bool rps_interactive;
>>
>>   	struct work_struct cleanup_work;
>> +
>> +	struct intel_dc3co_state dc3co;
> Atomic_state may not be the right place for this, check and place it at right structure.

I will dc3co from atomic state.

>
>>   };
>>
>>   struct intel_plane_state {
>> --
>> 2.43.0
