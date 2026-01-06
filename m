Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBB6CF7D7E
	for <lists+intel-gfx@lfdr.de>; Tue, 06 Jan 2026 11:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5023310E379;
	Tue,  6 Jan 2026 10:40:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dFGACjq1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6420610E1EF;
 Tue,  6 Jan 2026 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767696042; x=1799232042;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:mime-version;
 bh=Se5lzeR+8e1ubAzh30a9slfTv7ra1hbHwoAQWQ6Rqqc=;
 b=dFGACjq1Sjmou/5mMsoDo0cxTf4+ZQJ3jBSQ4TdQWrtTA2cUSLVXRCdB
 1anYmVu7tE0R3i7E0Vtdt+vFxocqohAYKeCmDN/u30s5wrqVSOx6WX0OY
 UOOSpHI1VVADAAubO7sloTaDGXv3xRpUzbVRmHhnJiGaFWpAs0o1QUZf5
 SslHiRcjYy18gjtyA++6eZv+LFBmk/HkR6I2N/WT/+5mDhiS2QDoUUGm3
 UmRoFDmf24ONCztYjAl84zN07DJkZiwe8MVo8loHdYW9BZ8JpUjSxVyAv
 mRa0tv1M2Sg0ektKe9H6wP7FTLZpWzkzEnlSaAuPv293fUaHy6Cj6B36N w==;
X-CSE-ConnectionGUID: rqGFtnuuTlKH8XV38EF1eg==
X-CSE-MsgGUID: YNPrK1lNR8SNyzezUlnzbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="72690623"
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; d="scan'208,217";a="72690623"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:40:42 -0800
X-CSE-ConnectionGUID: navlrUwjSfe6iojm+ApOgQ==
X-CSE-MsgGUID: iV8JWnDKTtO5zpDVH4ENnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,204,1763452800"; 
 d="scan'208,217";a="201851323"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2026 02:40:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 02:40:41 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 6 Jan 2026 02:40:41 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.58) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 6 Jan 2026 02:40:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aJwDYa2EsN8V3rxsV7h4Ti97rG8+9/tlu2Fgmo0C6VJD09woafi7VBdxP0GrTHxgLmdR18ovi2+We8igH6SyX8hbTYXig4dD5gKNXomsCKamziJGT1J3loiPMY6yAFo5Xtra/vjSadHODnzaksvnlpFTl1aOeMixHZ5MJwKo3moE757Q1Po3Xhm+63gWQS4DqoThWkxMOZYkso6cTu3ZfyGJfeEOrODloYUMpy6cd8AkS1PGQvKbeQB69Y0KlgEABt8HvVR2fc2S9bi/w9bQ1W/lbTQePz24K86dSZh5H4drXwKJJgauk2zOVcsJFNhcoo/X9o0AG3eUhSAWGrh8QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C7GdW2Q+CQ3rZ0bvHIkDJP7OrvI/PRyLQcwsVyGzEtA=;
 b=r38QrxdxoCtp7BFPxnCq0CmDeTJuJpkJVvzYTPMrAIOTuWKj7noinpz26MBikEA/aRHnNil7vtZlUQkWSnHQFZQtVk0yA4ux0zWZSuDS+RA23IRK/PLvh5pxmyby+yBFcmWEWowpXvYvI+1bPd71IukLkzF8TGlf9Qu/KwY9ZsbVAzDpzUr/eC08PPcf984mpW7w2oObxwzorabPzu5kdFeKgwcSnLPxOV0L7KtQUvDPLoy7okDkJCB0Dcb/KXg3g+tDkw7LkpxWY94aUpwQFexe8atK/jE5ShNeCJSH4abXkc7Xu1pEcrHuOZOMxv+pYalCapOJGdAOdIK4DP6SPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7175.namprd11.prod.outlook.com (2603:10b6:208:419::5)
 by SJ5PPF3A51834D3.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::821) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Tue, 6 Jan
 2026 10:40:34 +0000
Received: from IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472]) by IA1PR11MB7175.namprd11.prod.outlook.com
 ([fe80::cc3a:1f73:430f:472%5]) with mapi id 15.20.9478.004; Tue, 6 Jan 2026
 10:40:34 +0000
Content-Type: multipart/alternative;
 boundary="------------43D7VRRu0tWX9bD0ZVQ0Sumu"
Message-ID: <91463216-c8f7-4511-9d9b-0671a60daa24@intel.com>
Date: Tue, 6 Jan 2026 16:10:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/display: Replace DC_STATE_EN_DC3CO with
 DC_STATE_EN_UPTO_DC3CO
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <animesh.manna@intel.com>, <uma.shankar@intel.com>, <imre.deak@intel.com>, 
 <jouni.hogander@intel.com>
References: <20251209113332.2770263-1-dibin.moolakadan.subrahmanian@intel.com>
 <20251209113332.2770263-3-dibin.moolakadan.subrahmanian@intel.com>
 <17e5263efc4597cee2d7ad57d8c4be853c0ba1b2@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <17e5263efc4597cee2d7ad57d8c4be853c0ba1b2@intel.com>
X-ClientProxiedBy: MA0PR01CA0027.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::20) To IA1PR11MB7175.namprd11.prod.outlook.com
 (2603:10b6:208:419::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7175:EE_|SJ5PPF3A51834D3:EE_
X-MS-Office365-Filtering-Correlation-Id: 4bb7f92b-32e4-46cf-df06-08de4d100549
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|8096899003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZXBHQUk4V0owZmtJWmpIUkNaM05NVGdsMUx3bjZvM0x5bjBSeTN3SHg0eGl4?=
 =?utf-8?B?aklvejlhZHNkdWlrRmxXY2pJNXZHT01kTDNyN056b0RqMWlaMzBjaHhVeUNW?=
 =?utf-8?B?Wm1nTjJTMlVtbEJ0d0c5YkJkc28xRXd2SU52bWtWcHRtVWtmM2Z3TEErREdw?=
 =?utf-8?B?VGNsdCt2blRrclVwR2o0Znhmb2l3eEtycjRQZEJnazdtYTZ0WUFCa3BKRW9H?=
 =?utf-8?B?cnZJTFhOUlF1TXBBUDIyS2xBWE5QTTZXWjNhUUt2RzMxdmF1NktLYXR6MTQ3?=
 =?utf-8?B?Y0hYcWJZOWVEbmlIWmxpTnJRcXpUcDVEUm5XcVVlQ0JvdjFvb0FJM0pPbXpR?=
 =?utf-8?B?TGIwWnYwUnVOM1FhV2lLN2QvNkFZNStzMWxWVElGV2E4ZE1IQTFKeG1Ccm5Y?=
 =?utf-8?B?aUIrNjdoaXYyTDZYOElYbkNVeFhjTjF0UE11S2FaRjR6NEJOaW1pYUo2U3Y3?=
 =?utf-8?B?UmdPaDZvL294Mk1XTjdIOGhRYzBudTVneXJhUStOVDArN2hQeGtOOXYrZ2pS?=
 =?utf-8?B?R3A4eDNoZkV0Z2RuU1ZZeVNLdlJRcG9rSFlkWEZOa2JWbk9FYVdIVTc5MFMr?=
 =?utf-8?B?dEljWjBJTlpHV0lNL1FVNGQyQ2phenA1c3VjanZnQ3ZpNnVkZlZmcndkbzdp?=
 =?utf-8?B?WG5Wb3JtK0tYUWVjNk9SV3Z0TUNiRHNRNy92Q2RGbzhGakE4VWRnMUpSTUJR?=
 =?utf-8?B?Sk9pNUVOVHA5cnJHVnRQYklvRnVwQzZHZ0M1TitDekxrdUkyRHovd2kzYVVx?=
 =?utf-8?B?TVFwWVVUT094d1RMWnkySEl6OENBVHc0Mjgwb1JRN3FmYkdhY3h4NHRIQVZI?=
 =?utf-8?B?TzhjQjMya2dHTlJ0QmFGVmpTa2VZVm9GMitLU1FkSDRTRzk0SWIxbVdJaVRS?=
 =?utf-8?B?OTA0TGlKMEl6S0NJaDBwNVJuL1J6cUJGdG1zSzdkOXdrYjl4UGNqL3JxcHZp?=
 =?utf-8?B?K2Nxekc2dFBBcUQwSzhFd213RTlwcElmSzVPWUF6QkVDMVZSQzkwV1FObldJ?=
 =?utf-8?B?Q3FXWjBaZkx1dWNkVXYwdEZVVnY3SFBNdmJjUUQybVVNV2F4QTAwT0l1RVk1?=
 =?utf-8?B?b00zYkl3WkJVTTdST2czdlFFMCttQ2ZpM0wzQkM0YmcrMGh2VDFnWDRqZ0Zm?=
 =?utf-8?B?WWlUUWkrSFhBWU15VnhnZ2tvZXc5QXlicHM3TFJ0NWppVTJlQm43cGN1VGZP?=
 =?utf-8?B?ckYrcjhqS1Q5MHh0STBLNk5pbDNHNFNXaFVJdmFJdGFBZGpNRkVnRklYNlZG?=
 =?utf-8?B?em9TL3ZoZ0NZNS9TaWV1UzhsdGwvQjRzYVhlaGN1VEhIb0l2cDViNTdocmln?=
 =?utf-8?B?ZUMwKzUyek1wTzBmN2tnc3ErbUs0QzRaZ2lvNGVpb1FNYkU4RG1SRHVyQjRO?=
 =?utf-8?B?KzdQQVlGb0tDK0R3dWk3T2FUVnp2MW5yRERnU2NJZVdzeFZ1Z1Z6NCtIVjY5?=
 =?utf-8?B?UlBqOGdjc3FtVlFlWVFPaDRQYWc5VFhWOUtnRlBYb0JqWVE5OGpjZy9XdjJS?=
 =?utf-8?B?RmVoSzVGY1pXV0JpK3pOUUFWVFB4SElucGt3TzQyN1lXNEhDbitKdzk1eEpB?=
 =?utf-8?B?Q1c5ZWxQbmZZMGM2cnN2azlBeThKRDdEQ2cwT2hCT0ZBbFFqYVlUeS93WThH?=
 =?utf-8?B?Qi9paHREM2xvT2kwUko0ZjJ6anJ5VU8wYzJSZHByd1dxZ3ZkOGdwemhsQUhC?=
 =?utf-8?B?YU1oZjIwWDdSajdFWjJQYUJSMFNxdi91cXU5dHJZcDI4cGoyZm1nV0U4SXV4?=
 =?utf-8?B?WExncFRaWitBQ254UElrUmFtK21Obk5BajFjUmgyb1JjbjFURHVQa3IzK1dM?=
 =?utf-8?B?WWhUUGoxN0hRNmFGcmhQMWtBSlRTRWlLbDNlZ1JzVjgxVGxjRXBoamJVZkV2?=
 =?utf-8?B?MmFBVEJqV3JoM0VvdkM4cVFQSTNyald6ZXFTNFBhSnNUdnl5K3pUTlFuS0Jm?=
 =?utf-8?Q?gAZ7SxPmVzRM2MyLt5lzYujjj0BwNHw5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7175.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(8096899003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bi9OU28yN2htYU85OFJZRFRYUnhyb3hVamQ5UnhCcE1hNWZ5VjJoWnBYQW1Y?=
 =?utf-8?B?QzNHZ3NnanBweExjV3NOck05NGpNcDB5TllWd3BxNTRYeGI1MExGSkhuRUhI?=
 =?utf-8?B?VUZTRzRMNDVydU5mRFNvN0doalRDQ3VxOEZKSGcxKys4N0gwSTJ0YUE0UnNi?=
 =?utf-8?B?TVRHMkxkNWpDVmNFYUVxaWdWOFpmOHFFSzZRRVphd00rQjhVMEJwSUZiWnZq?=
 =?utf-8?B?bmkrdU8rcTFlMWVKcDk3UmVCdHI5WWtVUGI0M1VvenJFcWtFL09LSGs5ZzU3?=
 =?utf-8?B?Ly80dDBHS2k2MkZtUUpxTGxtYThSZC81YzkzbmdnMHgwbVdicEJucWhWOTRX?=
 =?utf-8?B?dGtlVVZlaDJBczhVQXBibVBMQlZxbDZZRU42SjZkbzlnNnpLQ0QzMlAyQU1G?=
 =?utf-8?B?M05YY1duZEx5VGFTV0Vrc2pLOHZYZ3ZZZmthdDJ6S3pWSDVLR2hNYkFzK0ZU?=
 =?utf-8?B?RU90TzhKUUZFN1lpVHZrS29YSGRQaE9TdHhjcnJpb1IxeGNJdmV4R1VsZ3Ir?=
 =?utf-8?B?algyeVJoVzk4TWFFQ2xzM0kzNzZRKzA4Y1U1ZmFYUUVBL2hjaGRudFFSUU5v?=
 =?utf-8?B?WTk0YUdKaUh0cWs0ajBpWEFPdnRwMHFwZldQL0lUREZuekplZTMwbDQ3UFlS?=
 =?utf-8?B?T2hiZ3ZRSFUvUGFnc1VqaGRaVkxCanpuOFh1SnBpQTdmRlJmZ2dwUFBhWE05?=
 =?utf-8?B?cXl2eHNPTFlaSzdNbnd2V2JQSlZmNDkvQi9sVFZTWDU2N0FoYnhhOTN0dTBP?=
 =?utf-8?B?Mjl0MFo2M3p6LzZCamdiVitOSEd4cXdROTFnM0hFWUlyQkJUb2RpbzgvWjNt?=
 =?utf-8?B?ZnY5VjVZRVY4STd0VVlqWThnTmcxeU0rK0FNZmQwaWJIRnN0eEVNUW51ZEhy?=
 =?utf-8?B?ZU5GcXNCa1k0bVp3WWhjNVl5aUxxR3A0elhlWC95emVuYmRnWVloVDI4TmlB?=
 =?utf-8?B?S0lvVkUxQnp3TnNxQWJ2cjFtSE1tWFBtMVdGL2ZKcmpSbERncFhEV0pua2Fi?=
 =?utf-8?B?L2RHcUwvUElkT0pDSTZnRWVDUlNJd1gyTXpRUFI3L2srUit4QUY5d2VqVVhy?=
 =?utf-8?B?TFZiVjk4WDdyNlpWUURmeEdrWkkxWU9aS3QzRm1TdVhqVnZ0TDRLTzBPQ05T?=
 =?utf-8?B?SjhRanN4N2ozTzJoSUV4Q2lUQzh5Mlp4Qm8rbkVrV1NMaXNqUTZqaW80Yzh0?=
 =?utf-8?B?L2dMM2g5L3pEVGJVREFEUjBJQ2JxTm9hZ3hoS0orQWlkM0lIdzBXNzJQQjRi?=
 =?utf-8?B?dEcvdlJJUEFoUUdtRXVJZTBmckJySUd3ZTlEUHk1Q0NPUXAwVFJobmJuQ3ZC?=
 =?utf-8?B?VlJWQXBaOU1zL2JqZ05lM3VYZjFidEhIY0VnOTM1SGQwM2puZ2FRcU5jejlS?=
 =?utf-8?B?ZnBaR2NtZXJCdFE3SXhtZFJaVkZ2cjUvRys0L0lhYzA5QUtudzlwcm5HeDJw?=
 =?utf-8?B?UW54WFJvd2NGRTJOZjZVdHo1MG9sam05ZWVSTHY0TVJlUmtrMTFtc2FLVzVi?=
 =?utf-8?B?OUhtTW1uYU01VVQrbkJGY2FPcDVsaTlpN1MzYmREWnNKOTBsYXNOTUlSQ2Mv?=
 =?utf-8?B?bEJkMlE1QU9vYWhaWFhvc1hNVSt4Z0t2S2RMcHlFSmVNVm1XeEkzVW4weFhk?=
 =?utf-8?B?UXZmdHkvR1ZoOGRYS2JsajBSbndXVGJKQXBmclVhOTVoS3lZdmFLQTNCZjQw?=
 =?utf-8?B?L2ZRK29IdnQ5V2lGaEdRaXMycTRPdThIdVRWVFhvRHovanF6S09oT0J6THdl?=
 =?utf-8?B?blc4cXl5bjhoc25wSWdwbWcyQkd0ay9pVkJObW94eWlwRFd5RndXdUNmYjNF?=
 =?utf-8?B?Umo0RGxsZEc0UzUrS3h0YkJpRUp0V3VWaStNTW1jcTIyUVNqVEp4YnZHSGZy?=
 =?utf-8?B?dmFXeDJ1dDcrSlZvVitFeXJacDBEQWhBdThBeGZsajdBTHV1ZTQ2NjN5MlBT?=
 =?utf-8?B?SDNrbzltdXpKNHRwR0dxWHpVRW9oOUxnUVhwZWwxT2ZXWHNSMkpvTTFLRkl0?=
 =?utf-8?B?ZnJHMVpmVVJQRzhtNFFYeWJqc0JYTUFjNGo3bjcxazUwQkxUMFE1VWZ2MDNq?=
 =?utf-8?B?MGJkOEY5NkNySmlVS09FZ3Z4TzV5U2sxZmNML2ZvNkEzSDQ1SDV6MFlZZHBP?=
 =?utf-8?B?ZnFQbkUzY3ZIWkpIUHUvelJkWGpBRnZyL21ndjlvMi95L3QxMEsvSllCRDh4?=
 =?utf-8?B?YmQyQTEvMlEwSUxEdm93ajcvYlNaM3RrTzAwUW8wUDdVb0g4ODRrc3daNURn?=
 =?utf-8?B?QlZRUXdkRHlLaGc1aFVnOVNnanNNQU5ORDhlRmJ3QnN1QzZSeENGQmNMR0Q4?=
 =?utf-8?B?RHJ5eUpjOHVQT1NOVjMyZFQ3SmoxYVJGOGRON0VJeFFvQVVsRWVlbitnV09S?=
 =?utf-8?Q?PYnX1xhbLq45KOOElZHMOpLGnRLHHrhwr/6wvJtxy0wPN?=
X-MS-Exchange-AntiSpam-MessageData-1: p4rieq98pAJBig==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bb7f92b-32e4-46cf-df06-08de4d100549
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7175.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2026 10:40:33.9780 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yf+a4AjEHfol4r2W3kKMCAgmf3k+k6AE9f49zkKvLteSbvLGhH9eysjnK/macINQzTImS2FiC7bwws++AGI/2o2rlsqQT3sEPhuRcrZ2NzcZSIHklP9/gKJ7AQkxUWwv
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF3A51834D3
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

--------------43D7VRRu0tWX9bD0ZVQ0Sumu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 05-01-2026 18:15, Jani Nikula wrote:
> On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com> wrote:
>> DC3CO no longer uses a standalone enable bit but part of existing
>> UPTO_DC* enable bits.
> "no longer" for register contents absolutely requires references to the
> platforms.

I will add platform details here.

Regards,
Dibin

>> Signed-off-by: Dibin Moolakadan Subrahmanian<dibin.moolakadan.subrahmanian@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
>>   drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
>>   drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
>>   drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
>>   4 files changed, 7 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
>> index 9f323c39d798..0961b194554c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
>>   	static const u32 states[] = {
>>   		DC_STATE_EN_UPTO_DC6,
>>   		DC_STATE_EN_UPTO_DC5,
>> -		DC_STATE_EN_DC3CO,
>> +		DC_STATE_EN_UPTO_DC3CO,
>>   		DC_STATE_DISABLE,
>>   	};
>>   	int i;
>> @@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
>>   
>>   	switch (requested_dc) {
>>   	case 4:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6;
>>   		break;
>>   	case 3:
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
>> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC5;
>>   		break;
>>   	case 2:
>>   		mask |= DC_STATE_EN_UPTO_DC6;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> index 2dce622eb5d8..6f62a4420f6e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -727,7 +727,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
>>   	mask = DC_STATE_EN_UPTO_DC5;
>>   
>>   	if (DISPLAY_VER(display) >= 12)
>> -		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
>> +		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6
>>   					  | DC_STATE_EN_DC9;
>>   	else if (DISPLAY_VER(display) == 11)
>>   		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
>> @@ -977,7 +977,7 @@ static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
>>   static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
>>   					   struct i915_power_well *power_well)
>>   {
>> -	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_DC3CO) == 0 &&
>> +	return ((intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC3CO) == 0 &&
>>   		(intel_de_read(display, DC_STATE_EN) & DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> index 9e0d853f4b61..7e620e22718b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
>> @@ -2819,13 +2819,13 @@ enum skl_power_gate {
>>   /* GEN9 DC */
>>   #define DC_STATE_EN			_MMIO(0x45504)
>>   #define  DC_STATE_DISABLE		0
>> -#define  DC_STATE_EN_DC3CO		REG_BIT(30)
>>   #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
>>   #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
>>   #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
>>   #define  DC_STATE_EN_UPTO_DC5		(1 << 0)
>>   #define  DC_STATE_EN_DC9		(1 << 3)
>>   #define  DC_STATE_EN_UPTO_DC6		(2 << 0)
>> +#define  DC_STATE_EN_UPTO_DC3CO		(3 << 0)
> This could use a conversion to REG_FIELD_MASK and REG_FIELD_PREP.
>
>>   #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
>>   
>>   #define  DC_STATE_DEBUG                  _MMIO(0x45520)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> index 73a3101514f3..9f403b7820ab 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
>>   	 * the DMC and requires a DC exit for proper access.
>>   	 */
>>   	switch (dc_state) {
>> -	case DC_STATE_EN_DC3CO:
>> +	case DC_STATE_EN_UPTO_DC3CO:
>>   		ranges = xe3lpd_dc3co_dmc_ranges;
>>   		break;
>>   	case DC_STATE_EN_UPTO_DC5:
--------------43D7VRRu0tWX9bD0ZVQ0Sumu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05-01-2026 18:15, Jani Nikula wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:17e5263efc4597cee2d7ad57d8c4be853c0ba1b2@intel.com">
      <pre wrap="" class="moz-quote-pre">On Tue, 09 Dec 2025, Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">DC3CO no longer uses a standalone enable bit but part of existing
UPTO_DC* enable bits.
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
&quot;no longer&quot; for register contents absolutely requires references to the
platforms.
</pre>
    </blockquote>
    <pre>I will add platform details here.

Regards,
Dibin</pre>
    <blockquote type="cite" cite="mid:17e5263efc4597cee2d7ad57d8c4be853c0ba1b2@intel.com">
      <pre wrap="" class="moz-quote-pre">
</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre">
Signed-off-by: Dibin Moolakadan Subrahmanian <a class="moz-txt-link-rfc2396E" href="mailto:dibin.moolakadan.subrahmanian@intel.com">&lt;dibin.moolakadan.subrahmanian@intel.com&gt;</a>
---
 drivers/gpu/drm/i915/display/intel_display_power.c      | 6 +++---
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 +-
 drivers/gpu/drm/i915/display/intel_dmc_wl.c             | 2 +-
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 9f323c39d798..0961b194554c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -267,7 +267,7 @@ sanitize_target_dc_state(struct intel_display *display,
 	static const u32 states[] = {
 		DC_STATE_EN_UPTO_DC6,
 		DC_STATE_EN_UPTO_DC5,
-		DC_STATE_EN_DC3CO,
+		DC_STATE_EN_UPTO_DC3CO,
 		DC_STATE_DISABLE,
 	};
 	int i;
@@ -999,10 +999,10 @@ static u32 get_allowed_dc_mask(struct intel_display *display, int enable_dc)
 
 	switch (requested_dc) {
 	case 4:
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6;
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6;
 		break;
 	case 3:
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC5;
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC5;
 		break;
 	case 2:
 		mask |= DC_STATE_EN_UPTO_DC6;
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 2dce622eb5d8..6f62a4420f6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -727,7 +727,7 @@ static u32 gen9_dc_mask(struct intel_display *display)
 	mask = DC_STATE_EN_UPTO_DC5;
 
 	if (DISPLAY_VER(display) &gt;= 12)
-		mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
+		mask |= DC_STATE_EN_UPTO_DC3CO | DC_STATE_EN_UPTO_DC6
 					  | DC_STATE_EN_DC9;
 	else if (DISPLAY_VER(display) == 11)
 		mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
@@ -977,7 +977,7 @@ static void bxt_verify_dpio_phy_power_wells(struct intel_display *display)
 static bool gen9_dc_off_power_well_enabled(struct intel_display *display,
 					   struct i915_power_well *power_well)
 {
-	return ((intel_de_read(display, DC_STATE_EN) &amp; DC_STATE_EN_DC3CO) == 0 &amp;&amp;
+	return ((intel_de_read(display, DC_STATE_EN) &amp; DC_STATE_EN_UPTO_DC3CO) == 0 &amp;&amp;
 		(intel_de_read(display, DC_STATE_EN) &amp; DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 9e0d853f4b61..7e620e22718b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -2819,13 +2819,13 @@ enum skl_power_gate {
 /* GEN9 DC */
 #define DC_STATE_EN			_MMIO(0x45504)
 #define  DC_STATE_DISABLE		0
-#define  DC_STATE_EN_DC3CO		REG_BIT(30)
 #define  DC_STATE_DC3CO_STATUS		REG_BIT(29)
 #define  HOLD_PHY_CLKREQ_PG1_LATCH	REG_BIT(21)
 #define  HOLD_PHY_PG1_LATCH		REG_BIT(20)
 #define  DC_STATE_EN_UPTO_DC5		(1 &lt;&lt; 0)
 #define  DC_STATE_EN_DC9		(1 &lt;&lt; 3)
 #define  DC_STATE_EN_UPTO_DC6		(2 &lt;&lt; 0)
+#define  DC_STATE_EN_UPTO_DC3CO		(3 &lt;&lt; 0)
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
This could use a conversion to REG_FIELD_MASK and REG_FIELD_PREP.

</pre>
      <blockquote type="cite">
        <pre wrap="" class="moz-quote-pre"> #define  DC_STATE_EN_UPTO_DC5_DC6_MASK   0x3
 
 #define  DC_STATE_DEBUG                  _MMIO(0x45520)
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
index 73a3101514f3..9f403b7820ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
@@ -260,7 +260,7 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
 	 * the DMC and requires a DC exit for proper access.
 	 */
 	switch (dc_state) {
-	case DC_STATE_EN_DC3CO:
+	case DC_STATE_EN_UPTO_DC3CO:
 		ranges = xe3lpd_dc3co_dmc_ranges;
 		break;
 	case DC_STATE_EN_UPTO_DC5:
</pre>
      </blockquote>
      <pre wrap="" class="moz-quote-pre">
</pre>
    </blockquote>
  </body>
</html>

--------------43D7VRRu0tWX9bD0ZVQ0Sumu--
