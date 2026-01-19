Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FDEED3A2C8
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Jan 2026 10:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6900C897FD;
	Mon, 19 Jan 2026 09:23:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lFk8XScs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4D189149;
 Mon, 19 Jan 2026 09:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768814581; x=1800350581;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wKoJ2loeVk8nUXBLYkwoNjD53Q/XGumxPjnuPDK98ow=;
 b=lFk8XScsI4dtgsXz5RBwJJrsXe4e/ndBUdfGvTb84JC7limQXzYzYRId
 opkH63XW8hwmQH8BFrtyyEKuYsCezmWuSwUYHikrJAW0alhWBnT4plVQu
 EpYC+lv4HCOIEcKhNvyKcpYrubotwgWtMGX8iDVpQcxjK/Ml6mFBCwaaO
 xKzuFFC6y+UqrPx/1CtHNBBfv9kAZmUT9tQdCMflHKOQ/4N+th7zPDoCR
 RFlxv2FtCHJ7wKnApfALxy6U3mhUn+Qsk5h/Jr51stsTFKrmsryLZkYxN
 mLFHuJ1GW9mfMw093e7mMyWjl/YmJvOP319fKGpgbYL0Eqh3mFPEZQBKT Q==;
X-CSE-ConnectionGUID: VZxTslmuSWuPCY2yKet4Lw==
X-CSE-MsgGUID: 89PsZn0yTciPP+3IB+o96g==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="72613706"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="72613706"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:23:00 -0800
X-CSE-ConnectionGUID: C+1sFEx8QzqmA1a+1YEktQ==
X-CSE-MsgGUID: aF5L+fHTRAG+klAXKz27Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="209959416"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 01:23:01 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 01:22:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 01:22:59 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.30)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 01:22:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NYb6GZegdYnFiSvF6ZR79oPY8tu/SYaMk5aFKMS+0LxVEZfy8kvT99kyhoDQopdnWVYbRqeH5170sr+oFVarW72K+L74qy8H0EKMzdWCyB943+J959zxwyi6Jt2GefDOkt62BPHQfJ1h1B9EvQX7f7VjKCb3T0OSfhNZ6Nng29S3zGg4dnT1lZLqAO/WKnydHgZI1ItcMsZCvzIF3bCUAZi1rkCJ1EdqJiYt+JHB2Ift1GYE1Wu0u76j5gaLpGnHORqVbwSmlryJWMrEwLtavHQ+WVvlYeSd/wuMax+x7Dyi7K+qlb1IdfAA4HG+g0h0srt24IUZpImdBCFI9fwkQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hNFGkmFqZDUOQ9X1ytkKZvt/yQrcSfzKs504FFol6HI=;
 b=QITIVThgzXA4jrWfYoDW97EX/fgjZftn5ron6QomFVSC8uI5zNGytvWtDk6oxrFn77HTNG3ixN6yBFJH+jbiKmEaPTqONwk1odpobmiTv+D3ZO1iLZV+oY1f+rUt2C4J/XrV+liPUAXQhTESkQH6RICS37yvknvykuYEGHEQ0AgE/zXMWDvz4ltEiE570bx0ZGsHtJdILo0bOBtGog6h9qxHjvSpHrxj9YQNPB3owXmQSES0RHmsxDFRRZ3pYLFxgoS9L/r/nTGvvneYk7g6DToxTMvKGxHDlY3/casGDfKciP9nQEomoT3Pc4nyhPEevlVWHNTCk1zXiEgYub0pog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB6561.namprd11.prod.outlook.com (2603:10b6:510:1c0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 09:08:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9520.011; Mon, 19 Jan 2026
 09:08:20 +0000
Date: Mon, 19 Jan 2026 09:08:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v6] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Message-ID: <dh5npfqyvbkhtxmdyydzmxbytdzczof5kf4hm26yyocsiwkoq6@6qehmey2xk2z>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260116175447.1306139-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260116175447.1306139-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO4P123CA0521.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:272::22) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB6561:EE_
X-MS-Office365-Filtering-Correlation-Id: b307ab1d-0aae-4f7b-c7cb-08de573a4a6e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VklEOGVxNTJ5NVFGSkJreUJwVEtWekpMSTRFQ2Q2WFJjUzR6TmZITG1oVjVu?=
 =?utf-8?B?TVQwd3JZZEtKSmlkVFMxRUNGWjZUekVWVnRkdUpDblducHZ1WmNjTnVkN0VV?=
 =?utf-8?B?bEdmR0tvQUN0OGo3b1RqNW1MVFdUb0JiMk9FcUhDNUZzbWxTbkcrMlFudlR2?=
 =?utf-8?B?WlV2OHduQllkU3k2WXJOSU4vengwbktaZUFmVnJZUVlVYzR3KzBGRU02ZXcv?=
 =?utf-8?B?SEdRZEZpT2NDZmNybTZLQnpybEd5d0hRL09FMjBjQU9uWVJ3UjhsSHlZRnEz?=
 =?utf-8?B?SkFCUkNWdEx6OFdpTk8xZ1hqNE5HS292aFlYWDdFeE1LZEtraFJqbFFBelNK?=
 =?utf-8?B?eVFCNThjdkJiZzAwaytQaE9xdXQ4ZnV3QWhiWXJodDN6bUdKd0JHRmdWNTAv?=
 =?utf-8?B?VktSeElFdWdZdUlBRWFYVnRrU2RJZEZPa2dlWE5Jc1lPWDhrQXVTZ1hPclJx?=
 =?utf-8?B?VldjZi9CNGhDNDRyZDJUY0xtdG5CQWJ1L01nM2ViR2o0cHFrcnhJZ3doaFRw?=
 =?utf-8?B?T1JRS0JFM0ZNWS9lNTQ1amNkRG9FdHc1eUJqOVhEc0FERjQvK0dhdzhicFky?=
 =?utf-8?B?TWJSMEY0cTlNR0Rlc0p6RVBRVHNjTENUM2g1SU1Ma0RMalhaS01GWjcrREd6?=
 =?utf-8?B?OVJ5cTh0cHpRMmQzOHhpdERRNkxkQjU4WGtObGUrSDJKMTBHOWhvRVdEOHBI?=
 =?utf-8?B?L3Z0WlkzN0RpekxwZWRZZ2lzakIxcXhyQXcyOWdJV3krVFVCeWtwbFhxb0FL?=
 =?utf-8?B?QUpac1Jna2dkRXJMY0liTlNWY2dXR3hQanRNbEpVaGxPSEQwY1hUZWVmaDNr?=
 =?utf-8?B?UHRyRnpTMXByMW1OWDVQSC8rbERXNW9odDZlbWl0Skd5bTBiK1h0ajdYckVO?=
 =?utf-8?B?ZmhPdHMzZjlzS1hWdy9rcDFzOUU1YmxIZnI0amU4Y3YvZWU4UlVScXZ1YVB4?=
 =?utf-8?B?cWgwaVYxL3pIVUF2aytteGxSUmJRSFJMZ05CcFVIeEpZT1BPRTNGWEZEM0h3?=
 =?utf-8?B?OGNIL1JkZlRPdHQxa3k5YitvTzlEOFBiWnlsdUtlblROQ3hiWjlzeU0xQjhr?=
 =?utf-8?B?cUYwVk9qU3VKL3htUEd2Q3JsWkZjL3BDOUNhL0x0dlRKT0JLOWFWK1FEeHpm?=
 =?utf-8?B?a1BCekdDVFpSNks2WGJKem5LK09MblpXdU1MV1dFWjROL0M2OTd1N2doWnVj?=
 =?utf-8?B?bVNXb3BvSG1JMWpYKytKaEJjbCt4eUlFaHdlUmtDczNWVFdHcjVjRkZZUTZN?=
 =?utf-8?B?eGtDWE1rTVhCZkNYZEF4NjFPeGhBYkhHSGxVSWVmV0Jnd2kvRmdFK3VmeWJs?=
 =?utf-8?B?Zk1hM0NXVXhrVDBUQWE2eS83S2Nka24zbU5hSDhHMFl2Wmg2TUM5MEdJdlRG?=
 =?utf-8?B?NmNZYzBYNWdITFRBbGtwZ2FGYVNXVGYrNEdqaGhpb3BSeHBkc00zN01BMnBu?=
 =?utf-8?B?eXc0SkZ1MnZraTRBM2h1dEozRWFjTHl3ckJSeHM4UVpLSGU0bXNDaUtoLzdm?=
 =?utf-8?B?a2VHampOUWhmakQzbzdLQkp4QVRGYk4rZXRsbS9OaFZuanI4VTNGQ1ZBS2tD?=
 =?utf-8?B?UUtBQ3RHV3l1cm1TWHpoQ3ZzMjdKWDkyUE9DLzZFVWRRMitscWp0eEdmTkND?=
 =?utf-8?B?M29TMXJxdTBGTjBhQ05qRStoQWdxVUJ3RWZEQnovbEF2Nm9YR2p1OE9xdlFV?=
 =?utf-8?B?amhvMVRsUFNZYkVLd09vR1NaV0pVMXhreXVVMEtYTkI4WHBrWklmWFlSQXFm?=
 =?utf-8?B?ZXBsNEJneEpDSlB3WjkxMzVsbTFRQlFwTkY0Rk5pQkJZTUh5ajdQWE54Yi9J?=
 =?utf-8?B?TVUxTzZBMzZCNEJWVmRqc044OUFzMkcrUTNldElGeVY3K2JxamdTTzlYOG42?=
 =?utf-8?B?ZXhDazQyZk1VYW5YSmd2VkV4aExQbWNFUDFxaHFyUXJTWTlrQ2ozcm9SRmg1?=
 =?utf-8?B?ZFJlMHliVUNleHBIVnBEcHA2SERFcWhxQTBnNm5XbUd2WHVTZUFTcmkwaDlK?=
 =?utf-8?B?WFBiOFo3NDQvMVFNMENBNzhjWm5BVXpKTVlnQVUyQURZbG1ocjNNOEVsaW5k?=
 =?utf-8?Q?+MffP/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFhoWWJWZGVObFlpUkRUK3krcEZpa2tCOUtlOExVM2w3YjJwU1Y0dXp6bFRa?=
 =?utf-8?B?YVNtSnB4OUVoSWpkQmVSVlVqMklXVFVrS0pNVzFGU2huWHlhaEc0bUFHcG5J?=
 =?utf-8?B?eUlzb0U5eFJVVW91NmsvZ0h4RERuRWI3cnRmdHdWVS9jVlJZRWE0aEpQeVMz?=
 =?utf-8?B?TlExWkdhb0JiMVNGeGpDSkg1VnZLbjhkQ0Z6ZHlCazJGUWlyZmhnRlFtMXA5?=
 =?utf-8?B?cUZ5K0V3dVZvblZjMDFTM1Vab2E5LzNrTFYvVCtaN0FQWkx2MUZpbUw5Sk9q?=
 =?utf-8?B?SlREU0NHS2VBYWw1YUtqWkxuanVBYWwvblk2Tm9PQ3VPYlVsQjA4dTQ5VE5w?=
 =?utf-8?B?YzVkcURMdEJZOHMwRUMyV3d1ak15NzYzK2tkTDhkekc0VjJUeW01TmV1WnV3?=
 =?utf-8?B?WXhxWk51ZmRaR0JnQnNtczlrbXVVckJlN2ZjVWRFczQ3WWltRnNIWFJ5bVZk?=
 =?utf-8?B?MFNNNzY1OU44VUdpSEpqQ3NXcXZDUUNwYmMxamlNMEpoTTR3aU9pSzRURmhG?=
 =?utf-8?B?bWRjM25MUGtWT1lVQVBobjFXdFlBSk9sOFZQSmQ3OHUrVXlWbWpCWjV1TnZp?=
 =?utf-8?B?T3FHT08zdForeWo0ZTZIamttRFpGbEVreC9VQWNScWREcngvWjR2OXRQamtW?=
 =?utf-8?B?MzNheFZSUDlKeUYxczB4MGZ3dW9ZWCtRMnU3a1JBOTZJSlcvdmxlWHQ1dGl0?=
 =?utf-8?B?cllOajA5ZkJkZm1pcVV6a3lYdVFTQzl4K2pWRHB0djdvWFhDL0xpZUdjZ0oz?=
 =?utf-8?B?Tmllc3l0ZElqVm8vRkhZeU01eUpGbDUxREZza1IwY2pmWnFyZ3BQU0hISEx2?=
 =?utf-8?B?WWRkZFRVandndVhHeEg3d0JCbDhob3p2QjBNRXFhRVNUVnVkUzM3dkdEZFJm?=
 =?utf-8?B?TjJqbjM3c3g1NkJaanhtV1doMXpNemQ5cnEydzAveGZNN1dNYU9tMGRmWGZy?=
 =?utf-8?B?MENlVTZOalpqVGhWbnhrL2RFOGNHTWhHT0VzdWI4NUtmdGNmQ3dRd2tqcWVD?=
 =?utf-8?B?WHZGTDF3YVlGcG9hS1h1c013aVFLcEpQSHdtWThEUmlmQk16aitGWXBmQ3RP?=
 =?utf-8?B?ZjFHSlBDYVdqOXkyRFpaa25xczdyQXpDbDJ4TEJVYUF3STdjMjZvNFRuUk04?=
 =?utf-8?B?QlU3TEpCZ3dRWCt1Ynoyc21lNE40V3RBTE0zWlNIT0E2Q0xvMHM0bW1GTVll?=
 =?utf-8?B?YldqamFib1VwRWl1TGpZcjE4dWJtYWZGWHRUYmp3UTB3V2ZSVXdPZEorc3dn?=
 =?utf-8?B?NEtiV01KZi81RGdtN2x1SUY0cUFaZkVzM3pQd0dPTk51ZGVtcmdFWHhkckdR?=
 =?utf-8?B?aFFuY1g2QjkyeENTQXRVOUd3VTlKRy9xdmJFNndJZmxKcmFWa0w0RXgvY1N1?=
 =?utf-8?B?aXRxYkZPK1F5Tkdia3ZlT3hRTGRVZHlKUGlVeDFxRG1iRnB1SzdlMkZVZU81?=
 =?utf-8?B?RnN2c3JibzhpcDRTR0hlV0h2eUl3Vkc2c3pQdFBQWEZtUFNYOHhKUXdoK3FM?=
 =?utf-8?B?b1pUUkJPNEpETGsrTC9NalVmRDJXeTdKK0lBbStJRlJxVWlzWnUwWVV4RnFh?=
 =?utf-8?B?QTJUZnVBWWRHZmw4dHU0YlFDcFRzY1l0N2pRc0l1b092MTZVb29McysrSUE3?=
 =?utf-8?B?NkNGT2ZOTHFTRExoYUF3ZXJwVkhIZVBaOStQZFJURVI4OVZkMUxTSm5wazZo?=
 =?utf-8?B?Q2YwbUliaGJHL3hrdzdqU3doRmdUYTVwdlhPdGVOQktKa3lGSEJvNmpYMjZu?=
 =?utf-8?B?RU5QR2VPcVBrVm0ydThmSXNzZDc4UWxIMktJNmI1R2hEV3FBa1hCckpQc2JD?=
 =?utf-8?B?TEw1eTRMY3pTL1lPZXhYQUZLM25jbVVFU05TWmdkK21iakoyNjBPUHk1bzdl?=
 =?utf-8?B?VWhzYlpoM2xFV2JZM255WDBiUG9GODZCRGVjZEhXNzhVK3AwbEVBblVIbmlZ?=
 =?utf-8?B?dUVXdkl6SWNqRGFZTG56ZyttQ2ZaUnFwOTdtekkyd3JBQiszM1Y5OGxGT1Qv?=
 =?utf-8?B?eklkMGtNZVFjY2NYaThRZTlkb3lpQ1YyTERqbjZKMi83ekdkOGRlblArTlhX?=
 =?utf-8?B?NVJEV3JPdWw3WUJ2UExWeEgvaVdrbVUyazUzOS91OFREOHp5QmZMQmNCK0FD?=
 =?utf-8?B?SitEZzRzejVleVFxd3p5eDFqUHpEeDRVcUZyakl3U3o4bWtVN0doeFBOSitq?=
 =?utf-8?B?anYyZ0cxem80OERPb3IrZTFzKzY0ek1lZXpCWHdxTVNWWUtQdjF6NitvUm4y?=
 =?utf-8?B?NmZFRW5zazlOWmNDeWdXM29xalJQa2I3Y1I3SUUzZlB0VzE1K0dzZmtyaHM4?=
 =?utf-8?B?WnVPdjUvNjU5UU9ldFRxMVVzK1JnTVl5Y0hVUzltTnJ1ZG0xUnlrQnNhYUhq?=
 =?utf-8?Q?x1uSU1AfMKa4e4mc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b307ab1d-0aae-4f7b-c7cb-08de573a4a6e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2026 09:08:20.4986 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IsfXQelykWO/+wu2R+eD5xUhn1pQJyocTz1QZ2z/djX2no/Jb854T0BrypTi2+cOxHLBLyJQAota+sqvKQhwV0xHcq6NhfPaEyB+oe6ZQNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6561
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

Hi Janusz,

> The smem-oom subtest can expectedly result in oom-killer being triggered,
> which then dumps a call trace from a process that triggered it.  If that
> happens to be a process that executes drm or i915 functions then the call
> trace dump contains lines recognized by igt_runner running in piglit mode
> as potential warnings.  If severity of the call trace dump messages is
> NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
> reported despite successful completion of the subtest.
> 
> Fortunately, severity of those call trace dump messages depends on kernel
> default log level which can be controlled from user space over sysctl.
> 
> To avoid false failure reports, relax kernel default log level to INFO so
> those log lines are ignored by igt_runner in piglit mode at an expense of
> call traces from real issues potentially detected by the subtest not
> contributing to the igt_runner reported result.  Since those call traces
> are still available to developers, only submitted with reduced severity,
> that shouldn't hurt as long as the igt_runner still abandons further
> execution and reports an abort result on a kernel taint.
> 
> v6: Expect fprintf() to return 3, not a mistyped 6 (Kamil),
>   - fclose() the stream if not null, leaking it not only doesn't look good
>     but also results in fprintf() output potentially not flushed.
> v5: Fix abort skipped on memory allocation failure or other error.
> v4: In the exit handler, restore the default log level with a simple
>     write() from a formerly prepared buffer, and abort verbosely if that
>     doesn't succeed (Kamil).
> v3: Move cleanup to an exit handler in case we are killed (Kamil).
> v2: Move default log level setup inside subtest smem-oom (Kamil),
>   - move cleanup there as well.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

[...]

>  static void smem_oom_exit_handler(int sig)
> @@ -861,8 +891,63 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
>  	}
>  
>  	igt_describe("Exercise local memory swapping during exhausting system memory");
> -	dynamic_lmem_subtest(region, regions, "smem-oom")
> -		test_smem_oom(i915, ctx, region);
> +	igt_subtest_with_dynamic("smem-oom") {
> +		int console_log_level, default_log_level;
> +		unsigned int fd, i = 0;
> +		FILE *stream = NULL;
> +
> +		/*
> +		 * This subtest can result in oom-killer being triggered, which
> +		 * then dumps a call trace from a process that triggered it.
> +		 * If that happens to be a process that executes drm or i915
> +		 * functions then the call trace dump contains lines recognized
> +		 * by igt_runner as warnings and a dmesg-warn result is
> +		 * reported.  To avoid false failure reports, relax kernel
> +		 * default log level to INFO for those lines to be ignored by
You could also indicate here that the desired log level is
represented by "6" to relieve users'/developers' memory:
"...default log level to INFO (6) for those lines to be
ignored by..."

or, since this value is important:

#define LOG_LEVEL_INFO 6

and use that in the code below

> +		 * igt_runner in piglit mode, at an expense of call traces from
> +		 * potential real issues not contributing to the igt_runner
> +		 * reported result.  Since those call traces are still available
> +		 * to developers, only displayed with relaxed severity, that
> +		 * shouldn't hurt as long as igt_runner still abandons further
> +		 * execution and reports an abort result on a kernel taint.
> +		 */
> +		fd = open("/proc/sys/kernel/printk", O_RDWR);
> +		if (!igt_debug_on(fd < 0))
> +			stream = fdopen(fd, "r+");
> +
> +		if (igt_debug_on(!stream))
> +			close(fd);
> +		else
> +			i = fscanf(stream, "%d %d", &console_log_level, &default_log_level);
> +
> +		if (igt_debug_on(i != 2) || default_log_level >= 6)
...here...

> +			i = 0;
> +		else
> +			i = snprintf(log_levels, sizeof(log_levels), "%d %d",
> +				     console_log_level, default_log_level);
> +
> +		if (!igt_debug_on(i != 3))
> +			printk = dup(fd);
> +
> +		if (!igt_debug_on(printk < 0)) {
> +			igt_install_exit_handler(printk_exit_handler);
> +
> +			rewind(stream);
> +			igt_debug_on(fprintf(stream, "%d 6", console_log_level) != 3);
...and here.

> +		}
> +
> +		if (stream)
> +			igt_debug_on(fclose(stream) == EOF);
> +
> +		for (i = 0; i < regions->num_regions; i++) {
> +			region = &regions->regions[i];
> +			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
> +				igt_dynamic_f("lmem%u", region->region.memory_instance)
> +					test_smem_oom(i915, ctx, region);
> +		}
> +
> +		printk_exit_handler(0);
> +	}
>  
>  	igt_fixture() {
>  		intel_allocator_multiprocess_stop();
> -- 
> 2.52.0
> 

After you address above:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
