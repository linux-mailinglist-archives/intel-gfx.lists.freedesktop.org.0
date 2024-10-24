Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B689AE581
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95FC10E934;
	Thu, 24 Oct 2024 13:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eXUNjVEo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0A6010E934;
 Thu, 24 Oct 2024 13:01:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729774882; x=1761310882;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CUu2fBq925ZdSPQJXIkZyvOncPib4LcAvYfQuiFNW6k=;
 b=eXUNjVEoYhrAfbZsiDkKD8bW2MyxGpA1tPOA1eK9bGxYib7JU6LjNcff
 WdxXOStZ62BAL5SkWawWWvwMjxI2MdSsSXPlz42YA92bkz2Mdqd9jOD8r
 bTNwa9T0X+wrWJRZyZpJCLM/MBtQfjMfskCvaFYPQcWdKw6Sqr+gGfq92
 gk9jvXqXnXfwqVhBY3VpuZQhnjk3h5xUdw44LzbddhFEzU2+vCt1yd6Mr
 m0SigyaKgONJ0zLikfWXhQyyNmU7rr8+de+eEksBAnliun/1cL3URpEFL
 Y0oDgWJJv3sdb3TA7t4KTAboySuj9IZVUm8TL+omrmnOsohtcHgtLF6tu g==;
X-CSE-ConnectionGUID: wAsWzyFhSM+rFK72xNasrw==
X-CSE-MsgGUID: OnuQq0R/SCW+xcxcKbalWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29514613"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29514613"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:01:22 -0700
X-CSE-ConnectionGUID: CoAmvcchSbSvKl904n+ung==
X-CSE-MsgGUID: +q5Tzz2SRJq98g4rL1izag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80678451"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 06:01:21 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 06:01:21 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 06:01:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 06:01:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZIt5/ExfWuPxgLtOOMA6wBb9D3aX9vAelNpoudNSPNaYQeHGuL5I9B+BCGQHec6wW/5jSb4bQDD07AjWPzDfQvuxlkOHXV6xZDHF+2fNW460/f1rxCvAMSVPSDTq6pbA+qxGnfdP5MZMgorHok2pQDGqf5eV/xDvdPCpGbUkkjwhfyscu1Bq9vB/i9DaM/VsPNqTPgwsnKaYj1+SD/bkx9doKIXibfPL5iF2c8/+invfkG1NE/UidKU38DiKrRbTjbrfkBs0ygmpln0mk/EgsXVRKFwU886DPwt7CZZVJXGvQKPoS892EODOmdgbC8QA7BC2cxwdp5adb9thBhJTWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WxllUneWtRNBsyp+2BzgOpO5TJVSsm84z+l0zn9PGOI=;
 b=Q7npGqw7UUth1ogm3anvcoyNs9UgVv2AWyB2PEbWszciziP4foPAnm4MwZ29RFepcZWTYfpLk0SEn/kdIhOLl5KPrLiE4IsQfKO7Rlm7eznFCAzqtvGu0QSN1p5f83AAhsg/LhDWHeKpVBNQXNRFIo/WLpyFNE7X23Amq/29hFrtvPJJjG4PjBrOJj1le0hg3ITMfq4mcDXzCgO9GHNDbufDi7BgSiopE7h2yhPvnO0LQ/QH0daYLKiVHRPLV1wYiHFt8Wkgio9lLyE8QfThXcDQeN46UhNI7qlzNunmeEg0ol6XlzK5wE40wT8blRQIwNngSc4SmYYg1CAP3FgAQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB5870.namprd11.prod.outlook.com (2603:10b6:303:187::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.18; Thu, 24 Oct
 2024 13:01:14 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 13:01:14 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172970293335.1324200.5293894689336987708@2413ebb6fbb6>
References: <20241023153352.144146-1-gustavo.sousa@intel.com>
 <172970293335.1324200.5293894689336987708@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for drm/i915/xe2lpd: Update
 C20 HDMI TMDS algorithm to include tx_misc (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <i915-ci-infra@lists.freedesktop.org>
Date: Thu, 24 Oct 2024 10:01:08 -0300
Message-ID: <172977486828.1465.9450882192434120626@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0246.namprd03.prod.outlook.com
 (2603:10b6:303:b4::11) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB5870:EE_
X-MS-Office365-Filtering-Correlation-Id: 49d7af96-bf57-4bb0-4f78-08dcf42bf0b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aDhwQ3hObVZwVXdldTJGZFB0cHpadHRVcVVZOVpCTVRQZlBOb1plVkJtY1pq?=
 =?utf-8?B?WlE3SjNIQ0ZvNUVvOHo1WW5ya3NpK1pJS3dQSUhGcFBqNGw0V3R1UXRrUW5Y?=
 =?utf-8?B?N0plNFJqMmFQZU1pdld1cFplbEtxY0c4aTZjZmhlVVJuUXNEQktjQTVaS3E2?=
 =?utf-8?B?WGUxUWtxWXN5MmVPT1B5TGYxUG9iSHY4cGtmcE1KYjI0ZDdwTXBvelVCVU9t?=
 =?utf-8?B?djZySU8waTRCTGpwbWNBQ0Y1Y0dYT04xbWpZVXY0NFVkZnlJZmR6Q1Z2Mjc0?=
 =?utf-8?B?THArWmZVSmxNMEpLL2wrbTk5VkNmeFo1czBHSVFoRlBBTmp2SXlrUTRUSUNO?=
 =?utf-8?B?S0JCYUV2NnBaOG1uOE9EMXVFM0loTnFjR0tlNG1SL3JTSzNHaHI3YzkvSHRD?=
 =?utf-8?B?aWtsdVVpUUVnSkNESHFRSitrYkY2T0NGSUtVQ242R1dNRXVxaUhOL3FsWWlP?=
 =?utf-8?B?SVNHLzdCcGljdm5xbldKZWFiNm5KcXk1OXdOYmFIYnFIMVNYVmFhUFJwNWZ0?=
 =?utf-8?B?SXdxd2Z6ZmhqaityWUJkZFdLVFFYSFVsRThlZWhMUEF5S2Jra1lBNVdhdlY4?=
 =?utf-8?B?WkM4anFBWmYrb20ra3ZlaCsweTNoanNUMVFwTzhsZk9DVHg4My9KVmlRQW1j?=
 =?utf-8?B?emUyenM2SG9nWjJvdE15c2c1VzdodUxtSkd0STZaTmU4b29BbHhscFlNUVhW?=
 =?utf-8?B?dnRyWVg1cFFnakFwVWFEMDc2eTl2ZEZTbGI4clA1YjdPZ2VEN3FLWWZ3dXVk?=
 =?utf-8?B?aTNJWms4ZHlMbkIrTk5Qc0pQYmFyeDk4cThLTUdyRTV6Q25aVXhucHpyd1M0?=
 =?utf-8?B?VGxZRklPTUlPcVpET1ZEQ2dybDg2bldQcjAwdWNaYmxzRXJHdXgvOFc0OTlX?=
 =?utf-8?B?dVlDaUk5TzVLMzBpT0RJeVh5cFQzVkF3ZnBZMDJlSTlDdC94My9PZGZ5TlMr?=
 =?utf-8?B?LzdVOExzMEdIMU1iQzdnMmxxV1hBWFJOSlpmYXY4bXV3K2dxdytrQXRhVlE2?=
 =?utf-8?B?bEN2VVB1eEpveUNQYXMxTTBBeEp0WDV0SUVFbi9IRUN2a3dsak9jSDJWTHhJ?=
 =?utf-8?B?NjRaNHZxNkU5d3ZuZ0RDWXJ3UnhQMmE5RHIvcC8yL1pyMXRCWE80UEtHcERD?=
 =?utf-8?B?QkxiSTZ2dzdHVnNDM0ZmeFoxQ3JEN1JwbmFFQ1ltQWJJTDJiSTh0ZldqVDYx?=
 =?utf-8?B?ZmhhUFo1blJNQ1l2c0ovcXVlbXVZQzN6NHloYVB5dlF0VkdsZnZReng5QVFp?=
 =?utf-8?B?dEptODhacHRSTVBCQ3FNSUVGa1pBSlZseWdVbGpVdkl4aXc3MGpHZDM3aVlm?=
 =?utf-8?B?eDB2WDJneGJVd0p3aGlJa3p6UThXazBMVWVWQVVwVTdFSkJGRTFnclh5QTRP?=
 =?utf-8?B?Vmw4bWVwSVJvTGJsSTRRclRJZUYvTmczaTZORE1VTUNYSnNsNmxOVGxGa25r?=
 =?utf-8?B?S05DbXJkVlpoSDh4VUdJTUY0VVEvaEwrWXRmbjNwQTFuQUk4RW43MzYvbHZn?=
 =?utf-8?B?WFhNRklsYXpLNXhyTzk1bm1TQ0U1akI4Z1k5QVErTCtWbzB0Y0w3ejhqb2po?=
 =?utf-8?B?YWdEcHNXeWpWRlhTQkQzZ0lKM205bnpmNWg3aWZRTEpYbDVSM0JBWlJXNllq?=
 =?utf-8?B?SzlhMWtXUVpsejZRWGtsMWFsSFVXMUxxeEc3NWFHdkRkcW1MaHhBL3l2ZU96?=
 =?utf-8?B?c1Y2aTE4SGt3eTNMQTdxTWtOM0cxaDBSVjZGNDRXQUROc0VjU3JZWEV3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MTcwbUFRMy90dEYrVmZtQTUvSFZrOWZrdUdNdW1xUThBRWhuUFhaWmJrRSty?=
 =?utf-8?B?UE5PUVBkTG9PVkZhWk9RYjFlcDBtcFozT01pOGlHWGhTK2xNV3FYRWFzMlY4?=
 =?utf-8?B?T3poaEJtVUd3WWM1RlhMcHFDNXQxb0s0ZXBRd3VkRG9Oc2NTektyT1UyWURh?=
 =?utf-8?B?Nk1VTjZPY1dwZisycUEwM2pabS9ld1c2VVkrZTlwY05aNEJ4di9rR0RWNWxt?=
 =?utf-8?B?Y2paU1E4dVlGTE05cG5weGpNTlZPTVplS2ZaVWxKazhvZWZVQ0JWT1F3M2dW?=
 =?utf-8?B?M1B4RUNQZzJZaFpsUDhuSExJUWpUaTllSVF3eW5PWFVxWlp0QzZzOGpoYVc5?=
 =?utf-8?B?V2VscmEreTc4bWl1YlFLYjA1RXZKaG5rVUUyRkd5cUE0LyttcmZRaEgzVktE?=
 =?utf-8?B?V09GSGUyR0R1VTRTd0RxNGZITmtGQjNvWEF3WDUxbHZFdlRGSU9IVlpBVmVq?=
 =?utf-8?B?dk95UkdGNjRGWHM0Y1pGeXlOdDMvWm94aGVVT1M4YlpMbFkvZi96WWFlN2V4?=
 =?utf-8?B?b29XOExhSXdzVU9acVRZc2VzeXBrODJqcVJwLytqVGtuQUVPRGgrZ1ZpT1BM?=
 =?utf-8?B?aFMxR0pQMzB3WWIwN1FITi96bHNad3E0cnZxaHROWW1FMXRaRzhlZUFKb1J5?=
 =?utf-8?B?a0pnTUZSV3BkNlVWSjhCMCszZ2lmeEFaRzA3Rk4xQlhvQzhJM2lEQVJOVzBG?=
 =?utf-8?B?cFNnYXoyek1JRE9xWlMveVlvMmhpaFJ4dXhsK2thc1BHMDhUd3BPaUczMUhi?=
 =?utf-8?B?YzRNM2tRditTZ0NmMHBobHBVTTZqczU4Qm1BQkVoTTJPRHZiTFpKL0lxSEFR?=
 =?utf-8?B?cGlkQUVPNTRJYjhmRVZ3YWNUdklDSzlLb3cyd29yZFdWc3dCTHN3K2IyaklL?=
 =?utf-8?B?bWZyTGFEZHJVUUxDMmtyNGJnTnhWZERzSm9VNTFERnlFcDRsZDJmMyt3Nmwy?=
 =?utf-8?B?SlB2RUphc3p3dCtrRGVpMEEwVWduNWJKUU4ySXgwTXl4VHRwMllhejR4ZmRV?=
 =?utf-8?B?cW10UEIxSCtRd3JGbXRLbmJDdFVPVnZkTFNjTHQ2WFJURVRmQW53bUJuazhQ?=
 =?utf-8?B?UGhuMFlpZXVZVlcvQVgyZ0RYQk5ITGdRQUM4V2IxbGQvL1JlelNxWC9XS3V2?=
 =?utf-8?B?QlhlZWwxdEMrVWRydmw3SHhrQlF0cmd1MXd3dzZlNlBpT1NOVWMvcHc0czkr?=
 =?utf-8?B?SmRKSTFGY0NCWEFPMjBRbkZDTXRvTXlHVEhPak1qZlhVMTRXbHh6OTZhZUpr?=
 =?utf-8?B?OW1EdzQrdXBzSU8rcFpOZm8wWUExdkdZMVdTdFRxZHhnVGhZYm02aGpxU0Y0?=
 =?utf-8?B?aUZjbXhNblFTTXlpRjVWaCtEelRXSW90TFdHRFlaRkZaNzdvK3dsUVkzUlk1?=
 =?utf-8?B?NlJidEhWemxBaGlMd2VqVUVmVHZyL0FrZFN2YTdhOS94aXJzV01XK3NCYllZ?=
 =?utf-8?B?eStQVUhIZ213bjlIUGxFSkxpdGVwamtNS2ZaQnJsOVY4OVlTRFY3UkhtTGZ1?=
 =?utf-8?B?MGZDVU5qb2haakJhUzc2UWEyRFF1ZUd3cG1kdnBXcjU3SjJKVytEaXNyVFBi?=
 =?utf-8?B?YUJNUUNyQzUrUDRNL0RkaGtSb1lrVzV0YjA2S0tYWnZoNWxja0VBNXhCWkJm?=
 =?utf-8?B?TzM2ZWVHTjJ4anNoQ0lnemQvbkNUbkwxeHBXWnNNVkhpNzE2VWc5QTdmL3c3?=
 =?utf-8?B?V2dud2U4TzRGM2pudzVOMFZHckpUZXY5YlZUV1dhSlRqYStYTzdGNkV0Y24z?=
 =?utf-8?B?ZlA3OW1YZkRXemxHV3RobUdPRStNbTVybk8rcUx5QmJsMTNmL2RwbUh5WlpL?=
 =?utf-8?B?aUw2UE4wZkpUdlRWRnE2K25CdXltS3FpZnM1QzZtZ3ZPb0NQeTFhYU9jZGh6?=
 =?utf-8?B?dmJLaVhOU0NMZVkySi96RzdmOHFiRzEyeWxyVERGZUZnODlOYWJNZWNwUjh2?=
 =?utf-8?B?SlBEaFpBWTVNSnA4eG1Udis5YlV2endIanZZTjIrR2xXNHVvd05xNm5TWUVi?=
 =?utf-8?B?b2hoZHNQL2t6RGVxOUJQZ0ZKYzFmSS9vc0RVNmxrWkg5aWlOZ1BBZndub3B6?=
 =?utf-8?B?WVVaQmFrdnh5NEd1UjRVL0plMFkrSFJGSXJDSFZTcWhmaW9aVVFqSm9YR3d0?=
 =?utf-8?B?aHJ1V1cxMHQyNFhRa0oveEVPT1JSSkovY0ExVkVtQ1poa1dNb1RZTkFlMjEw?=
 =?utf-8?B?L1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 49d7af96-bf57-4bb0-4f78-08dcf42bf0b4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 13:01:14.0443 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MgVxk5wRLmg8Q1UCg5wKLIiTh8fX6qnIUOKPP/AWNTH6RlLIKOQ/buCUlrzINfFo21SN5xMcxT1+zGNaHnF1tA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5870
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

Quoting Patchwork (2024-10-23 14:02:13-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/xe2lpd: Update C20 HDMI TMDS algorithm to include tx_misc=
 (rev2)
>URL   : https://patchwork.freedesktop.org/series/140136/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15586 -> Patchwork_140136v2
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_140136v2 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_140136v2, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v=
2/index.html
>
>Participating hosts (46 -> 46)
>------------------------------
>
>  Additional (1): fi-skl-6600u=20
>  Missing    (1): fi-snb-2520m=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
140136v2:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_selftest@live@gt_lrc:
>    - bat-mtlp-6:         [PASS][1] -> [INCOMPLETE][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-mtlp-6/i=
gt@i915_selftest@live@gt_lrc.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-mt=
lp-6/igt@i915_selftest@live@gt_lrc.html

Unrelated to this series: those self-tests aren't related to display PHY
sequences.

Please re-report.

--
Gustavo Sousa

>
> =20
>Known issues
>------------
>
>  Here are the changes found in Patchwork_140136v2 that come from known is=
sues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_huc_copy@huc-copy:
>    - fi-skl-6600u:       NOTRUN -> [SKIP][3] ([i915#2190])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/fi-skl=
-6600u/igt@gem_huc_copy@huc-copy.html
>
>  * igt@gem_lmem_swapping@random-engines:
>    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([i915#4613]) +3 other tests=
 skip
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/fi-skl=
-6600u/igt@gem_lmem_swapping@random-engines.html
>
>  * igt@i915_selftest@live:
>    - bat-arlh-3:         [PASS][5] -> [ABORT][6] ([i915#12133])
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-arlh-3/i=
gt@i915_selftest@live.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-ar=
lh-3/igt@i915_selftest@live.html
>    - bat-mtlp-6:         [PASS][7] -> [INCOMPLETE][8] ([i915#10341])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-mtlp-6/i=
gt@i915_selftest@live.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-mt=
lp-6/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@workarounds:
>    - bat-arlh-3:         [PASS][9] -> [ABORT][10] ([i915#12061])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-arlh-3/i=
gt@i915_selftest@live@workarounds.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-a=
rlh-3/igt@i915_selftest@live@workarounds.html
>
>  * igt@kms_dsc@dsc-basic:
>    - fi-skl-6600u:       NOTRUN -> [SKIP][11] +9 other tests skip
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/fi-sk=
l-6600u/igt@kms_dsc@dsc-basic.html
>
> =20
>#### Possible fixes ####
>
>  * igt@i915_selftest@live:
>    - bat-dg2-8:          [ABORT][12] ([i915#12133]) -> [PASS][13]
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-dg2-8/i=
gt@i915_selftest@live.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-d=
g2-8/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@vma:
>    - bat-dg2-8:          [ABORT][14] ([i915#12305]) -> [PASS][15]
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15586/bat-dg2-8/i=
gt@i915_selftest@live@vma.html
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140136v2/bat-d=
g2-8/igt@i915_selftest@live@vma.html
>
> =20
>  [i915#10341]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10=
341
>  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
061
>  [i915#12133]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
133
>  [i915#12305]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
305
>  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/219=
0
>  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/461=
3
>
>
>Build changes
>-------------
>
>  * Linux: CI_DRM_15586 -> Patchwork_140136v2
>
>  CI-20190529: 20190529
>  CI_DRM_15586: 790c7308eb96861950ceddfd5a0f410cc3306c2e @ git://anongit.f=
reedesktop.org/gfx-ci/linux
>  IGT_8082: c8379ec8b26f3c21bae5473706b23da78bd26ffa @ https://gitlab.free=
desktop.org/drm/igt-gpu-tools.git
>  Patchwork_140136v2: 790c7308eb96861950ceddfd5a0f410cc3306c2e @ git://ano=
ngit.freedesktop.org/gfx-ci/linux
>
>=3D=3D Logs =3D=3D
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
40136v2/index.html
