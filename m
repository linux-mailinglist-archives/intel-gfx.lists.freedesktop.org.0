Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C933C5A434
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 23:02:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F8210E950;
	Thu, 13 Nov 2025 22:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ksyw0TVp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 074C210E200;
 Thu, 13 Nov 2025 22:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763071337; x=1794607337;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=BLQMt5dGNv4PPqPK8/XYTF3MXIz2DLSfI0S/zKD9Mic=;
 b=Ksyw0TVpkijyZQtFPqMYUkSz6LUAyabtcc57OtOi0+nLRCtsEHhQYnf6
 nAC5Bt87Z69+eQlHI5Z+eYBhZ0ECRz5Av5dntaSq+dKHtMERjLZqa/sCo
 +gX8b70yiAVtpwrD9qodu6+pjWgg+8Xs/RbRn6stTBGFlJzoYGfaFTU0a
 BrWSHYGz2R3pV0MdokZ3QvxYxorUs6WgJVVl0GF1g8ZvIG+754jekb65M
 LcmGS0k7SHoHWiULUF4Bckq4ohh2LEIpAZDKy34EFeoK3U9ocY4XlmXv2
 +JFXO/9XIkQLPJUJenY0wQzTZ3OMf5t4eF0pOl6d384T0Yv/OS9MbLteR g==;
X-CSE-ConnectionGUID: DieWfg+7QQG45x3EeUfGEg==
X-CSE-MsgGUID: Q4dyxAKtSKW4pZO9sw8dYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="65049166"
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="65049166"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:02:17 -0800
X-CSE-ConnectionGUID: BfZKwcJRTZOM6JtTNaCckA==
X-CSE-MsgGUID: 0wTBrqq/RXGpmD9IfdABUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,303,1754982000"; d="scan'208";a="189250165"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 14:02:16 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:02:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 13 Nov 2025 14:02:15 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.35) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 13 Nov 2025 14:02:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N9aZLA93Iy2E8e6zUzVk7FFw9ey0b33ejdnFIjXVJJVrz8j7t4E7YBX/ULDlQFtN/R8gIFvTbsXvny68hcGT3vPEFrsJc6Yf32mAnw+FpQz0Olky7VfZrmy4bWxGYJhrSJcLL5NhhGLKM0+m0gZD6zncGiERWD8q4G2LGtLyB9Lr5zrH3ddGMqlpG6xqJcqwBHF0cSw9YDJzUYGA/95Ub83zLI7WOH1nW2UITG48UCOViSEaPLLpgZrPlyrn2eI9hyOA19Rudc+2lRB9rWjUUw357eRUV3ZQinAkK9FpcMmbBKzuiV0nL+I4mWIFwbpIaEIegDZv11VllWaeYkzaZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=elgPYPHboKMRlSLRezA+iDR0SjDDXHb9MW5tIZ+9Ijs=;
 b=emz6jlxb6NtNATDyF9PC727n8JoocdSduRfVyZdHkz46haZ0JznaWiimESA2eWSwYlf4nJDHqGQGNShzXSdRWklnoKf42yZoL0ce7FcCi2oSYcSZ87TqKtu9IQpGfpVyKBjcF/SC4SRZNmd+QQqM9Nx9mYjX7NUSGv+kGXx3kyGWkZ6cxMo77Gcn0l9HK93FGAHbVLqkt95rwMb49c+42P7NOLN4qQ8cnsBA+BSwT5uLOUC45miihGsm7Smhapi6432VxVea7vjODqCVd96gDIyysvgNh5MD8EnJdJWbufZj6zR2bIbikdEk+GVRX4Izxc6QlvrSiHJ9xeUQrPTrKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH8PR11MB6802.namprd11.prod.outlook.com (2603:10b6:510:1ca::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.17; Thu, 13 Nov
 2025 22:02:13 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9320.013; Thu, 13 Nov 2025
 22:02:13 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aRSze0s8p4Qi6OVM@ideak-desk>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-3-ab3367f65f15@intel.com>
 <aRSze0s8p4Qi6OVM@ideak-desk>
Subject: Re: [PATCH v4 03/11] drm/i915/power: Use intel_encoder_is_tc()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, "Ravi
 Kumar Vodapalli" <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>, Suraj Kandpal <suraj.kandpal@intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Thu, 13 Nov 2025 19:01:47 -0300
Message-ID: <176307130705.3698.3321577844550044367@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BY3PR04CA0005.namprd04.prod.outlook.com
 (2603:10b6:a03:217::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH8PR11MB6802:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b42c7de-efa0-4626-98e1-08de23004c64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUMrdkU3T3EzR3kyZUZWUXZUTEtEWWlrd0FHNW8yM2paT1pDbTEwRXczbGp0?=
 =?utf-8?B?ZnJXNVdoU1JSZEIrRy9LRzM3SGdUV2FkZXBMQk1wbTV4TS9UdDZRc2M4ZzBm?=
 =?utf-8?B?bjVib3lTREJRMzMyVm5QNWVRcXRHOTdBays5OWR2UWhqRmZHbTVkVklaaStV?=
 =?utf-8?B?RkQ5R1Z5TktRd1o2QkhzZW1aR3MyZ1UvRFdqWWNCSWhkOTZTamgyT2Q1b1VI?=
 =?utf-8?B?aTRNREpwaEo2aXdWY0ZmRFVqWC9YNUFJek4rNXMyV1BiLys1Z1JCYXJ2bmZy?=
 =?utf-8?B?R2Z1NTBpMkdhYXZTbHkzNUZiNzNCVC93cnB0Vk1TMS9GUkdGcFBHS2FUSEJx?=
 =?utf-8?B?YkhEV2c1ZElBWlJQOWliK05NZE02aFlmQmhEUHlONkNIZG9maFd6U3RMeDlv?=
 =?utf-8?B?NTBienJZVUNkc0ZNcS9pSTU5MXFnSmxlcGpnanJHODJGSlVtMHJaWjZsdk5l?=
 =?utf-8?B?cU04MnJxRG56R3ZpVHlOS2tlZW1WS1grUnhhSWNLdE93NjQvRWx1NTRUREx0?=
 =?utf-8?B?OEFvNXhYVS85RVlCdGt1aTlmRVlkQXd4Z1lRbEJLdkJlZ0tZOTFvbTFmLzVK?=
 =?utf-8?B?ZXNZcjQ0QnpaMlZhQmJVMGdPRjdCYjJJaWZSZXVTdHp3RVcvS1dnN1hReHBX?=
 =?utf-8?B?bnNnRzZlbTVSQkpGKzR5NjUvV1Znc2RRZ0IraWNiN3AwTjlMcU9uNGJOTC91?=
 =?utf-8?B?Z2xzUUREa2tiNDdNZEhzQXZ4K09wUkVBMHVmdlQ1c2VuT0JlQ1JBMTcvaXZj?=
 =?utf-8?B?WTlXQk9zVmFhTlJhcENwbDhsOHBTTzQza1JIWkc1bWVSQzlMS0JmaS8xNXNJ?=
 =?utf-8?B?VmJjbnd4K29qZTBmTjYrTE4xNVE5cEtjNTVvSWtGRFZqTGpUTVRmOGRKVjQ3?=
 =?utf-8?B?czAyd01xREhBRkRtUDAzR3FKQjJzWjdRU3AzeTNpV21FUEJDYVFDNjhldFpS?=
 =?utf-8?B?dDZJS2RzOEdaTHRPYlc1d1VuZldaOHdwbnFhQlRFRWZoRjRBVlh4aFB2Ykpk?=
 =?utf-8?B?cEM5enpWaDlWOGNNUXpicUpac2ZjVC9WQmZXZk9KVnQrdHJQMUtTcmdhSU5M?=
 =?utf-8?B?d3c4eFJha0h6SWpucU1hUFNuTmNXK0VsZlh4Zkw2UWlqQjg2TjhCTzZLcHNw?=
 =?utf-8?B?WWxmZWJnMWdiNjlSWnZIR0YrVllHT0oxMGFyQU9tb3J1bXZvNS92eFFIYmFI?=
 =?utf-8?B?SFNnRjdSYWo5U1BPVndWTkxQNjZCQzNtMHhZbUN5MHlPK1N5aXdQMGlxVm5x?=
 =?utf-8?B?WE5IK2pzSnJYTkU1TDVmalJKRm5KQzhKbW04WHRwVFd3LzdhTStQVjhiT3hz?=
 =?utf-8?B?OHJmbWtGTllEekg5ak01eVJuRnJnL1EyMk1QazZWd0RBUEhubzVMUWdPdVNL?=
 =?utf-8?B?V1drdkpmdHpFRS8vTlBkUVhVQVZnanJ3ekNUQkRCQ2pHdGhMR3NPTVYxNVRD?=
 =?utf-8?B?TTRiSG1yTWNibUh0ZVFoSUd0S1NUSTRtU2k5aEVTTDM1YkpWRHJKc2xVa1BV?=
 =?utf-8?B?S1JYbVk4T1Z4bGtLbU9PQVdob3ZIb3B0ekR4OGRPWHQ0eDA3Mm16cTVXOVlE?=
 =?utf-8?B?akZkc1VBajdDbUJ2TG5DNXYxR1hYM2RzTEk2WDhMMDdad1Y1d3E3bjRvaHdZ?=
 =?utf-8?B?M255VmNmT3BnazIvbGowU25tZS82UGJQVllIelB4a1Eybm5qd0g1eGxKR2dM?=
 =?utf-8?B?T1g5emhGK0VGWkhMeTN1ZWoyY0pHem0xc0pXRHFiNFNhelRHb2FpTzY1QVkr?=
 =?utf-8?B?NVhaSWxJQkdjaEx1SmpDdklMeHU5MnRETjU4NDJkS0Y2NC9iUDF2bmVrSzVk?=
 =?utf-8?B?MzBIUzREM3ArSnJMaUJDL3NKeFNqUVc1Sm00R1ExbGd3a1JiQVVzYjBrc0cv?=
 =?utf-8?B?UU9oR1VuQ1M2QktyRVdkQUFFc2tyRHNTWUw2RnF2TEQ3VlJ2aVYrdDlaWTdY?=
 =?utf-8?Q?CUJUCFDFTvLNKMaQkVnB/ci2WhAL9SwF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHdVd24rd0ZmZVBsY3dqbGdaT2toeWJWT1RtalRWZEhpME9qa010ZUhmTTlq?=
 =?utf-8?B?bEVqV0NQSE9XbWcvRE1RZWM3SVpoL3hScUZ1eFlNWjJ6MnFCa2dkL0k2YzdN?=
 =?utf-8?B?R2Q4ZDFGaWkzWTZvdjdSUHJjblZCRlh4V2FhRkJEM3NsQ3I3MzF5SnpRcFl0?=
 =?utf-8?B?dHBqVnF2Y0RFTUx5bEFMTjBZMGh5UXY4Q043cG9GNHV6MDhmd1NtZVNhMDY4?=
 =?utf-8?B?QUtuOTJxWkV3REVCYTFQTEt2RmJqakh5SHRTYjg3cUIxMTljY1pqaXV0L0I2?=
 =?utf-8?B?RUxZcG1qSzlGbGNBcE1oTVZvNDZzT2NEdVlmZGQ3eVF2aTFrbnVieFh5aUdu?=
 =?utf-8?B?cVp3a0d5dXpscWErT2Fuczhndm1kYVhYc3M4NGo4RDZpMmhLZUhBYkdXS1ZN?=
 =?utf-8?B?UXpMQTFYcHFIVTRzZlcybHlOVHpSYUtVVksvRWp4QjlqdUNYYWxYVDVTRHZ2?=
 =?utf-8?B?Q3lEODQ2S2VBYS8xT2crMU5mSURYL3BVU0JoNTlLUGdqYnFKQkZwVnFGUDZS?=
 =?utf-8?B?dExONU9tQ2lRSitnOUY0dzVXNGJrUy9hcmpJajhKKzd5MkcxdjFCYnhXMTZp?=
 =?utf-8?B?TWZmamZBSWdHUnJ4N0Q3M3pGSDZRUmpXKzZLVk4xc1lCLzZ4cTZjR0FtYUlG?=
 =?utf-8?B?ckluWHRKQ2kvSkJKR1dpM2JtQi9ubUo1SnZnRG5SUU41OEkwTWtqcGZKV0Ny?=
 =?utf-8?B?eE1xcFNLTnIvSTI5Mnh6bE5VcVZDQlZjVDFLZmRUTE1rN1V0ZEpoVXlGWW1D?=
 =?utf-8?B?YVdYTkhqdVp0TEFkRnJmNTZya20zVzhzMjhnWjlsb2QyaXdjMWV0TWRyWHNQ?=
 =?utf-8?B?U3dTZGdYdG9BU3p4MUR3ZXdVa2JWeFk2ZTdkNFFYTk8rTVBlNEFzcHRLckts?=
 =?utf-8?B?elRWUXFzZkxVK3h3anRQT1Z5RHpGOERvQUg1ZkdJbGxhZDdqeGR4YlRoNVZl?=
 =?utf-8?B?c014KzVuMGdDeGZTNXd4UzhVN3NZSG1OTjNXdTgwaS9KWUhEY2JKMklOMUtE?=
 =?utf-8?B?SE9LSnNpVk5aaUw2bk9SS09MQlVKQ0Z3RVd5ZTdDcU1zTDNqcURMeUlLYmx2?=
 =?utf-8?B?enhERnQvRWdaYS9ObU5yUndUTU5uR2M4UWtwWWc3OWVkRDVHeDNNQlo1cTdO?=
 =?utf-8?B?U2NEakMyZExXZXZtMXJiSSs5VXlUMzUxTTFwQUdYRzE2UjI5T2tMa1N3S2xy?=
 =?utf-8?B?MVB3NS9HNVMrNG9tWUVKb1VQaU9WZ1RKMi84Ni8zZWNOdGFYOVVvR2V3MTZF?=
 =?utf-8?B?R2VpQVp0SWU5NzdlZXhRVC8ya1doVjNsdUJoVWhqRnVVdXVNZTVYeWVuenkv?=
 =?utf-8?B?bmxON2J1TFQwOG5DWXNib0NkNHRRN2RlaUgxc0hHNHhsUTg4RlI2czBQUmFT?=
 =?utf-8?B?YWVQblZjZlRBY0c0bWh0WUp3NkFEYzdab1E1cGE3ZWtjVXo1TlpkNGlMaDFa?=
 =?utf-8?B?NDEzZ0NlYlU4Z0tMTDcrckRkdm5uV21BVHVLU1VnYSt2VkFXZDgxZlBRWjdy?=
 =?utf-8?B?aUNIT2xEK1pmd3JjWUpKSmRwMnh2VmlxUWNSdVR1Tzl4SkR3UmlneGNEOVky?=
 =?utf-8?B?dE5Beis2K3MrQkdkNThuVFc1RnhLUUJ5RWpjRzNWTmZvMEFmODlxejN4dnR5?=
 =?utf-8?B?SnA4YUtLTEdSWm9Iam5VSlpCaVQybnJTZENYK21sTFJ2N1gzTHl3VkZ6QW05?=
 =?utf-8?B?Nzh2encrWnZ1T0hIbTdhd24yMDVNZXB5eVJ0VUwzMStpMldoMU83MVUrREVr?=
 =?utf-8?B?R1ZQeDBMekswQVRLdktBT05mNzN0dnk3ZXpmU1ZTNnNaSmJxZE0vSXNkaCtx?=
 =?utf-8?B?REZQcHQyRVRiTkRxL0g2S3pJZnlCMnJkeGZVb1hNWVJhL0dIUjhLSCtuU2ln?=
 =?utf-8?B?MjFlc0pOZ3MzSklNcWppclpPRldKclJHSnFGWmhOV1dIREltcmdsRjZ0OWZK?=
 =?utf-8?B?dGc2SzNrV0M0TlVaUVROWE40Z0NsZEhxR3kwL1dNaTNSRWZJdUo0eVhlVkJq?=
 =?utf-8?B?ZnNFYWYvSEZFdGNWUFJGUFE5MVVMMTg0czIxWU8rbllQSTFnN3c0SmtobEFY?=
 =?utf-8?B?WFA5SjhxUDNWUnJVMFdFUlFoNVVUZ3krQ2hESjg3TkZ3cXBHbUVHUHRrbUFM?=
 =?utf-8?B?YXdURXBTU2NneEcwRkVqcC8zZTNIeDNoOE4wTlRxNUZOd3N3VklqbElZZDI2?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b42c7de-efa0-4626-98e1-08de23004c64
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2025 22:02:12.8189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qIUqOZtR8TrssQVgn9JuX4xhItmK62cVSCyyzQSvmOeJo5TLK+6sNpQPEusAecrD1UDIAFRTlAzfPGNgHfB04g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6802
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

Quoting Imre Deak (2025-11-12 13:19:07-03:00)
>On Fri, Nov 07, 2025 at 09:05:36PM -0300, Gustavo Sousa wrote:
>> Starting with Xe3p_LPD, when intel_phy_is_tc() returns true, it does
>> not necessarily mean that the port is connected to a PHY in the Type-C
>> subsystem.  The reason is that there is now a VBT field called
>> dedicated_external that will indicate that a Type-C capable port is
>> connected to a (most likely) combo/dedicated PHY.  When that's the case,
>> we must not do the extra programming required for Type-C connections.
>>=20
>> In an upcoming change, we will modify intel_encoder_is_tc() to take the
>> VBT field dedicated_external into consideration.  Update
>> intel_display_power_well.c to use that function instead of
>> intel_phy_is_tc().
>>=20
>> Note that, even though icl_aux_power_well_{enable,disable} are not part
>> of Xe3p_LPD's display paths, we modify them anyway for uniformity.
>>=20
>> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../drm/i915/display/intel_display_power_well.c    | 26 +++++++++++++++=
-------
>>  1 file changed, 18 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_well.c
>> index eab7019f2252..1485fc65ab87 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
>> @@ -258,8 +258,9 @@ aux_ch_to_digital_port(struct intel_display *display=
,
>>          return NULL;
>>  }
>> =20
>> -static enum phy icl_aux_pw_to_phy(struct intel_display *display,
>> -                                  const struct i915_power_well *power_w=
ell)
>> +static struct intel_encoder *
>> +icl_aux_pw_to_encoder(struct intel_display *display,
>> +                      const struct i915_power_well *power_well)
>>  {
>>          enum aux_ch aux_ch =3D icl_aux_pw_to_ch(power_well);
>>          struct intel_digital_port *dig_port =3D aux_ch_to_digital_port(=
display, aux_ch);
>> @@ -271,7 +272,15 @@ static enum phy icl_aux_pw_to_phy(struct intel_disp=
lay *display,
>>           * as HDMI-only and routed to a combo PHY, the encoder either w=
on't be
>>           * present at all or it will not have an aux_ch assigned.
>>           */
>> -        return dig_port ? intel_encoder_to_phy(&dig_port->base) : PHY_N=
ONE;
>> +        return dig_port ? &dig_port->base : NULL;
>> +}
>> +
>> +static enum phy icl_aux_pw_to_phy(struct intel_display *display,
>> +                                  const struct i915_power_well *power_w=
ell)
>> +{
>> +        struct intel_encoder *encoder =3D icl_aux_pw_to_encoder(display=
, power_well);
>> +
>> +        return encoder ? intel_encoder_to_phy(encoder) : PHY_NONE;
>>  }
>> =20
>>  static void hsw_wait_for_power_well_enable(struct intel_display *displa=
y,
>> @@ -570,9 +579,9 @@ static void
>>  icl_aux_power_well_enable(struct intel_display *display,
>>                            struct i915_power_well *power_well)
>>  {
>> -        enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>> +        struct intel_encoder *encoder =3D icl_aux_pw_to_encoder(display=
, power_well);
>> =20
>> -        if (intel_phy_is_tc(display, phy))
>> +        if (encoder && intel_encoder_is_tc(encoder))
>
>Adding an icl_aux_pw_is_tc_phy(display, power_well) helper would
>simplify things avoiding the need to retrieve the encoder.

Ack.

--
Gustavo Sousa

>
>>                  return icl_tc_phy_aux_power_well_enable(display, power_=
well);
>>          else if (display->platform.icelake)
>>                  return icl_combo_phy_aux_power_well_enable(display,
>> @@ -585,9 +594,9 @@ static void
>>  icl_aux_power_well_disable(struct intel_display *display,
>>                             struct i915_power_well *power_well)
>>  {
>> -        enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>> +        struct intel_encoder *encoder =3D icl_aux_pw_to_encoder(display=
, power_well);
>> =20
>> -        if (intel_phy_is_tc(display, phy))
>> +        if (encoder && intel_encoder_is_tc(encoder))
>>                  return hsw_power_well_disable(display, power_well);
>>          else if (display->platform.icelake)
>>                  return icl_combo_phy_aux_power_well_disable(display,
>> @@ -1849,10 +1858,11 @@ tgl_tc_cold_off_power_well_is_enabled(struct int=
el_display *display,
>>  static void xelpdp_aux_power_well_enable(struct intel_display *display,
>>                                           struct i915_power_well *power_=
well)
>>  {
>> +        struct intel_encoder *encoder =3D icl_aux_pw_to_encoder(display=
, power_well);
>>          enum aux_ch aux_ch =3D i915_power_well_instance(power_well)->xe=
lpdp.aux_ch;
>>          enum phy phy =3D icl_aux_pw_to_phy(display, power_well);
>> =20
>> -        if (intel_phy_is_tc(display, phy))
>> +        if (encoder && intel_encoder_is_tc(encoder))
>>                  icl_tc_port_assert_ref_held(display, power_well,
>>                                              aux_ch_to_digital_port(disp=
lay, aux_ch));
>> =20
>>=20
>> --=20
>> 2.51.0
>>
