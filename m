Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3119F04CD
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 07:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C34610E1E6;
	Fri, 13 Dec 2024 06:28:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XuVu5fHH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B259810E1E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2024 06:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734071333; x=1765607333;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HORkbF0omHjClmZ2N/C/apb85GruZ8l51nh/IAo7uP0=;
 b=XuVu5fHH74UdXTtTSxkMNAIXOtoGtQWfw13AYUHcUdchO5cR/JAb1VCn
 kfbfGtCMwQPTW9m4WfdPU+RjZ6/aMl84omg7tiAp9lpv8Mw92TfjP3FP1
 hslVYvmbRXGhNjQISGQpkfwVHUt17gmvAxj9t6uE+XLPJ8uPlJKjhOmNI
 NsPrGz3l19OZJ9x5caiKkKRY2IERx8eE1DcG6o9R207oVepzDzmPz5/H8
 D64OkdR8ZoaI/rIQ5aV1vbNSTAu098DA/K+++AImPFwLn7/AXwx8mb4fF
 KkZxlVB+pspWqvqbJr0edYiPilbXcWEODVFS4c43bI8frb/PNUnIodUoa w==;
X-CSE-ConnectionGUID: bNMq1CXPT/2Pid+Pd3CaaQ==
X-CSE-MsgGUID: ZM6v8WTFQsiC9cZPEQJ7uQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45899906"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45899906"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 22:28:53 -0800
X-CSE-ConnectionGUID: SO9i9Cf9RPeXu2v6NDcKDA==
X-CSE-MsgGUID: BLdgONTYQJK5tAk03ccmqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="127442541"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Dec 2024 22:28:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 12 Dec 2024 22:28:51 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 12 Dec 2024 22:28:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 12 Dec 2024 22:28:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pGvoymea9gW3iVCnf7QFh9xKB1tOUfPqT+DvyQTJyKpea/DGaQ1Pdb0R/zGxmhllZ1o+2mrZSxlLJSINa4sXeC7eeFEbBcIqHv1A2yGdKByq56uaO2BxV+dAywYJeFmOrzWpNCn1PHBti7FZ5YLlVMtt0qidjK+lWM10ixZQFWu+JBh8An/mUF2YIVLOeJxFJkh3CYZiOBzg0KnYwjhZgDhkGU00I/8rh00h0s0P7wRbHs0yAkGpxYJn6l6x+izmJAqNHdq8x/jfCBa+90hKXo5+EziRBls1E9BZVFK0Ax6Y2TIL9wYzerac+H75KSzQU6EurkbzkXZkgUBpv68Erg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RvGDxW5AgFwiuu21k+FGeDJlajjGGGZZSEhmlTbgL0E=;
 b=UyhLdzdxI5C1es4ejLh0+TLf2SdCpBQUjdP6DUu+Onl7kdB69NREJHyLp36x45wZKyJU6c5sSfCLGwITrd/kFuoI8aV6Iu9HSVBsnYKQJvtDSDgxvK8/9LZCybI7GTdI/tbqm4gJwj92OeaVUz2w6ah9zfZCPFhKG7CQH6RaVb92h/hWlYtsXljasEfhiJShcel3y81nKkqwqAWzTfcN4QmRbjXgk5bYveKJAk/CaKMaRfVhghjYIaKl1bCajor8gkXgeDl/qX20bKIPpIykTIydBFWO36Aqvobx7oVFGQ48/osxYVDHoMpRauFQH9OCrGV5WbjDlmj/jVE7n2hwSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by PH0PR11MB5782.namprd11.prod.outlook.com (2603:10b6:510:147::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.15; Fri, 13 Dec
 2024 06:28:22 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%3]) with mapi id 15.20.8251.015; Fri, 13 Dec 2024
 06:28:22 +0000
Date: Thu, 12 Dec 2024 22:28:20 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure?= for
 Fix some races/bugs in GuC engine busyness (rev4)
Message-ID: <Z1vUBNgnQdQRt/KX@orsosgc001>
References: <20241127174006.190128-1-umesh.nerlige.ramappa@intel.com>
 <173273976976.3856982.8115235710865638329@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173273976976.3856982.8115235710865638329@b555e5b46a47>
X-ClientProxiedBy: MW4PR03CA0202.namprd03.prod.outlook.com
 (2603:10b6:303:b8::27) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|PH0PR11MB5782:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e1a57db-214e-41b3-055e-08dd1b3f57ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TzdQNERvVnVqR2ZuMjNLaUYwYUU5TVlXZGRhOVhjcVE1b2xCQmdycnFiMGdO?=
 =?utf-8?B?SjhPTGcrWWRWaStvVFVUUEtsYXhDeW1pczA0dEdNWUYwWld2eWRVWlhBTlFF?=
 =?utf-8?B?N2VYSzFxUlFXSGw3UElFRmJFZGk2a2JsYzJDNitCZzZxUDNNNW5rT0xIclNR?=
 =?utf-8?B?bFNYZzhLZnI2WHp2eVoreW1RTVVETnFsYkxNNlVieXVMRUNKWERTTTkrUXBX?=
 =?utf-8?B?cHkyYTdRRHg2dHR1K0wvUGRXZXV1VzRDb28wTkl6cUJ5YXFnUUFvZm0zdGFp?=
 =?utf-8?B?Y0dOdnNVOGs4ZUhaYlcxUjM0aXNWcW5NOFZYMXEwS1l3OVJ6a1dyUDJxc0Uw?=
 =?utf-8?B?Z05RYmg0OFFMbm5kUyttY3RCSXRhMmwrWVcrdmgvc2xsbDJ3aUdwOFJZSG9I?=
 =?utf-8?B?SGxNMkl4SFY2YWE2Qjd1SGFyL1NlZkU4QVFONmxCN0YzenZ0RjJuM1VrMG8z?=
 =?utf-8?B?ZmhxMkh3RWxuWjhtWUJ1UGNRREs0ajdxV1pMdHU0RzE4b25kdFFGajZwS1du?=
 =?utf-8?B?ZnhjSTArS2hGQ2pXZU5ORjA3aHl5YmxpVzNtNUJ5eU9ST09XQjdLcFlPOHNw?=
 =?utf-8?B?Q0NKY2hQdUZQSTVORExFL0Jla1lEcjgwTVZSUVMweVZHMnEvMC9xMFdDSDZM?=
 =?utf-8?B?SDFPWDBReEZEaU1SR0NGajVoaEY0UVovblRHRE0vUU9kL0EwSW1ZSVZjVG9J?=
 =?utf-8?B?RDR1ZmVEa1R5d1hmUFhPOVMzem91VGdQeDRyTXpFNFUydjdMWmdma2VjUldE?=
 =?utf-8?B?VTIwSEhMNTcvdmZGUnh6VWkxb1U4WG9Pazd3a0ZYczYzQ2hqZWh6aGFjOENH?=
 =?utf-8?B?UXoxYVVRQjNzUmRhRDgyNGRhN29sQldEYVZTR3p4Q1J4YjVhK0lDZ0FhTnZH?=
 =?utf-8?B?eVJ1a1ZqNVhlUkFyOVdyeVhjdTlFQnJVYndBT0kwUW5ZUzdLa2FUa3VwSElL?=
 =?utf-8?B?eHdSdGhCbjFjSS9yTE5TUDNVaW4zSFdFcVAyemR4Q1JNdCtwSDRGdVFhRnpU?=
 =?utf-8?B?WEoyZnBVcDFYMWVCUEhrcEpVV3J5QkZJOE1HWkhvRmhDMHhDOEJJM0dTSzd0?=
 =?utf-8?B?c3FtQ2ljNVl0bGVkSUYwcmFXZ3IvNENpbjdaWXd4OFFHdzJFR1N6dFA1VjNC?=
 =?utf-8?B?dVNoTnFpSXRxT29yaVFQaUZLUU0wNlpmcms4VVYxOGFPT1VSbFVQOEpXekda?=
 =?utf-8?B?Z3MvNXlBQ2I5NjVOWkFaVUJKSUVZR1ZPbS81ODlGZnVKY0hSWVVUNDNET21N?=
 =?utf-8?B?bFlmU3VqQlF5ZmF0MHhFeWwzT0gwN1ZWNkNSbzdydmtDTHB6ZXB5anBtc0oz?=
 =?utf-8?B?czhyU2YvVXRyQmQxUU16d05aTUwyMnhMd0o5YjZuRlUvNVJTcjZJSTdVYkN0?=
 =?utf-8?B?cjFReUUvNG5zRENHUDkrS2t6WTFGNzFDWUhTSlJ2RklGQ28xSnRLNkd1d3pj?=
 =?utf-8?B?cUNzbHVTNlhueHlQYnU2dU9JVjZSZnU3cnZvWElZdGFnWjN3amdwdHlxQXJh?=
 =?utf-8?B?NEJ0cDBZZTgyampsR2w4RXNZZCtLYm5VL3JSaSt0M2UxOXdKNEVEZDZkUVZ5?=
 =?utf-8?B?czRVS2FaWlRuKzI1NXVQRnZZRmhpaGRsZE0zUS9DN2poRGtiOFM5ZmNDVDdW?=
 =?utf-8?B?MVpTYTQ4SkxXQWJCQ1ZzbVd4NnlkWGFiSnVHT3ltZDlsRGJ2L25yYlhZZEl4?=
 =?utf-8?B?OUFlRW8xMVpEaHg3QzhsZERGZU5ReUFoUW1LTHhiT21peTByNkUzcG56MEcy?=
 =?utf-8?Q?7YBaxNvUI5DsaNTSzY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTRmSzFHTHRuOHM5dEI0cW5PZjFEeTBGRGVMaTRUdmNFdHJHd2xVYXJoV2ZS?=
 =?utf-8?B?bWNPdnpmWDRJOUp3NTRlZGh3S3Qvd1JHbktqaVhjZkY0cmhVWDBOMTYzZnBT?=
 =?utf-8?B?SzVLazBYZU83RHlicXVzRFU0QVNLbjJjLzZyekJhR3NmcWh5b3lTS29ldEhF?=
 =?utf-8?B?N0xjblh1ajVoc2hIN0JxYk96YVRRM003L2JXdks0TGVneFhIQURmUk1IZzlI?=
 =?utf-8?B?VndOY3BPZ1dEWDRya2FzOE1kUTNLNm95MWxYTVFrbTR4M3puSFZjYkdVUFRm?=
 =?utf-8?B?b3NKd3A3anJqM0dJNTUxMnZ5alduNkdRM05Wd3FGb05vRFgxeWlxUjV2MW9s?=
 =?utf-8?B?dWwyNHZzMWZaUzZhemVkM1hXVFBjcUZBRkdqd0syTGZta2JYaDlNTWloSG0w?=
 =?utf-8?B?WWEzZDVWSWVadGM2SFd5ckcvUGU2SW9Ocnpua2E1NTkrSWc1RVBCS1FtdDRk?=
 =?utf-8?B?aUVSTlZmZ1JxdVU4dDRFUXh0T05ydjNreFlMYmhPR3lMK1FHanZGbVROakRj?=
 =?utf-8?B?S1lZK3ZJSjdtNkNPYmhmSWdPOVlEMkhwQW1INUVhNXJzbG94dks4WVNiV2FI?=
 =?utf-8?B?ZTFNOWpyNUZOS0w1NXBqZ0gxZFBaYXN4clhSdE5xS2RQUS9td0JCOGRtVjR6?=
 =?utf-8?B?SzJYSTJ3eW5jZnR2dzJuSlByTzUwSUcxMjNqcFh0bjByU28rR3dTc0JQWHJY?=
 =?utf-8?B?Z0VsLzgwUUhrdTF4V1hpckFjVHI3TjU2SDczM1ZzWXQ5MkdPMDgxUnhTcUNK?=
 =?utf-8?B?M1Z5K2h2VEdFL2JkWkdwYVZrdFcxWUlrY1l2NlFFNC9mT1BKMHZZQWZjZWhC?=
 =?utf-8?B?OHd2bFd2ZVdvb2JCbEQ1YnFlc1VUOFRGQ1c1bXprNVdHRTlnZjd4MnVuZFVR?=
 =?utf-8?B?MjhvWGxDcWhCMlpZelRvYUM3bWo5MWE1SlI0ZThsaHRHNWdqV00zcHIrSG0y?=
 =?utf-8?B?TU1mTXVPK2tBM0tLWGlCQUIzMXFiN0E1T3VVTFpPVHFBeWZneE9wdGNITWg1?=
 =?utf-8?B?YjBYYzY4eThHb2FlRTNBQXRvTVRkU0hsdXpyelprdk1Ba0VOb29TWnVnUkJk?=
 =?utf-8?B?MUJtVjZaSnZkTC9hSkIyc2xLMFBjNmpJMDI2SHRKR0dSVXRPZFh4UWtmaDJV?=
 =?utf-8?B?dk82UWdhTExqUkI1MVJvVFRqOHhvYnRFVURZaE9Pck9DYU9rRFJhNHAzcWtj?=
 =?utf-8?B?T2tYK09EVzdSSWcwV2pWM0ttSlN5bEdoZ0lmRVhXN2R4eWtPam5Na2UzcjRx?=
 =?utf-8?B?OXByNXlvQ3pCRmg0SGZYY2pJUkV4TndQelgzMnVnSllrS255ejNqUUtxanlI?=
 =?utf-8?B?OHd3SFhFL0p6czRwZGhVbVprYVZxSG5jdlV6REllMEdHUE81VE8wMENXWmI5?=
 =?utf-8?B?eml1Y2hMaWNRVnBUWVM2WG8xb1B1SmJFVStFVkxoTzhkVjVtdWE4M21IUjRa?=
 =?utf-8?B?MzdGeTh1d0NOeG9HVDFYQmtscjN3MmxQTUZKeDZwdnBTN2lPWmwvTE1Odmsr?=
 =?utf-8?B?a2oyb21IODVaZmYveS8wUEhaRXo2elBSZ3lCbmF0NnU5TnBVbTg0S2RhMVFG?=
 =?utf-8?B?aFBCajFMUjZDeGFoemJLYWdYMXlHRHJRV2ZFL3REQ0F6a0RnR2Z1emNhcTlY?=
 =?utf-8?B?NHlSQ2JZREFBR0JDREkrUktzeldBaWh4dXF4cFNUMWRuMCtnNWZYaTBHVDl5?=
 =?utf-8?B?NlpqZmFFa3VnKzcySkh2ZVA5d1BHamNNRUxMYkthaVlRTzRFZmxaY29vcUxQ?=
 =?utf-8?B?T1U0SUJibURWSDhBMXJmdGN5aXRkZU5YbG02Qzk4alB3MzlWc3dQUXBtVXc4?=
 =?utf-8?B?TUdYNld6QWpPQW5oQ0VraVk3Mkd1dllyNDRVNVB6Z0RBZzhSWnhia0NFOEth?=
 =?utf-8?B?LzVwWmVBS2Iyd3NkdVVOOEFuTXdpY05pZXRrV090TlU4RlhrNXJGVzlhWnpr?=
 =?utf-8?B?MngxSWNOR2hjNzJzZWRXRklGVlZFNkkxWkNMa0MrSnU3M2VNbUN1QkdMZW1t?=
 =?utf-8?B?OVBNTndWcGFGb202V1ZMNmtyRnFXSVpNZ3ZKc0R6QnFSZmdreWd0d1EwcjZK?=
 =?utf-8?B?alJUNnE3elpIZHVSdTYwQmZMZ3M4ZmkrYU9HV2cwemt3VmlkVW5iNnd2Nkt0?=
 =?utf-8?B?dnJaNjZkUktGUU9iM1pVcDhxcjdlMEMxbnJtYTJpSzFJaVNTUFp6c1FNWUZo?=
 =?utf-8?Q?A+E2MFsAWxaNFJlfOXIu+JQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e1a57db-214e-41b3-055e-08dd1b3f57ae
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 06:28:22.5950 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kidrvOkYJ1nqv8HBOoaz32Wjbvxsgr3J+Aa9e5wiADieC8Nnvtv1FUjG69m+hnVHox/ur3hShrzcyFAcl85v2YaVXpaJkCaH5tqhR4odWBQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5782
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

On Wed, Nov 27, 2024 at 08:36:09PM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  Fix some races/bugs in GuC engine busyness (rev4)
>URL:     [1]https://patchwork.freedesktop.org/series/141522/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_141522v4/index.html
>
>     CI Bug Log - changes from CI_DRM_15754_full -> Patchwork_141522v4_full
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_141522v4_full absolutely
>   need to be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_141522v4_full, please notify your bug team
>   (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>Participating hosts (12 -> 12)
>
>   No changes in participating hosts
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_141522v4_full:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@gem_eio@in-flight-suspend:
>
>          * shard-glk: NOTRUN -> [3]INCOMPLETE
>
>     * igt@gem_tiled_swapping@non-threaded:
>
>          * shard-glk: NOTRUN -> [4]FAIL
>
>     * igt@kms_plane@pixel-format-source-clamping:
>
>          * shard-tglu: [5]PASS -> [6]ABORT
>
>     * igt@kms_plane@pixel-format-source-clamping@pipe-a-plane-3:
>
>          * shard-dg2: [7]PASS -> [8]WARN

above are unrelated.

>
>     * igt@perf_pmu@busy-accuracy-50:
>
>          * shard-dg1: [9]PASS -> [10]FAIL +3 other tests fail
>
>     * igt@perf_pmu@most-busy-idle-check-all@vcs0:
>
>          * shard-mtlp: [11]PASS -> [12]FAIL +3 other tests fail

Tried a couple 100 runs of these tests, but did not hit the issue on 
MTL. They do not seem related to the changes in this series.

>
>     * igt@sysfs_heartbeat_interval@nopreempt:
>
>          * shard-mtlp: [13]PASS -> [14]ABORT +1 other test abort
>
>    Warnings
>
>     * igt@kms_prime@d3hot:
>
>          * shard-tglu: [15]SKIP ([16]i915#6524) -> [17]ABORT

unrelated to this series

Thanks,
Umesh
>
>Known issues
