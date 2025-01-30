Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF40A22C28
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 12:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D003A10E935;
	Thu, 30 Jan 2025 11:08:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Go1UiBhz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1827D10E935;
 Thu, 30 Jan 2025 11:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738235312; x=1769771312;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=THNZfqjYl/d4AmTENzSKOv0ctI0RstTI3hrxl/ilgaE=;
 b=Go1UiBhzTh09QlmJZ8mfDSBlr7dijChykxf1r8NWdO8OplYXstSqXHNI
 K07kVIqkEiWS0llgV/jDbLUXhjA8FSMDsl+j1vxBTWQoFjwtDjkCkESTl
 uFnhnKK5kGnSFYDpkolOO6yVoqeUQPEQZLoq0vNw1DNqAvJJ4dFmtjyWn
 rJKuSRlIx55JVXPzU9MpKWJog85bFFLsbhxMEGzV2utNf7svi1mTNgIiV
 H4Ku51PZy6KOwOreIQhU+92FFPq08+nNp1SwWsQ7oJbSTqIzDX2GkXXPc
 zDZ+vQqBwBHZZy0hysN7nazTrzTlAfrYlKIkRUiHMrwKikqIxBC67ylRC Q==;
X-CSE-ConnectionGUID: xC/gp4+ZRpS+ebaHBd+KPw==
X-CSE-MsgGUID: vIu/oNodQSu+/IQB6MAG3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38479266"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="38479266"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 03:08:32 -0800
X-CSE-ConnectionGUID: 6KE45Gq0QjKXUfQv/POyOQ==
X-CSE-MsgGUID: hUfKuOrYSFqymPgJ8RKWFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109150850"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 03:08:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 03:08:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 03:08:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 03:08:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=uVp7HBoY7bmXB/IKS7nrNc3SlQdUDDr07X9YPhz4OWZGzRt/xI3YVYyrAsiq94PIX7o10PGY/WTYzgBmKr8FTwzS7DoXCMQRTLNX9a/5fQOqYQ/ot4KA4SR17OKM9vl66VRugK+pcW6VNBeFhu/XQPEOMcXVOnZ5Px1KPk9r0rimWacGUdTubYM0f6PuCBR7zlv4dwR99jNvaUAokV7sWI5D32tB9CUgjBVxdpF4r9SYSwGFcxC03I1ylLJkbVO0APqI7qWjXSmoiiExNGHTD2yKkUNOyO+vyun9ZItG6v1wrZY8/foFiA6AfFxqJsoC02t1i2V9r/3Qn6oBelPDQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zVxGPFwu+P1GFJcDds2DkS0lGtZQ+8JDQrfSJlyWdtI=;
 b=AvsYEKFS+DHJ/95zOAT6e2ryR+fXe5nCw+jvayLDTF334da1FANcyVa6kp5J7IK+CT9bpD6JBLRw1tOussqMzI96lnbFAsl6JWUDpTGpe98q8k1DDpAJmADnL8V17UTY8dv3+ZndMzz4uY5aTG8TGzGr1+uriZ65OEXGG9LOllZYP9d3o+wbCUtGCIx/sW4fpe41XdaYui3tqX8OhcYe+JXYhB+9IvzHT5TMU5Lvev6xIVkgrdT5WVDertAZQYs1uXN1yXyelH3VYTSwjx6vN+2kMzIvEu//1nUNzH0R3wJFl/ysDQCQVnz12kUM/TxfIvRREXv5OZ6lkR+z8WrzdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6090.namprd11.prod.outlook.com (2603:10b6:930:2e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.20; Thu, 30 Jan
 2025 11:08:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 11:08:15 +0000
Message-ID: <3d0fa490-9aa0-4778-8ebd-26f0efb764da@intel.com>
Date: Thu, 30 Jan 2025 16:38:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 31/35] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-32-ankit.k.nautiyal@intel.com>
 <Z5QL9ZllEce8ERrw@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5QL9ZllEce8ERrw@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0189.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6090:EE_
X-MS-Office365-Filtering-Correlation-Id: bef31461-3e61-4757-49c0-08dd411e648d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NmliWkdDT0dQNW5HanFjRmdKaFRBeHpRRVZuNGZ6L1IyRENlUHFBU2JiZHU0?=
 =?utf-8?B?SGVVTE9pNjk4RWdwWDhvMUtCWG5LUEhxZnI2dHVZenVFY21VR05yWGtPY0Zw?=
 =?utf-8?B?TG9xdlZVdXIvV0pqTWxuR0x5bVM5dCt5VW1pajBOL2VSaFEwMFczQWoxdFVC?=
 =?utf-8?B?ck14SXpmM0s1NGdLMmZVcDNpRmt1OFo2UnF4dzZndXZRM2trUStDSDdPVHJ6?=
 =?utf-8?B?cDNkWTlLaTNJUWlZS1M1c0R3ckp1VWMyRm1tTWRpeUhYUU1JV3FQc2UrYUF1?=
 =?utf-8?B?RmdUZ2tRTThmcExDZ3UrWVRpek5sWk5HNjNJbi9rd1NZaW8vbmJLYklESEdF?=
 =?utf-8?B?cEVlMDZGMWwxZFBpUG5vc21wRHptdTZ6Nk9DbU5Zdm14Z1VRWXZ5ZDVXNkw0?=
 =?utf-8?B?OHV2cUlpN01TUnRUbnJKNjQ0SXBwc2JoQnBQaEJIeVB4clY5MVE5c0VrTzRr?=
 =?utf-8?B?dHA4RlhQZ21vUFphTGZCajFmSWc4VXAzemZDZHpEOEN0QTFQV3lJNVg0VTFV?=
 =?utf-8?B?UU1RbHcwa3BQWUNtNTNsMTR3VzRZYkFUQnA3aEJpV2d3U2dvSll4KzJneXJV?=
 =?utf-8?B?NUQ5RTlNTENabW5pUmtuWnlqRC9hSWxGaWYzZWlMRUZRRTYreGFmWW1Tc2xP?=
 =?utf-8?B?YTlKL3BDRjdTWWIvY2VDS1JRS0FreUQxYzZDNGNqUStPUmNDUElvSEh1WkRl?=
 =?utf-8?B?MjlDcFZzbWo1c1lnY2ZGdXVWSHpHWmw0YmtRMUpVZTdPaFN5YUkxZjVmQnRq?=
 =?utf-8?B?cjJ1UUYvWWlnUnBxbHVCTEw4TGdLbCtZOTFQWXdtcktXOFBORHVlQUhYc1dG?=
 =?utf-8?B?dld1RTVUN3I2aTVrRG4xNlprSkVwRzdBc1ZBdXFrVmtjQ0NPQzduNFdkTzVu?=
 =?utf-8?B?bktpTm5Ld2phcVY5L1RMc3M2eXovUHVJa1gyM253WkpUdExHS1JPWSthOVI0?=
 =?utf-8?B?NGVNaTE0RVhEMllNNjRmTFIyZlkwSGdMVTZFOEgweTg0eU1sajNhb1ZkUzVD?=
 =?utf-8?B?bVFuQk9IcDFNQk9kbkRrOU1mU0NhdnkwYVFmYTArNGJ1NkJKYlBZb1NxVjd3?=
 =?utf-8?B?cmkvY2hHaFA3SFEzenZNbGVmdm9oVVhGYW1GYkRnNm9xbTgwMWxCODNvR3li?=
 =?utf-8?B?akMyeE5kN2NOSncyRUp6ckRKdTMxVnJIZE1qTmgyNFlnbmtFQThTZU10Z1VW?=
 =?utf-8?B?SGVGamZBdTNnbzlycTZNOHdTcGxldThvZWM3MmRzd0lVNWh0QnJlUzNmWEY5?=
 =?utf-8?B?cWkycGhSNHc1Q0IrYk01THJ2NGg2Um8yRU9YSy9UUlMvc3FpanQ3N2xJZjVs?=
 =?utf-8?B?NHNQY0JCeHV5cnFocFQrNkhzMVdBWWRUeGRwcjFmRnVPc01mR3owUSs4bXE2?=
 =?utf-8?B?eDAvSHNNUDF3bjZORGcwVVB5R3ZFWWo2ZDJVV3VnMVljM1FKQk8zakFIbzQy?=
 =?utf-8?B?aW5Ub1QvY0VORWxjMDVFbnEvMVliV2xWWUxPSzZxbGVsNnpmQUE0SlNCS09D?=
 =?utf-8?B?TW5mWWk4Nm1KbHF2S3lSVXVNL0s0ZWhKWDBOL0IrL2M3M0U4cndRcXNxbnNh?=
 =?utf-8?B?S0JHSGpFUWlNUXdxMzh5TmJ2M3VCVzQycUlDdCtBV3pVdG53Y0hubWpQWkcz?=
 =?utf-8?B?VWpxaTJ0VFVlMEc5ZHRWeXNJSUNqYjU5NnlMbVJQS1l0emhXOW9Qb0tHcFg3?=
 =?utf-8?B?SFdWSUZRaHRZTWJSdUQrQmNlcldIZEJRZzZjWkMyckw3b0NENG93bWRpMDZ2?=
 =?utf-8?B?NmtmMlNPamF1cTQyd2JhTEVaajZHdW5sVlV5UmJSb0l2TGNPOVFiOXhIRWk0?=
 =?utf-8?B?VWY3THM5T0JocXk5bVhkMHlpTlNYa0kvOTNPVzhOc0R4RVdUdDdMMGlmZ29a?=
 =?utf-8?Q?FfY49tHCJt9YI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NkhvZ3J2WEFrSkxDUzRZYS9TcWlTK3o0WXI4clphdDZVY0duZ3VCOWJrNlpG?=
 =?utf-8?B?M0h4OGt4SFI3Nnlza0NGblRkcW1mT1phbXJ1eFRCM0UwVGRxN0YzNkdwMm9E?=
 =?utf-8?B?TVBVbWVCU3R5REwzd3RlOVROT1JKRU9HY2I5NE1DQUJzNlMwYnpDMWZHRWVV?=
 =?utf-8?B?S2R5Ry95cDI4WUpMOFhhREtZV2ZBbkYwQjlRTmM4WXhLS3orS3ZtY2RXcVNt?=
 =?utf-8?B?S2NBQ1laQlN2VE8ycnMvTDBBZFRSQ08xYS9HNGcxR1Z2VmV2amhTSEFKMHJa?=
 =?utf-8?B?RHAvS2ZpVWc5elhKYUFDaGhSQTlXMGR1UHhyeU1UNDN6N0hHUVBIc2FNMjJP?=
 =?utf-8?B?WDRPMUZRR1NZVVM1K1J2Tm9kMGxHcnJPR3F5ZzdYaW4vS1U1ZEYvS1R0ZzB2?=
 =?utf-8?B?N2FmSlJFSEFvRXFTd1Z5eW85UjhETXJkM0NqRGpQTjJuZGN3UEU1M2tMOUc0?=
 =?utf-8?B?TXg3cklwaGdUdHNVSnpzeE9pSGpKYzFCVStXUHVvOHBTM2JodmgzWHhZaVVz?=
 =?utf-8?B?TU1zSFljdFJmYnlTbWtCL1Frb3NkdzAvOXl6dnkxZmZoeExtNklVZEx3NGx4?=
 =?utf-8?B?azF4dElLLzQrVjRmV0F5QjhEUlZOVElLZGdVbUY0SmVGdEcvU3gvdUNvL0dn?=
 =?utf-8?B?b0RuL2hYUmg1YXEvbk4wWEdXdzUvZGw3K1NIa080ZGs1Mmc3QXc3K3VyKy9x?=
 =?utf-8?B?S2t0Yk4ycUEyTkxmNzExcjUwOGtVbDhCLzJESkRPc2xCTGNsWXVJd25QTnFF?=
 =?utf-8?B?Z3p0MDQwa25vUE82TlBaL1NicmRMbUJXampuMzhZTmtrZm5IZVF4V0w5T0hT?=
 =?utf-8?B?Vlp1UTFNSXlYUWdVVzJuWHRwS0hyam8yVUJiS1c3RnU2aHp1a3dFNEwyRGJ4?=
 =?utf-8?B?eUV1ZVc5T0hOd1lQb1JaMzMza0JNOTNNUFhJVXJvUW5LNGlRcEpsZ0MyYnF2?=
 =?utf-8?B?b3M4VVZhN0taUWQ3SVNpTlh0Uk1zRWRORkRHZ0V6clhvQjNTWkwxb1VjVzBi?=
 =?utf-8?B?WUxKYjh5aDY5MERiU25qRHVaczRXenhWSE1tYW1iM243MFEveHBsZS8xM0Qw?=
 =?utf-8?B?aGRmSmxDSlhya2xoYTRTL09QODFlanFFQmpQRExSWUwzUkRmUGZQNGtuZEVE?=
 =?utf-8?B?aHI1T2tuWGNRYnNydEVkekdTQ2VkTkE3aCt5L29ibWN4VE9LNzBsNC9HWm1I?=
 =?utf-8?B?THBTSGlBdldJeEdHL2JpOCs1SmEvYnZRbHYwV2JsTzFxTGZYSE9Oa1RSb2xO?=
 =?utf-8?B?VlJaSThOdnZicU5IQUcvSzZjSkVadWFQSS9BUk9zVEFxRURyLzBIRVFOK0Ja?=
 =?utf-8?B?MEFxNTVYelZlWS82VVZmcFdmM2pVZjlkcVNTQlMvV2ZkNlV2RWtEWmxqRlJV?=
 =?utf-8?B?VnhpNUhkamhzK2drV0wxTWlBSzE3VG5IZHM0VXJKdGt3NzZ3aXZQcGpYVkNT?=
 =?utf-8?B?clFuRXg1ZVhDeUZCaUIxb3ovMHJIM0x3VUdCNFhMRGJweEthSExXb0hIbFI0?=
 =?utf-8?B?V2xRd0Z3NUU3OWFYRElLTm9JR3FZM0xFRzhxekd0NTJ1blQ2d0E0d3ZkUSs2?=
 =?utf-8?B?Q3R5NTF0TisyMFZ5RHZwaTRmR3loRElGbysxUVhEeUM0M0lNdW42aVdaV0ky?=
 =?utf-8?B?aVM0czhKT0hqdWI0SUQ2N01lOGdBT21ZanRVSEh1R2tjQzZWQnpJSW9YR0FB?=
 =?utf-8?B?YnRPUzNrdEx5Z1dBdlJZczkyM25Zbys5KzBqWEZoWXNmOVZMQm1PUkZ6b2Z3?=
 =?utf-8?B?UFZzeUNZaTNLQjR4WDROSjdTYlFkRVJZMGVqVUJZbm81Z0hzVkE5UnhXWGFn?=
 =?utf-8?B?NTlWUjRNMkJndVBVdHlwYTU1Q09WalBGU2pWUHpoYStYSWtBaXBROXdXTG1C?=
 =?utf-8?B?QzNyMmhDWWExNlFlOVJRZXdsaDY4U21xeVRYRGE5ZGE5bVRjeFBwblFxZ2dT?=
 =?utf-8?B?b3lNdkNnQUJjVGw5aTNubDJuSVk3RTdZZ0MvK0FiVmxFbHB0WGhaZEh1R3NE?=
 =?utf-8?B?ZXBtdmlPazZEVnF5ZXVuTGhac0QxY3VkeXB0MkpIbXJSTHNxVGFXYUhzZ1BU?=
 =?utf-8?B?ZXB4WXphcDRUL0p2K0dOZ0tpajBxQ2YyL3lEK1FsaUNKa0NWQTgvSXE1b3hR?=
 =?utf-8?B?Rlp4S0k4UFhMd3RWcy9WdXM4MG9zTThEMlJQQmhoQjdVT1AxdGJpdjV0QnJX?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bef31461-3e61-4757-49c0-08dd411e648d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 11:08:15.2671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T8BLLnZj05i1i1XrsjmgvVHzKKgZZoCLzEdpbQhlmiVWfjpx2z6TIUtb3PGcUmAqOpaNiTAfO5yhAhiwPVm2BWli9eD4hoZzIDtp/3b3Xxo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6090
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


On 1/25/2025 3:23 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:30:16PM +0530, Ankit Nautiyal wrote:
>> To work seamlessly between variable and fixed timings,
>> intel_vrr_{enable,disable}() should just flip between the fixed and
>> variable timings in vmin/flipline/vmax.
>>
>> The idea is to just do this for all the platforms, regardless of whether
>> we also toggle the VRR_CTL enable bit there.
>>
>> For platforms for which vrr timing generator is always set, VRR_CTL
>> enable bit does not need to toggle, so modify the vrr_{enable/disable}
>> for this.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c |  5 ++-
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 44 ++++++++++++--------
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  4 +-
>>   3 files changed, 31 insertions(+), 22 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 7bdd41158a93..a0d6360f4cda 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -1310,7 +1310,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
>>   	intel_psr_pre_plane_update(state, crtc);
>>   
>>   	if (intel_crtc_vrr_disabling(state, crtc)) {
>> -		intel_vrr_disable(old_crtc_state);
>> +		intel_vrr_disable(old_crtc_state, false);
>>   		intel_crtc_update_active_timings(old_crtc_state, false);
>>   	}
>>   
>> @@ -1751,6 +1751,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>   {
>>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>   	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>> +	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>>   	if (crtc_state->has_pch_encoder) {
>> @@ -7161,7 +7162,7 @@ static void commit_pipe_post_planes(struct intel_atomic_state *state,
>>   		skl_detach_scalers(new_crtc_state);
>>   
>>   	if (intel_crtc_vrr_enabling(state, crtc))
>> -		intel_vrr_enable(new_crtc_state);
>> +		intel_vrr_enable(new_crtc_state, false);
>>   }
>>   
>>   static void intel_enable_crtc(struct intel_atomic_state *state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index ccc40867c10a..10a9bcb8daae 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -496,7 +496,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>   	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>>   }
>>   
>> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg)
> That new parameter shouldn't be needed. We should already know whether
> we're always using the VRR timing generator or not.
>
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> @@ -507,21 +507,25 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrrtg_is_enabled(crtc_state))
>>   		return;
>>   
>> -	if (intel_vrr_use_push(crtc_state))
>> -		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> -			       TRANS_PUSH_EN);
>> +	intel_vrr_set_transcoder_timings(crtc_state);
> That guy probably does a few too many things for us.
> Either we need to chop it up or not even use it.
> We just want vmax/vmin/flipline updated here.
Yes right. The below code snippet seems more appropriate for this case.
>
> So I'm thinking this should look more or less like this:
> vrr_enable() {
> 	write(VMAX, crtc_state->vrr.vmax - 1);
> 	write(VMIN, crtc_state->vrr.vmin - 1);
> 	write(FLIPLINE, crtc_state->vrr.flipline - 1);
>
> 	if (!always_use_vrr_tg) {
> 		enable PUSH
> 		enable VRR_VTL
> 		wait for VRR status
> 	}
> }
>
> vrr_disable() {
> 	if (!always_use_vrr_tg) {
> 		disable VRR_VTL
> 		wait for VRR status
> 		disable PUSH
> 	}
>
> 	write(VMAX, intel_vrr_fixed_rr_vmax(crtc_state) - 1);
> 	write(VMIN, intel_vrr_fixed_rr_vmin(crtc_state) - 1);
> 	write(FLIPLINE, intel_vrr_fixed_rr_flipline(crtc_state) - 1);
> }
>
> And similarly during modeset enable sequence we should also
> always program those fixed timings, then turn on the VRR TG at
> an appropriate spot (if always using it), and let the later
> vrr_enable() (if necessary) switch to the real VRR timings.
> That way it works alsmost the same regardless of whether
> whether we always use the VRR TG or not.

Alright, I got the idea. Will try this next.

There is one doubt about intel_vrr_enabling/disabling helper.

Earlier we were using is_{enabling/disabling}(vrr.enable) where 
vrr.enable was tracking if variable timing is used. We would still be 
tracking here the same thing right ?

Since I have removed vrr.enable and using vrr.mode, the macros:

is_{enabling/disabling}(feature, old_crtc_state, new_crtc_state) wont work.

Should I still keep vrr.enable? Or perhaps modify the conditions in 
intel_vrr_enabling/disabling?


>
> The fixed_rr stuff could be written like so (then they would work
> for all platforms, if anyone feels like trying this mode of
> operation on ICL/TGL as well):
>
> intel_vrr_fixed_rr_vtotal()
> {
>          if (DISPLAY_VER >= 13)
>                  return crtc_vtotal;
> 	else
>              	return crtc_vtotal -
> 	                intel_vrr_real_vblank_delay();
> }
>
> intel_vrr_fixed_rr_vmax()
> {
>          return intel_vrr_fixed_rr_vtotal();
> }
>
> intel_vrr_fixed_rr_vmin()
> {
>          return intel_vrr_fixed_rr_vtotal() -
>                  intel_vrr_flipline_offset();
> }
>
> intel_vrr_fixed_rr_flipline()
> {
>          return intel_vrr_fixed_rr_vtotal();
> }

This is clear, will use these in vrr_disable.

Regards,

Ankit

>>   
>> -	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -			       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>> -			       trans_vrr_ctl(crtc_state));
>> -	} else {
>> -		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -			       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +	if (!always_use_vrr_tg) {
>> +		if (intel_vrr_use_push(crtc_state))
>> +			intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +				       TRANS_PUSH_EN);
>> +
>> +		if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>> +				       trans_vrr_ctl(crtc_state));
>> +		} else {
>> +			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +		}
>>   	}
>>   }
>>   
>> -void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>> +void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg)
>>   {
>>   	struct intel_display *display = to_intel_display(old_crtc_state);
>>   	enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>> @@ -532,12 +536,16 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	if (!intel_vrrtg_is_enabled(old_crtc_state))
>>   		return;
>>   
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(old_crtc_state));
>> -	intel_de_wait_for_clear(display,
>> -				TRANS_VRR_STATUS(display, cpu_transcoder),
>> -				VRR_STATUS_VRR_EN_LIVE, 1000);
>> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +	if (!always_use_vrr_tg) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(old_crtc_state));
>> +		intel_de_wait_for_clear(display,
>> +					TRANS_VRR_STATUS(display, cpu_transcoder),
>> +					VRR_STATUS_VRR_EN_LIVE, 1000);
>> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +	}
>> +
>> +	intel_vrr_set_transcoder_timings(old_crtc_state);
>>   }
>>   
>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 8d53aab3590d..da6a86cee0e8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -22,11 +22,11 @@ void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>   			      struct drm_connector_state *conn_state);
>>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
>>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, bool always_use_vrr_tg);
>>   void intel_vrr_send_push(struct intel_dsb *dsb,
>>   			 const struct intel_crtc_state *crtc_state);
>>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>> -void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>> +void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state, bool always_use_vrr_tg);
>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>> -- 
>> 2.45.2
