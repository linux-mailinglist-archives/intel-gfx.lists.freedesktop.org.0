Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBFCBAF3EA
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 08:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D80C10E327;
	Wed,  1 Oct 2025 06:36:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nRjsruQf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A720810E0F4;
 Wed,  1 Oct 2025 06:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759300611; x=1790836611;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2+KZV/C2U/iYEkBb9tCJzrPjzN0HFcUKtorVkj+5498=;
 b=nRjsruQfApwFIldAss7vlNiP0PhDnJJdJi864yJT7fbZnKZdxaME5TDm
 mVn9sIsalK5AGocEkmCjLlvcNS9q22RVw2leKYaBgdz9XbJCfGPWsVuq0
 5kR6ubqHOr0t29cNcu8oexq//CL/hsw/YZC0syJyaJIeIZvm+k5miNO5y
 Ti3dnAshjfriC0XCXOWHpS5bd6R5dY3QtrQveKE+CgRcYvRlKP057I40g
 i9hgf9mO9l+lDx7s+LlbIz0ueoEXE/brXQcKm/9sihmjTA73G794by9A5
 rUvbY/wl18GBPsrySDa6nOYdTmn0gkcoo7Mfj84TvaeeB2PwD5VDzcd4p A==;
X-CSE-ConnectionGUID: lQWze1OMQWW3P+bG0ETddA==
X-CSE-MsgGUID: yRzqfZTkTxS2N6Tzc7CKGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="64185109"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="64185109"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:36:50 -0700
X-CSE-ConnectionGUID: QpI9ososQh+LmmP7lyNzdg==
X-CSE-MsgGUID: 3UrbFSS+RpuRxNusFHH3Iw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183972977"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2025 23:36:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:36:49 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 30 Sep 2025 23:36:49 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.30) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 30 Sep 2025 23:36:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N8Xglqlus4HREXHtpmcZbhwg6XFHrWK69OOCMgIwpmsn8xYTb+ZQTKn+zdU7el5nZgi1FnZl/Q1kGaqvot+XVDRLvhnRZmoUxeCF8M48dKKvtRclBPRoSetXXjx6C6+a8voJ+ak9AYmc8AVybg6T0LLWSNq0k903rZB+w9phQLRPFPf1zCoF5HzQPwpKCQ9dPcbjdbcl/xMCovlgnSPRt4tkKdf9bHKW/SZgCwOzKjaguwGV0p54Uvr2iAsyfer28QAimq4v6RBXUGniFNY86mwLd11MmhBFLdx+8PI3KKFIPcJYOs+oN4lqdQfS1g1gb1yTMQJMVjnEzQ3F5KlD0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r/Yg4eY0aR0e3lO+KXozviL+iCTdFOdwGVMzCELkOac=;
 b=wuy3R3o3G7qYoFiGx/kKamMg3sGtJlzv6YHn0quKMqerJBb39kLSExSnojw9+bdEmjYq8yppyWUkTkm1loCwomV2abe3Ak4i+EMp2K2zycJiLk9CpYn2/Jm/UdyehuPTu40dvbhVPxcy36O1P1NFzb3SetyT0VMJQ2wTgBn6TCsMmnhqL25vx1l+lyiFKnILlYKM8+p+faSuQrA/iSvpE+ERJL9aCn5A5V4RldOwYzCzhjC1eY2X7O/QdCr9fYqxA09uKdyhOsAllaaqQz4AvH1dBG+n1qc0AT61Ukyd1kYzo/6mx7Re4BAEcDz5FGw1FPMieEQ2AyiDJmuUwLVc/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.18; Wed, 1 Oct
 2025 06:36:48 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9160.017; Wed, 1 Oct 2025
 06:36:48 +0000
Date: Wed, 1 Oct 2025 06:36:38 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 1/3] tests/gem_eio: Adjust for long reset-resume
 cycle on Gen12+
Message-ID: <7sanw2t5euulqqukkaopvqyl5nogzz5srahbc3klbmuduh3pah@s4e5gyvy75gc>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: WA1P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::23) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: bef51cb3-aa27-4b24-d3a6-08de00b4e596
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzJMZEtwODJBSlNuTldQK1NTTjZQdmRGbE4xa0hsZGhQTzRpOGlUZkpMRTB2?=
 =?utf-8?B?ekE5b3JhVzByNVMva3dRanZjdVUrbVlkaldhdmhZdklzVDZCOHIrUE54Q2Nu?=
 =?utf-8?B?YzVQOVI1eXVyeEt1VHAwVUprZnp2dEdmdmpCcXdJYzAwcXM4OGZpaWlod2Nw?=
 =?utf-8?B?WWkxSzlreGk1QW40NUE2SmM0U2tBMXZZc3VoS0wrWU1tUEhMRElUMnFrcmtE?=
 =?utf-8?B?a1BHNUhYUzh3NGN6TFFyS0s3OXNOK3dONFF3ZDRvY0JZcjJqaFhoYVBTNGZK?=
 =?utf-8?B?NEdQZVRYTWIwVkFmblpXYk94eGhoRVZuR2NJOTI3ZTl4OE9Vd1dJbWxGLzE4?=
 =?utf-8?B?cDRrTy9qSW4rdUpyRk9ueXpiU0hvQld5d0tzSkIwaHA2VU8rM0J2bE45QWhz?=
 =?utf-8?B?RUtDZXNtTnZoQ0ZUOTFzamxyWWpoVFFkZzc4TzhlZ3lnUnpIdWNrUStaN0FT?=
 =?utf-8?B?Mm4xcVEvcDY4ZDFyTWxCOFV2bnVzMTM3c21pZzU5QWpiYlE3ajJObWlHbjAv?=
 =?utf-8?B?a2dNK3BVNUQ4Y3dMakRYNDcvRTNVS2tCWWJ5OEtTWjkwMThzRVVNZHhpSWMy?=
 =?utf-8?B?bTlmaEJQTFZJTjF1QThFd2N1ajJFNjV5UGRUWUxTTW9XZk9pdEMvYm5adkFS?=
 =?utf-8?B?WHpKOTBjRDJTc0RwdmVTYWVTY2N6bCtoRlRIdlV2c2FObzVzV0VQcFFuRTVw?=
 =?utf-8?B?dGc1MGNWdFUyZGEweGpraVdiSHFDakxzeHhCbk9DNFR3UFloUVdrMzVWZHRF?=
 =?utf-8?B?MkUxeTF2dk40TEQvWCs1MzlsTWU4ZGNPcDlONFNKdWdQNFpnUTE3dVZiS0F4?=
 =?utf-8?B?TjRONGJKaTZYd25GdndGZEl3TjhNSm5YRVhDM0didFNvUXZENlRvTDA5RWhK?=
 =?utf-8?B?VVptLzdMcm9iTitIS2pZYi9DS2drekphY2UrV2RWYzcvNnVnakRKWTJDZ2JM?=
 =?utf-8?B?N3ZHS040eDRTdmh0elg4b3h2dkh0Q2FQbWprRXptZlltSjdnMzFCNDg3cTZh?=
 =?utf-8?B?cTF4VndzZFRTdDAwT21WTzUyZnZZUFBVYU5vTjRIcUVSUk4wbm1yaExsdXd3?=
 =?utf-8?B?ZXlWdWpuNGc1SHVKK1hEclBBVFdra3pxa281V0VhTk1yRUw3RmduMnNKUlpQ?=
 =?utf-8?B?WFlzOW1VOFRjaER6VTNoQzJ2NmhRVGtmczJvdmJwNXNwTkNkZUxYZWJVMDNS?=
 =?utf-8?B?V3lXUUhWQlFlOFNvK3ZQMEQ0OFd4eEo0eG9iaDVlblVJeHhxbVB0YUx1OXFi?=
 =?utf-8?B?WnlLVW1aczEyeXE2M1F0MTdVQTRyZ3VNMUtMSzZPcmRyVkRVTm5jMXg0ejRY?=
 =?utf-8?B?TzFxMms2bTdjdDFHMDUxS3M2SGNTMk5jdE5JTE1BOGYxOXFINitmNURodGU1?=
 =?utf-8?B?ZEJUVVZOd2dmMVZEbWRzWVVVQzFoUFNEYms4dWtDU29PTCs5QnJEdUtOVUcr?=
 =?utf-8?B?eVBPMkpNSmNXZ1I1SWx6RFd3MSs4aUdOZWJBNFFnMGpSZ3VjUzRySWUvVVJS?=
 =?utf-8?B?UE51NWNmcUltNTFHWXFkMHhTS3l5d3ZWYVR3SEpiUVFDS2FjeGVucERvd1Nq?=
 =?utf-8?B?OEUrai9FS1JMQzdoU2U5RmQyenVnSVAzZi9kWHE2ditjK3M3MUlvZ2VoQlJv?=
 =?utf-8?B?R3dBR3kvcUZTWEdja2krWHloNkl5ZVdBbFp5S2l4VGxaRGlGMytCVmZzajR3?=
 =?utf-8?B?T0Rzd3NseUNPNXoxYUk0bkJ2YUpqV0I3OUNja0l0UTZ2NkNDVXRpTFdNTkw5?=
 =?utf-8?B?aUdnSExvUXBTTXQzaHZnYlpHemlxTUpDck5SQ3hlL2prU0puUkNScXp2bUxE?=
 =?utf-8?B?ZWpRUXk0TisvclRXT0hlcDRsRDJqSmJwOXQ4TTJWeEVCaFdOZmg3T2JFYUFS?=
 =?utf-8?B?dkF4TWoySG5CMTRKVFcwUGh1U20zMjVZZy96RHdhSERKa0dPczVLMExSbndo?=
 =?utf-8?Q?6JAfGoljd7RPDZrbiH1/RUzwLLE7sp++?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a1prQkZnMjFpRm9IRlRFVlV4L2ROeUxUOUYzT0FGWFNUczhlaTM2cWplQ0tH?=
 =?utf-8?B?V1liL2s0Z0JNTlFxVktIL0R0VWkyY1dVbVBqQmlMekVuQURERmZtc0M3Y2tM?=
 =?utf-8?B?TkREeGNxZ3QySVI0Q2o5T09UQ3RlVkNVMkYzN2IrYXJSRU1INzl2SE8xZGlF?=
 =?utf-8?B?N2Ivb1k0TlhGOVdQOWxkcEphSEVtQnN6bFBXcGZBNzZWQlVjSVBWcFdRQXA0?=
 =?utf-8?B?RTIxbkpmeEplcXNyb1NmTERLYWt0Z29jYXhyV0s5cS9VaWFsU2VaeTQ4WTRy?=
 =?utf-8?B?MHJYMURhRDVtMDNtUnQxQVFkTThJbitCL0F3TVVIV3NRaGtGN1lzdGlKSU9F?=
 =?utf-8?B?YWIzeTEzYUxaTEVrbTNBWGJ2WGRzRVFlSy9pL2dRYXo2S3VUQ2hNNGhrQktr?=
 =?utf-8?B?dVUyTE5Pc25KR2FrQTdWbXdscWlrcERRVjR5UWlJeUxya2paeWVLeGdEUldH?=
 =?utf-8?B?Q0VTNzRzK2tnSldpTnZIWnYwNlc5dlQ1VHVXOXdWcTk5ZldGR2k3eHJYdWNH?=
 =?utf-8?B?K0MzUFA5NkNjUUwxZlVIVTkxa2lERE13b1dxaVZGWnBCbkc0LzNxS3R6SnQ1?=
 =?utf-8?B?cDBmZTZQWGh5TXJMb3pDSjRNUDlyTmdlWEZqSldyU2d2VkpVcW5taVAxT1Ju?=
 =?utf-8?B?Vk1McWE2ZklVOEVkRndLR0Z5LzNtL3RrWlhrcUdLTlB0azBsMVhLaTRoUWFx?=
 =?utf-8?B?dnV5RCt0T0crRUF1S1BaSnBVSmtyY2ZiNTFxNVBOVlBTTS9FLzFMS08vV3ZW?=
 =?utf-8?B?d1JYckpIanBTRUNCWUxvd2NJOXFFWnFOR245dXE5VlRTZlVZOG5xWTdIaFUr?=
 =?utf-8?B?eXZ6QWR1MlhHaWR0NnZydEtlUGZId0dwWDhyQ0VXQVVNWlgvMjc2YVgvL29a?=
 =?utf-8?B?L0Jhd1hnblBqM25YT1JmcFU0d1lRUjJwdUNtNmVSOWJ1WnJDMFB4UjdGNjk0?=
 =?utf-8?B?aHBMdzh3Qk96QlFWdDFIOVNNWkh0UVkwdFdTLzhLZWU0VlZHNUtVM3luMTFH?=
 =?utf-8?B?M29RM0Q5WjdVM0t1ZUF3b2hST3lQMVRBT1JSSjNIZ09XNEFtUzVnVjdjTmhR?=
 =?utf-8?B?Zjh5aGZUSld4WjA5elZjbG1nSUVxYTlrdktVMStIeDBQbThDUVRzclFYWWNw?=
 =?utf-8?B?aFNtT3o1WEFvUHVTa3pxTjdaai91eCtYYVMwdlYvZjZiTVhZZVQ2WGo2bmF1?=
 =?utf-8?B?R2pyZGx3c0VhY2hpMU51NStHQjlRQmMvOWRTa2RTcy9zR3BGUncyRlpnTWNG?=
 =?utf-8?B?WDJMQ1JyaWI5dDF0Y0dGMXlCdGtoUzBObnpSY05QREpWVld6R1VsRnAxRWd5?=
 =?utf-8?B?TGg1YVppWE9Bc0VERzZKamZwbzVGVW50V1kwOUNMWUNhdUtjalprUVhrMzVQ?=
 =?utf-8?B?THJHVitydFNrOUYwMm9KN2JrR2x4NVB5MWJhZzZkckdIVmdDNXdFTlVZOGhW?=
 =?utf-8?B?U2JyRzM0S0NoL3NYRHBiV2p0TXFGUmtMZ3RoUVgyM3gxbzA0YWFoS1QyaERu?=
 =?utf-8?B?ZVV6QXdlQ1Y4OUt6M3NMOUszK1BUZmRwOGovTVg0MUFyOXJvY1E2YjB6dmdB?=
 =?utf-8?B?eTdocWlmZXpHSE1TRTdHMTc2c3BBWTQ1SWVIS3JCSjFpbFl6bytjY0JUTU41?=
 =?utf-8?B?VWtoVE5aQnEzVDc1dnhXS2NWejR1cFlzUHp4RkMwcnhxUlo0VDJPRTlTMS96?=
 =?utf-8?B?S2dMWU5HU0VKZDdkdFFqMEsvejc3Tk9TMENtRTZmNlIzTjhMYXZPVlAzMHNM?=
 =?utf-8?B?M3FQRi81bFRuS2xHZ2ttNDRNOERkZkJLWk5TUHZnZjVlNmc2UGh0OEZUSTB4?=
 =?utf-8?B?ZW5kVlZtUi83VExKU2lmL2RUcmJyclVEK3BuZ2I1TTIyU1FHTjZTNmVadlIz?=
 =?utf-8?B?U0dhcURtSHJoV29OaHltbFlHK2tRNkp5WFRNcXc2UFFYajh5eDBMa3FVTWdy?=
 =?utf-8?B?Uks2MkVRYUFxVHZXWXFmaWc0M1hMOG9hNlNodmtYWWVJMitITzgxT1BUMXhs?=
 =?utf-8?B?MTNOUDZBdnZ3aWRxbE13bW0rTjBhV1JnVjNlQUxERjdzekdGTWdzNzZNOVh5?=
 =?utf-8?B?V1NlMEhOem9qdTlObDYzbGpnZUFoVWJtY0JwbE9UclVvc2hjSnIzOFZXM25s?=
 =?utf-8?B?VXJ1L3U5aW1MWnM0a25zS3k3YURzWkJQSjBJSTY2clNxZDBLb0JtakVTN1Fk?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bef51cb3-aa27-4b24-d3a6-08de00b4e596
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 06:36:48.0910 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aYE3ZXr6GTyV69YL2MaU2SsTEGFosLnEpOrBZrcF9xbPH01IFQW38Wko0HDPIM71TIkD/SBSHeqtQBAI4G5BP4DpzaHNKGioJ0U4wCcbUKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
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

Hi Janusz,

> Subtests that measure time of resume after engine reset require results
> from at least 9 reset-resume cycles for reasonable calculation of a median
> value to be compared against presumed limits.  On most of Gen12+
> platforms, the limit of 5 seconds for collecting those results occurs too
> short for executing 9 reset-resum cycles.
reset-resum -> reset-resume, just a small typo.
> 
> Raise the limit to 20 seconds, and break the loop as soon as 9 results are
> collected.  Also, warn if less than 9 resets have been completed within
> the limit instead of silently succeeding despite the check being skipped.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_eio.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> index b65b914faf..b6155c7fc4 100644
> --- a/tests/intel/gem_eio.c
> +++ b/tests/intel/gem_eio.c
> @@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
>  		 igt_stats_get_median(st)*1e-6,
>  		 igt_stats_get_max(st)*1e-6);
>  
> -	if (st->n_values < 9)
> -		return; /* too few for stable median */
> +	if (igt_warn_on_f(st->n_values < 9,
> +	    "%d resets completed -- less than 9, too few for stable median\n",
> +	    st->n_values))
> +		return;
Is this warning indicative of a bug? I wonder if this will
result in having more WARN runs from CI. If there is nothing we
can do to amend this, as slow reset-resume cycles are caused by
hardware limitations, maybe igt_info would suffice?

-- 
Best Regards,
Krzysztof
