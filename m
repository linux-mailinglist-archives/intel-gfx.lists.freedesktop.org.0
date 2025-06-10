Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD96AD377D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 14:56:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47D0C10E543;
	Tue, 10 Jun 2025 12:56:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oHnwTn6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74CA10E543
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jun 2025 12:56:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749560174; x=1781096174;
 h=content-transfer-encoding:date:message-id:cc:subject:
 from:to:references:in-reply-to:mime-version;
 bh=l5nW41by9pMu4TpEPXRNqjO3asqSOBtGXUr+oCJNhjA=;
 b=oHnwTn6+8QjdUjjnJjJeSgT8BpELyuAq4j3xNsXh1QdLiJCJ5VZMXbSp
 EePNeXJgqBrWxWMQWb3w+v3L3AP0Q3uINSg47+evKE8TaBYafz34YxJaX
 BcopCrKk7F52f0FH3E4j+r9SSC+DqBmgFyHKnCI8cn6O58uibSeDzcuLQ
 Ct4U69ESVI3cttXNh6+Yoz4KRMgN3nwM74MzxVK1QqEpfl0JtJTFEIIOV
 21UHRP6bfdvFfR1r12YXGoBz6k+uneA/9+NMXldW2c1b1F97VTlBWkb7Y
 kOOEZI0muwKZBQZobMerFlr+/Cw9PaXuPo/eX9PsfOG/04E2+yK6HjbAt g==;
X-CSE-ConnectionGUID: A6wgKAUTRIuBA+kU8UQRlw==
X-CSE-MsgGUID: f8iepXKwQVKAkzMfiV3znw==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="61939625"
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="61939625"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 05:56:13 -0700
X-CSE-ConnectionGUID: SHGbC1B4SzqQvWrfykGCpA==
X-CSE-MsgGUID: Cwlq5ZJRTcm1eX7WSOqvkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,225,1744095600"; d="scan'208";a="151833344"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 05:56:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 05:56:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 05:56:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 10 Jun 2025 05:56:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cphTL5Lb4JfOH2+D9LD5HAKQolhce2paB0PZiuzoYwoL4ptNqE+NIkoLh+wxuDlmH+i3q2yFMrgEKRgL+9XE5Q2P0dBoAZ/W5LZOAIfBG87rDHiDSBu2X6lG2uIHlYnV4OPTNSh0I46q5PqtOfboKnpVZ3F635Kt/y96GRidEClBgbFMkAoIBhnnZIs+JHYQv5lXfaEr0/2EQ9ulUNSTxuV+7af9Fs7ilarTfH4Jqjbumm9ejl5kqKqi6K7S11YZcbtiVAtTyqDLl54a0x2V/r5FXBaPOcS0beMh5Cj3htIIanOaZiCGrea4gfqhaQi4S1nA8JQ16VjVs72zeFbxzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sHmuSMfLH9lokQENOCMTLewSFVYdj5QQdZ2RKO9nOMA=;
 b=pzp3hqWi96Cjy6DqKLMQSosIz47p31knwRUcIW/3d+bw6nSaBuXKuXVhwkJicvfCyiha1ytc6pm7NyWmP4I6ZRHtEKnGX6CWFl+p526N37/xenCfAL4rRqKklGBw4DFhOQPxW/1N/JHJKEqjGdUNbrUQFNesV3SpOr4ZMby1L1Hwm3VEW0/596KKu59SLI7r52EgSsahrAPeHDF/MZ5Lmo2n25lQU4ScpEUj/qwv2KmMjrRQaK1AmgFciOfIuYcITou2x5sdqRU2Fenpi90hLCUiFTLLY3tGsTPxoF+YG5JyEtaKzmfPUzFFg0y0qgXA485MHpggF7wmRwoO4Y6vJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH0PR11MB5160.namprd11.prod.outlook.com (2603:10b6:510:3e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Tue, 10 Jun
 2025 12:55:15 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8722.031; Tue, 10 Jun 2025
 12:55:15 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Tue, 10 Jun 2025 12:55:10 +0000
Message-ID: <DAIVAR1Z6FC9.3BFLJGCGDX1T3@intel.com>
CC: Matthew Auld <matthew.auld@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>,
 <intel-gfx@lists.freedesktop.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
In-Reply-To: <rkhynu6kvc66vebupjvz6wah4qlxcbbxpnesjx2njqsfhxtk2n@rotnqdv2ori4>
X-ClientProxiedBy: DUZPR01CA0006.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::13) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH0PR11MB5160:EE_
X-MS-Office365-Filtering-Correlation-Id: 97cb02b7-9329-4f14-f00e-08dda81e0b57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVJQdE5PM2t1OXczTmJYSUp2dndCSHNXZzg3aHY5WjFKNkNNekxxLzZZR2pF?=
 =?utf-8?B?b3F4NllQamRiRE54V2tSblF6M3A1U2ZPNHFvWW4yMXFoNHdWakQ2c0s4L0pQ?=
 =?utf-8?B?dWdrRUhTbUNwZjQ4RHIvU3NwbXh2aHVOK0UrdGNYOHlhMVV6d0E0OGVSQ2xy?=
 =?utf-8?B?QUlEbFY2YkF6OGxYN3BTSVJXWkYwaVVVWnhydUdiakJQZ2tVV3lzcnhZWlZ1?=
 =?utf-8?B?aHJrakdTdnZDS1RPR01OY0s3anV2Z2xtL0JuNStOaWxSb3U4bkRNRkFKdkFs?=
 =?utf-8?B?dzl4OENaUVhSQkNsQ3k5a21EcGxCVTlaQTJ1bXI4c2pFSHV1Y2pPTlIwS1I0?=
 =?utf-8?B?S3RDSlUrTkdMR2VKeE54Tnpnakdnek5KTjFkT21qeUFKNjYrRU13aFhxT05a?=
 =?utf-8?B?R2lQaUE1NTZiZk9MNC9saHVLd3dJVys1RytSZmpWNlNTd1lrWWJRRzNWd0tq?=
 =?utf-8?B?V2o2bjlkY05CWTVZQ1ZINjB4a3M2N2tnYXgyRDlzNUtTU241SzFwcWUwOHdC?=
 =?utf-8?B?RUsyQVdNN1A2dDd2dERGQ3BFeVNWSkxzbytUTHRTVk96MG1EQ0FrV1FJbngx?=
 =?utf-8?B?QnRyQ21KeFJKdUsrU0NpbUUvd0dDS1p1a0NlVWh1MmZjVU5pSk9TbmxHL01O?=
 =?utf-8?B?akYwVFpuUDVhQjRjOWNKa1pza1BNYUFhNEhDVHo4NHFMdEhxWnI1K2dDRnQ0?=
 =?utf-8?B?bU1hMm0zamJYbVVxc3VGak9lVVVxNENrR1c0MElDcEEwNzdhOVlsN3p0U3pX?=
 =?utf-8?B?Tit0dG11UmJDSWtqN2Y4RWNleVVCNHZoZjlLR3VWSTQxc2ljeHJqclI3RWFB?=
 =?utf-8?B?ZVNSNXhmOUZveWF4VWY3NysvcjlwZEQxR3pSOC96Sm1Tck96ZzhtMXVSVGxm?=
 =?utf-8?B?U2U3TjlFazlwSlgvSHFuQ1NUYU8vRGE2VmhTVHlId1FmazEySkM3NjUwdGFF?=
 =?utf-8?B?Q281UDNlVlk0SWx3eFlqc1ZZMEMvU3h3cGZTeHR5TWdqd2hKVkRjcS9JOTZV?=
 =?utf-8?B?YTNoZjI1b2FSakpIWVBPWG5JRENGZkdUWU9ucVIrN2lQRW53bkhaN1RIWStM?=
 =?utf-8?B?dDZQTEFhMUlONlFzYkVYMzJZdzhsYjNBMnpsd0czRU5VVDA0R2VxanlzZlpq?=
 =?utf-8?B?U0FBeTUvenpVeHBOeG5oanF4TnJodzZUVzJJcVd5ZktRUysrS1dKRURMYTV4?=
 =?utf-8?B?d3hLaVdIRjVVbTcvMElyY2I3cnJibjUyNzluOXZ3VlZEZVlsTXBISWFDM2pQ?=
 =?utf-8?B?aEprTlBzYU5vWG40SGV0QWtZRGt4aTRCMXpocHZib1U1Q3ZwKzd0RnpSN2lk?=
 =?utf-8?B?UUtCZ3lMRHpjSVFVYzJ2U0VLMWduVUY3ejJNWUZtMEc2cThvWEpMNFBBRm9M?=
 =?utf-8?B?aVRUZ0ZPdlRWT0JLeENJUktYM2tzV1V2WHczclFUamx6R0NhLzE0YWpOaW90?=
 =?utf-8?B?ZzZJSGw1R21JZmRWVGpldFEvK2RiRnNxR0RlRStzcEhua0FURkQxOWZmY0Ru?=
 =?utf-8?B?ZnBoaW9KZEVlVEtWbGV3aDJjSDY3dGVHL2VpMFllM0VkRng3dFBGS1ZKRlJ1?=
 =?utf-8?B?VU9jMitzdlRVT29NSTE2QWtQRE5GUzBrYnVnYnhZVE5pYXNqekhQeWxBWFFK?=
 =?utf-8?B?RzFjVjBjWkFMYnR4VzFOY2N1S2RDS1p0QXd5VkZZUzBxT3I5UWMyWVRnMEZL?=
 =?utf-8?B?QjFqNU5CeDdmZitOaFRYMk91dnQyUTV4ZThDRlVzbXJwb2pVVW13bEtwK291?=
 =?utf-8?B?WUpNRSsxbStsdVgyYWh2MWVacGo1K3pJM21ObkdxRUlOM09oRU1qdnNoanRM?=
 =?utf-8?Q?DUcv0SpDAOBiHHAnMi9AXWryIDQyDx4iYwiHY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVZxaC9RQ2JQYkpSQnh2NTZrUDltZ05CZ1Y1UHdrdFp4azNlQ25TVXVNbytF?=
 =?utf-8?B?R09TM1BqbGRCMHNTeERKcUxqOUdVTEQyR3RGY1YxdE1ibUc5TjFDM0gzSUN0?=
 =?utf-8?B?U0hlZnFoaklXdlVTdGYyOWV5TjBwOHJMcE1ObnppWDFtNU5aVDlzdU1Rajdq?=
 =?utf-8?B?dGovNjRsNGxZa1ZJUVVhTW53Y2krVWI2SG9ZbGNqM3R3eUlxSDdxbms4VjBt?=
 =?utf-8?B?UmJaZ0tmVDd4VGtoMnhDcnQwV1AyY1dpUmpLTWg0aEpuYm01YjM2NWVRU2hH?=
 =?utf-8?B?VzJLbE5SL3BESzkzb0dpYndnNkRUODg4MHY0Umo4Q0xhUlpnSW5VazFGNTlN?=
 =?utf-8?B?OEV0dlNPQVhDdzVwcHZWVVR5ZFRBVHNXVU1DSlRRNDFwN2ppQjRTaTllREtr?=
 =?utf-8?B?c0hjOVp3YytuU2hZMVA5aU1HdkxaNUY0WEthejZ3Z2Z2WmxKSitiend5dWdV?=
 =?utf-8?B?WVhkaWtqbHZFTDhLb2QvZzVCYlE2NnpHdXVsbHFpcjVWVnFheEdCcVo1RmNk?=
 =?utf-8?B?b2R6bXRuSS9MZ1ZRK2dReWNKVXFvYzZudG4xZmI4ejY4cEI2bStRcE5MaW9u?=
 =?utf-8?B?cEs3bjBlNTA4akp4Q254Zy8wRHlmMThzQ3pYN0RsQ0IyMitMdm9OUW45ZTlC?=
 =?utf-8?B?Nmgybit0ZUcrRGNyblpsWVM3VFlmeUtVdnEzV0JoeHh6anRNUFBzeXF0Mi84?=
 =?utf-8?B?T2UzYzV2dW50cUNXUlI5Ynd3THFVM1ZoR2F0bnBDZ0V2R2pWRkVkRUViZHdL?=
 =?utf-8?B?aUdDSjhnd3VhUzdEM29OMmJmZVdrVElEeDBkc1U2M2Q0dWM1RzZwaVU4OFVY?=
 =?utf-8?B?UDhyaHM0RERTbWMzdE9IRi9YSDZQUTJwR3laK2t3MCsxOThlUzZMMXV2NS9B?=
 =?utf-8?B?RXFIZEg5ZVFMMm1iQmx2L3V1Z3pZT0RSTDdSWTY1ZTdHUE1ySk1mdWVCRDRQ?=
 =?utf-8?B?U1k0UXcvZUcvK01sNTF2Zi8rUkVxQkt4YUphWnhzNVdJai9PRFdPd1pwTlJC?=
 =?utf-8?B?UktoOWd6TGFlZldpTzNKb2xST0JoWjRIaWtvU0tVMFgrOEpLa3p2dGtkMmR4?=
 =?utf-8?B?Q2I4azZXSFc2T0VvRzF0UWVvTzBQTDN4WWtzQ1BoZFYrQ0ZtU0ZndGpjemgy?=
 =?utf-8?B?UVBTMjNlMmpNbk1kOFEvTWtOd0RRY3paNnZDM1RpNnRwdGFpOXdqUlptZzh1?=
 =?utf-8?B?aE13NXdHWE51QW1mTXZKcHFNSlhRYnl2M0lSQzcwNG1yWEd4c2UwY0N3RHFN?=
 =?utf-8?B?OG1RWk9OSlpWWkRudVAzQWIyZXFSL0ZwWXZtYVpleHVSYU5QU3pMamFSY0xM?=
 =?utf-8?B?b09SeHErTFdRQi9mQWpvZVU1UmhoV2E1VXZCaDl2VHgyU0FGM0xGSm9UREIw?=
 =?utf-8?B?MTcvbTJtRVVXTndyKzJEbm9zd0hneVVsWnMvc2hyU2lZOGNwN3ZSd1lKdjBr?=
 =?utf-8?B?Zk5XcEgzWmlkUm5sVVdIblJqU0pSQklaZHpMVVVaS2U0YzBobXJaVm9rcFRN?=
 =?utf-8?B?Z1A0THA0bUtYWlk4S0FDVUxvQzhWRHR5VnVkR2JmWlhTanFDanFQVVhxSFFJ?=
 =?utf-8?B?SVhEQXZKV3Jqak1rVXgxcDVLQU01RGdITGJXaUFod3dGS3RMYzlaY0hGSEVI?=
 =?utf-8?B?eXNsRjNkUWtBczBLWW83VWIzZkxBcnFpNmErTktDOHd2Z1BuSzdoVlVkam5M?=
 =?utf-8?B?NDd6djhCYWhsdFdhNjgyU0lPeTBCWnpqRTI2ZEY2SG52anF6MjBHQkoyNU5F?=
 =?utf-8?B?TlRqRDdoN2FvU2RieHNaV25YMWh5SG1sMjl2Qk9mNmE5NjJ6M0UzOEZjS0Za?=
 =?utf-8?B?Rmlnc1haRzlZOUlrMDNWNUg1WGhSZU9SZmtrSEVpRXNRTUM0dStKZDdhR0tQ?=
 =?utf-8?B?ZURZbVRSNGJQdHJSTEpnR2x5YTVxa0pYcjJ5RnVURW8zNzVoZmdITFpXSGlj?=
 =?utf-8?B?L25QTjNjUXZHWUhxTzUyRU5BTU1HTDd3VDU2OFkyVG9od0paY1pDTnlJWWVI?=
 =?utf-8?B?WndBa3FsSWlMclRDZ3VHUk1aWmpjU01kY3BGMjlHRkNEM0QyMDluR3F4UWZI?=
 =?utf-8?B?WHc2RTFyYzNBQkEvVUFtTEx0bGduMjRneXB2dDkzZjJEbWdqVSt3QjBEMmUx?=
 =?utf-8?B?Wmg0RlVqVFlabzEwSXY0aGllUURhdnM5TUVUUFUzay9sSXdZakNuTHo3WVhY?=
 =?utf-8?B?bmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 97cb02b7-9329-4f14-f00e-08dda81e0b57
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jun 2025 12:55:15.1034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: njB6yBSHJSmnA12PRikPUBjFro+kzSFuGEIFuiEjKXC1mMc2uFGoIOBx6FDJY+Q2Cp92Wbmgd/ovtbMFGIH0hFuGV2vhlgxFHU2MA3jrDvs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5160
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

On Tue Jun 10, 2025 at 10:21 AM UTC, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled. Right after
> that, the test calls igt_fill_mappable() to fill all available
> GPU memory. At this point, three scenarios are possible
> (N =3D max size of GPU memory for this test in MiB):
>  1) the data cleanup does not fire until the whole test is over,
> so the memory is fully occupied by 1 MiB with that data and
> N - 1 MiB added by igt_fill_mappable(),
>  2) the data cleanup fires before igt_fill_mappable() completes,
> so the whole memory is populated with N MiB by
> igt_fill_mappable(),
>  3) the data cleanup is performed right after fill is done,
> so only N - 1 MiB are in the GPU memory, preventing the test
> from properly faulting - we'd expect no space left, but an
> object was able to fit in the remaining 1 MiB.
>
> Amend the problem by keeping the mock file open throughout the
> duration of this test and calling fput() from the test itself.
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13929
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>
> On DG2 platforms the memory for data allocated as a result of
> opening a mock file remains occupied until the test is done
> (scenario 1), but on ATSM cards the data is freed earlier
> (scenarios 2 and 3), which leads to sporadic failures.
>
> During testing I observed that the max memory was equal
> to either 4096 or 2048 and igt_fill_mappable() tries to allocate
> as many 1k objects as possible before halving allocation size.
>
>  .../drm/i915/gem/selftests/i915_gem_mman.c    |  6 ++-
>  drivers/gpu/drm/i915/selftests/igt_mmap.c     | 54 +++++++++++++------
>  drivers/gpu/drm/i915/selftests/igt_mmap.h     |  8 +++
>  3 files changed, 51 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers=
/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> index 9c3f17e51885..1fe4a45d3efb 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
> @@ -1176,6 +1176,7 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
>  	struct drm_i915_private *i915 =3D placements[0]->i915;
>  	struct drm_i915_gem_object *obj;
>  	struct i915_request *rq =3D NULL;
> +	struct file *mock_file;
>  	unsigned long addr;
>  	LIST_HEAD(objects);
>  	u64 offset;
> @@ -1200,8 +1201,8 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
>  	 * level paging structures(and perhaps scratch), so make sure we
>  	 * allocate early, to avoid tears.
>  	 */
> -	addr =3D igt_mmap_offset(i915, offset, obj->base.size,
> -			       PROT_WRITE, MAP_SHARED);
> +	addr =3D igt_mmap_offset_get_file(i915, offset, obj->base.size,
> +					PROT_WRITE, MAP_SHARED, &mock_file);
>  	if (IS_ERR_VALUE(addr)) {
>  		err =3D addr;
>  		goto out_put;
> @@ -1299,6 +1300,7 @@ static int __igt_mmap_migrate(struct intel_memory_r=
egion **placements,
>  	}
> =20
>  out_put:
> +	fput(mock_file);
>  	i915_gem_object_put(obj);
>  	igt_close_objects(i915, &objects);
>  	return err;
> diff --git a/drivers/gpu/drm/i915/selftests/igt_mmap.c b/drivers/gpu/drm/=
i915/selftests/igt_mmap.c
> index e920a461bd36..237ad91cd009 100644
> --- a/drivers/gpu/drm/i915/selftests/igt_mmap.c
> +++ b/drivers/gpu/drm/i915/selftests/igt_mmap.c
> @@ -9,14 +9,14 @@
>  #include "i915_drv.h"
>  #include "igt_mmap.h"
> =20
> -unsigned long igt_mmap_offset(struct drm_i915_private *i915,
> -			      u64 offset,
> -			      unsigned long size,
> -			      unsigned long prot,
> -			      unsigned long flags)
> +static unsigned long __igt_mmap_offset(struct drm_i915_private *i915,
> +				       u64 offset,
> +				       unsigned long size,
> +				       unsigned long prot,
> +				       unsigned long flags,
> +				       struct file **file)
>  {
>  	struct drm_vma_offset_node *node;
> -	struct file *file;
>  	unsigned long addr;
>  	int err;
> =20
> @@ -32,21 +32,45 @@ unsigned long igt_mmap_offset(struct drm_i915_private=
 *i915,
>  	}
> =20
>  	/* Pretend to open("/dev/dri/card0") */
> -	file =3D mock_drm_getfile(i915->drm.primary, O_RDWR);
> -	if (IS_ERR(file))
> -		return PTR_ERR(file);
> +	*file =3D mock_drm_getfile(i915->drm.primary, O_RDWR);
> +	if (IS_ERR(*file))
> +		return PTR_ERR(*file);
> =20
> -	err =3D drm_vma_node_allow(node, file->private_data);
> +	err =3D drm_vma_node_allow(node, (*file)->private_data);
>  	if (err) {
> -		addr =3D err;
> -		goto out_file;
> +		fput(*file);
I'll try to avoid calling fput() here and instead handle it where the
file is created. This will simplify tracking the file's lifecycle.

--=20
Best regards,
Sebastian

