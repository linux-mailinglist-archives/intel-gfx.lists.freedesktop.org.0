Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC87AABD2BF
	for <lists+intel-gfx@lfdr.de>; Tue, 20 May 2025 11:09:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCBE10E18B;
	Tue, 20 May 2025 09:09:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3QnOK1T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3D010E080;
 Tue, 20 May 2025 09:09:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747732154; x=1779268154;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=jpLlqkTgtN0KwkVRaWxyLp+6p/kFDit8bl/g1L1ysVE=;
 b=W3QnOK1Tyr7hJxxwdxkwuEnqJnDL3VeYg/9CVcHXPUbFmXg07wb5fAV5
 ZHeMV22//JRYp2hZwps/ZYrXAIxvSu2jIHsKe92wQQAD1sETYtyR122Qx
 p9Q4iQ/ayvxeJdMKMoQ/YB423csIPgP80cTyOMiunH+kBx1y1osU5ea6Z
 KWZTNVBUdv0yEWbZ5CVGnYFPI2avf99edwwpPIikP8wS0tnhU+OIuPtsK
 JLqqRlTOk/qCdEvFTdFifyfI92Oj6j9RTYmVH8EGe7PZzclCp7/RPeU+W
 l5FbgZw3RBJoy9R1avSqL/ZPRgXilxtNNkniEz67DBpHFTRN/+tRjzAYk g==;
X-CSE-ConnectionGUID: 5Z11VKgJQ6O24Zoyit8aSA==
X-CSE-MsgGUID: SERe43cMS5icnqHoTU5rxg==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="49558164"
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="49558164"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:09:14 -0700
X-CSE-ConnectionGUID: KJryj7o6TDmtIipi2wgxAA==
X-CSE-MsgGUID: zb4f9oKpSLy8Hd9JrJ9+zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,302,1739865600"; d="scan'208";a="144621058"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 02:09:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 02:09:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 02:09:13 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 02:09:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jUMlZ3kq5hXCUNHNPIV/qQz7/AmBpcloc28T0IXQYxZ3h1BGvkv9jZcIM4PPynztAZNixYCNXVUEo/vAJOqQAHpG2qERt7O8eqBLBYuWAJq65zKZWIrnNyPxAU16KR/LuB1BjNlOvI7dPTV1gh1ggi4G6pPZau180FQIhQ0zeXnYW1QI5Ymc68Pumta8ErzdQLE+kcW2uT/UV/faqp2cIE6NT/htdbvFm1xdMp1MoXxDHoC7o2mvP2kBDTqy+E92TXAZwg4Aic+ClWluyhmttvPh4pKHgkswmG8cYMDX9X5Vu4g+szvQ750gB7/Si4PGQvrdQmzfvitWIFcVmuHVOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y/iwl55Zb8HsGm83MkBqF032zB/PvhKX8Oa9dR2idu4=;
 b=Qssuh+uxC0UCn795DXwc2g4Wsn9p0G+esAlGh/Pur7G4cm4qg0NTGi47woFrg5930ii1jy65Shw7dbg6zFvajtiOa1xoistF+KAq/WczYm6b2Rzs8Cf65jxz9zRVNzqje3srrkZIjv2dRe6xueyNGJ5QN+MvnCWvbyLix7KuAAK+WCUTs9TSvcwdh29gk/U/Lck+xnBHfrYzuFw/YX4iZD85SiSvmVbibvKA96Mq/zGdQsJtwxDqrD3hESsIqfuPzHkYDVffAJsq4SyN5ecjFKCOyFemBCA5fwRhJG0gRxLUISJs8NxaUyGFyIVlFhMLORXqOAC8m6rX9PjmfIWfiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4519.namprd11.prod.outlook.com (2603:10b6:208:26c::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.31; Tue, 20 May
 2025 09:08:30 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8746.030; Tue, 20 May 2025
 09:08:30 +0000
Message-ID: <2b4e8f1a-b526-407c-8b50-e3fee6bed51b@intel.com>
Date: Tue, 20 May 2025 14:38:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/11] drm/i915/display: Add function to configure LFPS
 sending
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250502085902.154740-1-jouni.hogander@intel.com>
 <20250502085902.154740-10-jouni.hogander@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250502085902.154740-10-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4519:EE_
X-MS-Office365-Filtering-Correlation-Id: 6039d41f-03ab-4917-b28e-08dd977de379
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWFyN3RUa3pCYWQ1TUU0TWc5VlpOQlAyNFFLTjRnVVNBOWFPbHVtNFI0ay9k?=
 =?utf-8?B?L2RyTlBOenpQRkZETm8rSXRMS0ZRMzE0K2hVcUVpMzFsREJWTWNNMjVxQ3NI?=
 =?utf-8?B?OTkxK2JJZ1ZqUWhuWXdCQW0wN2RFNkNORFZ6OXRvY2t3NEYrbWRJY0NOYmlK?=
 =?utf-8?B?c3BHaHhTUWpWeG1RRFl0WmRqaVZaOXdQTzhobTE4dmlYWG9rMTZFd2tQLzVS?=
 =?utf-8?B?TFl5b0ZjK1VTSUFraUZianJMZGM3VEtMSDRicmZjVUZYeWRCM2R3ck5ob3la?=
 =?utf-8?B?SmdMUE1kaUZpbVRsSmp3SnNnS0VXcUlNYVhWOGh1dVB4TTJpWTVzMjNESkZV?=
 =?utf-8?B?SmxsMThYU1Y2MEFac01nLzlmRnFLSnlmOE1ycVQ1NlRpYUkvcitXQ1ZBUVMr?=
 =?utf-8?B?Q1NKaFlpSmRodTAwRnAwcnIxZE5VS0dDdjREajNFVnVML0lrblcrbWY3Z1RH?=
 =?utf-8?B?aENVT0lWZDEvMWFKRUxlMC9qYWUrYVc4T0VNL2JqOHAxVVNPb3JBNDJSVnQw?=
 =?utf-8?B?bmRtOW1oTFI1YzZTTjFpajE1K0ZQYXBlVklLdDlWNHNBSE1Lc2lzY3duZzR0?=
 =?utf-8?B?ZTdmYzZ5M0JjVjlmWDBhcmo2OFgyUGl4Zk4vWk5KeitkSEd3TWRhUmZXZFQv?=
 =?utf-8?B?bnp2ZWM3SWxySUpMSEsxV2c3cjNoZEZjMXNkUkdlVExkSDJVcUl6VzM5cENK?=
 =?utf-8?B?aHhYYmFYOUlrWG1mLyt6Q1dSOTg4WlhQVjcwQTRjbktRdUk3WWh1NHlaQnZL?=
 =?utf-8?B?NnY4WThaSStvSWc2OEVEZzNIajIvTDNDeXVDMDVVSjdMTWJxSXNocTljblJP?=
 =?utf-8?B?TE05SnpXRGEwSk1JYVA5SG1iaXZKQ1h0Z0c0b1NWcGV1UmQ5SThaRk5VRlNp?=
 =?utf-8?B?THZtVWN2WlErb0thaE9iTUgrQ3FHVmJYM0x6L08zNkVhdWhRYmVBbDMvNGRn?=
 =?utf-8?B?b0RtUDhsNXNrMEkxanRpY0NYd1FhRExva1pHNXl2aEJFQWwvQ3d6SWFzMFRX?=
 =?utf-8?B?eDl6Q0ZrZThaQmtyUWdtNEtReU52TjZzMCt3MTBxdkNHcUdVdTluOWw2ZE5r?=
 =?utf-8?B?OTZyd3B2d0JKR3lSMjFpNUZ3Rndtcksva2ZGcllmKzhHeGEyQnBWbzNJeHl2?=
 =?utf-8?B?MGl1bkxDZi9NQ21MOXJBc2l6b044SS9ZVXk5RHVEZkRTOGNZZHRrNjhHWmxr?=
 =?utf-8?B?WC9XeVZwSUdYTVhMM3NJVFFrYjZOVHhqYm0yL3Z0cTJSOWlSOW92Vm1HVU9Z?=
 =?utf-8?B?NHdZRjlEblRra3VSSzlQbHlFZEFFRVBpVzFxUnhEYkV2VXpDTE9DNVNXSTUz?=
 =?utf-8?B?dDdhZTRJVk43bFl3SjVTNitld2xhaERYc0g0WkxOL09WSFF1amljU3l6L2Vi?=
 =?utf-8?B?YUdML095dW96WG52WnBHMlRCbkJTMVhSWU16dWNkNVVzZU1ablNxTEdHREdz?=
 =?utf-8?B?ZWZZNVJxODREeU9HSmxEZGJ5alg3QkxzYytQV05CUkpMOE1yYWVUbGZsdmxE?=
 =?utf-8?B?Q1NibzQ5aXgxK0QzZTN5N0NEVjNjWTQzbDRPUVFYeTJaR09nNkg5S0dpdGla?=
 =?utf-8?B?NmhCcEJFWlZ3bklvbWNGZk43TFpyWGllMmZxYjI3WXFab0xoWTNwc21EQy9v?=
 =?utf-8?B?bDI5ZjE0QTE0N1lXN1lIZXI0VWYrZU03Z2VJdk1zMXpVdlUySTFMZnlpaXg2?=
 =?utf-8?B?MzVFTGErTTQ3SEprd2piK1lxS2xPUnJ6MldaUk5TQXJkSzRJRFpzWlhkTWxH?=
 =?utf-8?B?RWxFeWJyd25IVU9yNDh2STMwcE1DOGdqS3ZIRW92dkdmQUdSUGpucVBKMlFk?=
 =?utf-8?B?U2hKOWZKN0Q0WmRNVm1aK0lKaTFEeVg1ZXc0bk1tS1ZnU3VnMEFtQVpoMlVj?=
 =?utf-8?B?QklJRG1LVjQ3em1mMGs3c3ZhcXh1Z0lScTJINHEvL21rSlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U2VVYVhlNWJOeG1CTThhYWgzYmpwcng0eVRsVlRlc0NRajRhT0FocjZ6TE5B?=
 =?utf-8?B?MFpqblZ3eWVPMTdqZ2NVSUNPb25YWUthL3JpRHRUQ2ppazlLS1hoYW1UZXVp?=
 =?utf-8?B?YnVNeFR0MFFxZDArMHgzbmdWaVZRUXhkWGtXRjg2YmtpbXZsUTAzOFdKcVcx?=
 =?utf-8?B?blVubWg4Wll6Y3l1ZForVlMxSnpCK3RKYitUM3pBVjEraVdvaWo5bXhTVWJY?=
 =?utf-8?B?T21oWEpmRlRrYVd4cld3cVh1MWlIeDM2R09ZaU84WkNvaFhjRFNFNkY1bWlw?=
 =?utf-8?B?eVBaM0Nra3pyc1Vhd3BUU3JhKzM3RTd1T0hZaXl1Q1RGS25pYklLaXFXL2x6?=
 =?utf-8?B?TWRoaXdsVzFJM2hKcmxwcTlncmU2MUU1ekw4QjhKbUlQVEhkSnRsMythckty?=
 =?utf-8?B?b2hrd0tJbVpmalM4MVlGM2U3Nm5rNDVNcGREUHNUdk5CeUJSMXZGN0FRNkJV?=
 =?utf-8?B?OEhVWElCd0hOckc4QW9TNmVsOEhyUWhIM2JDb3FUWFpaOFdZMXJCeVJLdWU0?=
 =?utf-8?B?RENHamdtN08zeVFpQ1UzcUM4TDVFbzdDZUYwNEZlOTQxSzNXQjVqVFpyTTk1?=
 =?utf-8?B?S1dIQk1GL0N2cDFUSmVRUENTOWZmQk1YSW1NWFlwS0JraW50N2F3ZkZoUFdD?=
 =?utf-8?B?VUlCNFI0aktsRTdRQnh3bmlXcjhKTlpvQnZ6OWp3V2pWcTFlcGhhWXdLbERZ?=
 =?utf-8?B?Y1lLN1hHb0VDejZZVHNWd2VoUDV5T1FQcTB5U2dPWURYSzVhVUhCSG1WRTA0?=
 =?utf-8?B?SGZiaFF4NDhUZ2V0NkFySTJSRUdEZlBqM0ZyaU5KVDN4U01YSGRpSGdrM1hu?=
 =?utf-8?B?bUpsdUlKMnJBU0QveC9lalJ3WU83bFg0ZTRzYlBEZkY1YUR1UndMbFUzYkRy?=
 =?utf-8?B?cVFkUnNrZXBFcHhqOUNHNG1BMmNmdzdIU0hTcTdUZ1krWWZZWFlwVGl6UlBw?=
 =?utf-8?B?NVoxU1JnTERqRS9ZWnRaV3JzSVVDQnFZUXVLd3JQZ2xvWVcxSE1zSWpuUFd4?=
 =?utf-8?B?ekU2alBtemhGaGtIWEJSZmZvSXBvZU8yVjg3MUw4TGtZQ2E1N0lUM3Y5WkNi?=
 =?utf-8?B?ZncwY3BnRndsUDQzZW5uUnV1UGpkTm1rYVg1UEJBTFpUSHBvYXlJVHFNSCtz?=
 =?utf-8?B?RENTd2MvSVM3SGtIeDROVFZ6YUxEVW9VcXRXdkUxdkpDazdwbkZydlFrTWxB?=
 =?utf-8?B?d0JQUFVGU2JGUlZ2cWZMcCtoV0pmOER6VmV2VjhETkhLVU5jYno2Ty9zdzdL?=
 =?utf-8?B?cStJeXFBOFFIRllxYzlHZkJsUXVCVGlZR1Z1ZS9SOWVaZ0s4eElRWWpid0ts?=
 =?utf-8?B?QTB1WmgwK0plWmRyaEZaSVRmUm93amMzTksxMXpYdlpKYnQyTGVneFZ5bTly?=
 =?utf-8?B?T2lncy8yN2FCNVA0QVRtSG11VUd3ZkZJTXpxV3ltSStkM0p4RmZtR0lvcE02?=
 =?utf-8?B?akg0Zzc1aEdFNmxwUENHU0ZYRDZsNmtReVQ5ejlpdjF1bUgwSEdFT2Y4WFoy?=
 =?utf-8?B?RGpXSkZRQVArbGlzSlo3bUZ3eVJ2ZHpQek5xb1BtT3dxT240WWp0ZTBJY0Rp?=
 =?utf-8?B?NzJ2ZEhDS0hPTU1IUHJqTjg1QVVjWndHeGNMT0dKTEJHcW8rTFlpUndsZ2Jj?=
 =?utf-8?B?QWVTajNKek04WC9ReU9JcDRaMWNWY3FyVVlxVGhJUE5UR05MVE14eHhPZHYx?=
 =?utf-8?B?dzl6V1lTN3FsTzJzNEtLdDFTMG1QMnpNYTI4WU9Wb1lUKzNCR1ZpZ2prbmkx?=
 =?utf-8?B?RHpiN3FVZlJIK29DZjNDUHh4Z1B6bnJFejd3L0h2SEpmTERXRENjbEtpU3hL?=
 =?utf-8?B?NDFCcjNMTlo2ZytCM0VNTHhpeTlsdWxSMkZiT2pPUGVRbEJhR0ptN3BzS2Rr?=
 =?utf-8?B?QjgzaE5sc2QvTmpsMGxmelp4aERaZTRxQ2FjOFFkQ2hna0hJeGVYT1BEU3Bz?=
 =?utf-8?B?alJ3anJVNU94enRSUTU5UGliWW1hRm9PczM1QmhSd2gvandLUlAyOFlJV21W?=
 =?utf-8?B?VlVYZTB5L09FU29SMzNzQjJoTHZnb1EwK0RYaTV2eFkrYVcxcDhXbXE4eUpI?=
 =?utf-8?B?QkdtZlNIb2krZXdKSVZTak8rMTlib0J6S1c3T3VwNXJ1cDd3Zk1Tb25qdVNJ?=
 =?utf-8?B?UktIMTRlaCtJZEYrL21Ib3FqcmhJaUlGK291d2xoM3hiUkdPdjV0bUwzL1M1?=
 =?utf-8?B?WEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6039d41f-03ab-4917-b28e-08dd977de379
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2025 09:08:30.3279 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k0LZXG0XMHhP53AQORe4ZlxwrJk2SLmZzCVUFnpOHTK5rnCkKwzQkZW+Z4z3rtRBGTtc+0leYxoBuTz+O4wxRN/BMWVJ874ct2hBEowWK40=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4519
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


On 5/2/2025 2:29 PM, Jouni Högander wrote:
> Add function to configre LFPS sending for Panel Replay according to link
> training sequence in HAS document.
>
> This assumes we are using AUX Less always if it's supported by the sink and
> the source.
>
> HAS: 14012758795

Lets drop reference to HAS and just use Bspec: 68849


> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 29 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +++++-
>   3 files changed, 38 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 1318886e34dd7..d8c1d372339c6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -3232,6 +3232,35 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>   		intel_cx0pll_enable(encoder, crtc_state);
>   }
>   
> +/**
> + * intel_lnl_mac_transmit_lfps - Enable MAC transmitting LFPS
> + * @encoder: Intel encoder
> + * @crtc_state: Intel CRTC State
> + *
> + * Enable MAC transmitting LFPS in case of AUX Less ALPM.
> + */
> +void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state)
> +{
> +	u8 owned_lane_mask = intel_cx0_get_owned_lane_mask(encoder);
> +	bool enable = intel_alpm_is_alpm_aux_less(enc_to_intel_dp(encoder),
> +						  crtc_state);
> +	int i;
> +
> +	for (i = 0; i < 4; i++) {
> +		int tx = i % 2 + 1;
> +		u8 lane_mask = i < 2 ? INTEL_CX0_LANE0 : INTEL_CX0_LANE1;
> +
> +		if (!(owned_lane_mask & lane_mask))
> +			continue;

Similar loop is used in other place while writing other similar 
register. Would it make sense to use a macro?


> +
> +		intel_cx0_rmw(encoder, lane_mask, PHY_CMN1_CONTROL(tx, 0),
> +			      CONTROL0_MAC_TRANSMIT_LFPS,
> +			      enable ? CONTROL0_MAC_TRANSMIT_LFPS : 0,
> +			      MB_WRITE_COMMITTED);
> +	}
> +}
> +
>   static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index a8f811ca5e7bc..c5a7b529955b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -43,5 +43,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
> +void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> +				 const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index ce7a4765b10ea..f8cdaae52ccfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3745,10 +3745,16 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>   	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
>   
>   	/*
> -	 * 6.k If AUX-Less ALPM is going to be enabled
> +	 * 6.k If AUX-Less ALPM is going to be enabled:
>   	 *     i. Configure PORT_ALPM_CTL and PORT_ALPM_LFPS_CTL here
>   	 */
>   	intel_alpm_port_configure(intel_dp, crtc_state);
> +
> +	/*
> +	 *     ii. Enable MAC Transmits LFPS in the "PHY Common Control 0" PIPE
> +	 *         register
> +	 */
> +	intel_lnl_mac_transmit_lfps(encoder, crtc_state);

Here too a platform check should be there to avoid writing registers for 
older platforms.


Regards,

Ankit

>   }
>   
>   static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
