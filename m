Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 236DE91AD06
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2024 18:42:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 585B910E13F;
	Thu, 27 Jun 2024 16:42:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d9PDYQQL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0F710E13F;
 Thu, 27 Jun 2024 16:42:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719506522; x=1751042522;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=svWBzZRkS1TrxkMFLpSgQfNlhahUifAyBXaAiFOYYC4=;
 b=d9PDYQQLfCtgihgfwTNs064HVVkpq2RJPIsKE5RYlbhsgH8DANeZXhDa
 0L/NfKaVD1KiDiQfNxxjZl1umfJbNzAMunVeSuqaQfFCILIkv37CoCOQV
 BI0Mh5eGYLiG6YZ03BAzxrTPkfwAaPH9EeLkJPsi67yfcyM58AtR4BYdm
 wGcE0ffElrbIt880lPdMfKHJcCAfcbooXTh9LunZViix7EAch/8lOHNzO
 KJMCTbTfrfX7BWnMBqvpuwpFmmPxoOowd/VsFjxz7uxojDnDaG+jG3zEg
 5sB4O+LiISyzo7EmmINSyK5ggky0HME7Ee7y0ay7puVFvqSWEKpIuIW65 g==;
X-CSE-ConnectionGUID: 8bzBSoBpQjyOWkIyu5kGHw==
X-CSE-MsgGUID: VZtS3skdRxCUHTUr1XfmkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11116"; a="16389888"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16389888"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 09:42:02 -0700
X-CSE-ConnectionGUID: kLaZeNSZSBqCARzYCkJbfQ==
X-CSE-MsgGUID: sWJYA34rSPC4kNuAJ1p3SQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="75632841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jun 2024 09:42:02 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 27 Jun 2024 09:42:01 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 27 Jun 2024 09:42:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 27 Jun 2024 09:42:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=giYrDL38k5r8or61sAgSxiX3+MVK6CHLDGsHgM7kBHqKrbMhMVfeg3dlZxGCwtoN68kFkDxE0r3qlee2zwCluM6xw59A01WeNA2uYOM2/W38iuQRhgrXru45+gxm15NZaNvuHpsKIXIU1tf6p1oK5hmOoGN1rKDg7ZvoHyok+80e6K3EgtKl4F6LXKIfsya7TW3TYctDJEOvgZtPUMpO0OTrGICQten4vwG6brRLd6EgMgVZjo0ae18oGkmPUOuX3Kpg2afb/Ip9OA6BUB7IAtz7UYCNjC0UEmKMCd49XlWuXoCcnU/UZ1CFNhIB/1SsZf5fGEZvGDtsgk2I91OFkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VMth+dWMFZCLXC4dcqZzInIKZB5X3RsoykpiTa64gdM=;
 b=CTFs8ygz22R+gVzsx19Nm/6pnidpkDIy5T/af4k0EmGOSGIHWf9fCzEADcgCekQYDPwCsVOryphYbZttpv8KaLx8pHm+0ZcWvOOZcB6zDhT4Mq7+9mcoT9W1zFLmML7u9J5eoBRqQYV5nfNILJRARQUnxweExsbmoA2vyg/1WjJY/+0sDBIK+DxEUOHNtlL5oEyg+WbQlQSRqIJuQYVi/Yo4miJp0EG92TywXCDVh9Jmrzr42IUM3JagZRGpPwnahNOASnGnCkgq+OyOb7d5AFr1YgypnSsVkYRst9OUuODst3Ps0ebQfLNTrDLTMMmVqc/pPPQqXZzpdPxZtGSl5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB6263.namprd11.prod.outlook.com (2603:10b6:8:a6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7698.32; Thu, 27 Jun
 2024 16:41:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7698.033; Thu, 27 Jun 2024
 16:41:56 +0000
Message-ID: <144a250f-a182-43f2-a259-50ed94b2da3a@intel.com>
Date: Thu, 27 Jun 2024 22:11:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/display: Add support for SNPS PHY HDMI PLL
 algorithm for DG2
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <mika.kahola@intel.com>,
 <matthew.d.roper@intel.com>
References: <20240626050056.3996349-1-ankit.k.nautiyal@intel.com>
 <20240626050056.3996349-2-ankit.k.nautiyal@intel.com>
 <87y16sc967.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <87y16sc967.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::24) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: 3adeb1fc-471a-4803-e572-08dc96c80e58
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZmVoY0lCSENYd0QxMmhCNGRxUWg5aVZVd2NncW5hTUNPZUZONC9wbm5rK1kw?=
 =?utf-8?B?OHVacFFPWXBsanVMaGRVbGx5RE83VnJuTURjRUk5WWRObklGUTRjRFBvM3M5?=
 =?utf-8?B?Vm9MeG1IMnFZYjdEN0h6NE1JRUkrSTFBWlplUVpEb3FGM2ZIRzRPcUM0c05r?=
 =?utf-8?B?OGRoSjhvdWFYeFdmVG92cWoyM29jNFNJK1RMNE5GaUtqZ21kWEN2bEdWZHpm?=
 =?utf-8?B?dzY4SE90MzR4TTQrdm95Q0lEK1VWcWlWSTc4a3lSSHlUZDZpOGFMdEQ1Y1h4?=
 =?utf-8?B?YS9ZVTh4UjhTVjc5WGxIUU8vb0V1UnFxTUt3VXNRVGV6RVg5enJSY3laVEZq?=
 =?utf-8?B?eHRkT3gyU01QNDc1Y252dTFPeXRmSFovSVMzVmVHL3ZXYURwcXc4VkRwUVRP?=
 =?utf-8?B?QzRpRnBtbXlyMUFkdmVuRGpVbWdqSmM3akFoTE9ROGs5N0kvbS9YWEV3SFQx?=
 =?utf-8?B?YTlxWjZWbEFqU2p3SlpibUJlMlpSdE5OdC9GYTFTYXRPUWVIMSs2TXN2dGV5?=
 =?utf-8?B?ZUZMZUo1bmFDejc3VjYzVFJabTF5MGlua0hyU2d0dzdueWlVcXZPYmExUUVV?=
 =?utf-8?B?eWtKaVNBTVkxY1RkdklHQTVCRHM1c2ZWaG41Wjd1cnVmTXVLZ2g2Ni8zNSs0?=
 =?utf-8?B?ekc2dXVLVmhDb3FFTktyemd0T0hrZXlXbkxTZ1phUUVCdm9PT3VHQzdaUGlm?=
 =?utf-8?B?ZUpydHNQL05tb1g1T0w2b0NDRTY1TnRkamZ4eG5LZ3VySU1zYmw5RFZ2ZjZx?=
 =?utf-8?B?ekVQMXpLR3NoaUQzYW9qaEJ1RHRHTmFPc0xqOW9UMzJBUTJqN0RwelJKZGhI?=
 =?utf-8?B?SkFlcm92QXR3Z1VpQUtKK2JRVzFUMk51ZU5yNjZpNERhRGswWFZpK3JLZTZl?=
 =?utf-8?B?bEEyR2x5a0syYldsTWFYbTgrQlZKNnJSNTc2WmpDM1NyU0FqRDUvbFVSd0sy?=
 =?utf-8?B?STBHRFVGLzg4RnlyRGVJcFZ3Vms0b3Z2eTl4RFVsYjBxbUkzTCt3ZVc4VVdj?=
 =?utf-8?B?Z1pZOUE0MHlPQThReXNQYkV2VmtDQXpsemN1Z21HaDBocUtKVCtma2Urekg3?=
 =?utf-8?B?R1hmcC9PeWl6Z1psblFiblQ2ejVTWlJESUlCTXkxaXdhbHBENkpFZGRENmhK?=
 =?utf-8?B?MmY4WHVrMW1qQWs5R003K0tUUHlTUWIvNm9TQzNsb3czalVtcEd5VjRBbmRa?=
 =?utf-8?B?dyttbzd4SEtRdnFIZkZSdmpKWEZFa0ZSbWhrS2o2MExRaTMvSENrQkxsR2Ri?=
 =?utf-8?B?L0dkdDE4V0JETXRNb1JCSExYRk5XMVNwdnpRL0tkMDNCZUxhdHJ3U2lGemE5?=
 =?utf-8?B?UFdOTnZNQXN4U1U3VmhCemhRZkt3a0lLemwxRGNnOXg2ajdxQ0pZaWFSaVpH?=
 =?utf-8?B?QS9GQzMrUnJwR1JUbXJxM1hkc1dWYTRPOTAzeU1PNVNEYVgxb3VqeitnT2NY?=
 =?utf-8?B?YWlPODk2NHlMRFdLODFrb3JhSEpISWNJSTRKSTlMQ2V6U2NLRVNweXN1NStW?=
 =?utf-8?B?Ry9CelBCdHc4aG0xZFlIM2dDbURKamxMZGhHVXBIRTBzZmZ2Vk1wNEg3RmJx?=
 =?utf-8?B?Z0Nid2czMHJ3cjFJbCsyOFN5aEFlaTNySWlSQUJQSTM2RDludWtqSFBQdGlo?=
 =?utf-8?B?bzJiem1IVW1nSGx3Vi8yQUhjYzZ4YXVSTDdaNFhPL0xVTnVFbk8zRndvYzJ4?=
 =?utf-8?B?NnA5Mk1tY0c2Ym5aZ1FReWRYYStDQXlpYmNFSEVjYnpVbDRVaS81UklWc2cr?=
 =?utf-8?B?RUlpTzY1RTNIZmN0UlBrRVBzd0Z4Ujc1WEI4RUxXdFZsMFM4Rkc3MzhnR2xy?=
 =?utf-8?B?ajA4eU5zcVNHMmVOd2tSZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnJoaXVTNThqU1ZTcEMxRGFBRTBiN1ZEa0pCVno1NXA4Q2tuWk5RVjZ0KzlN?=
 =?utf-8?B?YkNIVFN6dWxwRnRnTCt1OWkvZU1BZko0R0dZeGhKOHRmTG92S01CK294MWpt?=
 =?utf-8?B?a215K1hXeTdvOE9EVmlSRkNJWGRLSGNrTFpVVlJYNHIwazJMV1V1VTJTUjJy?=
 =?utf-8?B?WnkwanFhYzV3YWp2bGwzRmZBUnlMRHJmaWsyKzdzeXJ1T2twYTRzZVFyNjJ1?=
 =?utf-8?B?WmpEajJOcWhXMU5kajlFbVBNaXh1N2dGQ0tIZklNa1J0ekkwajViR2dsSkVY?=
 =?utf-8?B?MFIybVM1bWk4dDhCNG5MUkpJYUF0RXJUNVJqc2VHUWozRVVkdjZNeEpUMjJ2?=
 =?utf-8?B?OFlQdytIMFBFUzM3NjdWcjNyZEM2Mm1KSDMvRE8xS0RvL2FzSE1KNTMxQ0FR?=
 =?utf-8?B?ZHdySXF4Q282bEFBeUw1WWM0WVhrSjZpdjJjd2tPanpKY1hlV21GT2FNSmpG?=
 =?utf-8?B?aXdjR3l4U3RkcytpaVYxSGs1dFk4UDRHY3U5aGhuMEVES2Q2U2E2aXl6alYr?=
 =?utf-8?B?TUY2bW43d3lsdmJTb0N0TytpZ0dQamxuS2tkUWRXK1RUbFhDbjJPZE1ZcExC?=
 =?utf-8?B?cXA1VVB1bXRyUytDemcrdmNpZXdIamhmQTA5T3NUV3RCNVBiZ2x5YVZnM2V5?=
 =?utf-8?B?WkhNTG4vc3RjNjZrbGdod3Y1UUlqaWZhNll5V2doaERZVW5kRXRYblZHT0gy?=
 =?utf-8?B?M1oxMnVEZVpFSEtVdW10RUx3MG1vVlBiaWdYclZycElzMTdQNGJRb2cydDBo?=
 =?utf-8?B?TWZYR0Y5UThoR0E0RWQ3YmhyZCtvTkJlN2Y4TUQyZlNjeCtJQ2luRS9zbk53?=
 =?utf-8?B?S0E1bWRpc1cwZ0paTUxqNVFvTGZhSTUwaFU2QXE0OGxXS3NYM0xGNHNwVGNI?=
 =?utf-8?B?ck9TQjlVSE5CZ21HNGVUY2NObXVvVjU1bWNXNjJERGJzT1AvbzhVRGZLNUdK?=
 =?utf-8?B?MVd1SjF3S0JUUG5xL0t0WVh5Z0JmdnV0R1Qwak5ydllSZnNPYVhnNTRTRHRy?=
 =?utf-8?B?TklvY3JoK0Vqd05BM2NTWjZWOEZCK1ZtSUtxVE9TcnU2UGlXZnpvVkhsVDJK?=
 =?utf-8?B?SndIMmVoZlhBbmVEM0JlVVg2WHRBZk44MDc1UXZHYWFhU01wWXlqcTBKaGNm?=
 =?utf-8?B?c1N1MHgxd1dEQ2l3MUIrU1MyTUFOZjFjQ1R3VVdQNkVpb2Fid0ttT3NEaXQx?=
 =?utf-8?B?Tk1xYXRSY1N0VzR1STNPeFpoKzhYRXoyZ1NBVllHSzA4cWlWbUM5MVU3c0s3?=
 =?utf-8?B?bXE3WmpCNnhwb25wd3lUTkUxaWtvd3ltdzhxWHlBN2wrRE4veEJ3Y1J1WlJp?=
 =?utf-8?B?MFA4eFJNVmNoWElEcjcxQ05sdzU3cURmbjNzKzBibEdoWDVJYW56cTlDdWFG?=
 =?utf-8?B?QUh5SzV3RnVHbnA4Y1ArSjZTdkMzMEUrYUdTRFdPU01SZFk5NXM3eER2TlUz?=
 =?utf-8?B?R3Y0a1NIaXY3V2M3VEdMMjEvaC9IM0tYOXJqeWI0YW03MVBEWUJ1RFpEUlUr?=
 =?utf-8?B?a25aS292WU1oZXhQSlU4UzRPdDRJMVQrM1c4UjV6YmQ3U1FZaGl1NnQyWGxI?=
 =?utf-8?B?d2l5bkRCNWhrMzlMTEhKUzU0SlRUUzBqUWQ3SUVCdHlZaWpHcnUvZWVEOFVh?=
 =?utf-8?B?dUw5VDdBZDRTUmxtQk9qYXhvWDBVeXNXNDU3aXE1RldrSXRJcFFXS3g2SGNN?=
 =?utf-8?B?a0JrN0VkdFRxSktGZnFTb2Zpd1FEL2xDU0hQWWV4dC9sUEsvTlJnczJ4TkVP?=
 =?utf-8?B?Q0dBdHFGZDRiQWtjU2tJU1oyRDBPZ25XNkZSaEd5RlJMQ3Nld1Q4aHJBcm1W?=
 =?utf-8?B?RHIxNUU5ZjRkaVJnMFJoblBzTEhQVFRHWnZJeHlPY2Z3N0pQZEltSTlmR3Q0?=
 =?utf-8?B?WG01c1UyNlFWQ1hpZzdIN1hPejZlWEIyd2ZaNjB0emZqZSt2ektPdlExQks0?=
 =?utf-8?B?WXVKRWlqajkrMHNBWE16T05DTUVlWW13VXNQbXd3citVY1RsWHI4czhyN2hH?=
 =?utf-8?B?V3R3bXJNQVNsRTZkcDZSckFubVVsUUZUZUEvMlRqSE5QTXlFR2VxZmxXNDJK?=
 =?utf-8?B?YlIrekRmMVBPMG1IeW5oajRGZFgxRi83b2syNlVzajBXTnVsK2xQclBMMVlX?=
 =?utf-8?B?QzFSN2VPVTB0dFp4ZGY0bWZhSnhTZy9OeDBFSWdpMWg0U3VYaEFzWXljWHlm?=
 =?utf-8?B?WVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3adeb1fc-471a-4803-e572-08dc96c80e58
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2024 16:41:55.9546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z5KAIMBw9fourlW77E+FUeqjuYLMGuQAEyTWMo3Ot8Fdntz+Oxmn64ZZImdZopBtNBAzylPQ1ipvlzIYBkgBd3ILliHZCgA1zwp1RxnubOM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6263
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


On 6/26/2024 3:34 PM, Jani Nikula wrote:
> On Wed, 26 Jun 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Add helper _intel_phy_compute_hdmi_tmds_pll to calculate the necessary
>> parameters for configuring the HDMI PLL for SNPS MPLLB and C10 PHY.
>>
>> The pll parameters are computed for desired pixel clock, curve data
>> and other inputs used for interpolation and finally stored in the
>> pll_state. Bspec:54032
>>
>> Currently the helper is used to compute PLLs for DG2 SNPS PHY.
>> Support for computing Plls for C10 PHY is added in subsequent patches.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Okay, usually the high level review should come first, but there are so
> many annoying details here that they distract review. See inline.

Thanks Jani for the review and comments. This is indeed need more polishing.

I was more focused on getting the precision right to avoid floating 
point math, and overlooked some of the avoidable mistakes.

Also some of the names of variables were retained from the original 
algorithm to trace them back for review.

Will address the review comments and send new version. Please find my 
responses inline.

>
>> ---
>>   drivers/gpu/drm/i915/Makefile                 |   1 +
>>   .../drm/i915/display/intel_pll_algorithm.c    | 252 ++++++++++++++++++
>>   .../drm/i915/display/intel_pll_algorithm.h    |  39 +++
>>   3 files changed, 292 insertions(+)
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>>   create mode 100644 drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>> index 4022e4499382..f1a293110bc6 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -334,6 +334,7 @@ i915-y += \
>>   	display/intel_lspcon.o \
>>   	display/intel_lvds.o \
>>   	display/intel_panel.o \
>> +	display/intel_pll_algorithm.o \
> We probably need to figure out a new name for this. That's too generic
> for what it is.
Hmm. Whether intel_snps_hdmi_pll.c works? I am open for any name that is 
more relevant.
>
>>   	display/intel_pps.o \
>>   	display/intel_qp_tables.o \
>>   	display/intel_sdvo.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.c b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>> new file mode 100644
>> index 000000000000..d935715bd3ab
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.c
>> @@ -0,0 +1,252 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2024 Synopsys, Inc., Intel Corporation
>> + */
>> +
>> +#include <linux/math.h>
> Blank line here.
>
>> +#include "i915_reg.h"
>> +#include "intel_ddi.h"
>> +#include "intel_ddi_buf_trans.h"
>> +#include "intel_de.h"
>> +#include "intel_display_types.h"
>> +#include "intel_snps_phy.h"
>> +#include "intel_snps_phy_regs.h"
>> +#include "intel_pll_algorithm.h"
> Do you really need all of the includes here?

I'll recheck this.


>
>> +
>> +#define INTEL_SNPS_PHY_HDMI_4999MHZ 4999999900ull
>> +#define INTEL_SNPS_PHY_HDMI_16GHZ 16000000000ull
>> +#define INTEL_SNPS_PHY_HDMI_9999MHZ (2 * INTEL_SNPS_PHY_HDMI_4999MHZ)
>> +
>> +#define CURVE0_MULTIPLIER 1000000000
>> +#define CURVE1_MULTIPLIER 100
>> +#define CURVE2_MULTIPLIER 1000000000000
>> +
>> +static int64_t interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
> Please use kernel types instead of C99 types.

Will fix this to s64.


>
>> +{
>> +	s64 dydx;
>> +
>> +	dydx = DIV_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
>> +
>> +	return (y1 + DIV_ROUND_UP(dydx * (x - x1), 100000));
>> +}
>> +
>> +static void get_ana_cp_int_prop(u32 vco_clk,
>> +				u32 refclk_postscalar,
>> +				int mpll_ana_v2i,
>> +				int c, int a,
>> +				const u64 curve_freq_hz[2][8],
>> +				const u64 curve_0[2][8],
>> +				const u64 curve_1[2][8],
>> +				const u64 curve_2[2][8],
>> +				u32 *ana_cp_int,
>> +				u32 *ana_cp_prop)
>> +{
>> +	u64 vco_div_refclk_float;
>> +	u64 o_397ced90;
>> +	u64 o_20c634d6;
>> +	u64 o_20c634d4;
>> +	u64 o_72019306;
>> +	u64 o_6593e82b;
>> +	u64 o_5cefc329;
>> +	u64 o_49960328;
>> +	u64 o_544adb37;
>> +	u64 o_4ef74e66;
> That's pretty obfuscated. Result of some automated conversion? Can we
> have some more sensible names?

I just used the same name as it appear in the algorithm to make sure I 
am not missing anything.

I will rename these intermediate things to more sensible names.


>
>> +	u32 ana_cp_int_temp;
>> +	u64 temp1, temp2, temp3, temp4;
>> +
>> +	vco_div_refclk_float = vco_clk * (1000000000000 / refclk_postscalar);
>> +	o_397ced90 = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
>> +			    curve_0[c][a], curve_0[c][a + 1]);
>> +
>> +	o_20c634d6 = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
>> +			    curve_2[c][a], curve_2[c][a + 1]);
>> +
>> +	o_20c634d4 = interp(vco_clk, curve_freq_hz[c][a], curve_freq_hz[c][a + 1],
>> +			    curve_1[c][a], curve_1[c][a + 1]);
>> +
>> +	o_20c634d4 /= CURVE1_MULTIPLIER;
>> +
>> +	temp1 = o_20c634d6 * (4 - mpll_ana_v2i);
>> +
>> +	o_72019306 = temp1 / 16000;
>> +	o_6593e82b = temp1 / 160;
>> +
>> +	temp2 = ((112008301 * (vco_div_refclk_float / 100000)));
>> +	o_5cefc329 = CURVE2_MULTIPLIER * (temp2 / (o_397ced90 * (o_20c634d4 / CURVE0_MULTIPLIER)));
>> +
>> +	ana_cp_int_temp = min(DIV_ROUND_CLOSEST(o_5cefc329 / o_72019306, CURVE2_MULTIPLIER), 127);
>> +	ana_cp_int_temp = max(1, ana_cp_int_temp);
>> +
>> +	*ana_cp_int = ana_cp_int_temp;
>> +
>> +	o_49960328 = o_72019306 * ana_cp_int_temp;
>> +
>> +	temp3 = o_20c634d4 * (o_49960328 * o_397ced90 / CURVE0_MULTIPLIER);
>> +	o_544adb37 = int_sqrt(DIV_ROUND_UP(temp3, vco_div_refclk_float) * (1000000000000 / 55));
>> +
>> +	temp4 = DIV_ROUND_UP(vco_div_refclk_float, 1000000);
>> +	o_4ef74e66 = (1460281 * DIV_ROUND_UP(o_544adb37 * temp4, o_20c634d4));
>> +
>> +	*ana_cp_prop = max(1, min(DIV_ROUND_UP(o_4ef74e66, o_6593e82b), 127));
>> +}
>> +
>> +static int _intel_phy_compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
> What's with the underscore prefix? It's not a convention we have.

Will do away with the underscore.


>
>> +					    u32 ref_range,
>> +					    u32 ana_cp_int_gs,
>> +					    u32 ana_cp_prop_gs,
>> +					    const u64 curve_freq_hz[2][8],
>> +					    const u64 curve_0[2][8],
>> +					    const u64 curve_1[2][8],
>> +					    const u64 curve_2[2][8],
>> +					    u32 prescaler_divider,
>> +					    struct pll_output_params *pll_params)
>> +{
>> +	/*datarate 10khz */
> Please put space around /* and */.
>
>> +	u64 datarate = pixel_clock * 10000;
>> +	u32 ssc_up_spread = 1;
>> +	u32 mpll_div5_en = 1;
>> +	u32 hdmi_div = 1;
>> +	u32 ana_cp_int;
>> +	u32 ana_cp_prop;
>> +	u32 refclk_postscalar = refclk >> prescaler_divider;
>> +	u32 tx_clk_div;
>> +	u64 vco_clk;
>> +	u32 vco_div_refclk_integer;
>> +	u32 vco_div_refclk_fracn;
>> +	u32 fracn_quot;
>> +	u32 fracn_rem;
>> +	u32 fracn_den;
>> +	u32 fracn_en;
>> +	u32 pmix_en;
>> +	u32 multiplier;
>> +	int mpll_ana_v2i;
>> +	int ana_freq_vco;
>> +	int c, a, j;
>> +
>> +	if (pixel_clock < 25175 || pixel_clock > 600000)
>> +		return -EINVAL;
>> +
>> +	/* Select appropriate v2i point */
>> +	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
>> +		mpll_ana_v2i = 2;
>> +		tx_clk_div = ilog2(INTEL_SNPS_PHY_HDMI_9999MHZ / datarate);
>> +	} else {
>> +		mpll_ana_v2i = 3;
>> +		tx_clk_div = ilog2(INTEL_SNPS_PHY_HDMI_16GHZ / datarate);
>> +	}
>> +	vco_clk = (datarate << tx_clk_div) >> 1;
>> +
>> +	/* Highly accurate division, calculate fraction to 32 bits of precision */
>> +	vco_div_refclk_integer = vco_clk / refclk_postscalar;
>> +	vco_div_refclk_fracn = ((vco_clk % refclk_postscalar) << 32) / refclk_postscalar;
>> +	fracn_quot = vco_div_refclk_fracn >> 16;
>> +	fracn_rem = vco_div_refclk_fracn & 0xffff;
>> +	fracn_rem = fracn_rem - (fracn_rem >> 15);
>> +	fracn_den = 0xffff;
>> +	fracn_en = (fracn_quot != 0 || fracn_rem != 0) ? 1 : 0;
>> +	pmix_en = fracn_en;
>> +	multiplier = (vco_div_refclk_integer - 16) * 2;
>> +	/* Curve selection for ana_cp_* calculations. One curve hardcoded per v2i range */
>> +	c = mpll_ana_v2i - 2;
>> +
>> +	/* Find the right segment of the table */
>> +	for (j = 0; j < 8; j += 2) {
> i is the usual loop variable.

Agreed.


>
>> +		if (vco_clk <= curve_freq_hz[c][j + 1]) {
>> +			a = j;
>> +			ana_freq_vco = 3 - (a >> 1);
>> +			break;
>> +		}
>> +	}
>> +
>> +	get_ana_cp_int_prop(vco_clk, refclk_postscalar, mpll_ana_v2i, c, a,
>> +			    curve_freq_hz, curve_0, curve_1, curve_2,
>> +			    &ana_cp_int, &ana_cp_prop);
>> +
>> +	pll_params->ssc_up_spread = ssc_up_spread;
>> +	pll_params->mpll_div5_en = mpll_div5_en;
>> +	pll_params->hdmi_div = hdmi_div;
>> +	pll_params->ana_cp_int = ana_cp_int;
>> +	pll_params->refclk_postscalar = refclk_postscalar;
>> +	pll_params->tx_clk_div = tx_clk_div;
>> +	pll_params->fracn_quot = fracn_quot;
>> +	pll_params->fracn_rem = fracn_rem;
>> +	pll_params->fracn_den = fracn_den;
>> +	pll_params->fracn_en = fracn_en;
>> +	pll_params->pmix_en = pmix_en;
>> +	pll_params->multiplier = multiplier;
>> +	pll_params->ana_cp_prop = ana_cp_prop;
>> +	pll_params->mpll_ana_v2i = mpll_ana_v2i;
>> +	pll_params->ana_freq_vco = ana_freq_vco;
>> +
>> +	return 0;
>> +}
>> +
>> +int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_state *pll_state)
>> +{
>> +	struct pll_output_params pll_params;
>> +	u32 refclk = 100000000;
>> +	u32 prescaler_divider = 1;
>> +	u32 ref_range = 3;
>> +	u32 ana_cp_int_gs = 64;
>> +	u32 ana_cp_prop_gs = 124;
>> +	int ret;
>> +	/* x axis frequencies. One curve in each array per v2i point */
>> +	const u64 dg2_curve_freq_hz[2][8] = {
>> +		{2500000000, 3000000000, 3000000000, 3500000000, 3500000000, 4000000000, 4000000000, 5000000000},
>> +		{4000000000, 4600000000, 4601000000, 5400000000, 5401000000, 6600000000, 6601000000, 8001000000}};
>> +
>> +	/* y axis heights multiplied with 1000000000 */
>> +	const u64 dg2_curve_0[2][8] = {
>> +		{34149871, 39803269, 36034544, 40601014, 35646940, 40016109, 35127987, 41889522},
>> +		{70000000, 78770454, 70451838, 80427119, 70991400, 84230173, 72945921, 87064218}};
>> +
>> +	/* Multiplied with 100 */
>> +	const u64 dg2_curve_1[2][8] = {
>> +		{85177000000000, 79385227160000, 95672603580000, 88857207160000, 109379790900000, 103528193900000, 131941242400000, 117279000000000},
>> +		{60255000000000, 55569000000000, 72036000000000, 69509000000000,  81785000000000, 731030000000000, 96591000000000, 69077000000000}};
>> +
>> +	/* Multiplied with 1000000000000 */
>> +	const u64 dg2_curve_2[2][8] = {
>> +		{2186930000, 2835287134, 2395395343, 2932270687, 2351887545, 2861031697, 2294149152, 3091730000},
>> +		{4560000000, 5570000000, 4610000000, 5770000000, 4670000000, 6240000000, 4890000000, 6600000000}
>> +	};
> These can be static const instead of on the stack. Please put spaces
> between { } and the numbers. Please put the final }; on a line of its
> own. Put these as first variables in the function.
>
> Just eyeballing, the constants look big enough to warrant ULL.

Alright, will do the suggested changes.


>
>> +
>> +	ret = _intel_phy_compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
>> +					       ana_cp_int_gs, ana_cp_prop_gs,
>> +					       dg2_curve_freq_hz, dg2_curve_0,
>> +					       dg2_curve_1, dg2_curve_2, prescaler_divider,
>> +					       &pll_params);
>> +
>> +	if (ret)
>> +		return ret;
>> +
>> +	pll_state->clock = pixel_clock;
>> +	pll_state->ref_control =
>> +		REG_FIELD_PREP(SNPS_PHY_REF_CONTROL_REF_RANGE, ref_range);
>> +	pll_state->mpllb_cp =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT, pll_params.ana_cp_int) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP, pll_params.ana_cp_prop) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_INT_GS, ana_cp_int_gs) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_CP_PROP_GS, ana_cp_prop_gs);
>> +	pll_state->mpllb_div =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_DIV5_CLK_EN, pll_params.mpll_div5_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_TX_CLK_DIV, pll_params.tx_clk_div) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_PMIX_EN, pll_params.pmix_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_V2I, pll_params.mpll_ana_v2i) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FREQ_VCO, pll_params.ana_freq_vco);
>> +	pll_state->mpllb_div2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_REF_CLK_DIV, prescaler_divider) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_MULTIPLIER, pll_params.multiplier) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_HDMI_DIV, pll_params.hdmi_div);
>> +	pll_state->mpllb_fracn1 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_CGG_UPDATE_EN, 1) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_EN, pll_params.fracn_en) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_DEN, pll_params.fracn_den);
>> +	pll_state->mpllb_fracn2 =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_QUOT, pll_params.fracn_quot) |
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_FRACN_REM, pll_params.fracn_rem);
>> +	pll_state->mpllb_sscen =
>> +		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD, pll_params.ssc_up_spread);
>> +
>> +	return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_pll_algorithm.h b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>> new file mode 100644
>> index 000000000000..83a620fb3db2
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_pll_algorithm.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2024 Synopsys, Inc., Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_PLL_ALGORITHM_H__
>> +#define __INTEL_PLL_ALGORITHM_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct drm_i915_private;
>> +struct intel_atomic_state;
>> +struct intel_crtc;
>> +struct intel_crtc_state;
>> +struct intel_encoder;
>> +struct intel_mpllb_state;
>> +enum phy;
> What's the deal with the forward declarations? You need exactly one of
> them in this file.

I'll re-check this.


>
>> +
>> +struct pll_output_params {
>> +	u32 ssc_up_spread;
>> +	u32 mpll_div5_en;
>> +	u32 hdmi_div;
>> +	u32 ana_cp_int;
>> +	u32 ana_cp_prop;
>> +	u32 refclk_postscalar;
>> +	u32 tx_clk_div;
>> +	u32 fracn_quot;
>> +	u32 fracn_rem;
>> +	u32 fracn_den;
>> +	u32 fracn_en;
>> +	u32 pmix_en;
>> +	u32 multiplier;
>> +	int mpll_ana_v2i;
>> +	int ana_freq_vco;
>> +};
> This is internal to the implementation and should be in the .c file.
Noted, will move to the .c file as suggested.
>
>> +
>> +int intel_snps_phy_compute_hdmi_tmds_pll(u64 pixel_clock, struct intel_mpllb_state *pll_state);
> Usually context params go first.

Alright will move pll_state first.


Thanks & Regards,

Ankit


>
>> +
>> +#endif /* __INTEL_PLL_ALGORITHM_H__ */
