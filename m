Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FE9B2BCD7
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 11:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50BC210E56F;
	Tue, 19 Aug 2025 09:17:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nThVgr+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC07A10E56B;
 Tue, 19 Aug 2025 09:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755595022; x=1787131022;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Y7hRpPzAt1DNUC9mt46HB0CoepZ0agMTtt1WMObFPCg=;
 b=nThVgr+cO2cNatW2PC73zCLaiU6twYe5+Uah+qrCSFSBozuKK9qm77NA
 tNDrKg7mHhNhdbtOYf1HYPX4Iz7HYWKJMlRdhQvea2QKVo2cmujN+ihJ7
 5XLzgO4Mpm7wHC5uhnfOzbF4ArqzaoI6GXq4LCr2Pq254tO6nuM5CQRKu
 61vakxJxq7rn1opu3Ce8Bq+Ig1A+VNc9NAnHgbawbk1Y0USMm9STupUmE
 t5JLafujVoVAeF4XFltlFVzyM1Vk8Oot5Gzrse3e7/xzopBgREesocXK1
 bmZeP0cvfle6ZCP2Xae+Sei3fskqXSUFmWRNt/EoEqikdLiYpPm9L2TZ1 A==;
X-CSE-ConnectionGUID: xeKMD96+SmC9KXFqe9RLDA==
X-CSE-MsgGUID: cioPLFqRRbShxm909msEng==
X-IronPort-AV: E=McAfee;i="6800,10657,11526"; a="45406032"
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="45406032"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:17:01 -0700
X-CSE-ConnectionGUID: qAM5LwxhTIKSwIRWrCCMSw==
X-CSE-MsgGUID: uzlT/JV5Qver6MvZqstzjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,300,1747724400"; d="scan'208";a="173029679"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 02:16:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:16:46 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 19 Aug 2025 02:16:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.63) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 19 Aug 2025 02:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=j+Tn2pHGvoGQSCMaNp2yYL3p1rWP4LdTxwTXzSQ8If8gtRz9batOkH7e0/1TRR9rc1Nfm2ATnkdBeuNxHKfFrM5lt/LQdEdrKuLwl6OSkfxiDIaGrLVf/OSpxz0HMUb77kLWnWB7vgavRZbabIwadG0th0mPAx0/8MbHCtW9a1v6N5FccpTodRxiKiSfzeYw15kYaiWwGccaaE/CXLasLHDSRoaEPjV5VzL1u3V25RHA4WbnO34rJybAhCm0t8HxmlXL/AyF/Dd1cD+65sUrBlButmFOlQVh1uZGquLljkZU54A1ks4ryajXz+k2oIsDhlD3GmfSnyVdTqulatGIHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NZ2vrLNN5f3G1KnhFnUF1O9e8YuvYb8pnDpuM5jKta8=;
 b=BgbR+69XWiPQuCbvBT6W+yT/je49RatuLN3PXQkNd/RzsdhHa5JTLCWaofuWeq8w3tTMEGZAaW5MtYKOiHs2NcKff3T62gwcWy4VoBGMnsPyki2WXIhjPAmY5LaKiR5oMZx5n8yDidSNIUkFWHlRslzWEB3qPBBZsSHIaI32LMbtxg0ZLlN0GqQjIJ3aeTiDVRNCjrs5t1dNQ0LvcaBjrpbC4GiAt17kNRudsab6D3NgAQF6QiAYAOiA3D1Xfm0p8kORQX20/3cK/rUFma2fhyjdEy9yCn7KMDWcP7/hQ+shqksFVD91CbEluGRZEG/LrDldqRWme4MlQvQTHIukdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB9518.namprd11.prod.outlook.com (2603:10b6:208:5b0::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Tue, 19 Aug
 2025 09:16:45 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8989.018; Tue, 19 Aug 2025
 09:16:45 +0000
Message-ID: <c74588f3-027a-4afa-bdf4-3c000c599bd7@intel.com>
Date: Tue, 19 Aug 2025 14:46:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/3] drm/i915/vbt: Add eDP Data rate overrride field in
 VBT
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@intel.com>
References: <20250819080602.84826-1-suraj.kandpal@intel.com>
 <20250819080602.84826-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250819080602.84826-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB9518:EE_
X-MS-Office365-Filtering-Correlation-Id: 50723b8a-fc42-4e5d-b2f8-08dddf011de0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WDd3RExnaTBJT0JwaWZKaWZoTStScjhXMzdyV1NBZnNEeDYzTldQNGhqcndR?=
 =?utf-8?B?d0R0bGFDaXg1LzE4WjdMejJXYkZWSStlTzBKK3d5bTd1OWgzMmR6YXdFWVBU?=
 =?utf-8?B?R2RNNU04Nmt5dE1BOFNsc0liaEJrZjZZQkkyTWo5aWcySGpkMWRRY0tYSnY1?=
 =?utf-8?B?WnJLb01KckpNZ2Y2QnZONkJwVExITzZXUjFJdnhzOVRiTW1NZWVLRWRzZmU4?=
 =?utf-8?B?aEwxS25Zbk96SEV6eG8rRWQ2dzVSa2V3eTE0bGM1d1lBdnp1Q00yWTdZRis5?=
 =?utf-8?B?bWI2UldRbVEwNUJXUW9MVitrZ3MrQ2pqakhPUWJZYjViN3lvZXJqZ0dhWnUy?=
 =?utf-8?B?UFUrdlRCRHJTditHLzBxM0FhNGVCbVg3RTdQdGF2eXUzS3FJUklTMWsveml1?=
 =?utf-8?B?Z0RUemZkY0ZpVlRydkoySTBkZFNYL3NMQjYxMXpERjVnbFN1RHJNOWRPQ0RR?=
 =?utf-8?B?bjZqN2o2a3VqZ1ZKZ3NSOHhXQi83Q2I3ZlNvWTM4NUorM1YxYTNTdHZlelFs?=
 =?utf-8?B?cDV0Q0l4WG9DS1lJbzI1VGJsZVRPYXZ3RHNlYVdXRlpIYmY3TE9GWDVISHVa?=
 =?utf-8?B?ZDJ5RXZOK0hsNis4b25PcGdzZjgyWjczRlBzUzBhTTh0WFJBc3FwN1FLN1Fs?=
 =?utf-8?B?N3VRVGR5SEVlUmZrT1MrK20veFExMnRGM3c4czJvOWk2Sm02cTFLa3daZmtn?=
 =?utf-8?B?NjM1SnBRaVQ3ZVBzcFJSSUdiRnVCSXlmb0dsUTBLb1FJdVV0OHlWM1hsNjNO?=
 =?utf-8?B?QVRwZmhvSWVueGEzYTVGSUxtQW5renRWMEFhRFlKaUpIR3JmWjBheWRMSGhx?=
 =?utf-8?B?bllTd2l6UzdJdEN5OGJSMjJZV3AvQ3Z4VzZ3N1VYUUo2UEtPdFQrRG9UdGFl?=
 =?utf-8?B?b09rcTFZdWs5dFhNQVp6RUNnV2ZoMWFuREJuK3NOWVpYck9IU0ZCNWorQ0Ri?=
 =?utf-8?B?WHZ3MU5FUXZTVGpOS2dkOWhUK1B6QkhUZ2ZRZFVWS1lNVW02UnhNMUtTOXd0?=
 =?utf-8?B?NUo0UUFmOGVSTFZBVzJ1L3NObjVuWFNhMEhQVFdzNnppQ2NrSmN0SGd1VFRU?=
 =?utf-8?B?QXV5YkNHSlpaYzdieEw0UGl0aVh3TUlvYTFwZGZuN2hiS3pvaTZZaFc3bWFk?=
 =?utf-8?B?YzVUZWFnZDJaVThHV2RqSnppdVdETFhwdFg4ck9DOUNObkREZnREMW5zZ2VY?=
 =?utf-8?B?WXdnaVExYlA3T2tvNGZGc2hHTEkrcVVMSVk1bGpQR0NHWDQ5ekJBRHhZS3R4?=
 =?utf-8?B?YnpvZTNVZXhQSmNNY2F1eERkYXJCSldnV3g3Y1BYWnBid1ZTRkRuTU1ENm5L?=
 =?utf-8?B?YWdjQ0FyVXUxSVhLanNGZ1E2QXIwcFkwcDdRekpYbVd2OTBSai9tbG9EbHBK?=
 =?utf-8?B?NmV1M3lXcFQ3SjE1bmw3VG5FQUpVSStLeEZqVXRpVDEvR1BGK2hrSXlBUHRn?=
 =?utf-8?B?bDdabnRnQVMrYzNVZU81QURXQWVrZVNGaDdWb0lZQlROZUJwM3dqZDFTaE1P?=
 =?utf-8?B?cW94UjdQaG9VbmVPT1AxRnhneE4vWWwrbWd4bUVmNXR5OWZGZzFMdFVPZDVN?=
 =?utf-8?B?L0laY1h2cURDOXJLYWlLSWVBM25BcG9ROElnNWVsb1ZCSWtXSlFud3JZTFJu?=
 =?utf-8?B?OWN6U1B2WlFMYVF5Q1kvSHdiTkRkSUZoSmxzZGt3bkdpWlp5VnZCT25xdHc2?=
 =?utf-8?B?REh3c2pvZTlIMWxadURyV3hTOWJ2VWZKOERmc1NtalZxOHJGYk1JeThrOU13?=
 =?utf-8?B?dW9Wa1VGR0RvMDlhbTg5TmMyYjVxQzIrQXF1a0JaS3FHejk2V29yeldOMXBF?=
 =?utf-8?B?MmREemdaRzhNRDVXL09OMHBJdFdpRGk1amE3aHRtdDE4cWpmc2dTRDUyd095?=
 =?utf-8?B?OExROGtFTFFuVHZaemxETWpxZEZCdUdCeUpFTk02YkJRUEE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0dPYjN1Mm01am1hMlc5QUJ0SHVydFo4OFNpb0YvaGwwdXpyUDZsN05vMkNw?=
 =?utf-8?B?V0Y0dmVvL0tSWThwSU5oZ0xpQXRNdWtBOFZzY09BcU91Ylpsd2xPd011SHZX?=
 =?utf-8?B?ajVjZ0dlemcwajdqWG5TWGgxQUNBaEFLYndWZFFPOVpTL1Rpa0FGd1d6dWpv?=
 =?utf-8?B?cFdoY0c5enJDNWhlOERQVDUrbGg5anREVlRCdlpFWE4veDAwakFNRi9reHVB?=
 =?utf-8?B?V3BPM0xvcSttb05Uc3lmYWVUVVNSYkJoa0dSTno4bkR5NXQwcUJDSC9PcWgw?=
 =?utf-8?B?VWxUeHlsR1NKMm5mWEJheld4VHlhUDl6VVh0ZVZndXRnUkNVNkxMQ1Z5VjR3?=
 =?utf-8?B?b0dwVWtrRENVTzRhUWhiNEZDZGxHTS9hMmZDbDRzN0pmU0JqSVFFWGxtRHR3?=
 =?utf-8?B?YTJnOFMrcmsrclg3NW53SHNKOU0xV3M3SG5OYkVXaE5TVWR3RzNqbm9la3dE?=
 =?utf-8?B?SENIMWhnbjdDMWZpMjFWd3lhdGt3d1dJZmpnMVN5OXRYOU51ci9BMGZrOW5E?=
 =?utf-8?B?V0lnQTdMMWR3Z3FXWVZ1eG0wcllzMHM2bHlXUEVqZHdtZS90M1N0bkdlQ2hL?=
 =?utf-8?B?UTJnTzE1THVxNjl3bVpMYmdudUFrbFN6anlHZkhhbXllQUlJZFppQ2xxM3Bw?=
 =?utf-8?B?RThtdExPbFZmaUhvYnhDZGlQMFZjOEMrQ0V6d0pWcnlZOVVPOFFreE5MTXFL?=
 =?utf-8?B?NkV3SEhnYVI5VmI4VG5peTBzMWhyMjlMd0NMSFJvR3lJL0xPM3c4WmFQSmZu?=
 =?utf-8?B?UUlWb2VETzBJc0FzZUJVcEpRVzM0dWRWa1pWcjdFTUV4ekRvOUNsZlJDZWFh?=
 =?utf-8?B?dHg5SmNyL3hRaFZlY3U4QWlYNW00YUxKMGtCcEkrS1BUanVBREFXTmFKN2tP?=
 =?utf-8?B?eWZ4eUkyMWFEQ2dRTXlHcnduN3VjYW9QOVVFM1BCWTY5dTBET1pZOFo1bnd3?=
 =?utf-8?B?dm9WalppdEVtMlp5R0Q5VDJIenl4ZG9Wa0hnU0xsbXh6SVZOemgyeGdjeExm?=
 =?utf-8?B?WXVra1lTZ0VUWHlNcGc2b1FYRmpwakVQcHJEYnRpTWtIZnpVRUFQUVlka2tN?=
 =?utf-8?B?TFVCRGo3bWRFYnc3YWpSZ2dObE5MWlltams5dzdXZTJvcE45NXYxOFhzWCt0?=
 =?utf-8?B?cWErSDYrNHltamtKODQvbDRRVVFkUUgyTG1wVHNrUmN5WHlOYm5OS1dGZGxZ?=
 =?utf-8?B?b200aEdLZHE1UVMyMlk2M3ZwK2txdXFWa1QyY0tocmdxZS9VYmg0ZXl5WXIv?=
 =?utf-8?B?RGsvbzUzZDdhblRVZUp1UmVqeGtDRG5TenFnM09YbnJEWUVhNTBZVnJpOUJH?=
 =?utf-8?B?b3pzNjRrRnl2RUNXL0dsazNkN3NGMXFQQ3VSZ01nNHN2OTJic0N3SFdwSlNr?=
 =?utf-8?B?Z1FXUC95cHFyTmtoMjNuYTZwdU5CZi9DOUR2bXZJTWxtbnlSMnMvNXJRZ0c1?=
 =?utf-8?B?Q2RteTdiSmdCTTY4V3FZODJHSmkyZ0hxMlZMVmRFZTMveWJKVmhod0tPaW1S?=
 =?utf-8?B?cUlxNHJYMGhZbnh1MFhoQzN0cnFkaklmRVk5cEtseTBiVG4rWjA1dzh3UDE5?=
 =?utf-8?B?UTdNNjR5bXRVaXFDVmtEZC9kejVJVXdtdytCTkc5NVNpR2pSSWt6bnU4cTBl?=
 =?utf-8?B?SStqWUg1NXovZTJPd1hjb3d3TE0zQlNIVFNCREFQbElMYVc2eXJUbGxUc0th?=
 =?utf-8?B?Tm1LWlVobzc0RU1KQjJ4VXRxeHhsczN0cTdUc251RUt0MEZyY1dqN2MyWmpw?=
 =?utf-8?B?aFpjL1BhbnJ1WWVOWkRlUzNORkczK1UxYmd5WTdDa3NkTzRFSVkyQmxURzl3?=
 =?utf-8?B?a2NtZ0pncHRxdkRvaEQ1V1JjdXpydjhHSXhDUlZrVG5QWDdhbWZvai80S1pv?=
 =?utf-8?B?VG8valI5SmJxRTFUS2VxVzBqMTdNRUlxNE95NnkrSjZuSWE4YlZQdEVMTUFP?=
 =?utf-8?B?SGUzOGE0S2NmVFhNY0h3cWJ1UG8wNFplUnljRWJqWFh0Tmp1azdIaVlZWHZj?=
 =?utf-8?B?MksyTEYzRXJFdVRQTVRidGhQSHVCRlNmRXlEYldEM2FhZFpwVEFyeFFxMFcx?=
 =?utf-8?B?OGFQeUFiR0EreExMSTk3emo0cTZHMnA4ZVNzSS9icjFrdVI3d3FPYUxaTTNm?=
 =?utf-8?B?eUpVZjJOZ1paWnVTYmJWMTlwdVNrS3hEN3RUNFhpUzloaDBMS1BJRnVGUTNH?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 50723b8a-fc42-4e5d-b2f8-08dddf011de0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2025 09:16:45.0134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ah83BkEVzbZ9x+YSNnzukpsdYG9lhhfv6Zq+10SLrQRwBenuTD1dYGw9wWSM28u0naX/drEG5yhnzjsrct+hQUqrFqveKrvAyQyitfzsnyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB9518
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


On 8/19/2025 1:36 PM, Suraj Kandpal wrote:
> Add edp_data_rate_override field VBT which gives us a mask
> of rates which needs to be skipped in favour of
> subsequent higher rate.
>
> --v2
> -Rename vbt field [Jani]
> -Fix comment to 263+ [Jani]
> -Use BIT_U32 [Jani]
> -Fix the bits assignment in vbt [Jani]
>
> Bspec: 20124
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_bios.c     |  4 +++-
>   drivers/gpu/drm/i915/display/intel_vbt_defs.h | 17 +++++++++++++++++
>   2 files changed, 20 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 9c268bed091d..8337ebe0f2c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2747,8 +2747,10 @@ static int child_device_expected_size(u16 version)
>   {
>   	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>   
> -	if (version > 256)
> +	if (version > 263)
>   		return -ENOENT;
> +	else if (version >= 263)
> +		return 44;
>   	else if (version >= 256)
>   		return 40;
>   	else if (version >= 216)
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 92c04811aa28..d4d89d5573db 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -437,6 +437,21 @@ enum vbt_gmbus_ddi {
>   #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
>   #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
>   
> +/* EDP link rate 263+ */
> +#define BDB_263_VBT_EDP_LINK_RATE_1_62		BIT_U32(0)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_16		BIT_U32(1)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_43		BIT_U32(2)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_7		BIT_U32(3)
> +#define BDB_263_VBT_EDP_LINK_RATE_3_24		BIT_U32(4)
> +#define BDB_263_VBT_EDP_LINK_RATE_4_32		BIT_U32(5)
> +#define BDB_263_VBT_EDP_LINK_RATE_5_4		BIT_U32(6)
> +#define BDB_263_VBT_EDP_LINK_RATE_6_75		BIT_U32(7)
> +#define BDB_263_VBT_EDP_LINK_RATE_8_1		BIT_U32(8)
> +#define BDB_263_VBT_EDP_LINK_RATE_10		BIT_U32(9)
> +#define BDB_263_VBT_EDP_LINK_RATE_13_5		BIT_U32(10)
> +#define BDB_263_VBT_EDP_LINK_RATE_20		BIT_U32(11)
> +#define BDB_263_VBT_EDP_NUM_RATES		12
> +
>   /*
>    * The child device config, aka the display device data structure, provides a
>    * description of a port and its configuration on the platform.
> @@ -547,6 +562,8 @@ struct child_device_config {
>   	u8 dp_max_link_rate:3;					/* 216+ */
>   	u8 dp_max_link_rate_reserved:5;				/* 216+ */
>   	u8 efp_index;						/* 256+ */
> +	u32 edp_data_rate_override:12;				/* 263+ */
> +	u32 edp_data_rate_override_reserved:20;			/* 263+ */
>   } __packed;
>   
>   struct bdb_general_definitions {
