Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 390D5A17F1B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2025 14:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34DB510E5AE;
	Tue, 21 Jan 2025 13:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DSfIA/SA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC28010E5AE;
 Tue, 21 Jan 2025 13:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737467250; x=1769003250;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Y8W6djR5oPvUYlEh5FfslxGwW5r+87pDEfdFDRtE62k=;
 b=DSfIA/SAyn7d7SIQbvWXbTCmgbEuxUbjsSce+sSbmJj0KpWDLjjrvUVw
 4hKdIuSj2pw2y2nfqYUjNMJVLXd81eM59bkzHVm7mwYLvm6jV0rjMaKwn
 bnWUqKJUr2fb15WW0Rt/QkfxG4Jrdq/YwYQ+YNOxYSUt4vshLR790uOWu
 sGodebpwtOU93/RcY6UegixRtGN7BjyKcEM717UM3AoBBbLMXaNsMzm41
 Wil+B326oxkv6G7u/Hvlpa/7PVD2E5ANMucVRvus/uy/DpHtp/p+nOR1A
 3UvPtg9UTxpD6NPw+jaoej1Y53A5u1CuXkxOwcxhhG4739Jsdz+uJ8J4b Q==;
X-CSE-ConnectionGUID: Vwek7mFNQpKLkpv+uBZoKA==
X-CSE-MsgGUID: TFSZrYAbSJKrdR6qq2BFVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="25478378"
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="25478378"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 05:47:30 -0800
X-CSE-ConnectionGUID: j/q2U2qpQSSM11xn2FJRew==
X-CSE-MsgGUID: gFeMy6vrTdaTnBH2jgAeaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,222,1732608000"; d="scan'208";a="106735945"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 05:47:30 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 05:47:29 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 05:47:29 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 05:47:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZznprfEHCzecYVx7Kvs7wot+2DylLjkbpuJXAI/iEUPWFa6VxbfDn5KYu3HXwIZhN+SoFqpnHnwcJP2ykZxfUEZY7lqxmy6rqXm/igfuv7mGVwHF9EEZqVOD940bEoIrvCwHd99eE78UYNnX845PC+bbEUiOXiRsMOEp8T5io+SPGEMf4KnwEGMxpJRNHhtliMdVWwCPIHbDHBDVE/S3nNeNQxIBskKnXOKo7bqK95iju2eqTYw3nkIEPqObY9i8bUnZZi7q63Wn9xvPRp2ql61obuwkIG0aCkjf4eIpNMgwXzcFPKxsZYqgiD50SX3S63Goh+Qg77Sz+Zk0wstA/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p1eeC8TgIEutxbpOkrx7TL9Szt0Iy1TkffH7zTk86gc=;
 b=LfZdk0BhEaUX0n7ED8G4uBfYWyA4reQrm25MK3B03D1qsOnrL49AoF5Uk1LmOBoGJJTVZUX3xrfkSeaQK6Fcosq68ECkzGlvvKFBHjKfh73XqA/l73mgpL26DxkDGGIIxb5zxxPTm9zvi6aMYt+64b0I9wyZyhI09Mm35m/b2WfPbNFkAYpoJLm1gx2v32+9IgxraRvWKz58Kx4rRGb93NBMGSno+PFH8++OW9n2Y258m294UHCFpj1tqfoVxhpSd6l5Hi60avbK0ecYjFP0M4/SjXdUQWRfTS9RsRegto2gIfnjMVEucpDMvUadg6saqvvaojdyjz+1MNhPU6JL6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS7PR11MB6269.namprd11.prod.outlook.com (2603:10b6:8:97::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Tue, 21 Jan
 2025 13:46:46 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.020; Tue, 21 Jan 2025
 13:46:46 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z4lenh5MrgHvzQNt@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com> <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
 <173694505428.3159.15238384116175670777@intel.com>
 <Z4fPO_hBt9tr-gY1@intel.com> <173695792830.3159.388878827702803545@intel.com>
 <173697006552.3159.7695562530356807466@intel.com>
 <Z4lenh5MrgHvzQNt@intel.com>
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Tue, 21 Jan 2025 10:46:41 -0300
Message-ID: <173746720115.2761.5821369694675759661@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0006.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS7PR11MB6269:EE_
X-MS-Office365-Filtering-Correlation-Id: 3072fe47-f3c3-4f33-0873-08dd3a220c3b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTNmTFQzY000T2xNcmF4MlMvT2QrbUQ2YmY3MEQxRXUwUm9FRENSbTIvU0gx?=
 =?utf-8?B?RWJKcGJqa3JPamJOam8wSXlWV1hrb2c0SnRLeWQ4TjJDOVhveTVOOFA2L0pL?=
 =?utf-8?B?cW5IVWJOUUtuc1dZUm1xcDUyc0hxUk5RQ2J3bHlYZGpsV3l1U3kveU1ISFFY?=
 =?utf-8?B?Q3NhdnFGN2ovRHdJYm5JaklYNk1Nc3UxNTU1RjNFQ0ZpUzNwMy9uZTg1V0lZ?=
 =?utf-8?B?UzNSQWJJaHNVbXpwS0JZUk1LOG41SVBlT0pxRDlSdWxYRmFqZE1COVBFWGxN?=
 =?utf-8?B?MXZrM3NvU3BySlM0VlN0akRPV0pCak5RVW5wSUdTS1FLVDlIOTZGSU9teVNI?=
 =?utf-8?B?NWdscXZvRFNRMHUxZ0lBRm1Da1Jjdk5CTHJVaVZtL3BDVEVMUTBRSmRzMzRu?=
 =?utf-8?B?R3NKYjJwUlZ4UUFsKzJ1NVl1TGlmOUh2eGFHR1h3enJMTGw4YVhxQ2VnYnEr?=
 =?utf-8?B?L2FNcXBmYk5NM0Job1FxelZReURhVnlCZkgrU3FtVXIyai9FdkZubXp4b3py?=
 =?utf-8?B?TjVFcWppYVcyNzV2MWRjc2hScys5cUorYytIdWxFZFBOcHdVZFR0MzljRm0x?=
 =?utf-8?B?RytXUXk1b2laYnVuRWFSMXRzRmlMT3RZRnR5UXBOSHFXV05tVjFMM25lNkNh?=
 =?utf-8?B?NGhnb3dZd1VSakpBRFhDWHN6cWpCT2pKNUhyczFqL2VodVpsVEdwdXNuNDRR?=
 =?utf-8?B?MUtZVGl0OURKUUd6V3o0SGliRWdEN3VuM0x3b1hzMmVKSEkrQ1JoaVBDYURU?=
 =?utf-8?B?VW5KNnRBS2FlVTRXOG91eWM2MXBFbGlKalRIVGRRUEM1eDVtNjB1TDV1Q1Vr?=
 =?utf-8?B?OU5pYzlwTGprMVYvNjRZR2RSczJxV0k5anIxQ0MwcEE1cjNhSU5Cd1JlUGF0?=
 =?utf-8?B?anpPQXppTXRqM0JocmwwV3NlU1VqcHJXYlJGZ29KdTd3TWhQbHhTTk9KeHZq?=
 =?utf-8?B?K0oxQmVQUlFGQ2dudlM0V1dmY1JhL21LV1VoVnROZVBiUjY4aHZXRUVKTGZY?=
 =?utf-8?B?TTVvWHhCVCswdHYzS2JWYlF5K0M3dmplb2dZdXBoR3lLVmlMbmVOVWtyNG5J?=
 =?utf-8?B?UVRSb2FBSmdBRkMyc1VsWm1UM1hkTWZCTi8xMndVS0RLVHJRc0J3aXFabHJ6?=
 =?utf-8?B?WUY0Mnk2VkdVWXZpaklBeS9SWWYzM3BwcnFhSHZ0MGJzakVSSmN3dFdlb1By?=
 =?utf-8?B?b29RbUpHaGErZGN5LzZyUy9rWFdMTTFLVzRIN21OSnRTUkh2YmZUSnozK3cz?=
 =?utf-8?B?TUVRTXpIc216dmd1dWFBeEd2YnZ0WWJuQ1BrcTBTejlsbE5oeHBEelBQTWJB?=
 =?utf-8?B?amhNSk9jM0x1WEwyemVkR2dqenFBQU0rWU5CT2cwOXR0M3J2c2RSZ3N5NGI3?=
 =?utf-8?B?TUVCNmtKbU9CM1lUcWpOU3loT3FXU2V2WEtpK1BtL2V1bWV6SDJ6QkNqVHVw?=
 =?utf-8?B?YTZJWmRaWVlDaW55Tm5TeitFenErNGwzMzluUWxKTGh4TjQzNUtLSXVqQWwy?=
 =?utf-8?B?LzFLcGRtR1lsU2lHQWZDazVGOGZSd0c2UnRGNkFQMk9HM1d3YWRzQmNpazNz?=
 =?utf-8?B?ZVJqOXd6NWhGRkVsRmNVM094OTIyaVFzdS9jeWtaWURHK09wNXYrckI4a0tU?=
 =?utf-8?B?ekx0WGxWRWplOXJwVGdMK1VCelR0TGhmS0l4YUd3VkNXSFgyMG5GRnFqUnIr?=
 =?utf-8?B?WFZVYWdOWUZFMm5qNm8xN2FYUGtudkwrdE04L1lTQ0pIZ2JaQTZFOUV6bWZu?=
 =?utf-8?B?YWJ3ZjVzb0JOem5HZ3VGbkt2cnhtV3loU1FLaFdwV1Vsbnd5ckNEWHBCeGxl?=
 =?utf-8?B?Tml0NVN2SEJxZVV1RHhkQmFkd1pndndCV3FobTJRT2VVTU1kaGF5U0cvQ1FM?=
 =?utf-8?Q?AJ5fSfnJC64E6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZmJkSjhid095SlQzUmd1bmd5WFdERXRTRFBHOUxrbXBOanViSWF5U3dldzRm?=
 =?utf-8?B?c3VRRzVwL01BY2pnSVl6d2V3c1hRQURGVDZnZnlGdHl0Y0F0OWZ6d1ZVMFB2?=
 =?utf-8?B?U1BIUzBvUHJSUHZ2RkNQdW1JV1A5WWpVaWhkZHQzZXBOZm9INkwrWkdkZW5Y?=
 =?utf-8?B?TGV6TzRDZmJwdVdVMDFVbnVVeG5GNjQ2YnBxMUtiSTV3Wk9OY0RKU005NWdv?=
 =?utf-8?B?VkdHYnlGY0pCdUVMTndnY1UvUUVQUzV3NFZDcHMySjRDR0lJVmlXNFl1ekN1?=
 =?utf-8?B?OWtRN2hVTmJpMjJXWlRBQkVjdFlTOW9UcFJKOWhKRzRhZ2M0QkpqNHVKTmtV?=
 =?utf-8?B?d2RTUmUzM1Zwb1N4a0tBNVdxbHdLcHZpT1JXUEI2WEFCRzZac056STF3ZmFi?=
 =?utf-8?B?MkNKTzQ1MXVoVU9pV2R3S3kxaVZISkJnRXY3RklFRjhsbFpwVjFrQWxGYzR4?=
 =?utf-8?B?Um9xSm1zeW5HblRYbjJ2b010MTBkczJOeXBwNStxaTdLZW8yeDZOMnRiZjdY?=
 =?utf-8?B?TUE0bXh1dzhUWmdzZkVqYjBJdVhHQjVyd0x0WFdNVjlsY0ZwQ0RLaHdPS3Bj?=
 =?utf-8?B?UGJLa0xaN081ckxKaml5dFIyVm81K0ROUnMxak5vbWg2QmtBek1RNWFDdjRL?=
 =?utf-8?B?MEY4NlZJSUN5NUd0SitYalBKdUorKzdVZllRVElVdHlBQTB2VzV3emZhTS9Y?=
 =?utf-8?B?bTNWWW5FRzRYNE5WeWlvSTh3dHNDdlZTWmhFSG85aStHOUhHSTl4a0FUYmVW?=
 =?utf-8?B?bSt3VGIrR0pkemtRNkxzWUhHVDQ5M3diNFJVSnc5Q09JZDVydFNFSVlDMnFL?=
 =?utf-8?B?cU9PSGQ0ZGFCdkY3WHBUT3pmUVlBZDdiREp4RlJVa1A0dk9MQ3dld1EyTlRZ?=
 =?utf-8?B?REJKTTNhUEt0cXpKdTV2YnBabzlPdFRsVVlKRldwSVh5M3lSR0lFaW9qNHNJ?=
 =?utf-8?B?WllZN2pUNzlZY1c0RUwrQTV5ellhV3I1TlpaMUN3bStNZjlqSkFBVWdwR1JM?=
 =?utf-8?B?UnJ4UHNmUGlodjRPTUtueGZ1Q2htV3FCKzFYMStEcXNwT2NZMFUyODVnMW1l?=
 =?utf-8?B?T01zeXdnR1NicXF3dm93ei9ZbXJzRzJ6bU1rcFIyQVdING5EbEdrUjhmcVZ4?=
 =?utf-8?B?Nkp6bENaMkkyWjBDR3grYVk5TllRTlBmd1BkVjJZWDRiM0J0ZVc2MlBUUGJS?=
 =?utf-8?B?Vjc4elg0cEp6bllLeHl4bTllMzFuRVJneUIzQzZBMktISGRaY244OWg5eDBL?=
 =?utf-8?B?dVFBOGV6K05uemhoZ2pNUy9PWmdiaHVGblk5YzZsbFZ6cThDYU1DV0lwVko3?=
 =?utf-8?B?c1hycmdGUjdwcmN6K0tWUjVtTDFlK2R0eUxZbmhkUUlpdjJoeGVTVEtJR1Nl?=
 =?utf-8?B?RGRXSllvVWovR09oZ1ZiazA5VGpJMU44dUJCN2VVc0ttdHI2RG11NlF3Z1dt?=
 =?utf-8?B?cmlVYVJwTmxZMUYxQjZPTXZmMGlUZ0NvdHROSVZDWTlzNkE3eHY2a2lkTlZ4?=
 =?utf-8?B?WUlzY0dZQ3VMV2hvTGRRbWdiSTdvdGQza25oNlJxNXlqQXlxSlhDMzhqN0ov?=
 =?utf-8?B?SzdaWFVCZ1FlUkVGUGhNZWhJSTVwSUpjTm5Iem5jN3NsWnRoc1ZYaVB2TFhQ?=
 =?utf-8?B?ZXlaUXRmVTRnZTdUSEx1S013WEYxMUc1ZTM4SHBaMGYrVzEzTXNpWlNTWFRn?=
 =?utf-8?B?TkdQaHRHSzUyWVYyU2JERHhkd3hGaDY3MmwxQ2xsRDVZM3hXNHBzU0U4MzdE?=
 =?utf-8?B?OUtjS0doM3pMQi9CUk4rU0FCeEh0LzdydjlJQ1JIdTFkbVBGemswOGtPYzY2?=
 =?utf-8?B?UFpXRE90aCtBMXFlWWpzcGlVaUM3b2ZIT1dobkw3czY0S25aL0YxS3FaTDc4?=
 =?utf-8?B?SVJPQm5XZEsrS1ExVnhDUDBGYy9YV1k1RlowMlQyMTRJejVaek8xd2tyZDNP?=
 =?utf-8?B?azVYYWM5aHR2bnROUFFHQjJIT1N4WkJLWUxzdG9ZV1Jjc0ZJV3QvZ0ZBZGRQ?=
 =?utf-8?B?M0M2LzhLT1d4ckZNQVpwTC9IbURxZEc5clRFeTVuNXEyS0x2NXJ1REJQSjBL?=
 =?utf-8?B?eXAzWCtDdE5PbXdMYjFrdTNNa1pNRjNFKzkvNFJtN3RGaVRoVnFvUmduOGNK?=
 =?utf-8?B?cWVSalcrT1VDcWlpeTArK1RxeWdrcHpFSGdXMHFoZFRIUm9jWGZiMWFVNklq?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3072fe47-f3c3-4f33-0873-08dd3a220c3b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2025 13:46:46.8363 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Soo6edjKr6mstEpPhjZioNM5plNHHSm/ZzVoVa18omIoWtH30jgRKn5nVGuIIIKPwfiFjSAmjRlKe24yijWOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6269
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-16 16:31:42-03:00)
>On Wed, Jan 15, 2025 at 04:41:05PM -0300, Gustavo Sousa wrote:
>> Quoting Gustavo Sousa (2025-01-15 13:18:48-03:00)
>> >Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-15 12:07:39-03:00)
>> >>On Wed, Jan 15, 2025 at 09:44:14AM -0300, Gustavo Sousa wrote:
>> >>> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-14 14:32:45-03:00)
>> >>> >On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
>> >>> >> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
>> >>> >> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wro=
te:
>> >>> >> >> The CMTG is a timing generator that runs in parallel with tran=
scoders
>> >>> >> >> timing generators and can be used as a reference for synchroni=
zation.
>> >>> >> >>
>> >>> >> >> On PTL (display Xe3_LPD), we have observed that we are inherit=
ing from
>> >>> >> >> GOP a display configuration with the CMTG enabled. Because our=
 driver
>> >>> >> >> doesn't currently implement any CMTG sequences, the CMTG ends =
up still
>> >>> >> >> enabled after our driver takes over.
>> >>> >> >>
>> >>> >> >> We need to make sure that the CMTG is not enabled if we are no=
t going to
>> >>> >> >> use it. For that, let's add a partial implementation in our dr=
iver that
>> >>> >> >> only cares about disabling the CMTG if it was found enabled du=
ring
>> >>> >> >> initial hardware readout. In the future, we can also implement=
 sequences
>> >>> >> >> for enabling CMTG if that becomes a needed feature.
>> >>> >> >
>> >>> >> >Doesn't this patch disable the CRTC, not the CMTG?
>> >>> >>=20
>> >>> >> It disables the CMTG and that's it for LNL and PTL.
>> >>> >>=20
>> >>> >> For platforms prior to LNL, disabling the CMTG requires a modeset=
;
>> >>> >> specifically for those, the CRTC is also disabled during the
>> >>> >> sanitization process (not sure if there is a clean way of forcing=
 a
>> >>> >> modeset from the sanitization routine).
>> >>> >
>> >>> >I'm not sure why this whole global state stuff is needed here.
>> >>> >It seems to me that this should be handled more or less the same
>> >>> >as port sync. Ie:
>> >>> >
>> >>> >- track the cmtg state in intel_crtc_state
>> >>>=20
>> >>> The main reasons I implemented CMTG state as a global state were tha=
t
>> >>> CMTG is not a exactly per-pipe thing and it could affect multiple pi=
pes
>> >>> (A and B), at least not on pre-LNL platforms.
>> >>
>> >>I suppose. But it doesn't seem to be fully really independent
>> >>thing either especially given the dependency to the port PLL
>> >>and such, and that's all handled per-pipe.
>> >
>> >To make matters worse, it is possible for CMTG A being driven by PHY B
>> >and vice-versa.
>>=20
>> So... I'm trying to come up with a way to handle CMTG state as part of
>> the intel_crtc_state. I have some questions that I was hoping you could
>> help me with...
>>=20
>>  1) For those pre-LNL platforms that have a single CMTG, what would be
>>     your suggestion?
>>=20
>>     I was thinking about keeping the state on pipe A's intel_crtc_state,=
 but
>>     then how to handle when pipe B's eDP TG is sync'ing with the CMTG?
>>     Should we just pull in pipe A's into the atomic state and deal with =
it?
>
>I was thinking we could just have a bitmask of pipes just like with
>port sync. If one needs a modeset we could then suck all of them in.
>Althought for just the initial disable thing we'd not really need even
>that I guess since we'd any flag all of them. I suppose the one whose
>port PLL is providing the clock should be considered the primary
>for the purposes of the modeset sequence.

Yeah, I tried to come up with something like this, but I have hit some
issues. Please see below.

I believe we would need to store at least two different states regarding
CMTG for proper disabling and causing modeset on the correct CRTC:

- We need to know whether a transcoder's TG is secondary to the CMTG,
  i.e., that it is synchronizing with the CMTG. Yes, we could simply,
  force a modeset on both transcoders A and B, but the ones that would
  really need a modeset would be those that are currently secondary to
  the CMTG; so keeping this state is nice.

  Like you mentioned, one way of doing it would be a bitmask of
  pipes (or transcoders, to be more accurate?).

- We need to know whether a CMTG is enabled. It is a valid
  configuration, although wasteful, to have the CMTG enabled even
  without any TG synchronizing with it. In this case, we would want to
  simply disable the CMTG and no interaction with the transcoders would
  be necessary.

I thought about following the strategy of keeping that state in the
"primary" CRTC as you mentioned above: the one whose port PLL is
providing the clock for the CMTG. Please allow me calling it the "owner"
from now on, to make it clear in the discussion that CMTG is not
secondary to the CRTC.

While trying that, I reached some issues/observations:

  - For display version 13 (e.g. ADL), we always have DPLL0 providing
    the clock for the CMTG. Since DPLL0 could be shared by different
    ports, it becomes ambiguous which CRTC would own the CMTG.

  - For Xe_LPD+ (i.e. display version 14, MTL), we can determine the
    specific PHY that is driving the CMTG, so this would fine.

    However, here we are ignoring the fact that it is theoretically
    possible for the PHY PLL to be used only for the CMTG and not to be
    driving any transcoder at a certain point in time, I'll talk more
    about his later (as a response to your question further down).

    If we assume that GOP will never leave us on such configuration, we
    would be fine.

  - As of Xe2_LPD (i.e. display version 20, LNL), we have two instances
    of the CMTG, and both could be clocked by the same PHY. Although
    there is no ambiguity about which CRTC should own a CMTG, we now
    could have a single CRTC owning multiple CMTGs, and we would
    probably need to have to track multiple CMTG states in a single CRTC
    state.

So, I'm not sure keeping CMTG state in intel_crtc_state would work very
well here. Am I missing something?

Also, keeping it as a global state is not that great either, because we
are forcing serialization when we need to disable the CMTG. I guess
today, it wouldn't be that bad, because that would only happen during
initial commit (if we follow the strategy on v4). I think it would be
more problematic when/if we implement full support to CMTG in the
future. That said, maybe this is slightly less complicated than keeping
the state in intel_crtc_state?

Another option I thought about was to keep it in intel_atomic_state,
similar to what is done for shared_dpll (or, more complicated though,
have it as a drm_private_state).

Finally, since we are only interested in disabling the CMTG, another thing =
I
thought about was to only track in intel_crtc_state whether the
transcoder is secondary to the CMTG, e.g. bool cmtg_secondary. After
hardware readout, if there is no transcoder being secondary to the CMTG,
if can simply disable the CMTG during sanitization if it was enabled. If
there is at least one transcoder that is secondary to the CMTG, we then
leave the disable sequence to the initial commit, where we would have
cmtg_secondary forced to false for every enabled CRTC and then modeset
could be triggered if applicable.

Would any of those alternatives work for you?

>
>>=20
>>     If it is just transcoder B's eDP that is hooked up wit the CMTG, pul=
ling
>>     pipe A into the atomic state only to handle the CMTG seems rather
>>     unnecessary to me. Just accept it and live on?
>>=20
>>  2) As of LNL, eDP A would sync only with CMTG A and eDP B, with CMTG B.
>>     So, I guess having each state in the respective intel_crtc_state
>>     seems okay here.
>>=20
>>     If we were to encounter a CMTG dual sync mode (is it fair to
>>     consider that a possibility from the GOP?), since only care about
>>     disabling of CMTGs for now, I guess we do not need to worry about
>>     turning sure the secondary CMTG (which will also be disabled) into
>>     primary, right?
>
>Yeah, just making sure the thing gets disabled more or less
>properly should suffice for now.
>
>>=20
>>  3) There is also the case that we could have a CMTG (the single one in
>>     pre-LNL; A or B for as of LNL) being clocked by a PHY that is not
>>     being used to drive any transcoder. Not sure we could expect that
>>     from GOP, but it is nevertheless a valid configuration.
>
>Is there even a way to turn on a port PLL without turning on the whole
>port in the current hw with its per-port PLLs?

I think so. For C10/C20 PHYs, there is a step for enabling the PLL and
another step to bring the PHY lanes out of reset.

For a modeset sequence sequences, we do both (e.g. the step "Enable Port
PLL and bring PHY Lanes Out of Reset" in Bspec 68849).

I believe for usage with only the CMTG, the PHY lanes would be powered
down.

See "Note on Clock Selection" in Bspec 49262 for an explanation and
example on a case where we could have the PHY clock driving the CMTG but
the PHY itself not transmitting data to the port.

--
Gustavo Sousa

>
>>=20
>>     We probably wouldn't be able to disable the CMTG during the initial
>>     modeset commit in this case, because we need the PHY up before
>>     accessing CMTG registers, and such PHY would be already off because
>>     of our sanitization routine after hardware state readout.
>>=20
>>     Since our driver doesn't even model the PHY being active and not
>>     driving a transcoder (to the best of my knowledge), should we keep
>>     this case to be dealt with in the future?
>>=20
>> --
>> Gustavo Sousa
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
