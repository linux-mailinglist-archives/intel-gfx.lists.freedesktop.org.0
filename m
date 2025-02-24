Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CEBA42296
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 15:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97A0B10E3BE;
	Mon, 24 Feb 2025 14:13:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UVJE1KGi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16F0910E3BE;
 Mon, 24 Feb 2025 14:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740406413; x=1771942413;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=tNaTVWif0XrBgXVHJJUf+SRljnt26SNqxwyTJ7JL9AA=;
 b=UVJE1KGiQBsNJ+f1PJALMZQ8B+SuHhwWaBMywAy7UW76s9jsJQPbXJTF
 PUs+JgT6KLFVP2oh/uBxinRRTA0Bzda/Y3C5x/yKtHWmv1W49FKqgAYEX
 Rn6bp1eezfx6Yvl+wSdYmrI0PzE7ssjrgCqHwUv12LZItiY7dvKECFnKR
 AFcTtReH8zgepMOBoQiNZi5BNkb8mza3oR2JwnN8bP3BEoVgy3nYtFR+K
 H8C4r6dm5cLNXgmGJdb25YMTLXteI8Tc1NqoAPTmQQYOptgFy/WMUDeqa
 EPfU5B8JNhE+RkUwVob6M8bLfZvKfN8qiVcT6OzcZyBIMPE0TTS5ZSuR+ g==;
X-CSE-ConnectionGUID: gYdkPe0mQoiY1yQHRrNMRQ==
X-CSE-MsgGUID: OSP5jesRRzyN1itwEpiBag==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="41370556"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="41370556"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 06:13:19 -0800
X-CSE-ConnectionGUID: 4cRjymVZTq2Y2D/ZBNoMaw==
X-CSE-MsgGUID: OBTQeY7KR/qNVY5yaoVqqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="116274130"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 06:13:19 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 24 Feb 2025 06:13:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Feb 2025 06:13:18 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Feb 2025 06:13:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cIF2SxCSn4nD2Ev2U6xuL8aTS9UVOgKSaDgd+s/fcWeTJahcDRIhR72g4mAv7Lw5RZiIUPFp0jhSXI/nydT/kTT1ufMHZXkdk8WXFH6zJqPpX6voXrt06JWqcGDEO8e3idoj455ugNhNXYh5t29dPsm3n/5sFTYYrcCqt5hrwPNCbQRTcXqwjalwjAonZSVNWQv9y3afZtHTNFB6qFOMDvakANuyxom0Ug7kLni7h8HKc00dGuo0U2mOkXYtUFPHyAQXpMqmZqjWNNqC4VpSzx3DACTObo4ZZTAsYBfT6yVaTuhJClNHn/Ag0tvY66ZGYFkh6tRjdfhtbbQmEs8f+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wGhmfiFcBkZ38cyIM1z4rlOrDVHRswoooZvaG9p6da4=;
 b=M3U4RRpzkZ18kV1eImrr7rP/hKgxYLTiHVL/5Ixx1bC71+iBFIcXSxjhOgemJzn5lzCPCZHXgB1BcMgVuDooz4hBZsAFPJ8sl+l2ucRQI6FIgeqRwxDJbHo04PGQgzAhlFyWtCFgrnowB7Z3b7QEm0pwRc0GIm1HANc0k6RIeyU8MXQYzZe7KywGuC9xynD64pTicDfKjKk4YA5XMh7qbGdajPIJRWcoVLo2kYEp1kecjqdIu2KB5oOHtMGWXbT1kgxLlO6N7v2vEsbdgBz5WGicjNUreXDNxypL1n7tkc3PiROaKJlTRZYcAWWqa5ZOryvWd26ViF9yndKcRbKo4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Mon, 24 Feb
 2025 14:13:15 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8466.016; Mon, 24 Feb 2025
 14:13:14 +0000
Date: Mon, 24 Feb 2025 19:43:08 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>, 
 <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/xe: Drop usage of TIMESTAMP_OVERRIDE
Message-ID: <Z7x-dFvANs689sOV@bvivekan-mobl1>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
 <20250221003843.443559-9-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250221003843.443559-9-matthew.d.roper@intel.com>
X-ClientProxiedBy: MA0PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::11) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|MW4PR11MB5776:EE_
X-MS-Office365-Filtering-Correlation-Id: da1bef82-8b53-420e-8d3c-08dd54dd60ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmZ1aWY2cGxQUThqeGJUSzBNUHlwRHVXcm5sVXNOSXA4aDZDZWZ3a2piVHJN?=
 =?utf-8?B?WTFXTnNvcFFkYVZkMEFLS0V2ekNTbk9PM0FiWEQyUXdncDNNeHFsVHhkVDVR?=
 =?utf-8?B?N2tpVDZtSGtpenZibkJmRW1FK2ZES3g3cHc0eEZGS09YWHdxQkhLa000cVlq?=
 =?utf-8?B?ckRpSDlQdXRnL0YxQmp6QU9yZDBybHhBbkZkK0tjNjI5dzBlNms0czcwR3pz?=
 =?utf-8?B?Yy9ualFlTmFFYS8zaGhvNElwQWhNaW1RMVd1cVN2NC9LTGdmaWRXSk83eEZM?=
 =?utf-8?B?SjloTFl2WitzTmJIS2FKekVxVmw3VVRHMzRiTDlRU1RrK25VTzd5UnB1ZzJz?=
 =?utf-8?B?aXRQYnNOVkVhWnpOTFlvdU9mY3R3N041TS9SemVXcDQ3NUZ2bVAzWWVmYmRl?=
 =?utf-8?B?U0IwSTYwNFJkVUEyRXdVMGwwZUoxNzdHZlVVaU82ZzgwelpBSkNFVnFjRkFh?=
 =?utf-8?B?VGtVZ0krb0c0ejd5QmNnd1pyeUVuNkhUMVk1T1ZkMWl6MTFjZ0RzZS8rNXJi?=
 =?utf-8?B?QTd3a0YxcHVQbXhiL0ZOWTZhTHBsZEMvNDhoQW5taDF2L0wzWmdXS3lkQ1RJ?=
 =?utf-8?B?c1Y5RVNSUDFyU0RRZkFRNnlkSnF3YUIzRDNxemJBelQwVmF4UVVsOWQ0dVBi?=
 =?utf-8?B?aTZLdVlZWDA5UHRiWTNoUjdXK3FSVE1sYStWbDd6K1lQdytPTnplS0xTUmxo?=
 =?utf-8?B?Zm1tOHNsVzlvWmJLR0tCcDhMMXU0SDBoRWozNldxK0orMzJFeFFhcDMwYSta?=
 =?utf-8?B?RGdyeVd4WEdub25yNWtIa1J2SjN4UC9pdnFWRytNekVqeGlFSFlUelVWSnp5?=
 =?utf-8?B?OHluQ2JJNFdrOEh5OTRPQjEvakJtYmxQSWlpUXlZOGwzSzdZTVo3TW5VTllG?=
 =?utf-8?B?ZnNlZzdSMXZuUXZHTTg0NmZZWXN0eGE5K3FHRGx3ZVNKNlJ5YVNaNDkyak9D?=
 =?utf-8?B?WkJLMUU4dnpRd0ZLckhtbmpPZzU0WGk3b25pT1IzM1ZGYmpraGxLKzlBa29N?=
 =?utf-8?B?cDZ0Qy9jcGd6Szg1dG9laEpIUS9aTGNaNCtIMS9SZHNZY1QrTDBNRVhEcE02?=
 =?utf-8?B?MmEvVG1DTnhwbGd0alNvZ3ZuRHZob3Y1YTdQTjRBazRzYnU0M2tYcVhya3o3?=
 =?utf-8?B?NDJzL1h0dXdkcEloakg3TnZoYlpVZzFEUVVKOGRiR3hUSlNLTDJqMHZpQjJR?=
 =?utf-8?B?bUxUWWN4SWZBa3oxWWtTNVFCaHpNUHhOMy94ZzM5NXR2UlRkWkpjNTBrZW42?=
 =?utf-8?B?aE5uem44RDhGNmF6MGZvTGcyWEtnL0R3Wi9Kc0VRWlZzdmhJOGpZcXd5S1N4?=
 =?utf-8?B?S1pxSWtZSzZZdmFmSzNHQXVzZzJFcnZTVEpQTFRHRjBtM0hLaGdLb2hvNjVw?=
 =?utf-8?B?K01TZXdVMzJlTktBUjBqc29BVTBSa0Y3a3pTR1RuWGlYYmk1c20xUHBtNnpj?=
 =?utf-8?B?SkEvVHgrWTBDall3RkZYUnNTa0ZnYWMza2pWVXdwVkVyeUZIbGx3dzk4QXoy?=
 =?utf-8?B?clZ6NUVpOW9FL2NvT2l4OWRRRUppNzZjK1Z2Q001TTQzZUNXOWtRaElzOFZX?=
 =?utf-8?B?SG9tMk9GS2Q4eGFYdm0rblFLV25HN2M3dTU5WFBQcnREWVZMamQwN0hFSzdm?=
 =?utf-8?B?REhrUWF5eVU0OEhFU0RYR3lFclI3NVpHcW9qajJ6Zlc3eThIbDY2VDJ5bGtl?=
 =?utf-8?B?Ly9CQWpYa3hTY1J6V2pPN0tLRklyR0NmNUJUZklhbFRpdFdHbTg0dWJYeDNL?=
 =?utf-8?B?Vk5USlo1dWo1WmNsbGloaXNuaWlCSVJ2eURCVjFXQmtKazhPZ2wyNjVhTVc3?=
 =?utf-8?B?empRdFhsN0tkRlZpc3FmajhHRXNyeUtxOExWRmhkWm5hMTFQRC8yMldWVkxy?=
 =?utf-8?Q?8IUMhfmrXKEhG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVBTRE1md0ZOcXp6bjRkQlpkb01rK29sMERCeGxPY1BxWFdpWDJtWHFLeEtp?=
 =?utf-8?B?YlRFcUFvQXNsalpWWGdvQjFUc0lwRGxaMlA5QVI4bWhnQ3Z1cm5raVdERGtI?=
 =?utf-8?B?R0JMWXlNRUJCb2VDdU1VVXh2dmFHR0poaVdPMFd3UXpDVXVMSXVocmtvMms2?=
 =?utf-8?B?dlh6djFHcFhRdFVJM1pHUXkxUkxYMSttVXpSVWxwOWJlV0I5b3BQK1FLbVU4?=
 =?utf-8?B?SEhYeXJBSmRDbHlWR0Z4MHFkUVFBZmpJYjk5ajBJa0V3SllaUHRBU3RlRWNs?=
 =?utf-8?B?bXdjRzBEdWZ2ZnFyMytSUG5rTEd0eCt5cDRvUlFkbFFUbnpjazNtRlNmNDdT?=
 =?utf-8?B?cU1VMVYvYklDdDh1S2ZOaXFmRHZzTFQvMEFwMjNMUDlIRlJwZHlOV2tFV3Ni?=
 =?utf-8?B?aWFqZE5tMHVJUU0zelVhQ2RXUGJ4dXoyNDRSNjYrNTNzMm12VWRaazVCYkIy?=
 =?utf-8?B?TDZXb3k0dUZlMWtDMmJJUkpvOUR6ZFQ4TnVUbmd0K0kycVBla0xXeWJoaEMz?=
 =?utf-8?B?N0Z3TitFaG1keGw3cXV5QXg4UmlPZ2V0aWFmMXFKYXRya0JyWWxkUTgxY0Z5?=
 =?utf-8?B?SDlRYWFsdWQ3aXBKWkJzMUlST2k3SHlXV2MxR0lmU2FDakxOc0xLdktmV3VE?=
 =?utf-8?B?UXdFMktHYnJNZmd4MjFjUlpKdmNFL0ZpZXZOY1VDaTRkN20zelBQMjY1RDVt?=
 =?utf-8?B?ZVR6ZTRHSlkxeVMvZ3VKL2xwM1NHTVprTyt2bStXNFJaSzU3SGpMNktsMjZp?=
 =?utf-8?B?UmN0QXhCemlSNTlFVlZUbUtIRlZHYTl1TzJWVTZiNG9iZDc0YmxEd204bStL?=
 =?utf-8?B?eUZlVU02M2p1a3kxdzM4V014Q0JGYko5YlhqLzFGNUllMkg2citWNlZSSzFS?=
 =?utf-8?B?ODNiNGt5UDUrektDZ0toZUQ5MStPaWhqdG5RTnA3bVhOTDhKZTRUY3M0SVVi?=
 =?utf-8?B?MVRIS3AxRVpuak1RTjJQb1F4TTF0QW12eW5WNGtnY1N0OHpITHlFVisvZWtv?=
 =?utf-8?B?bmYra0lzcnpCbmpyL09ZVU5qeEYwRldvNEVKcjNOQUt2WXdiS2ZBczNmNkZH?=
 =?utf-8?B?djRxYlp0SEhaZlpHcVlLWUt2anhCZGFQaXVwcjI2d3hydmtxajR6b01sOE5D?=
 =?utf-8?B?NzR0aURCZnJpb1lPNXNrUWdPREl4bng1NUUwNHdma2VQbFA3QXh3OG9kSFRM?=
 =?utf-8?B?ZnFHKy84UnJ1TUs0WlhnV1prb3dhVzg3cHVZb3J1cThNWFRIcDFHR1VyQjhw?=
 =?utf-8?B?TGJGUDlZNUFLR2RkWVNQNC9Ud1NYdUxsaENIWnVYcTlyMFZUZ3lOVWNOZzZZ?=
 =?utf-8?B?ZVJsT3JBSHk2d1RIb200aXZISU01VHcwTG5WVGplMlR3cU1rK3k2NGZndEJ6?=
 =?utf-8?B?eXZETU8rT1JrZTFYRWlReFpHMnV3RWtIeVhtbHorZncrM0gwbVdkd1FnK0ha?=
 =?utf-8?B?T2RCcFZOT21vM3E1TWpsRkNVbm1IZy9HS2dMWDk2bUl3QlBsZXhJRW9rdTUz?=
 =?utf-8?B?SVdNYTRpZnpBY3YxZHlPRlJVS3NjK0ZUSkFvT0ZKY2x2SzJlUlZEZkJLczNz?=
 =?utf-8?B?VkxwSUJJQTJJU1ljcERKbkN1Vi9tM29DbnRMRGR0SkZEUFRKNWpjVmtFNTEw?=
 =?utf-8?B?SWd3cy80TWhkSTJ2c29lbmtNYkF4UmRUamJ4UVNWdHZWSXRvR0gycjVXSVZi?=
 =?utf-8?B?VGtqN29nZ1dXYitab2YzMVBhSFFQQnBCVktwcHROVkFCZXhzYjFpaElnU2ln?=
 =?utf-8?B?cjkxcXVod0hESnp1ODRsNkhDZ0cvSEFxdVlBeGN3NlNqM3QvMG1BUzBxSUFo?=
 =?utf-8?B?cEJDazk4RVZtMDRnMWVSNWZuRHFrRWNHQjgyWDdXaFdDUWZnOXh2OUhpUUtR?=
 =?utf-8?B?SktFdkMvSk0yNEFsM3lHMWhONGZKUFFzUkd6UlQxMmRkSGVTdU8vZ3FJQnVJ?=
 =?utf-8?B?YWwySStyNk5BZFBjd0NFUWowdlJvYnl4cVZmQW9VZ21IYXZ6UTNGMHFVK3Vq?=
 =?utf-8?B?aHNzTmh4ZE9XWlB6RnhJSDFXTkR3YkZYOGt1SVNIbHRuYWkwSG1LYjlENHNK?=
 =?utf-8?B?a2FoSWUvMWRFZ1JkNy9jSll5Z3doa2hvdFQxNENnL3ZJMjFQbW1qamRCZzJE?=
 =?utf-8?B?VlNOa2Ryc3EyZE1lQ1lneHNCSlNoamRiTDBCRVBXdTNNUzd6b1dFOUJSL1N3?=
 =?utf-8?Q?UQzZPnR1BPDSxRViyd23gro=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: da1bef82-8b53-420e-8d3c-08dd54dd60ca
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2025 14:13:14.8342 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ey2fOxacGS5MXtxEvcoBToTEpDMtXr1NUzLhXai7fkWZZttttiWLDrH6CWkl99nY/tpOspAjYLHRQTDBTCw1X6YNKbkDYBuHjDZfOmYcBq1kkgvs5jM5AdnPIVzUSK3s
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
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

On 20.02.2025 16:38, Matt Roper wrote:
> On pre-Xe2 platforms, one of the approaches to initialize the GT command
> streamer frequency is to use the display reference clock.  That's no
> longer relevant from Xe2 onward (i.e., all of the platforms where Xe is
> officially supported).  Furthermore, use of TIMESTAMP_OVERRIDE to obtain
> the display reference clock is unnecessarily roundabout; the display
> driver already has a more reliable approach to obtain this value.  Let's
> use the display driver's existing logic to determine the proper display
> reference clock in the rare cases where the hardware indicates we should
> do this.
> 
> The one problem that arises here is if the Xe driver is run on an
> unsupported platform (i.e., pre-Xe2), CONFIG_DRM_XE_DISPLAY disabled
> (meaning we're not expecting to touch display hardware at all), and the
> platform has the rare CTC_MODE[1] setting indicating that display
> reference clock should be used as the GT CS refclk.  If all of these
> conditions are true, the hardcoded 38.4 MHz value will still be correct
> for DG2 and MTL platforms, but there's a chance that we might not have
> the right value on the older Xe_LP platforms if we're trying not to
> touch the display hardware at all.
> 
> Bspec: 62395
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Add my RB after addressing the warning from kernel test robot.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> ---
>  drivers/gpu/drm/xe/display/xe_display.c |  6 ++++++
>  drivers/gpu/drm/xe/display/xe_display.h |  4 ++++
>  drivers/gpu/drm/xe/xe_gt_clock.c        | 28 ++++++++-----------------
>  3 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 02a413a07382..e35d58079f0d 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -17,6 +17,7 @@
>  #include "intel_acpi.h"
>  #include "intel_audio.h"
>  #include "intel_bw.h"
> +#include "intel_cdclk.h"
>  #include "intel_display.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_irq.h"
> @@ -548,3 +549,8 @@ int xe_display_probe(struct xe_device *xe)
>  	unset_display_features(xe);
>  	return 0;
>  }
> +
> +u32 xe_display_get_refclk(struct xe_device *xe)
> +{
> +	return intel_display_get_refclk(&xe->display);
> +}
> diff --git a/drivers/gpu/drm/xe/display/xe_display.h b/drivers/gpu/drm/xe/display/xe_display.h
> index 685dc74402fb..b918f5d6b53a 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.h
> +++ b/drivers/gpu/drm/xe/display/xe_display.h
> @@ -41,6 +41,8 @@ void xe_display_pm_runtime_suspend(struct xe_device *xe);
>  void xe_display_pm_runtime_suspend_late(struct xe_device *xe);
>  void xe_display_pm_runtime_resume(struct xe_device *xe);
>  
> +u32 xe_display_get_refclk(struct xe_device *xe);
> +
>  #else
>  
>  static inline int xe_display_driver_probe_defer(struct pci_dev *pdev) { return 0; }
> @@ -72,5 +74,7 @@ static inline void xe_display_pm_runtime_suspend(struct xe_device *xe) {}
>  static inline void xe_display_pm_runtime_suspend_late(struct xe_device *xe) {}
>  static inline void xe_display_pm_runtime_resume(struct xe_device *xe) {}
>  
> +static u32 xe_display_get_refclk(struct xe_device *xe) { return 38400; }
> +
>  #endif /* CONFIG_DRM_XE_DISPLAY */
>  #endif /* _XE_DISPLAY_H_ */
> diff --git a/drivers/gpu/drm/xe/xe_gt_clock.c b/drivers/gpu/drm/xe/xe_gt_clock.c
> index cc2ae159298e..b61f944a7b03 100644
> --- a/drivers/gpu/drm/xe/xe_gt_clock.c
> +++ b/drivers/gpu/drm/xe/xe_gt_clock.c
> @@ -7,6 +7,7 @@
>  
>  #include "xe_gt_clock.h"
>  
> +#include "display/xe_display.h"
>  #include "regs/xe_gt_regs.h"
>  #include "regs/xe_regs.h"
>  #include "xe_assert.h"
> @@ -15,22 +16,6 @@
>  #include "xe_macros.h"
>  #include "xe_mmio.h"
>  
> -static u32 read_reference_ts_freq(struct xe_gt *gt)
> -{
> -	u32 ts_override = xe_mmio_read32(&gt->mmio, TIMESTAMP_OVERRIDE);
> -	u32 base_freq, frac_freq;
> -
> -	base_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DIVIDER_MASK,
> -				  ts_override) + 1;
> -	base_freq *= 1000000;
> -
> -	frac_freq = REG_FIELD_GET(TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK,
> -				  ts_override);
> -	frac_freq = 1000000 / (frac_freq + 1);
> -
> -	return base_freq + frac_freq;
> -}
> -
>  static u32 get_crystal_clock_freq(u32 rpm_config_reg)
>  {
>  	const u32 f19_2_mhz = 19200000;
> @@ -57,14 +42,19 @@ static u32 get_crystal_clock_freq(u32 rpm_config_reg)
>  
>  int xe_gt_clock_init(struct xe_gt *gt)
>  {
> +	struct xe_device *xe = gt_to_xe(gt);
>  	u32 ctc_reg = xe_mmio_read32(&gt->mmio, CTC_MODE);
>  	u32 freq = 0;
>  
>  	/* Assuming gen11+ so assert this assumption is correct */
> -	xe_gt_assert(gt, GRAPHICS_VER(gt_to_xe(gt)) >= 11);
> +	xe_gt_assert(gt, GRAPHICS_VER(xe) >= 11);
>  
> -	if (ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
> -		freq = read_reference_ts_freq(gt);
> +	/*
> +	 * Use of the display reference clock to determine GT CS frequency
> +	 * is only relevant to pre-Xe2 platforms.
> +	 */
> +	if (GRAPHICS_VER(xe) < 20 && ctc_reg & CTC_SOURCE_DIVIDE_LOGIC) {
> +		freq = xe_display_get_refclk(xe);
>  	} else {
>  		u32 c0 = xe_mmio_read32(&gt->mmio, RPM_CONFIG0);
>  
> -- 
> 2.48.1
> 
