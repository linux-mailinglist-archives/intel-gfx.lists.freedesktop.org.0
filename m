Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qH9gBAWDnmmGVwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 06:05:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0E1D191BB6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 06:05:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7716110E692;
	Wed, 25 Feb 2026 05:05:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mwtj5yZ8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 401D410E1B1;
 Wed, 25 Feb 2026 05:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771995903; x=1803531903;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DZJLhqXuELQqFXLNUwfGQMSb2nmmnMKGGR06w/Sca58=;
 b=mwtj5yZ8rjGYw6DYFpU6hcfmccvNw3qO7vGpo3LqFlTpgmlOiYMNj8Rp
 6GZ3TsFDMyXe2ym0+IwCUIJu1AADKU0AezCz74crxHAlAu2z3RNDFbaPV
 UfLYyYyBlHOlpK3E9e4k2O8bhSLD1dCd7HWXuXRW2AvBJ2YBL8YThUzZY
 hhERvxTKABPSMo4/6w1qsDsN1IdFz+p3z3O5XEcpNB/WUyFkvjruf6NuQ
 dto7HcXgSLAEzWcC5dPuAY7aoQjyY9wJmQ+h95h/xDssZOBZG+PRZ8PHy
 L7c9+QxVazcuPvuKk0oOnlewUADcObEldEerlDb1UMCeH/ED5DYQNQDtJ A==;
X-CSE-ConnectionGUID: uySguH/jShOK3TTD0mswLg==
X-CSE-MsgGUID: 4P32UzEaRIqhF0c2TqJvYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="76632835"
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="76632835"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 21:05:02 -0800
X-CSE-ConnectionGUID: kam0Om1FQHKR7OqgXKU6pg==
X-CSE-MsgGUID: 1dNfmcgxTuGpQL1+gZ7Etw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,309,1763452800"; d="scan'208";a="219551855"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 21:05:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 21:05:01 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 21:05:01 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.13) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 21:05:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=md87USQCRrLWyWZazg/HcamQnkEEeYzddgf1mXZEI3w8ttrLiH/RNmNZe2G1J+sN8U99jL6mGhHyjW051QZHWgeexI/scDro8Z9lm3QhL6P7mG1BfVHzmRGSJ90Fo2o+s/078zcWU8S82uDMX6UuN2vG109Bq8R0hpBEoXHJPqm5VWtPlutADnFgJ1+e64rVSluxTnc4lkQTqqlfMWMX9lv3VTRoXUF6u9eYI8R865UBAIBvdGs7V8QXzFF4BPJdaQm2nhMbOAmatdaJjedONd+EymfkRTyNZdj/tSZzze5W4hbhm5F/KziibsT+7fTdjts7SAuEj8sxtN/6n63Fcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xF1Dv5mRFEIEj+GwWlzP8YckzwI5N/Rck2kReNFIG0E=;
 b=nW0K81Xec5M9ViHxYHKz4wWJA3EuHgwZIY5YHUY23CyO/IsKOCRSfl1YxFLqU2lNqUKamuOYbgHdDeyrbnrecua4RSP9i8Fom/hWxE6NnolTO9xG4TAgpM/QRvfG0TCMIx+ng3AhkopN0IM9b/7y3CeNpx5pxe0yA/Wdxagz/doV+NO+qxiYDr8NUvKOcUe4z6ChXc0I/NofMig7ideh/QxOB8pTA3rFVOpk4riD6ZLRBt92VJQMTd+D6IIEuw62s5g3NO7m/dfcU2erRDybCjYbL6YBdAw5vLD/ZoUOyXFKBo0Elc1pLqoAVJtmjbgmQeCLb7nK1OhJjhS58jlxeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8741.namprd11.prod.outlook.com (2603:10b6:408:21d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.23; Wed, 25 Feb
 2026 05:04:58 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 05:04:58 +0000
Message-ID: <84d0cfde-de12-4086-8d65-477f0fffe177@intel.com>
Date: Wed, 25 Feb 2026 10:34:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] drm/i915/dsc: Convert intel_dsc_get_vdsc_per_pipe as
 non-static
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260219130743.1232188-1-jouni.hogander@intel.com>
 <20260219130743.1232188-4-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260219130743.1232188-4-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0079.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1ad::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8741:EE_
X-MS-Office365-Filtering-Correlation-Id: 9db0f7c7-3d3c-4e7c-62a8-08de742b6be9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VXBJZGREWDVOOHI4Y2Y3OHRRK09jVkdaRW1XNFZrRjNBWkZqMUJLNVYrYktH?=
 =?utf-8?B?TVl4VUhHNE9ROVNjRTJWNzA1NWc3dGlFNE5vb3BFRVdSaUsycW1wd3VCMjds?=
 =?utf-8?B?cmhIUnhhUGRSQWxlOVMxcmpnT09IM1ovTHZBZHN2ZkVtR3RzTVp2TGVoOG5q?=
 =?utf-8?B?cDZMYnljQ2ZBaFRTeWdkSmFhakdWbm1HVVNYUCt1bVp1MGUyYklPaENRL0lu?=
 =?utf-8?B?bzNBRnQyeWFROVVlSUFUQTdSUDVrc3dkM0dRV2o0R09JMzlrSXVZSUxEYm9y?=
 =?utf-8?B?WlJ5SmJQY3hFSW93bGUySzF1RlR2WHJ5K2FLMmZoTDBjZTAzWE9xdHhSK2tC?=
 =?utf-8?B?UUw1VU41VUZHYnVqcWNuUUFrTDhLQkVkd2xYdzNCenNyWFZUSUpkRndiNUI4?=
 =?utf-8?B?K2R4UGNucGNTa1R3WTVSN0lVSXBSb2pXU29BSHBWTE9jQm01UUdNalYzUDZk?=
 =?utf-8?B?MFlQY3lVMjJBQWdkSDQ0aWRnTTZ3azZ1eEZBYzAxWmQ5WlFhaW5VWUo5Q0VE?=
 =?utf-8?B?d0t2SXhqbjdMbzdELzQ3S3pZSHRneFphRWE3RWVnQ2N3MU5USEgwS2t0aTFP?=
 =?utf-8?B?ZGJjUFNOazcrVFdvZW9Mc0dmZjJDcVZuM3hKUDluMEtELzFsMGN5MEg2SmJk?=
 =?utf-8?B?bXZJOEsrQTFJL2xFTVZIaUpVc1RScGxYcmMvL2E1WTFUMjgxS0dxUmxFZFZo?=
 =?utf-8?B?TGMzQmpZWkFyZHQyeHRHYk5FWkRIMmpLbUFEbE1QKy9JNktvc2NpMU9OMG55?=
 =?utf-8?B?ajhyTWlFUU5DMExRWnNjdXB3dmNMY2IzUEZwWG94eWhBRDhDWVVxMWpMZUtX?=
 =?utf-8?B?V2JCY3JDZXZXVVZHSjRiaXVKVUxBRDFPYzJNeWNYdEx2eW9maGt0M1BXUmtH?=
 =?utf-8?B?aW0wTUlRRVdZc0JqZUhRTWhNMWt6VWtvVWpKdlBMWGZsckJIODZsRDdMVHRj?=
 =?utf-8?B?QWhHNjBoMCs1SC9SSjFkbWs2Y2VwdW1ac2ZRdHFCVHo3dXplKytwcmIxSi9q?=
 =?utf-8?B?MEI1MWFHK2dKUi9pVlo3dGpqTVY3clRQYUltNTROS3ZPYXpjaGhsWFB2UVEv?=
 =?utf-8?B?YmM4c01pbTRXc0VyaU9JTnBhUlYrK09NSXNaQk5tQzgxRHVrZit4dVBPcjFY?=
 =?utf-8?B?dGtaWjZlUG9RTGN0Y296U1hwa0lFSThRQkhxWGRtZmt2dDMwcU5RK0JXOU1z?=
 =?utf-8?B?akl6T016SGlPNitUemsyTGZIMmZuM1VVbGFQVWQrR2lSVjNleG9EUDR2eUFz?=
 =?utf-8?B?NXZSSm9CbGFESzRYMXpYZkM5eHN5NDZlNkJJZnZLaWFiM2ZUMHphM2JxSTdk?=
 =?utf-8?B?UVBZWDErc1h0bXk3VWNGcmo2U3lib241MmFjVDE2a01USlRmV0swNzNrRWdI?=
 =?utf-8?B?TmxaNVhFUktFbFZ6eWZGKzdYaVpwcnA2M08wUWNOQ051b1lYdmpMUlJRM3dC?=
 =?utf-8?B?Q0NkTzZGbXVxempKaFdvc3BGUmk4cXJyLzBycUh4TGVjZis4NVQyYlFPTVNV?=
 =?utf-8?B?cW8yMnpxSURLUUQ0cWl1eE42R1hEN21IT0JjUldVKzVoL3RsL0pFb1RvcWZF?=
 =?utf-8?B?cG02bE9sb29IZ3hNNXdzRDJzOEpvSmhqWDZmYzRWSWhYeW1JTitxMHZPSmRn?=
 =?utf-8?B?N2FMMTBaWU9Hd3B2NjhOOVRmMDZ1cU5JL3RnNWxKTlBNT1ZMUFVrWFN6T3Ar?=
 =?utf-8?B?S21GemplL1BMVG5rNHZPejZyV2daeFRYa290Yi9KMDI3UXZMK0ZMZ1EvMmxo?=
 =?utf-8?B?ZFdZczB6cWNuNGlEcm5qTzFwd2t0eEhQdFJLQmgyZ05PK2NacTRqZGxrRHA5?=
 =?utf-8?B?aElHdHlWQjlUak9lZnkvUWoxb0FZYmttQkRoaFF3SEpXNmNJNC94d1lBekVM?=
 =?utf-8?B?TTYrdFNtUTRxZGhLZ1ExRFZoN3Y2ODQ0cTRhdS9tTFJ6Y24xYWFpWnA3YVBG?=
 =?utf-8?B?aGhiT1VrTHRFSllSZGxtZmwvd05HMmJlbTVtd1hOSkZLMG1rNWtzK05QeFpT?=
 =?utf-8?B?UmpHdXg0dnNzbWFiT0N1ZE9KdHBZcm9KQktqemxvMSsvdnVwcEY3QXllQ1hK?=
 =?utf-8?B?TlNocUVpb1hUNENad2h4ZGxJQXNzUVdmTHRCZTI1dGRLRGNsd0pMNGp6R0Uv?=
 =?utf-8?Q?3br4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UnVkTWJuSUU0VmlzZmVhNWs2ODF0byt2Z3UyRlNHSjk4WDRVajhVRUZoTE5C?=
 =?utf-8?B?WUlKQXRZaUh2RkNYY2JONGxJVUxPYXhhYnBBS2IrMVJFdzYvNUFsMmdEazhi?=
 =?utf-8?B?ZFZoV2tFVlVDMnZyTVMxWVNGbEhMaTUwQVNTM1ZWMTFXWjdkQVBuMzhOc0o2?=
 =?utf-8?B?TzQ1MndmWXZIQ1VPUkZacWZuNS9RS0k5bm1QNVVZUTF5c0k4VVZFaTFPY0ZK?=
 =?utf-8?B?dGU0NFJTNmhTK3liaDlnVnNxNUxXaWl5RlFkdVMwckc4LzBZWnBIeUovaVZo?=
 =?utf-8?B?N0R1RVh4SW9Kci95QkUrdWM2NWNjcGx1YmRaYldMUFBJeHl2ZDJYbGtMZ3Rp?=
 =?utf-8?B?MkxMZlVObS84WEkrMlBEb1dGM3ZtYXM4Y3dmSE4wZXhqSklGbzFQbnFkTDJZ?=
 =?utf-8?B?eHg3WVFkaloyU0pkZ0ZhZkdNYnM4a1RMWW1CcG1DQlpTR3QyekhhQmtlOURQ?=
 =?utf-8?B?Ti9MRFhaT3ZIN2ROU0dPZVllQjJyeEw2ZWNadFRsTU10eUtobkdxZ0I5Mlh2?=
 =?utf-8?B?cXNjcVErSzVoVUxKMGNGeWVEa3NSUEFiaXpuTXcyT1VyRUttR251aHFsb2RG?=
 =?utf-8?B?VktGWjFSVDlHTTI1ZWR5MWFHQm5WMCswNTVHSVFOMlBDdjkxaWZEVFAwTVdy?=
 =?utf-8?B?UmJZZE9waHJRUkFwbHFMeE5MOXZOOEtvdVJpK2VhZFhuMFNydWtjL0diNW90?=
 =?utf-8?B?b0kvaHMvOVhpNGZDdmtXTXdqU2k5QkJkbnByWE1wa0dpOWVrMzhHV3VlVmxK?=
 =?utf-8?B?WjE5U3FLSGFxODl0dzdySHZiNWJqeE02S1ZsWUR5MDJoS1c1dU82RUhvSWxH?=
 =?utf-8?B?eEtGUUpjaEg4dXhOU1JUcGY0bTZRdHEra1NQLzhwR1pnbFBZb3cxa1k3LzUw?=
 =?utf-8?B?b0FvWERQbkh2Q1M2ZGRIcUtSaklDemd4ME1MK29wdTJZZ0F6OTJEZ0xHVkp1?=
 =?utf-8?B?anhPR3dIRUpsU1YyV2NINFBmTGJwMDlBNTZnZmltSlQ5ZmY5Wnd4QkNEb01a?=
 =?utf-8?B?MU5LQWY3Z0JOeE5NSGtsOVFJTEYwdVpCc2tTUnR3ZTBhbHRYbzBuMXRLZ0Ny?=
 =?utf-8?B?cXNIdEIybXlrZXFZSXNjbitMd0pWTG03NFh3OUk1ZHJSTmFhWlZCaTVtcTBk?=
 =?utf-8?B?QTlJMG9SNzZUdUx1SnY0WWZlYS80b2RGTDIrMjVlZmFIbWVsUDBtU2w4N3RE?=
 =?utf-8?B?M25UbDRWZzVidHhmU1hQRUozaHQvYThVdStyTlRLWEEwOEJ6UitrZ2JuMU1r?=
 =?utf-8?B?NzhUWFhPYnpuR2RGN1BvSGFnMnNOdnFrZmRQVElkZUptYzlHWm9BYm5JZHF6?=
 =?utf-8?B?UmFMTy8vbzF5c0diMEJ0TEQvTWxHSTUvZ2RhdzZzWWgzOWlNcC83c2t3UVZ0?=
 =?utf-8?B?NHNTb1NXU2ZXeDl0d2c2T2NZM1A5NU5aOWZqWnNpbVNRaW1vUzREVnZwNkRC?=
 =?utf-8?B?YThvMldKdmc3WTFwY1hGcHJsYWVSY2dEV3Qzd29pblZmRU13OXNnbDdRTFdv?=
 =?utf-8?B?aFJ3Z1dTeG10TE95R0hEYjZBOUl6Wk1mN21yN2lFM1N5V3hFYUJqSEVIcFVG?=
 =?utf-8?B?RWFqZ0JWTFNmaC84OGd4UVVNanFQd3BIR3NHVjdhc2JHSk04QWtES2E4OTNu?=
 =?utf-8?B?cHcvYjRHMWdFT1VwZElmTHpYKzU1VkE3U0ZGVzFMSWcxSjdqZVBXZktNODFT?=
 =?utf-8?B?Mm5YWFlWL3VwQWlVdk9PNEF6UVdVTTFVUHZkajdlYmY2VFRidjl1dzkyWXpK?=
 =?utf-8?B?RXF2akozQU5PWHZCOUk2Nlh0M2RTWXcxN0RPcGxtczJUVVArWVJWMlExRmlP?=
 =?utf-8?B?cnZwVFBxTjkzazdTei9NY3BkZWd5Y3VxQXVKL28rbzR1UU1teUw4cFEveU5K?=
 =?utf-8?B?TVZhKys0dnBlNytKZE8rVG5LK3pEWGlhbWIzb21TVjVqM2ZYSmxjVVk0UTJx?=
 =?utf-8?B?aXRPendZR202bS9VQ1JLTmNVUFBJeGZNMW9NUDRhdkVacHVTeVM3TVZ4TjBo?=
 =?utf-8?B?cDBxZ1N0YjgyV2dnL2RjL200Uk5tQ3JycEMyQzA2QmhocjN3emluR2dXVzdX?=
 =?utf-8?B?d0lxNnVyOE41K3d5SEN1czc0eUxqV0dZSTBUOTV1aVozK0xQUzVjbUpNSDVI?=
 =?utf-8?B?Z01VMzh5ZXVtVUVNSVZWdkJQbnMxTi9EdzdIcmNHTzJpT3ppRnJaU2I1SDY1?=
 =?utf-8?B?dE9KVm5rdG1PTm9MZTUzZitXZHExWGo0NVpCYXBHNXdVR3BoUmtCdFh5NS9Q?=
 =?utf-8?B?QmJLU2lGVVczUUlCUUxwSkhGbUoyZEJEOU1oZGtGRXQ5cE9WVEdKWWVJekZQ?=
 =?utf-8?B?bVJhSXh5bnFEMW9iZStMNDRvdGJ1Um9iUDVFTGNCWmtaQS9GaGJVeXZ5WEZH?=
 =?utf-8?Q?b64i+T3TTTEIHfm8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9db0f7c7-3d3c-4e7c-62a8-08de742b6be9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 05:04:57.9495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rpfXNv9b6P6Ouoq9QvG3AROzjyu+4XL+Vlw4JWaxdcBxjh5pzooyCTS/o6/Xpl6mMQLHtCEBvCTNSsDRshuQAjYl2rfC+EQijdZc+9BMepc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8741
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E0E1D191BB6
X-Rspamd-Action: no action


On 2/19/2026 6:37 PM, Jouni Högander wrote:
> We need to do some configurations on DSC when using PSR2/PR Selective
> Update Early Transport. Convert intel_dsc_get_vdsc_per_pipe as non-static
> to make it available for PSR code.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 2 +-
>   drivers/gpu/drm/i915/display/intel_vdsc.h | 1 +
>   2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 7e53201b3cb1..f27ec0251613 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -467,7 +467,7 @@ intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_transcoder)
>   		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
>   }
>   
> -static int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
> +int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state)
>   {
>   	return crtc_state->dsc.slice_config.streams_per_pipe;
>   }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
> index f4d5b37293cf..b70ac86ca9ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -44,5 +44,6 @@ unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state)
>   int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
>   					      int pixel_rate, int htotal,
>   					      int dsc_horizontal_slices);
> +int intel_dsc_get_vdsc_per_pipe(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_VDSC_H__ */
