Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDC9A26AFF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 05:22:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B850910E598;
	Tue,  4 Feb 2025 04:22:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ty9UPisL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC90C10E598
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2025 04:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738642956; x=1770178956;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xS8RPeRuyaDRhKGX1vNfOCSwDpCPf5rNlAwj7fh/yJ0=;
 b=Ty9UPisLwTJRS0EssxTfBe/Z8Qv3H1WeJWEXQT+X4Ntaem+4ZJzIS7Wm
 vKKl6oZaFhznu6PerK8sfCROrgjHZacDwHStNX9dv+MrzyfIytjoeMf1L
 Z6/tS/qku/9sf76q0A/dMCjtYopIBJjqgfZJFRKYWJ5MsNhMJVLz6LEml
 iLvbF8p6ZEqyI/xjGu3uzlquspqcV+bYSzXM0KwDNgcnuOhOnfbXzR6GF
 TgZdIkhGX8PLZwzMVgT1LuYyjSUZGe85imwZireOFd8nUZ+5JTq1PacK8
 bNNluYZSV6SAthnPhehOIzW/Vtjo8b5FxctHry1PMxP39+rUBG2KgutYp A==;
X-CSE-ConnectionGUID: 2shBNna5TryiE8qLkLD3UA==
X-CSE-MsgGUID: gstErnPcT6C/d9OIpNpswA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="42905579"
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="42905579"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 20:22:35 -0800
X-CSE-ConnectionGUID: b3Jb+76ESGGFuXXXV0KOuA==
X-CSE-MsgGUID: Ms4NpSDzTqCC4f4+RgWmcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,257,1732608000"; d="scan'208";a="115503436"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 20:22:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 20:22:34 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 20:22:34 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 20:22:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dbMKuDMDuk3pJaXtUbeP2Rmw9SrTEeJBNeyESlVe6CgU0NWnSPhp0tODtnp4fGybKkx7/FvaKaAky7sAQaVd7JQs+czwOa2SKvWorAMdpUMRkLtuCczDkuc4ZAVdDG7pEAZrdauhZb1z/O4AT9i4DbrAnMKcRN8otZ2+T+8jlpicE2lIAQkFN9bM8iAzkuZGA6+K6Sb9bKWE7+6WVRwN0tWDawDcDp8LbGDPuYWWiB3ghbnQ9VGFdjratDQ9fWAxKYFKhWx99bKH5pvnMpZFL+zceIbYSyr/YNZHZHvQU5GhOW0I+mCEY/sAhsMssfkr3Xsyl2w4VeeEkyC+C7gASA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TC5bYtvb6KYi1OGjwUQRWuobCfcPCWNkZaqww7RGG50=;
 b=U6bIm7Bh39Lra7lHgnGjjXrShigS1ZUb5li51/LkE/HH2mmkXBA95mIcd2Nv14WJEsPm+7USk5qNhZXkpYwhwzeoO4LC39HWGdWgnmOGPVcXvCuT8XuUJxMnKwwyx4zY/rDEjwJmuYanDIlkW2X2KcbA+uBlZaAR/csnm84BR7oyuJIABJ+k+bBm1o0tL6vMGxIpkJqoELH0ig4AugtNbq3m4yc2aN/TSieNVSM3BVWlvD6nNsLJOP4KZNn4FZqNfvBtsoxzyAVxWEwN+UaRQPrcXkpjhAEbhVTw06dQA9QDCsqnN9Rtp/gaceEA2NnlTQZqW5Kn98IXxC615en1tQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4937.namprd11.prod.outlook.com (2603:10b6:806:118::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.23; Tue, 4 Feb
 2025 04:21:50 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Tue, 4 Feb 2025
 04:21:50 +0000
Message-ID: <67bce9f6-93b7-4baf-929f-77bd0d4ddaf3@intel.com>
Date: Tue, 4 Feb 2025 09:51:41 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/2] drm/i915/display: Skip state checker for AS SDP
 infoframe enable
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250203161447.2643039-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250203161447.2643039-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250203161447.2643039-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0099.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4937:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d2a02b9-3252-4595-1740-08dd44d3721c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTVwNmxNSGVRWlNLNVRYTEs1clpJamhmODY1aVZJZWVvem1wSTFjMlIvenZQ?=
 =?utf-8?B?cGpUV1l0V2FWMWtuNWRiUlliTHpZVXdFOGtnSXVJY2IvRW5WRGpVbWw3dFln?=
 =?utf-8?B?b3ZWY09saUVrbFpLQmVXT0ZnMGJwN1lJdFY1TTk5TlpPT2MzRVlqTVJaSVh2?=
 =?utf-8?B?b2I4S2xXeGRvMElRVERvSE9MSDZGMnEvNk1lY2xXcmdoSjlMZVhnU1YrcGlx?=
 =?utf-8?B?Q0tHdm9xM0FvL2lFRXdqc0FrRWVpTVJ2bUUxQzlMNENPalVmVkhrWk1sTjl5?=
 =?utf-8?B?QW9tOVplMzJ5cmxKeEo1RUZySG1mU1dOcldUTjUzakd0SDFSbUIrZjdjSDNv?=
 =?utf-8?B?bjNoUlNkRXp2eEhzL3ZpaWhzU0JzSjhsdTh4VUwxR0MyTlY0cEIxNDFzSXRh?=
 =?utf-8?B?bHc3ckhPWDVTLzArc0pxOW1rc2o5SXlGV1p5dU0xcjc5UVhpeEI0Y04rYWVl?=
 =?utf-8?B?ZG50M3J5L204L0FoTXNmeXpHSG5mMVBjcEtjSVBoNmwrVDJLN3R2TmxsdkVX?=
 =?utf-8?B?YUlYdE55RVNYL3MvV1JLT1FGVGROZjJPTUVoU3BCNTdtaU9HZUNBUmpoVGtB?=
 =?utf-8?B?OTJyQkFDbExRTUtLbHZINmdONkk1Q0dTTzlOeVlOUVdPdVl5L2QzUlY0SmVt?=
 =?utf-8?B?SzlvaVlNUnpON3NZaGFmdmhEcWpmbWcyOHJ2RjcxbllWUUhhMHlLMC8yZitn?=
 =?utf-8?B?QnhZZ2xLMCt4LzdBT3VQMnpXZW9NQVNIanhQcERXSlZJbFVHRk1PSE1ndS9r?=
 =?utf-8?B?SlRmYmpJMFRmVkppT0VocFFQeGgwdjJwakViZFZsKzFmNzJhall3MmJ3bkh1?=
 =?utf-8?B?NzZTaERSSFRPZE1NK2xERm9Jd0J5empmbTl0SGJNeFVIWHpQb3A5ZDJ6bUQy?=
 =?utf-8?B?d25jQ0VyMGgySXVGUFpwckZwalVvU1dvaEtNc3pKUml2NzVNc01zM00renp4?=
 =?utf-8?B?L3ZvVXBwSTBUa2ZyM1Y1c2c5VitWYzZ6Um4rZkJRNzlxU0dqMGdCUVl4b3Vx?=
 =?utf-8?B?dTJ2SkVyamhrUHVsaXNEelpxNUtKMUdUQk42U1lYSG83RFBTaHRub1hzK0F4?=
 =?utf-8?B?UEp6cnZNM3FaUWN3MUNwRlM3L2VFZ2lPVUZVWWpJZzhrOTZsN0ZDR0hNM04v?=
 =?utf-8?B?Y0Jya05JaE80M3NNK09yWTJXbE5hRW9CaDQveEJkMHArY2E5eG00Vmd2VXBz?=
 =?utf-8?B?KzJlL29XRFV5Zk5ZSWIxYXZEcEpvQU5zYkxHNDhpWkJVZ25iL1ZnVzBzQ3Y5?=
 =?utf-8?B?VGN2UjltMDI3SnErbWpsbFNYeldMNldxQlVNbUNxdGxmdWZsb2E4OGx5cldq?=
 =?utf-8?B?TXNMZG0yNGdtT243QVhUM3RqcVREUHVvMDBsSEpyZkRxNVNnUHlLNjlnZTBm?=
 =?utf-8?B?OVdYcXl6SWMweUg5OXdwcHROYlR4bzFHYTFtUUd2VXV2dWZsQkFOR3IyNlEv?=
 =?utf-8?B?SHhvaVQranVMWStBKzlncFR2ZU84L0hMSnQySk5UaWNwWTd5a2FLbGlNVzBo?=
 =?utf-8?B?Vi9MTHp0c2N3OG80Y2kvclRaZklkeUlkZ2cxRmtiV0tGR0JQd1QrZFk1Umgr?=
 =?utf-8?B?WnBCTzVMbjN3ZDdFUUY3UlpiZVZ6aXkzemgzUXl6bXgySlFpRlM2RktpOTIv?=
 =?utf-8?B?MTFsREZXQXI0anIvcE9aVGZrc0h4K3NvRVBCb3F3MXF3Z2dxNmZpd0FKT0JX?=
 =?utf-8?B?Y3RtRU1kRzN1T0c4S3hzd0FsUitnblN3VmFsaDM2N3RhdldSRjJzL2NETUJz?=
 =?utf-8?B?emVZcXFnY1lUTGdvY3V3R1Nnc25qNEZqZFdOKy8veUpBZ3FtQXFybi9NOTdN?=
 =?utf-8?B?alNFenlaTjNRUVU0em1HNEdhWEN2WVU3Q0NZV2k3VjJXQm05MUhxMjBmQjQw?=
 =?utf-8?Q?X8GqHw5ITxg9Q?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wmdka2RvUDRIdmVEZm1qd3JhV2tGYzdzcXFYYStmYVc5MHB3Qi9PMklXcU1U?=
 =?utf-8?B?M0ZtczhHRmdsVVpUcDFndmFFRWpHMnBMbDk5aXI4NWVJelZkUll4TnlkSmpu?=
 =?utf-8?B?bGtvKzlsWHVMUlJQN1Z1cFZBSHVNRE95TWs2RTZXSllaa1RpSk1wSUxyQnNa?=
 =?utf-8?B?c2d6VUtINDNTclljdUpFTk1uTXZpVGs3aUY0M2xFWldJREVsc1ZXaENuNTY3?=
 =?utf-8?B?WUNXQkorL0cvRStQUmJmMVZVekhMMGRSVFhocUNDcmpYVExOUFB3Q3Y4Rzgr?=
 =?utf-8?B?aC8xQjFPT0x6OHBZV05jOUZNUCtiQVpVaFcwL21YUEhsY3FzQ2ZaMjBmU3dC?=
 =?utf-8?B?MndqMUdNSEZrRHBoWlYveFNpT2lpTGhWUDNBaWNoRUZ2bVc0SXNibDZoaHhv?=
 =?utf-8?B?YzdnNDNSZnNLTDc0RUZBMmZaMVYxL1A1YkpubnZ4WEVmb0xrelczN3E4U1Fx?=
 =?utf-8?B?eDg0NDRJVVpJSWxhck83NHRrQ3JKOTcxdTdvVXFHL1hCRU1GVmNuejBLK0dv?=
 =?utf-8?B?MHZmQnAyN25vamw3UHQ3czRpMzdTbWRReGNpd2l6UWNEdCtCdzYwSk4xUnU2?=
 =?utf-8?B?Y2Z0eFRMUnlxaE1sczR0SUlxcWJQeURubTRpdHFsc0owVUlDTnVTMDJvQVgr?=
 =?utf-8?B?UHlIcjE2QWZ4US9vOVN6cGRMNC83RVQ0SFcyRUxQK0FybTd4TlkybHQ3K3Yy?=
 =?utf-8?B?RnZ3b1R2QTJxa3Y2ZWUzTzBHemptY3JlYnBKRjdaVkVBVVFScFRWRXh6R0VO?=
 =?utf-8?B?QlE2UDNpRXRpTG5oR3lNNFFjQzBwL2Iwa1dsOWl4eHh4N0NXOUtYNFIzUnJx?=
 =?utf-8?B?T2RhdVhyK1JXVkVITU9GWk1DdTkxUjBIdjZsVVNXWjdnTjl1aWlsb3RwZGky?=
 =?utf-8?B?VUk4OWoyb1Rsd1lrMlJBcUpHVVBVNlNnd2ltcWtCYTN3YUU2aVRkTTEzc2I0?=
 =?utf-8?B?cXBYUW1YMnFGcHhHd2NEczhYMk5KWlNmV1VjSDVsRXNoWnU2V043TDRyV3ZL?=
 =?utf-8?B?YjJMUUxtQ1FoaHBlQmI2TTMyVGdFWGx5UjZHdUpaKy9aZ0VzdExSS2p6Z0Rw?=
 =?utf-8?B?djd5ckhocGJ5eDIvVFJMeTBEV1hCY0RFVDcvaURNRGFxWG9hSnk2RFAzeXM3?=
 =?utf-8?B?bHVFQ1V0Y0xPcVIvczFNS1BRSmRIdnNidTZPQmM3Vi9LMnRvd0RPQ3o4YWl3?=
 =?utf-8?B?dXNJczUyK0dzNDFaVllsdGpoTVRlaXE1YW52bG9oYXUwS2JjV3NQbVBnczFk?=
 =?utf-8?B?QW8vbXQ1WGlYaU45ZE5MT2xDcjBOZlFvSjVYaDU0UmZVaEQxT0E2OGw3WGh6?=
 =?utf-8?B?U01MWWZ0ZFhxRVVSekFzVFJRMXJhamVYcjNiSTl0bHdtUXVvRkU3RWl0dTdP?=
 =?utf-8?B?c2RETzNlSml5SlNPNGVWa29MWnBMNS9oZUF3UzlhVXp0eVpGMHJvQUsxaHZi?=
 =?utf-8?B?cmxzTkhGM3RvVk5QQkxIaXR6WFpVMjdSRDVtUWN1ZkQwbFY2cmY0V0g1MHZh?=
 =?utf-8?B?Sk5aM2VTVnBOQW1RdG5Zd3NWSzdDeGhSVUN4NWdyQ0pmeUNibXV5eHdHcFZw?=
 =?utf-8?B?Slk4eVh1MzhrOElsU3M3dVdnZlBiK3BWbjhHRmlteXpWVG1BR3NrRExCZWNZ?=
 =?utf-8?B?OStBMTVMalJrZGg4Qm51RitKVHd4U3M0OFNiSE5SK2lnQ2lIVkNaN3NiZmtM?=
 =?utf-8?B?M2QzcHN1amxJSUg3eDJJbkZETDExS2hlZ2RHZmJEeS9ROGJMREU1WmJ1SWVO?=
 =?utf-8?B?R1RuY29GTTlia21LK3A5YWZva3lBZ2t5WG5GQnh4UU1rejhPOTRmLzZqblh6?=
 =?utf-8?B?OHNYUWU2V2syU0Foa2hLRkdpRm0zbFZHSDkwNkxUMzZDbmEyRFd4ZkI0YXI3?=
 =?utf-8?B?T0pWNGxTS1RFZ1lpSnlyY1Jpd1NVNlYxVG9OOWxYTWpXamFhU0tTWlEyci9i?=
 =?utf-8?B?eHVRR2NIdFJyNmIyWlhXNlk3V05YZXVXM1J4T3FKUFJmWUFicjJoV0dSYjJa?=
 =?utf-8?B?aldzRk5QZUl4K25zSXFBMW9zTVg0T1k0MVNsUEpnME04MFNrL2ROa1ZKQXB1?=
 =?utf-8?B?NUxob3RWaUFZc2liWHRydndUMzM1V2ZSUGtLQTMrVXF1UE9zYjRUaS8razQ5?=
 =?utf-8?B?T2FJT1J0WjBva0FwUjRuejdCU3RxazVINldUTEVwQWxHS0JYeGZpVjRFbzF0?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d2a02b9-3252-4595-1740-08dd44d3721c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 04:21:50.0958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JhQNW00QVVWrzWz/nlFTj8mBGYmZfzA3QWSTHY2npWuWCznB2zrfGhD+VnGggj1FyhfJF3y3df9dC+1spkN8CN2P4aSoqns6VRcBY2ERF4E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4937
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


On 2/3/2025 9:44 PM, Mitul Golani wrote:
> Avoid full modeset by skipping infoframe.enable check when toggling
> AS SDP while enabling VRR or while state change from PSR to VRR,
> preventing full modeset while pipe config changes.

I dont think this is related to PSR.


>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>   1 file changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index a6383ddde871..8415b305f702 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5744,9 +5744,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   
>   	if (current_config->has_psr || pipe_config->has_psr)
>   		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
> -					    ~intel_hdmi_infoframe_enable(DP_SDP_VSC));
> +					    ~(intel_hdmi_infoframe_enable(DP_SDP_VSC) |
> +					      intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)));
>   	else
> -		PIPE_CONF_CHECK_X(infoframes.enable);
> +		PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable,
> +					    ~intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC));

As I understand we want to skip the check for DP_SDP_VSC when PSR is 
involved and DP_SDP_ADAPTIVE_SYNC when VRR is enabled so as to avoid 
full modeset when switch happens for these features.

how about:

exclude_infoframes = 0;
if (current_config->has_psr || pipe_config->has_psr)
           exclude_infoframes |= intel_hdmi_infoframe_enable(DP_SDP_VSC);

if (pipe_config->vrr.enable)
           exclude_infoframes |= 
intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC)));

PIPE_CONF_CHECK_X_WITH_MASK(infoframes.enable, exclude_infoframes);


Regards,

Ankit

>   
>   	PIPE_CONF_CHECK_X(infoframes.gcp);
>   	PIPE_CONF_CHECK_INFOFRAME(avi);
