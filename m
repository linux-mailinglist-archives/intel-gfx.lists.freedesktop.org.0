Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 924E9ADF355
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 19:02:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DB1C10E8D9;
	Wed, 18 Jun 2025 17:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUq2/HPw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A48E210E299
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 17:02:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750266173; x=1781802173;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HLxH3p/nmdQtMxHvSp/56NA+RjoQsX/I7oa3Gel/OqE=;
 b=kUq2/HPwX4PrWQj8DcQAVnUK44w/CH1+GbOTrzbJI4nZQMuDu1OTsndW
 va0pTGbhm7ZouBoiTY+zZVDykMLOPmeIsyJlzxEYf0545YrimQacg/4aF
 8EPYS094TjxemvPp5rQPG4LRQ7ri1zsOLADtpS9H/zqZxgsQvTvFRkiE7
 CVFINij5QaEsYmi3w8jLK7+h6bbUtySqANeJ7kbhfOoddC7UgX/K5sq68
 HFiNn9yzI6RbqWSImb8eFejRLHyDRwT5Zjam8ZpojSYI1J7VlZ58wXioR
 rYCrtX7a1fs7uKjS1XEXNaCn8tfEQJwculYqViCfStlBO5Q7jK7lx69GF Q==;
X-CSE-ConnectionGUID: kkz+ZSbNTy+MxVgZoo6kcA==
X-CSE-MsgGUID: lbf6dz5SQraT8kADwg5mxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="56178429"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="56178429"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 09:59:35 -0700
X-CSE-ConnectionGUID: BCNwHFpUT2Csvh8PoibVTQ==
X-CSE-MsgGUID: 9qBFl/nZTDmCLg4uMkWzQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150590440"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 09:59:35 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 09:59:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 09:59:34 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.81)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 09:59:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PovjJ1VOUIY2ZuYHp1frzlCSJKEFsYIImRxOBRDMU5sN3L4pX4sKC2lPlNLMYq9YtRdtrsU4g267MzPaeOgf4ESI/DrPXBZT8Y/T1z0NAxzO99tpf0+qCe9SG1ltEFEHKYffSSoM2xSRE+pEbMpNUjmhi+MlqLcPACd1VcB3+y6qRoA+ZBUydfCWOCiYjpGqUf6X7Z+pnkbv4ipN1DRomY7A9tRucZsn6ZF0KeRkqbM/U/Ui5ZPHqlcvU1rOdAamnydueD7rhoQWI7DdlWCeysfME9No9VK4aivnLTfHDRkSGSy+a1rj33dOpIQR0jevFVTLnmk9opSQn3Loo2ISEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GxpN5fW2WXApK3W0YwOsXYQpddxuss9zsu2Wt+8xEWw=;
 b=gW58/gbsTUzH2yMeowP0jRE9O4i89v7GXFGe4yUcvnkBJiZfw/JYqH9bYaQYEKt1766nV5DkGcc9AjacQJJGWgpqJF1CyHz/JYshwFLguQHBCX67V8eSZbEFcNBbjE18jtmTCd2SLwc5eMEk6H02y0URp9DksucwWX873mCgXLOeGZIo59GsLIsJyu76BvA8ldm3aROydCI4/fHlMTz49hBJxuyhM7/0ROLhrf/iLnlWnmiX+mlXNRHBNsTiUSIfi/p7x5jNDO3YqIEGldKL8EtXqEctt2PE5XZ7tvHrb4JajqB3vqlg/vhz3GLSq+Prwc0XarkcF+/GzZwpcGtoBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by PH7PR11MB6931.namprd11.prod.outlook.com (2603:10b6:510:206::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Wed, 18 Jun
 2025 16:59:04 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8835.027; Wed, 18 Jun 2025
 16:59:03 +0000
Date: Wed, 18 Jun 2025 18:58:50 +0200
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <zw7sxa5kkx72zrqexinjs2npyrelthym4weummjwpmgokg3st5@3jikmriocnl7>
References: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
X-ClientProxiedBy: DU2PR04CA0257.eurprd04.prod.outlook.com
 (2603:10a6:10:28e::22) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|PH7PR11MB6931:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f9cd610-f28c-44b2-7175-08ddae896df7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bXlwYkhWeUZpSWsyVGM1aDRRYnpkRWxOdmEwTnQ1V3BpNVJUQ0N5dlplMTMv?=
 =?utf-8?B?cFJXNFFZakRHOUI4b016YVJFSVhjNzljaFpsVVFHTld1SjVkbkMzKzF5VHB5?=
 =?utf-8?B?ZGkrald4eGlSaUcrM0JtZFl3dnFtalY0MXh2MUo0RVF5dkVlcjkycXYrTWpj?=
 =?utf-8?B?L0Nlb2c1Z0ZiOHFFSUtUSUJMMks5SWJscTRra1FBRmFSZlJXTnI0QjlaUU4y?=
 =?utf-8?B?bE9zWGNva1AzZGI0ME9ybEQ0MXZRNFhVMTVHWll6a0xiWEw2dDRZdWNZOTRp?=
 =?utf-8?B?UUlzZFVVczMvQnVWY3pQQ2JBOVRONGZjb05aTDhJS1VoSnV3a3V5UFhWUTJw?=
 =?utf-8?B?eXNpczh3b050TmpDOGhJZmRvM3R5NzQwRjRseHJ5eUh4ZGhncDJOWk9GSGpy?=
 =?utf-8?B?djgzOTQrNjlUbC9Db21tK1ZMaWlwQnBFbVpsQ2xpRUFiT0g2aVBwcGpaMWQx?=
 =?utf-8?B?L3B2Z1Z3RCt2MnRxdS9HTVBONmJuNkhUWkdrSTFqK01GUDZnemZCS2p3eVox?=
 =?utf-8?B?bFFhYmlGc0ZJT3VDOTRHVDdnWEI1K1hYYnJaOFhWM2tRM1l4ckFXakg5UU10?=
 =?utf-8?B?cFFxR3h0dzBXYWQyRTFHbmpHUm5jY0VHYllwTXptSUp6NUhsN2Q0eXE0aTND?=
 =?utf-8?B?SUxNQ0hTUkh3WnVFSDJMYis4L1VYSmpRQ0N0UmtiV1RlODJuUStzczc3SFh2?=
 =?utf-8?B?RldpeGJ5MVQ5ZnNwaVhsNGE2dk1nWkZ6dlVwUVVFeTlsa0NnRVJqWVF0eS9q?=
 =?utf-8?B?ZFJ2bGRPRi8zWTd0NTM1S3V1QWI4cmtrT010WjF3ellwcTVkTURZZ2FBaXhX?=
 =?utf-8?B?dTNVdFU3UXBickNhYm1CMFlscEJUUmhsTG1BMHlYLzdhQ3lFSk5qVmJQUjIw?=
 =?utf-8?B?RWU2NXFSVUljZTZIUGlpQ1lOTmo2UnMxMWo0T2liS2QwcGp0ZllLR2c5Mjli?=
 =?utf-8?B?TmpYQmFlQzVhVi8zSzlMWXNPQnVDMFZKYjZnZzhxMytleG1McEZWbGxzcnI3?=
 =?utf-8?B?d0JhZVUydHFjUnBPKzVYRm9uUEJjREppTDJUdlY1dzdGVzlUamRHeWk1RGZy?=
 =?utf-8?B?dmdseEdaZkJoQXh1bmFmblNXY01zWmxFZVl5ZERNYTVKUlhaVklqV05zVmpB?=
 =?utf-8?B?UDZtdzc3aHNZOW5tdHpqZlI5cmoyRzVaanNsUjZMcUFyU3U5NUNHTCtHTEps?=
 =?utf-8?B?a2JVWmloZW85a29ROGtnVzRGTVBGUmorNFVwRnVVVFZ0OS9YaFVmckJsZnJw?=
 =?utf-8?B?VmtJWVdCTHo2b3FuOUV6am1IUW1HWEhyT3RmdHc4dnZwUUdtOTdBVHJRcTVY?=
 =?utf-8?B?WW5YSmVEWnZPcXNNN2N1Qkx5UGg1ZVFxdmk4RFZUR1dwb29BNWRXOHlLUU84?=
 =?utf-8?B?Z3dSb3I2bm13RmN2S1k5aitFMWtVREFndlh3QzluVG44eEZGYXhUVXJLZjlV?=
 =?utf-8?B?N0kyT0VoejA3QTNqS3JsWWRBME43d2F5UDZEV3laaWdiYmFTeVU5UHhDUDlN?=
 =?utf-8?B?SnRIRUFFZUNXR2Y1NVJnWVJwUUNVZDFGS1pXUEk0MTh2RXphSW1HUFpRdkdh?=
 =?utf-8?B?dlVER09UMXkzK3FmVXZ2cnhVOUlyWjlRMnZ5YmVFOVAvbWFycWVNNnU0R3dk?=
 =?utf-8?B?YjBXYU14VjVCL1A3Snh0MWVBekQzWUJUUlJGRk80Z2w4S2VtR2pVMXRaRmVL?=
 =?utf-8?B?aHVTN3hIZkg1UUt3VTZVWm56bFk3aUZjaFJIbFpKbnh3RkRidFU3UFlBc2V5?=
 =?utf-8?B?WFBFdE5qSFZiZG16ZzlXZVNOeFZ3VGVNM2ViNDhIckxleHRsZ1pQNUZVY0Na?=
 =?utf-8?Q?yBM//E4GZWQIqquek08kGH+i05f1Yq1ZTdbUg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qlczamovcm1hQ1FtejV4czZkQ1oyNC8ycXVRbzhHOTFuakZvd3hwN0R4OUdO?=
 =?utf-8?B?MC9nY2ljZUp1bU1vZXYyNlJlaldyRjhWbmZOS1hUQnZNelRLLzFadEJrWFFk?=
 =?utf-8?B?d0xRdnlCM053VHhYbDRIUjVDNXJ1bEIyODd0SzdiN0llQTFnQTY5MVFPcFV0?=
 =?utf-8?B?TnBYUXBDNmZScjBzUEgvYytzdmg3ZWVzVVFpQStNM28vdU5KZW80aTdLblpD?=
 =?utf-8?B?eFZ6cFY4NVh1VTFNWGFNNWhvSFJLQlBLSGVQdmhhSmFxaS9NZmlPM2NkS1Rp?=
 =?utf-8?B?SnRtdEZjaWhQT1BGRk9McGtiVzN4M2Z0Y0J1WkxhRm8vSE5OSW40akg5WGJq?=
 =?utf-8?B?MlBUTThLR2IrbXZWUEc5TmhKSmtFaUhGdWVrVmpyNUtwVU9PTFVOR0QrT2dw?=
 =?utf-8?B?eS83VkJhdmpxaTcvUUxnRnZxOTRlbGt6dUQ4YXBTR3Y2ZnROUC90RHJBdHl6?=
 =?utf-8?B?U2JHenNtdXFDM1E5NHM2Qkd4N2JnUEh1TXAya2o0VTRXZ2FNNzU1MlFWQnhT?=
 =?utf-8?B?eDlSa3h5UVY3THJ3bXp1ay9TSVJHdnpqL2xpV2dlN3BGQXpHaVd3OHAxOUxC?=
 =?utf-8?B?d25Cdkd6S2dSKzdxejM4d2lPV3NxN1luS0dwcEZ6N0I1bmxuME1sRWxlMllH?=
 =?utf-8?B?cFRCelh4VmlmYU5ORkNad2wxM3Y5REU0TU11YTlncGtXazF2SjVsa1U4MDBY?=
 =?utf-8?B?em9uUG5zL1V0WlpHdkR5YlQ0WHVlRVFLQ0JrbHlxc3hyYkFrNm5DOUpJUU42?=
 =?utf-8?B?Q2dxVFVJY1RrVHJJOVRhN1hMNXI4RmY3MHQ4cUdsOWtySnBRdFdQWDhzZWNE?=
 =?utf-8?B?d0xUOVRDdUlVUnU2MFpzeTNzcGk2ZXlZSEhyeGNIdDZVOG1SVDhJa1JTQzYx?=
 =?utf-8?B?NW9jNUhnOHpUM1NYRFp1WUNTRkpNZGVCSlZraXZxOWlvaGI1S3pGVVJsbmJ2?=
 =?utf-8?B?Y2VXbXVoSEJwR3NGSm5hbXU4b04rc0Zkd2RHbk1RRXpWcHNxUzhBeDc2YkhC?=
 =?utf-8?B?Q0NNcU40eEdDdStIYXVubnJOdHh4aFVmWlpqQlRpTEtGWnpIS0JCVGxydW9M?=
 =?utf-8?B?QzdvUERtRW1SdzVuaFNvZlh1RjBYV0xvUXplOTJOOVJDcHZlN3VobE1CbEdV?=
 =?utf-8?B?RFNqWUxhdXJ6elJTZHNJV3JIblo2VldFOFRCbDNnY0taa3dKbStGTlRWREdW?=
 =?utf-8?B?UXFiNUd6bDlzU0dTNkZjdmc0bGpPaE51MnR6TXF5cnJHWmdWRFdscUxVS0k5?=
 =?utf-8?B?ZTR4ZVVlZmRyK3J5dGpoeHpSTXJjYlVpZGRUQkZRN05wYnA4M0g0NURmME54?=
 =?utf-8?B?ZW1wWVMxOG5MbjZmUjVhL3hTdHpXaG5TN1JHN1BmSzY0SUhNQU9sdzFHYi9v?=
 =?utf-8?B?S2JHdWtCZDlqMHIwTDFtTjVrN1R4QXFqZVdOQjNjZG0waEtZSEZLcFRxMEZl?=
 =?utf-8?B?SVZiRDhOMmM1Y1F5aFYvMHF0eUtaWUhJNjZKWk1tODNwOFN2WEF3cUcrQTd0?=
 =?utf-8?B?LzYyQlBDRHNuL2xtd0QrcmlVWVYwYWFualZMSitHN2dxeEtmYkxMQ0NxS1FM?=
 =?utf-8?B?MXp0SVJOL290ZmUxSzBYaFljZ2hxd29BNXdtODVzQ2NXK25vMGx1RVlFMWhU?=
 =?utf-8?B?SE9qWE1EcXNpUlhrY1pSRWhzQ0p6VktuSUkzOHFVS3FFV3VyN0xLaWloam56?=
 =?utf-8?B?cE94WEVRenRKc1VDZFBTVlZxaStoaXZTWjlEM0hGLy9TdWdpZ0lCcEpicWky?=
 =?utf-8?B?UStZblE4aDE1Z2cybnc5TWd5L0hwYWQxYkR2d1BLVmFPUDgwVDIvNU5teFli?=
 =?utf-8?B?eUJzNlZ1dklSZXdKVGJlajF4OHFHdW8yOHpDbFp6N0V1VlN0eXRuMUlKTUt1?=
 =?utf-8?B?OVVPc25Pc1hBS3gxTVlFVmJVRWNzQ3daQTVsSTJ6T3NkNkViNmJYYzl1SDlh?=
 =?utf-8?B?dVRjVFpGOGdPYUhndVdyZWRlTlQ5aDFIZUFvdGxJUHQ3Vk9hS251V2ZqMmZR?=
 =?utf-8?B?S21qU292WVYxMyt0VTN3c0FmT20rMnpNZ0FvenNaUi9xSnBrMkFhV0Fib3JD?=
 =?utf-8?B?VmU4RGkySnBLNTgxblpLU3dFcUptMC9UZmJIc3RTSGw0NHpTbmZBSmF4TUxN?=
 =?utf-8?B?L0R6NWxTSUl1WmRyUmI1SzRaZjRsbGF6WG9scUFUc1R0ZEFmcVBvUzU0MTl4?=
 =?utf-8?B?TUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f9cd610-f28c-44b2-7175-08ddae896df7
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 16:59:03.6770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IsCdy3yPKy5z1aYJOnkAgYUqSFgMRCLIiwiOAS6R8OH5yBemE5MXLxZl1888PjwTNzn5dkToFzqmPoS1nph+GFDYQ91H+Aazt1NXMrt6Xw0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6931
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

Hi Krzysztof,

On 2025-06-17 at 13:19:07 GMT, Krzysztof Karas wrote:
> igt_mmap_migrate() tests migration with various parameters.
> In one of the cases, where FILL and UNFAULTABLE flags are set,
> during first stages of this test a mock file is opened in
> igt_mmap_offset(), which results in allocating some data in the
> GPU memory. Then, also in igt_mmap_offset(), the file is closed
> (fput) and the cleanup of that data is scheduled. Right after
> that, the test calls igt_fill_mappable() to fill all available
> GPU memory. At this point, three scenarios are possible
> (N = max size of GPU memory for this test in MiB):
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

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
