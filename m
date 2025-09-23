Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE5BB95867
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 12:55:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 203D410E5E7;
	Tue, 23 Sep 2025 10:55:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gFjEqirz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20C8A10E5E7;
 Tue, 23 Sep 2025 10:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758624952; x=1790160952;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=wGgo5d1jahzaodJQBwVBmOsITJ0bxbS7J9joJdGXSy0=;
 b=gFjEqirzRHF7SgR7IOW34Hc4aRJgbUXQ4wvFpzzjLu51VIsW5bGKi+mr
 nm4NJhQqnBVHhX5+nSp78qVr+mOlkOEBOxt+rp4VOAZ0NNFiv8RDV4Efe
 G/6F4W+7ZAzn/avnAE/6b76tiWw7ZDOhf1biZTicE73yNetfLqHV+ZoPG
 c5p88VkMAwvUIBMCTtCRTANwcwIeCYWKLFaQCFejhgoC+8qKXagZAhJBe
 0zAWMH3yBR3xdAeWhj6lJ5NoIw+es+MRCR/pzybSSgp8XaZknNEWUz//i
 uorWtfOuov7bVXPqhDZMqv2Ci/8dyBamh72SpHtXwtTkGEVtiOyvQKLXR Q==;
X-CSE-ConnectionGUID: +55vfejbRYKsX5h3iZqUWQ==
X-CSE-MsgGUID: weR+njmvQWCUw0BQ64RMtw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="63530266"
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="63530266"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:55:41 -0700
X-CSE-ConnectionGUID: SWP32gPgSuS6ucuTP7/64w==
X-CSE-MsgGUID: x4wcJaADS32xr1EQMWhgyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,287,1751266800"; d="scan'208";a="177185070"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 03:55:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:55:35 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 23 Sep 2025 03:55:35 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 23 Sep 2025 03:55:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G1heJSAhnRhebBV3on3QE09TT1VZG0dxGPMAQv2oSbdsj68TDhzHTUgLKpYY3G8Daez+tzG9juBPlJLla9WKTREC59/mmUyEuJFKfdl7OdBWgBaVrCTrEfRdyXJZD8v6T160SP+jJsmdbaLI3TF0tn5Y6wdohxa9OTwHBL1e0sCCKjmTE/ZRYYAFHePUQXu3HSEZ77rP9b+x1r2v0VpNP4MInDavorZYy6MuxYG48CfTRz+qbPe8wiyGJJD45yIn4zxNB/tQ9nfHTIN72NiEgVaKgP6YXuQQsNZefgwfBZUYx5KNrMy5UAMR8as2avVVxHJhkEY7c+FDOY+HGnuXow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=52NpFIJFgSkD9etPYERGtm2ACYwrW7apheyhUz96Q0U=;
 b=ZnMmbMLbDaGvWfGaWs6DaBtwjETT17mJxIV9GLp1Hoy+u07x+a0SpaDuZ/fga84RuMachfmMKFd2e771bT3ay1Ub1or3D8OGUppgnnzAR9/ig4dLFqiq64KZISyNDU6tFvCIRFJY9yooe/HZ1Cc1SfPtDJoTtRrFq0j3chtT/DUtTiU9ybkos+Etc+yGeZ2O49OcEWp+IQIprLL5fesxGGoV3PCcXv78MPbuHn8+bfQN+7CUnZkeD/6TgGdB0WSpMnNYvx2bPYknt4EjRrr/81A1Tl3NxPyoXy/kYwGcMmER7tqv14JhX9HrL6Ui3muTksqM6KfTxkbpJPc0wRMuFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS7PR11MB5991.namprd11.prod.outlook.com (2603:10b6:8:72::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.20; Tue, 23 Sep
 2025 10:55:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9137.018; Tue, 23 Sep 2025
 10:55:33 +0000
Message-ID: <23ec05f1-d78b-4d0f-839f-f0b83ab9cb73@intel.com>
Date: Tue, 23 Sep 2025 16:25:27 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
 <aNEkV70k8Nv1WFzW@intel.com> <2a4fe894-d4ad-44a9-912f-578394f6d2fa@intel.com>
 <aNFSs8KBN3Fzyasz@intel.com> <aNFT-vRMO4si-cuf@intel.com>
 <aNFXYCg3OJLuXMwt@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aNFXYCg3OJLuXMwt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS7PR11MB5991:EE_
X-MS-Office365-Filtering-Correlation-Id: 189de479-caee-49e7-269f-08ddfa8fb820
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3Y3dnl3ZCtIblRkNk9nZjlyS01lWEt6QzZUUHZFWjJKWXJYY2FBdk9NeURB?=
 =?utf-8?B?MWdDMmxCODBEcVpiNVlFZTJiMlB4bFl4V25jZGVXdTRkTmJkR2hneFErNDhE?=
 =?utf-8?B?ZzRjeE9LU2hKbnFGRVNZNXlPUncyeHJRQW9WZ0l5dmtQK01ocW5vVThQYlNO?=
 =?utf-8?B?REliRDJZKysySjZ4a2lKT2VQMFRTVTlRTGRwdEplaFJRYnk2OTdNOTB3WVRE?=
 =?utf-8?B?Y3JIVEwvU1M3SEpQNTB4RU1sSUlBVDNBa3lpdHEzMTM2aTRNYTdYNmt1Mi9F?=
 =?utf-8?B?ZHBXcEs4QnF0STI4QlprTVFsUm80eGpvdUtFMzlWZDdvT1FFUk9PUmxDVkFq?=
 =?utf-8?B?R0NHMUlHMng0OWFHaEVQaUF6aVZUcDlzbjVMbnNFc1ZjT1ZaeE5lbkUyZmxC?=
 =?utf-8?B?WVdTUi8zWElDUnBIaWg5djlQTHZtMkkzbGJLaUVER1NEMElwblMwWHdCZW5C?=
 =?utf-8?B?ZjNtbFhxZmE2cmxnN240VTJpV0dSQ1huU3JmV1RZUVdkLzZ1eXovNWtXRmhZ?=
 =?utf-8?B?QXB6YTYzdVBjL3NjVkxOei9lcHppTVhPcEVKRDZaZWFzaWVVT1Y1eWdQMVIr?=
 =?utf-8?B?WXlGeTgrS2gzSU9VV1pEZU4xeldmaUxwaktmVFM2YUFOMDFUTVNXQnpmOU5j?=
 =?utf-8?B?RTBjc2w0VVk4RUg1YW05ckVRY1JhSFVVckNkZk9vZHRiK0lZOVVTSTNGMWZv?=
 =?utf-8?B?SnNVZTYwRHcveG1zMmRzZDlLeS94Q1d2Uy9kU2krSFlnaGhvT1lFWnQyYTAr?=
 =?utf-8?B?MXJjQTZ2Yms4dytVV0wwUWxMQXZya1RMbTRMdGlyT2s5ZGJLb1BIM0RyMVFh?=
 =?utf-8?B?c2NSUk5GYVR3eTZ3QTM0dHNHbzJ0c3FQZWNoQ29rcUxNOUJUSzlpcUpwckk3?=
 =?utf-8?B?SFNpaWVNSXBIVzEzZ2c2dlRqaXNyQncvTHgrV0Ewdk02WXJOa3Z1QWxOcVdl?=
 =?utf-8?B?NzVMQm0rMm9OdlBQUkQ5blcxWE55RXlDL2VEdmNRK05VQ3AzYUZLak0wZGVN?=
 =?utf-8?B?eUZqNDV3OUlPWWJPRTVEL3FNRCtIMUZVdnNCRmcwKzVOSHlrdkpFUHJTNVJG?=
 =?utf-8?B?bFFKNnoycTFkaWQwdU9Wa1NDZGlGTVlDRFBwaWNENXpCOW1RTHVWVGhETG9k?=
 =?utf-8?B?OTFidUhNT3oxT0RYQUp4V2luY3prUXgzNVA1anNENW1MZGdORFdaOUFFYzlp?=
 =?utf-8?B?WXk5N1JtbEVaeFJraDNvbHRnUFlYdmNET3c1M0VlekJiTUt0RkNDZnJMdnhh?=
 =?utf-8?B?OW81SVp4K0ZKbUVrWnVIZ1l3MldWeUx2Qy9QZndheE41NXdFRElrSnA4M3pr?=
 =?utf-8?B?NTRuajM4emc5c2diUmJORjN1TERwTEl1aGJyeWxnQXBteHczZ2MwdHptQm1D?=
 =?utf-8?B?ZG9pQnVqK0NkSVJqaEorSElES1ZqbGVBY256TXoxdURmMkp0aGVVMmJIM050?=
 =?utf-8?B?ZnJaL1F2RC9oNjB3ZngvT2kyQXAyRk1TdU1ob1RNVnpJUjB0Tzh5a0Mxa0xk?=
 =?utf-8?B?bk01aGhZaFNwQjVRRENPR0FEODQ3TGM2UUFTckE1MldWWWdZd09tMFptTmlx?=
 =?utf-8?B?N0tBb1NKY2F3N3JHMGlpVlhSVlFxRGdiRUVQUldsa3JCa2wxR2RtSytwcHlz?=
 =?utf-8?B?b2QwRjBYK2hrVWdKbTdBMWdYQ2wySmUzYXBQZHN6NWQ5UXZ1SEhmMjY2VTZr?=
 =?utf-8?B?RDRqT205TEYvL0h1SXQ0am00bk1xNHNMb0dXT1lUMVJPaVQ1Um8zbzBtamN6?=
 =?utf-8?B?YWI1TEtQUWpFNUdkQXR5M2lVQkxwdk1KMGUxQ3pFMkF3Y3ZuUlIvVEtHVTlz?=
 =?utf-8?B?ckYvb1ZoRkdUZ2IzUkhXMHltdGdIMFdNQ2FYdzBZS2dVUTRPcEdybHhCWkdX?=
 =?utf-8?B?c202OXRIYVdlVzVZZ04wblBpdGpaSEswdFRBVWxlaUdud203NEIwMEx2YnJh?=
 =?utf-8?Q?5RLdivBZztU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nm1QdCtWaVVrWExFMjFFaGlXbE1LY0Zhemg0NTVQNjlQUUhqNU9BSkNhenRx?=
 =?utf-8?B?OFlnMDBkLzhObUhWV3Z0Z2FtNk1JaDBOWVA4akJmZkppTWRTYlJFQUxhd2Z0?=
 =?utf-8?B?QkNKVlY5M3dQSjhVQTE5dFk3bElWa29HMDNQQWRvelF4ZnJYdXBRMGxNbWdU?=
 =?utf-8?B?dHZWb3R2eE1teC9YbmpuQ0I4TDVaYmZiNHdacVRObE1jenFWaVBYbXlub0Vv?=
 =?utf-8?B?Y0UxU1lWNDdFOGdUVGdneWM5akRmWkRJT3gzVERpZGJIV08ySDhSMkFDUCtX?=
 =?utf-8?B?QjZiYkpRRm01dHNKNkRBekhsTktQaDJjN1BBSGVtNTF0bU50VUJnSnUzK1FX?=
 =?utf-8?B?SlVSQmxhV1owVXBCblhyQlh5RXM5QzJaVGNQeTdzVXRVRzVqRk9lTCs1MHR4?=
 =?utf-8?B?dm1jREtlTmt0THE5M1NIVkJLK0V3VXlOUkc3alBPbzcxRmM3ZkNOeEp1MERR?=
 =?utf-8?B?TDFRWUFNWi8vTWI2Yzh1QnZlc2NoK3luTFlFOU9zdEllZHdCZE1EdWVvMFJY?=
 =?utf-8?B?aS9leFU4eDg0VGlNMEtPU2tIdHU1Wmp2UklHOFFERlBHb28zRFhEMzVMMWFX?=
 =?utf-8?B?WWM2WlZpVHkvdnEreTRDZW1aeEtsVTNtc3ZnWXlZcEtBcnZoS3Z3aEdkb2Vq?=
 =?utf-8?B?SHozQ2Q0QWptekl4M1lRaDE4c0tWcXBKSzkvUGg1d0wrcnRIVEZTNmtiS3E1?=
 =?utf-8?B?QW5Gc0xzSkNHWUZENi80V0JGVGdDNm1CaW5Vb1ZvcmtoR3ZDaWFCbUxRQzRZ?=
 =?utf-8?B?NklMUElJR0ZqVzU0WVVwNWxIODZEV3dMckorNFN4QzFodGlOU0hLSjI2b1NZ?=
 =?utf-8?B?ZlJQcXgzMGJjMmx2QzQ4QU9RZnZxNms5QjVOMEhoMjRPSFBBV3dHcGxFTXY4?=
 =?utf-8?B?L2V0amRCeEREaGdRNUg4NzJDekJGRWV3bmRtZExFQlEzeXZGaXRlc1k0SDZw?=
 =?utf-8?B?V25zYXpqYnozR1NwNXEzeXhBQVUyOWxhZlUvdE45K3hpTDZSRnY2aERnbEht?=
 =?utf-8?B?emRjV0NRK1I3WmRPQXVsWXVUbHVXa0pLaWt5dW9tOFVFYnhiMVpaVjc4TXJt?=
 =?utf-8?B?RS9ERHNadUE5ekZ3dW03ZGJpaXFMMDM5K1dsLzRuRDUyUlFnRlltb21KUkxl?=
 =?utf-8?B?cnVRbzBIc3ZpOTc2MzNNMnV4Qk5iQko5YVRneWs3dm9sWGthMG9HSHNYNFUv?=
 =?utf-8?B?SFh1Uy9DQmdZQjZmU1Y3bHBPUU5xQ1ZQZGVJd1kraDYzVmlDa2tVQTcxK1Bl?=
 =?utf-8?B?VW5vNG1aQm9Gc1RqWlJlRzc3ZXBYRzR2TWR0WlJiajdjY05hRU9vMVFpS2hm?=
 =?utf-8?B?Z0xybm1uYmNNSjByMkp1ZlBsRWtYZlVUOUdFZ3ZBN3ZaWHJnK0hXY2tHVXg2?=
 =?utf-8?B?dm9wdDhxSWJsWloyY1hjMUU1MzR6azhqQjhUYXIwY1EzUXBlbDZDY3k0aExv?=
 =?utf-8?B?a3p6QTM5QzJRYnFNQzJia3hNYnpoQVBSbXNvVDB4bnFBblFuT0psVzBKVnZ4?=
 =?utf-8?B?UFpTSW10TlUrSjRUK1ZDOVQ4ZGs2US9ucnJIZGllWDcvRU1XZnRURnNRMnIz?=
 =?utf-8?B?Ly8vYTd3MnZ2SmluZUxQdndIODRTcGJHV3hQaGN0eHVEcUtpdXZMcnNXbmNs?=
 =?utf-8?B?R1dSRVR4RUhueXMvUVd5Q3VCQjVscUxTaFFyNGh4dUxYTFNITUVrTDlIRHh6?=
 =?utf-8?B?RVFTUkRZNnY3cjNTYlh3SE5kZjBTenErM3R3dXBLNmpiZC9ySHBrc2FkWFZC?=
 =?utf-8?B?QU15TWpaMGVLb0xYWmF6dDFPaTU0dDhOYkZzMk40VzJ0RStFNHZScFNhcXBZ?=
 =?utf-8?B?M1F1dTJTQUQyVm4xV0lrSWVKMTJiK2x3L2FvSmJ6ZkxMTnM3TE01Yi9sM053?=
 =?utf-8?B?dHBrYVZCYTAwZ2RHR0x5Vi9ORVBtSjQ1UzErdERYcHZJNUh1RTNTZW1XUWtZ?=
 =?utf-8?B?aFV3VzVKbEpHbXRlcXdoUm55SmxObmNWQ0pYUHBvdVYwY0FxdnJjVmxNSkRO?=
 =?utf-8?B?RmtQTDFKZWdHcmM3TGhWNmxocEd0M3h2cDJjU21XUjNUZjQ2QVJMeXBpS201?=
 =?utf-8?B?ajhlQnpMTDYydTV2cU1CYlRDcllMeFNnd0s0WmtDYWtHU3RWbE1uNVpjU0V5?=
 =?utf-8?B?NEF6d2p5UFc0UmwrS1FrOUlkaHY5aFlSQlUybTFhb0dQblJhSXJqdyt5Y0Ex?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 189de479-caee-49e7-269f-08ddfa8fb820
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2025 10:55:33.6112 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ylw5BIggHH32jIgQJ2PbmkQKzjJ8fSSleAKL+GINi10dRSI5M58r5gVwBQnqpktrxvu8TGQTB0gC6EK+6kMDfIC4VlUmjonskJI1xjaIOQg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB5991
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


On 9/22/2025 7:34 PM, Ville Syrjälä wrote:
> On Mon, Sep 22, 2025 at 04:49:46PM +0300, Ville Syrjälä wrote:
>> On Mon, Sep 22, 2025 at 04:44:19PM +0300, Ville Syrjälä wrote:
>>> On Mon, Sep 22, 2025 at 07:04:49PM +0530, Nautiyal, Ankit K wrote:
>>>> On 9/22/2025 3:56 PM, Ville Syrjälä wrote:
>>>>> On Sun, Sep 21, 2025 at 10:05:34AM +0530, Ankit Nautiyal wrote:
>>>>>> Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
>>>>>> However, from PTL onwards, it waits for the start of the safe window,
>>>>>> defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
>>>>>> This change was introduced to move the SCL window out of the vblank region,
>>>>>> supporting modes with higher refresh rates and smaller vblanks.
>>>>>>
>>>>>> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
>>>>>> SCL lines earlier than the undelayed vblank start. Since we use
>>>>>> intel_dsb_wait_vblanks() to time the send push operation, this causes
>>>>>> issues when SCL lines are non-zero.
>>>>>>
>>>>>> Instead of relying on the helper, instruct the DSB to wait from
>>>>>> (undelayed vblank start - SCL) to (delayed vblank start - SCL) before
>>>>>> sending the push. This approach works for both pre-PTL and PTL+ platforms.
>>>>>>
>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>>> ---
>>>>>>    drivers/gpu/drm/i915/display/intel_display.c |  2 +-
>>>>>>    drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
>>>>>>    drivers/gpu/drm/i915/display/intel_dsb.h     |  2 ++
>>>>>>    3 files changed, 19 insertions(+), 1 deletion(-)
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> index bfeec3706f35..8d78037d5a2a 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>>> @@ -7265,7 +7265,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>>>>>>    				new_crtc_state->dsb_color);
>>>>>>    
>>>>>>    	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
>>>>>> -		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
>>>>>> +		intel_dsb_wait_for_scl_start(state, new_crtc_state->dsb_commit);
>>>>>>    
>>>>>>    		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>>>>>>    		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
>>>>>> index 400dcc87a992..e94a05cc8c82 100644
>>>>>> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
>>>>>> @@ -826,6 +826,22 @@ void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
>>>>>>    	intel_dsb_wait_usec(dsb, usecs);
>>>>>>    }
>>>>>>    
>>>>>> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
>>>>>> +				  struct intel_dsb *dsb)
>>>>>> +{
>>>>>> +	struct intel_crtc *crtc = dsb->crtc;
>>>>>> +	const struct intel_crtc_state *crtc_state =
>>>>>> +		intel_pre_commit_crtc_state(state, crtc);
>>>>>> +	int undelayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vdisplay;
>>>>>> +	int delayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vblank_start;
>>>>>> +	int start, end;
>>>>>> +
>>>>>> +	start = undelayed_vblank_start - crtc_state->set_context_latency;
>>>>>> +	end = delayed_vblank_start - crtc_state->set_context_latency;
>>>>> For these we perhaps want something like:
>>>>>
>>>>> intel_vrr_safe_window_start()
>>>>> {
>>>>> 	if (ptl+)
>>>>> 		return crtc_vdisplay - set_context_latency;
>>>>> 	else
>>>>> 		return crtc_vdisplay;
>>>>> }
>>>>>
>>>>> intel_vrr_vmin_safe_window_end()
>>>>> {
>>>>> 	intel_vrr_vmin_vblank_start() - set_context_latency;
>>>>> }
>>>>>
>>>>>> +
>>>>>> +	intel_dsb_wait_scanline_out(state, dsb, start, end);
>>>>> And I suspect we want to do this just before the usec wait in
>>>>> intel_dsb_wait_vblank_delay() (for the VRR case only). No need
>>>>> to bother higher level code with this, I think.
>>>> Ok sure. I will re-arrange this and use the suggested functions for VRR
>>>> case.
>>>>
>>>> On quick checking, it seems we need to use start -1 in :
>>>>
>>>> intel_dsb_wait_scanline_out(state, dsb, start -1, end);
>>>>
>>>> I tested with initializing with bigger value (like 5 instead of 1).
>>>>
>>>>   From the dsb utility which you had shared, also we see that it gives
>>>> (vactive - scl - 1) as the safe window live status change for PTL.
>>> The hardware scanline numbers are always off by one (or two) when
>>> compared to our more sensible software numbers (see
>>> intel_crtc_scanline_offset()). On this level we're always
>>> thinking in terms of the sotfware numbers, and dsb_scanline_to_hw()
>>> will then do the necessary adjustment for us.
>> I suppose to make our lives easier we could make intel_display_poller
>> adjust the scanline numbers in a similar fashion. Though we might
>> want to make that optional so that we can also have it use the
>> raw hardware numbers as well. I'll see if I can cook up something...
> Hmm, this might be a bit harder than I initially though because
> everything would need the %vtotal to be entirely correct. So I'd
> need to do a bunch of readout first to determine the vtotal
> (or vmax) correctly. And if we get that wrong then we'd
> potentially report garbage results.
>
> Hmm, I suppose I could skip the %vtotal, and just not apply the
> adjusment in the 'wrap' test at all. That might be the only test
> that really cares about scanlines around the vtotal->0 point. And
> I guess I could keep the adjustment behind a command line option
> so that you sort of have to know what you're doing when enabling
> it. I'll need to think about this a bit more.

I will look into this utility and try other things out too.

This does look impressive for debug and understanding whats going on 
specifically with DSB.


As for the patch, I will use the suggested helpers for start and end 
lines and move this "wait" just before the vblank_delay usecs for VRR case.


Regards,

Ankit


>
