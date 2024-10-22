Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAE19A9757
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 05:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C68F910E2D7;
	Tue, 22 Oct 2024 03:53:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IDcdx1I5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B767B10E21A;
 Tue, 22 Oct 2024 03:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729569204; x=1761105204;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JpPkwMxXDlEMk0stqDswtO6U/F09sGNJyFQ7uDV5Cno=;
 b=IDcdx1I54YF4TLYGftRUu9oBjKqDCBcWeNXzoBqSsrtwJntciE6bXYZL
 P47/jpcOT7tPDH27HNBVuMn1QKuBfdfzuoVwCWbaxvcXh6XsLQFv+19ck
 F7QklH1H0ieEwLi7Dk6j63k7PVMpflYDpW4K1uLCT3Pybl96CnLKNvSwn
 tqFQMDyrXleX20F68qDJAMu5Ja5IQk5b101UaWhUceMJukfWeKzW/KXsm
 a4+df2rQHu6dhLlwW6GlFKYQzxT5MgCA1uEj+9zshF6dzdvQ3DaR/J0lE
 knzobRuw04wvSm9obOYzS3TYl0AMSIUenY/eC5QTNC9fWO37wphjvWUTA Q==;
X-CSE-ConnectionGUID: vvNvLUBvRdeyeBSUpdLkwA==
X-CSE-MsgGUID: tn801EYUTqGPnWggIIexkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39693578"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="39693578"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 20:53:24 -0700
X-CSE-ConnectionGUID: EjQSvJbPQua2UClq8orR+Q==
X-CSE-MsgGUID: AW0oVdphQoapTL1bxB/rmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="79651214"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 20:53:24 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 20:53:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 20:53:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 20:53:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x49i6z3NoFiwkp0Na4JuKSE9fSRH7c+vbG/NX/7UdrKkEOqnRrRpDh3SKpPCmkeD0v0iPHNKvoHq6A2i2PJESudnq5JMDlM+1NiEbqXDIOTzoJK2USgQQO/tKilsEuncdFUXH2nzkRNqnNDkkdIdsnykzGbrm6cd3PiUhkBWIkI0v/vrQBjAYmo2vIEuCq6c7+7EuH11NeC2cpvUzl1UjBEtPUCboANrMqNCOlEVs8Vrmt3XbfmBtFs3VPDJECcyl01A9MayFPeLfOBt8xbjiKCKNIdWnffSGHnOQLS59RA263Gi9/1MmdIP14kTYRotkQ8zQgOd3V13/UiDh8hZRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UR7ns+AxX0LAJ8Itkug47+fZ7W73OqWL+NmiLAMvcO0=;
 b=dwRERtQ14wFLvysu5yY0+6IjnRSGNaLvCHEljOuFPxCwo7t8ly5D//1sVKdibRac5Hv7U+7P+VNLGhmIZvu81AUt9Q8uEumE7TJA0pxUpLT6uUUb8y911iPVSnENg2Fu9fFsIl6Pee5+i9Ev/VTITjOjMBI3X1YR7LbKri3r+eNQvUQJGyzFVG67wCDx+G4kDji1WjNDVdHalNmkamoz3lBTvEwRd47frvFviPOij+B5boRu72OxOshkGPGRzM8GwpJw6R8v1rT3ObYjI9B+9w7Z/C/JyzaFS6fP9rPAMld65jFsJCst0vgFYhCzo9RZYknysV8//SwF9HcUQWLr2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8567.namprd11.prod.outlook.com (2603:10b6:a03:568::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 03:53:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8069.027; Tue, 22 Oct 2024
 03:53:19 +0000
Message-ID: <b51c1a22-304e-4b9d-aeff-666c2956838b@intel.com>
Date: Tue, 22 Oct 2024 09:23:12 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/16] drm/i915/display: Prepare for dsc 3 stream splitter
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>
References: <20241021123414.3993899-1-ankit.k.nautiyal@intel.com>
 <20241021123414.3993899-3-ankit.k.nautiyal@intel.com>
 <87wmi1y66a.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87wmi1y66a.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0073.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8567:EE_
X-MS-Office365-Filtering-Correlation-Id: 35c5662d-37a4-4fe4-6871-08dcf24d10d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R2d2QTFpZ2pCSFo0SFRMMjFiT0VyMUFLL2I5NGdPT3hwa05ueVN4UEg5QnY0?=
 =?utf-8?B?Mi9lREY5NCs1eTJDbHRtbHpnVG11SjRwUEZjbTRqdklSYjlEQ0FLdE5ZaW5O?=
 =?utf-8?B?SU9yczRULzZST3Y4TG5HOGt2bjZkSHdGQ1l4MnRpK3RGU1puRU8wOWJpOFNT?=
 =?utf-8?B?V0w1cEIrb2JDelVTRk5sQWp5VG8wUFA2N0JHWk5NSDBCV2lkS0tYYitKSlZY?=
 =?utf-8?B?NzQ5MVVQYVh2cDYyQStkR2xqaUFuVllPZDhJNHNrZGt4UEpkRjFJNVdJenhV?=
 =?utf-8?B?dGUvblhINWM4c1ZhaWF5d3A1RTZTdExVVE0zQVhPQ3AvZVVFbk5YaEZONTZ6?=
 =?utf-8?B?VFY4TCs5SitBL1l2TFN1WFhOK3dESk5icXBxcVN5MTYvZmV6MEhTbHRyK3ZU?=
 =?utf-8?B?Z1BMMCsvZituVVJ5NGQ5R2EzMmdMdzdvQTdmbUxZZkljTDBRaVFobmRScTRm?=
 =?utf-8?B?UHk4a2cwdVJwYWtLVWZaSVpreURDSDF4dEpkMXoyU08wNlp5aERmaVoyZVBz?=
 =?utf-8?B?VHFyWEdyalc0TnZwRGZHYkVTQ2ZNcGZNYy9DVlk5UytFVjQ3djRsMm01RG1Z?=
 =?utf-8?B?ZldndENaZkRiQWRVQkdaWEc0YjBZUnhxOVdOTkhnVEZ2dnFBWmJXUlgxdmdw?=
 =?utf-8?B?UE1GUVhUdlk3eVMxcVlpbG45UkFnRFoxb1k5Z3JpL0NwazBxelJEZ0VXbkdY?=
 =?utf-8?B?NVk3UFc3SjRGWjBKdXNoSjVFRWNMTU13cTRtbEF5UWZTWlp3a0lBeTlXd3o5?=
 =?utf-8?B?OEw0Wk5Fek81cUlYb0ZhNXZDcS9YOFR3TElpZUVVYXMySlBnZDJpM2U3cGdz?=
 =?utf-8?B?bVQ0UHp3VTVVdWRvdWhUUXNjM0ZIRWZHbjRHbHVFTjZpN08wS1dYdzB4cEtI?=
 =?utf-8?B?Rk9CbmZLYnJkMFNBVkZrZDNwU3ZqVFFEVGhmZHpCS1hIbE94YkZYNy8yU1BN?=
 =?utf-8?B?d0pLMG5Cd0podm5YNWFwZytSdnpQaG53SUFodi94N1RWcktyQzNJdzFwNFdL?=
 =?utf-8?B?YmtMNGp4OFJNa2NyUzVOSkFVVEdEa2ZIdWVPVWpMUVlXSnVtTFZJcWpmTUJZ?=
 =?utf-8?B?TFBWcnA0Wkg4SUFoakNPd2xIbHlyMFlPSGR6a25TQ01zWXpWYUx2RFNVaE93?=
 =?utf-8?B?Zks3MENUaDBKMnhVYjRxUGY0Zm5DQ1hrWUZnYTM3aUwxWFdkTTVxT2FZYzQ1?=
 =?utf-8?B?TVA4dGl6clE4V1pYcEM5OGN1S3JMUzQzMUxUUy9tcVU0M2MzaUxkV3pyVWVv?=
 =?utf-8?B?U1B4dmFTUjR6Mm9GOXZ6blkyK1IzbHc4WW5RMnIvTHY4Mng1bmRod0hsNWpR?=
 =?utf-8?B?Q3BGU2E5TTlQS0ZCVENtU3JNVTJic1VxbjV4RlZTWFlKd1BKK2JpYndEL1VW?=
 =?utf-8?B?cGlaZkphRkFlZmducFIzM01MeUlQNXVwaUx4eEdaNHpGTi9LYkZKdmtSUUxv?=
 =?utf-8?B?ZHZta0pwcUV6WlZmWFpkNVZjdnRKQUxPMFpVeWo3NFJoZmh6UDIvc1Z3aFpT?=
 =?utf-8?B?R3VnRUdQVTR1ay96WkZvTGRvbC9qSGpOc2h3R3Y3YXJyaEgxVDVhNm04ZURT?=
 =?utf-8?B?b05ERkdhTHpzaVhrWDhSbVp0Yi9KcUtDZXA4NFNjM2JtdlBLWlpKRFdCTmZM?=
 =?utf-8?B?VFM1WE1XN292UDE1K0xZYjJIY0pPaU90UHg4dzh5bWpZRU5CdGtvVkgyZ0gw?=
 =?utf-8?B?cytFeDJkRkR2b2ZqTG0yZ3dxdnhvQXBkakNEWWJFc2g5Wld1QURnbEl3d3kw?=
 =?utf-8?Q?T49aO0OtNedgWbHl+ql/EcZ5an4fVC0slZbzI6j?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QVVBcGtUcTZ0YmkxR0VEU3JxcllTVlQ1T0syeWFmNU9ScW9HVHg2bThDdjZa?=
 =?utf-8?B?bjlyRTZQTlhoYWx3V1B1emMreUtNS05PeW1wS0hnQzBINzVaTG9MbmN2NkF4?=
 =?utf-8?B?NGtJcTdicHYvZzZOZmNidkozRFQ2Mm01NTUyeG9wM2dCQWJCSWd2d3JUMXZK?=
 =?utf-8?B?NmlDRXZETU83VFR4UU9ib20wZlNDMlk2L2dGVEF6QVpFQTVYN3NodlhYeStN?=
 =?utf-8?B?SVp6T1YrSHlJN2xHVWRESml1enNSTVFCOVR4M0FGV0RROWNZdUloSmd0Q05P?=
 =?utf-8?B?YUliQ01iRGU5STBqUnVkQXhHM01hKysrT2U0REgvaFhUVVJJQkp6WE8xd1hT?=
 =?utf-8?B?SEFhWFRZazVXM0VlajRXaU5neXVoV0h5VXFiN1dsdkdCQTdwUElEMlJiWEsy?=
 =?utf-8?B?UHIvRW9jTE94TGUyTWJqZ1h3bTU4d2RJTmJ1SVNOL3FrempGTk9qQ04rSjZI?=
 =?utf-8?B?aUhxdHhYaE9STXZKRzRMeGpRbVVxckVEOFRZbWZiV1ZWeDVoTTdyZGlzbXp6?=
 =?utf-8?B?QS9CWGllNTBOQmFuQ3E5dTB5V0hsZmQwM2RiZy9KZmNyZ1NKRVhQVE53a0w2?=
 =?utf-8?B?TGUzYkdWbGEzU1R0b1ZPSUdkMTFDdWNsVXp2M2Q3SmJyL3RjaWdNWlErY0h4?=
 =?utf-8?B?bXlmbko5VzVtdVJTbVB2eE5CSVI3TlY2QWUvcEVVRnRxUTlNY0ltYTN3RVdz?=
 =?utf-8?B?YWY4ZkR3T0tBZWZwc2VRVzIyRXZUN2Vtdy9TcEg1QmVXM0Z1dWpMVUZwS2Iv?=
 =?utf-8?B?S2kvTWZXUE1Lc0FKZk1teTNGdmJsZWRpOUt2OVcxVFNIM0JCbkFsRVFQTVha?=
 =?utf-8?B?QUVSNHBUK0ZHb2Q3UDFhd0pZR2FjVGZIZEFYeVA2cUhaZGFVSDlJY3VNeGNL?=
 =?utf-8?B?TFRRV0VDdHJmZERwNFdYWFgxbHF0K2hFMmx4NWxGOW5DVlNNUk5RQTVMc0RR?=
 =?utf-8?B?dUtIQllhRERTWHZOVG91UllpRUg5aUtZYWFoNUk0RkoyTVFYYm9yaUlLdTYz?=
 =?utf-8?B?VXZIdDJvNm9DQjJValZHY3pDYlpRbGhGTUhHSlZ5TXNUb28yLzRTV3pTblpq?=
 =?utf-8?B?alVrNWtRd3FoaXFzRmd6aWRUZmc1QjFJeEJTVEYwWlZibGF5aVRYOE01THcr?=
 =?utf-8?B?SWVnL21CMkVtSmF3THlJeERVa2V6a2doVFdCM3ZMN1REUHIrVHppZ3RTSEcz?=
 =?utf-8?B?bHFIV054MmlMNlRlL0syc3JIbHYvTm14V1o5UFFuQk9kSURzcHc0R3RZTUlH?=
 =?utf-8?B?TFl6Z0NVa1dLME1PZk8zR3NLclliRWZGOGtqc2FUTElUQW13bmNTTTFiNmha?=
 =?utf-8?B?VGtGTFdaa2hPRUxEY0RVUFZjSjlvQnlnQzBBSHJ0RkM5ZnM5NWlsdVVtQXJZ?=
 =?utf-8?B?K1Z0dXphRlBwMVdrSEtyS2Fxbm9pdmQzbUVQYjBFZE1HbUMrRFR6MS8xOWtU?=
 =?utf-8?B?eVgwOGtZczAreE1WSlBnem4ycW9ZRE1hMlNBTUlpMmpIMm5CUGdqenFYeFNW?=
 =?utf-8?B?RVFVMzhNYzM1TGd3QVllK29yR1Bkbk9rb2dJa1dya2lYalA0WGFRTmRndFE1?=
 =?utf-8?B?WXJzZlg4bENtU3ZZbitFbzFMcFpzNGpveVE5TWVqYWt4VVlkSmJETGtKTDNr?=
 =?utf-8?B?T09tUUpTQ0ZRbkI0bnFESTZJMlNPTjhmTnpnbEZsL2tQQk1HWFJjbTYvK2x2?=
 =?utf-8?B?eXh3ejRmWWZDYUQxa29yR2ExdlUrb0ZmQnVkaTd4Viszb1hSRHgxSzRaVVcw?=
 =?utf-8?B?K3NrUlo3YTBaM1MyRjcwZ1hKN2xiaXNtUE8yWm4wN2ZJWVozc295K003dWl2?=
 =?utf-8?B?YUNCMGc5aHVXZ2gwQWovb2R0RDlFQlBEcmc3enlRRS93K1JRSncvTlBWVjBq?=
 =?utf-8?B?U00wUDBxSHB3aDhIdU16TDQwaWNUcnkzL29jQTBnWlNQQldWbEZ4ZklIZ2dD?=
 =?utf-8?B?NzdaaEhQNC9qN0YvYWpoM1Zsa1d1T3hCeVoxK1M2RzJscVVQbW4yd1J3V3VZ?=
 =?utf-8?B?VEJJeTkzNnRiQWhCd0NRRUQ2TXdRQWFPcHhBNFZJRTdOdm5aSVRNaHlBLy9o?=
 =?utf-8?B?eEJDNU9aREZoSytYOStjK1hXQzZhYjBTdHBSVFlaaXFaWUtlYlZKMDNGYnJD?=
 =?utf-8?B?eHYwRlg3dWVJRFRURVphK1U0UmFPeE0wekNTT3hEczd4Zyszb3l2MEc5Y3g1?=
 =?utf-8?B?cGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c5662d-37a4-4fe4-6871-08dcf24d10d9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 03:53:19.2649 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4GM/4UzBplTgQxQpa/NGHoIgIjpmxMbun64AfnCo+RdHRfHwZAK05HGt3uW5grzmrCm1jgnkNS+DiAwZQxyvCSdSMmkrRbNFkTu0LWAq/dM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8567
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


On 10/21/2024 6:16 PM, Jani Nikula wrote:
> On Mon, 21 Oct 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> At the moment dsc_split represents that dsc splitter is used or not.
>> With 3 DSC engines, the splitter can split into two streams or three
>> streams. Make the member dsc_split as int and set that to 2 when dsc
>> splitter splits to 2 stream.
> Maybe also name it accordingly? "dsc split" sounds like a boolean, not
> like an int.
>
> Moreover, when you change the meaning of a member, it's often good code
> hygiene to rename the member to catch any incorrect uses and to ensure
> you changed them all.

Noted. Will change the name accordingly.

>
>> v2: Avoid new enum for dsc split. (Suraj)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/icl_dsi.c        |  2 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
>>   .../drm/i915/display/intel_display_types.h    |  2 +-
>>   drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
>>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 20 ++++++++++++++-----
>>   5 files changed, 19 insertions(+), 9 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
>> index 87a27d91d15d..553e75cf118c 100644
>> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> @@ -1595,7 +1595,7 @@ static int gen11_dsi_dsc_compute_config(struct intel_encoder *encoder,
>>   
>>   	/* FIXME: split only when necessary */
>>   	if (crtc_state->dsc.slice_count > 1)
>> -		crtc_state->dsc.dsc_split = true;
>> +		crtc_state->dsc.dsc_split = 2;
>>   
>>   	/* FIXME: initialize from VBT */
>>   	vdsc_cfg->rc_model_size = DSC_RC_MODEL_SIZE_CONST;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index ef1436146325..9e2f0fd0558f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -5741,7 +5741,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	PIPE_CONF_CHECK_I(dsc.config.nsl_bpg_offset);
>>   
>>   	PIPE_CONF_CHECK_BOOL(dsc.compression_enable);
>> -	PIPE_CONF_CHECK_BOOL(dsc.dsc_split);
>> +	PIPE_CONF_CHECK_I(dsc.dsc_split);
>>   	PIPE_CONF_CHECK_I(dsc.compressed_bpp_x16);
>>   
>>   	PIPE_CONF_CHECK_BOOL(splitter.enable);
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index 2bb1fa64da2f..58f510909f4d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1235,7 +1235,7 @@ struct intel_crtc_state {
>>   	/* Display Stream compression state */
>>   	struct {
>>   		bool compression_enable;
>> -		bool dsc_split;
>> +		int dsc_split;
>>   		/* Compressed Bpp in U6.4 format (first 4 bits for fractional part) */
>>   		u16 compressed_bpp_x16;
>>   		u8 slice_count;
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 286b272aa98c..c1867c883b73 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2409,7 +2409,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>>   	 * then we need to use 2 VDSC instances.
>>   	 */
>>   	if (pipe_config->joiner_pipes || pipe_config->dsc.slice_count > 1)
>> -		pipe_config->dsc.dsc_split = true;
>> +		pipe_config->dsc.dsc_split = 2;
>>   
>>   	ret = intel_dp_dsc_compute_params(connector, pipe_config);
>>   	if (ret < 0) {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index 40525f5c4c42..3bce13c21756 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -379,7 +379,14 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>>   
>>   static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
>>   {
>> -	return crtc_state->dsc.dsc_split ? 2 : 1;
>> +	switch (crtc_state->dsc.dsc_split) {
>> +	case 2:
>> +		return 2;
>> +	case 0:
>> +	default:
>> +		break;
>> +	}
>> +	return 1;
> Seems overly complicated.
>
>>   }
>>   
>>   int intel_dsc_get_num_vdsc_instances(const struct intel_crtc_state *crtc_state)
>> @@ -976,8 +983,11 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>>   	if (!crtc_state->dsc.compression_enable)
>>   		goto out;
>>   
>> -	crtc_state->dsc.dsc_split = (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE) &&
>> -		(dss_ctl1 & JOINER_ENABLE);
>> +	if ((dss_ctl1 & JOINER_ENABLE) &&
>> +	    (dss_ctl2 & RIGHT_BRANCH_VDSC_ENABLE))
> The extra parens are unnecessary.
>
>> +		crtc_state->dsc.dsc_split = 2;
>> +	else
>> +		crtc_state->dsc.dsc_split = 0;
>>   
>>   	intel_dsc_get_pps_config(crtc_state);
>>   out:
>> @@ -988,10 +998,10 @@ static void intel_vdsc_dump_state(struct drm_printer *p, int indent,
>>   				  const struct intel_crtc_state *crtc_state)
>>   {
>>   	drm_printf_indent(p, indent,
>> -			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %s\n",
>> +			  "dsc-dss: compressed-bpp:" FXP_Q4_FMT ", slice-count: %d, split: %d\n",
> So what does the reader think when they see "split: 1" in the logs?
> Split enabled?

I was meaning to capture the DSC split state as originally intended, and 
extend it to have splitting to 3, 2, or None.

With that we can never have split: 1, but can have either 3, 2, or 0.

I realize, split:0 is a bit ambiguous, so I am thinking about:

-change the dsc_split to dsc_streams: to capture number of DSC streams 
per pipe, instead of DSC splitter operation.

-dsc_streams can be 1, 2 and extended to 3.

-Splitter state will then be implicit, 1 DSC Stream => No Splitter, 2 
DSC Streams => Splitter used to split 2 DSC streams and so on.

With that, deriving number of DSC engine will also be straight forward 
(avoiding the switch case above).


Thanks & Regards,

Ankit



>
>>   			  FXP_Q4_ARGS(crtc_state->dsc.compressed_bpp_x16),
>>   			  crtc_state->dsc.slice_count,
>> -			  str_yes_no(crtc_state->dsc.dsc_split));
>> +			  crtc_state->dsc.dsc_split);
>>   }
>>   
>>   void intel_vdsc_state_dump(struct drm_printer *p, int indent,
