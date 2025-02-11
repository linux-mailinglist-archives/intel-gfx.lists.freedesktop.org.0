Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F81A3042F
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 08:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7171410E420;
	Tue, 11 Feb 2025 07:09:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="naEjvsxa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CB1310E136;
 Tue, 11 Feb 2025 07:09:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739257766; x=1770793766;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=WeWDc2ZsEdldB9PZZ0ZWMlicUPwbR/LAIVUYBSObWnE=;
 b=naEjvsxaQ9VIMgx+Pv5gfhp20BlLOVB5tKCeu5EoeSj9fXOGsFSyp1hY
 YiUoBN1aknd4aTw4nwyNOjFWsw77dF7soIy4mOnZpbohs1v65ijBgUbVs
 4FEYraJ2Sclh2s8J4uWJ5TAwQZU33q4Sem7f0PuBPAh6+mekQiUi5LE0u
 MR6jX/u597nUkDG0QFPVJEReji7ryU4ZxurMhrmnqBJH95DVeL8ZGLoVz
 NGe5KzQzOga24bSgrhPKYqjnGSY2FmBb9Unt+paRSYTs19ka7ntDYjQZv
 diEV/ccTILk4+lUk42ExjWT/qCcx2IEJnwWA34y+oCb6kJn9lAOzhN6kL g==;
X-CSE-ConnectionGUID: +/4lMI49TK+hfZAvKj7NAQ==
X-CSE-MsgGUID: oxvU1g4iRG2DVUylznOzVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39883344"
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="39883344"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 23:09:25 -0800
X-CSE-ConnectionGUID: tA4fImn5TKWFUumvorzXfQ==
X-CSE-MsgGUID: YuG3cNVZTPK28Yj6gV3SWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,276,1732608000"; d="scan'208";a="117504513"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 23:09:24 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 23:09:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 23:09:23 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 23:09:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A3cXIVuF2BoCAzLVjv+Nos+xMSNVAfffb0pzLLl79eGTTXCHBiLvXfcHtWwUePs0cvTD6OUHsapmxfrBT/X8GwGEFDKz1M4nnIl9Vb1XJOaX43jiHF8PL/exGZz0+7jxrIJ1x48o2xjqUVZccH/XK3XB8NtfoNJOv+CRa5mEZrkYyl/Amb1bTSO52YiGqEFCkJyNQoTPQxLFBgtgvyz8oelEj2/E8Eq951K+G6ww3pj2HZt5/G0GCDEgIitDfJe633m0oLI2QncnFjL01tVO3m4UUAt0V8HcG0SAJF2Uv+EhFUQkMxKIr0tx1UoPmZaTsPEzw0vaD52dhXgoBNZLKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xCx0k4Wj7kgDnmhdZW/Wov/tnBShzem8M/iHU2lSLmQ=;
 b=cT8Tw7yCcRT4mHK4fwWxuO37gc6+C7MzUgLrBtw7OmMajZHXU+EH53M9tvijgoRKTc8+/zDiz6V3oUW+mcdbiZ3bsBWTCAgVgKE4ges2jt0iawcpyZTfWRhT8AzVgkcxXAASO//1C2w7oN9S/0u1yER9nRwuK+cRM0THzmKz/q+DaG9JWB+WsVjz5uxpUSJ1yd8tbJDhgkLa4KUPDQ8lxf7wlz/59oePH8objyDB/AvKpKDYUbfsGEsxqG6NR0zgK8/oZSeAvMHo1qnl/8chQvs9iFVR3SooLCJHJZtGUIPVVwFDrZtxF6CmSeWcNwWvf+AT27XaC3zuoZ0Xz1mc/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8839.namprd11.prod.outlook.com (2603:10b6:806:467::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.18; Tue, 11 Feb
 2025 07:08:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.015; Tue, 11 Feb 2025
 07:08:54 +0000
Message-ID: <6e7cb456-7866-4063-8ad0-e7e1c2bcd72d@intel.com>
Date: Tue, 11 Feb 2025 12:38:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 7/8] drm/i915/vrr: Check that the push send bit is
 clear after delayed vblank
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250207223159.14132-8-ville.syrjala@linux.intel.com>
 <20250210160711.24010-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250210160711.24010-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0016.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::23) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8839:EE_
X-MS-Office365-Filtering-Correlation-Id: acf4e71a-e433-4572-0dad-08dd4a6af1dd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d3A1QXI3bXZVYk9ValZObDRHWEJqY2g0TG1sYWljSmpjOHNNVEV5V2RONlh4?=
 =?utf-8?B?V2dRcGxZL2tWUlRwbGlwM1o4dlhYcGFOWWs2SVhEWGRCUzdrYXhpOStKNFM0?=
 =?utf-8?B?dEZrcU9XUjVFb1gwKzMxZG15L3kyRkJCVmxBL0V2OU9Ga2E3bGdkNUJDdDBJ?=
 =?utf-8?B?cWxDV2gxRDlsSzN5TnZnamt3Wk1WWEJIamJqdm45L1IyTG5mY0JMMUtFMlFj?=
 =?utf-8?B?ZXlxeDJrbDFYTG1jOFN2QllzOHpFM1ZiWld6ME52bGhRdnROc20zZElmTWVM?=
 =?utf-8?B?SnBBc2tkTktHd0hROFZXaHFQWHlmcVV3SEpRYms4d1hiZVJ5MGhzZW4ycC9j?=
 =?utf-8?B?S0pNc01DRDNvNk9qZUpYekR4WmhlMWsyaVNML3VEaWpJK1ZDaFJ3SzBBcXRE?=
 =?utf-8?B?UFd2WXZrL3hjVkRmTlV5UXpVVVFRUUlYK3hEQWxLbXdIbUdCTTJvMTAvakpj?=
 =?utf-8?B?U1JaNkV3QWR4aU5LaGE3K0xCMmxFMjd2dThQU1VQN1JOVlczVzJEZlFPMVBP?=
 =?utf-8?B?RmJSaVZiUFVLR1NoYlB0dkZTejc1N1RWbVZYcThmWnNiV2ViVW55N080K0tS?=
 =?utf-8?B?cWQ2SFIyODBDemRjc2loQWZhd284Y0NveUxCa1p2KzB1NGVJZTg5OEpISk1j?=
 =?utf-8?B?VGNESlY0d0Z6ZmJCWXlqOURkTWhKaDBUYlYxVFNCMHhFd0liTHBlOTBIdHhG?=
 =?utf-8?B?MTBJZ0hjcUFkYW52aStZcUpkcTc4K3BIQjFhSjljNWJmWFJBZWJNTm5Wb2g0?=
 =?utf-8?B?YVFSNnlmdjIrVVZhQkdhdkRwOG1mT2tvMm9yNzZVRTByK1BLUG8yN01CVjVo?=
 =?utf-8?B?Z1NvY0V2LzdxaTBJSU1qYUtEQnRGRkx0RSttbHRGeDZUYTJhUGx3MTBqWDN5?=
 =?utf-8?B?aG92Yi8vd1VLNTlEL2ZCcXdzb2Y3Y1FoYTNHdS84S0l0V0RBak5CKys5L3ZK?=
 =?utf-8?B?UlZzMXpsR0Y0S3FBR0NSOElhQnY5N3poWklDZ1d1MVIreEFKbmFnb0NWbzZE?=
 =?utf-8?B?R283c0lGYzFEQllZRFdVTWZyR1NWenBqRHVpUHdaaTJFSm84S3lhK0s4RXZ1?=
 =?utf-8?B?U0NaUzRVY1ZsTmZZZXJFanlCYmkreUFicVpDNVF4TXhjVFgra3g5Mk1yZFMv?=
 =?utf-8?B?QVFuRE0rc2xENGVkUVJZWXlDbGZ2Z24rTWNvZm0rWjVFT0FPMTJGK01YT3lh?=
 =?utf-8?B?cTZ6Ry9EaXBvazBzZUJsZGNsQ3ptcDh0Uy9PbmlQVGozUWFEMXRQK1ZqdFRt?=
 =?utf-8?B?alNTQ0doMTBCUUI2VmIybnU5WnNkQ2RQL1NhV2RnRHNXWnM0a3VRUS9FbWhq?=
 =?utf-8?B?V013aXBSbTVEU2hBa1FLV20rOWNHTi9panIvQUx2ZnBVZGxHdlF3UEllY1ht?=
 =?utf-8?B?enJ4VGJncFFORDdTaHlqRDJWTENBOHlDMVlaeVFVR3pKTTlvZ1hVMktKUjls?=
 =?utf-8?B?SnczUWY0cllpUGQwbEZwai9FR0grZnVnSG5TeGRsR2l2UmtkMmNTT1M2ZnQ5?=
 =?utf-8?B?aXU5S3g1NnhLTDJoL2Z6bktlTCswZU5CRGoxdStBYmtJME5JUjFFM3U4SUxG?=
 =?utf-8?B?S1N6a1hSeEg0UDh4YUUxYSthdkNUZ0F5L0tLR09XRXpYd2NJTXJoWGJxMEU3?=
 =?utf-8?B?WnJXWndEaWxRRVlwZ3hVVUNVRzJxMzFRMTY4KzlPdGpaVXVuUUZjTVhlY01Q?=
 =?utf-8?B?M3E0dHRZVEN6QWMyN3U4UzBrbWtXQjRsYUh4d2R5WGZ3MWFNVkdjM2tVYTlP?=
 =?utf-8?B?b3Q4Z2FPNlNMdmdlVCtxV0o4MXFhdElsU3BxVW54RXpIbmVhelY5N1BESDR4?=
 =?utf-8?B?cmg2YkVGL2FjWTEvMTRUcE81ckl4MzBaRklOL21Cdnk3WHBBRkdMVktYQ3N6?=
 =?utf-8?Q?KlwSqZfBgje72?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkhGd0RON1pBWk9GWkg5WFZMNi9GenNPRWtBZGJXMUpLTmdkUXhiVnI3TW5F?=
 =?utf-8?B?Ry9mU3N3T1BoU3hqam5wSC85dkVPTm9HT2xMcmFSbmVlSkFmbzl2aU1EZVhP?=
 =?utf-8?B?MDRVQXNPeVUxWHJuVjI4cVZ4R2N3SWUxSU5hcU1WTWh5YjRQcmRRQ0JpSExX?=
 =?utf-8?B?ODkwVjJPYVZDM2E2NmhPRGJ3MUVEc0syTkpqTmJrUlBlb0JINkJ3enBYM0g0?=
 =?utf-8?B?aFVqUnhYbWF3dUVkV3ZTUWZaMlZKVEJDTHU3MWNSYnhYN0pCcE1IT0lWcXpG?=
 =?utf-8?B?LzhJK3gxdHhON0JwaHdNUW9PaC9jWlZhejhzTCtyYlpqWHFBMjZqMVVtU2J6?=
 =?utf-8?B?ZnZlOHhQcTdmVnZoRWN3d09UN3hLYlN0MGEwOUpqZ0hhbDgwdy84bGJGeVB4?=
 =?utf-8?B?dzRzR2xjcXk2TnFwS000cDgzZ0Rlb3NTSFF2YnF5TG16elJrWkNsamViaGdD?=
 =?utf-8?B?VzZGbFMvTERqT1JyRGdjRGdEbTM0MGt6WGFsSUIzVVhuN0RrZUNxdjhGZlFZ?=
 =?utf-8?B?eWo5UnZkOWN1d0RNN24xMnBpZnl3bkZUeThxcDBEYWMxZWZCMEZKZ2lDVzNC?=
 =?utf-8?B?dE0rTWJvSE13ekxZbTFiUkVmdHUvNGNtREdXVXYrQzBiTTFIajJZc1ZtR3ZZ?=
 =?utf-8?B?dVpuNEVjb2pyUWIzMmpqQXJiUkw3aHlvcFZDWW9MOW5neGhXcytJNnNJNzVp?=
 =?utf-8?B?YnlvdjJoQUlPQkM1K2Y1bGJlVXZtNncybkxjMUFYOFVqc1QwbkJoYTBIRWpO?=
 =?utf-8?B?K1A0a2o5RFBMbzJzUVcwM05YVVp6eVdzaGhTaTFUZGVKbCtxN2V0K3luWEFm?=
 =?utf-8?B?eGdnNlptbWNmSk96SmFzN1JRQVFrYUNNS2E4bXR6RVNjWExicWR3ejhIVEox?=
 =?utf-8?B?cG96bVNwTWxyMG40cDltQ085d3IyWllCOEhxcTJaUnd5bjlqR0tLejdLWTcy?=
 =?utf-8?B?Mk1yekFBSXNRU0xsaXJWQTFUOEhodjZLN1F2eHZHREpGVVV2UDd5L0NSemwv?=
 =?utf-8?B?Q2dEQnEzZHZpY2F3V3hMVDhsNWlhcEZtTE9KaTdTK1NLVklkdzZ5N05vR1Iy?=
 =?utf-8?B?cVdUUGcwTHdPbU1SU3Y5endWdWkvRFFtNUg3SUFBZWF3c2NST0pJRVgyT2F3?=
 =?utf-8?B?cVdPdE5FWUZEMzB1c3luN0NoZGR6ZldaZ2l0eGV4Q0MvVGZpZ2R4cmwxNVk2?=
 =?utf-8?B?NC9kc0g5MWh0aGgxbTFuYlhnZ1NRTGVNQjN0Tng3VUVKRFhXbEJ6ZUZudERD?=
 =?utf-8?B?UUxjaXRBVkNiWDFDTlFaS3RyZFIxTjdBT2JuT001MXBjWWZ2TTlaOUI1OFps?=
 =?utf-8?B?d0x5OGg4Ry9kd05SZTU5ME9NSnFWTnZ4V2tTdjNsK0pCL29CWXpydjlxYVpq?=
 =?utf-8?B?ekhXbXc1L3YyR3hncE1vQVFGM2NiOVRxV0laZG1VU3krSElMOFQ1MlR3cHk5?=
 =?utf-8?B?bzdyeWpEVjdab2RHZnBwdFRORE1RckllYVdXZis4NzYwZ3d1YjBoRzZMVW5N?=
 =?utf-8?B?alpCQlNKNnkvMU5lR2V5VDlHN2ZTSzByWjFPUXY5cFBmaUpMSzVqZzEyUEZE?=
 =?utf-8?B?dWNXRnQ3eHkzWTJjSVRvY1kzSWFqV0laajFDa05iVEx2d2NPekNzNzRxRkQ3?=
 =?utf-8?B?QXFTZWIrRElkZ1Bwb1RrWG1LZWUvZEJDdnprbnJYNjA4Umd2dWpBaFYraks3?=
 =?utf-8?B?RjVFNE02eFNocGFRSm9VNGwxZm1mQS9IUFVockU5aXI0eFhMZGdRbnVkMkZu?=
 =?utf-8?B?d2NWWllZOS9PL3BWd3hzRitGN2NzMlZKb2E4S2FJTC85UExEbkRWZk1TeHcr?=
 =?utf-8?B?anB6dXY3eTdyS093cFVDYTdVVnRldEsrZFhsZWZWVWgrRDh5VEt1aE12VFVx?=
 =?utf-8?B?emlyRGVlZVlRZFcyYlh6ZnpCMTlqSTM1aDdWcEIreGcxZE9NTGNsU0UwQ3NH?=
 =?utf-8?B?VEppdHJiVTNiZXZGdDVFZXhsMHN4Z095VWxDbThYWWFHZVlGZDlVYmtyaTN1?=
 =?utf-8?B?MWNHUVlrSHo2cjVRNVltVWhuckxPKzgxOW9DNW1kWGJCd1dEOG9XajRFaS9v?=
 =?utf-8?B?Z2crc2piQTlySDNyamdoVk5QeXRJR09sSWZDV3hvTzg0VCtiVjdwVTVzcTE3?=
 =?utf-8?B?UnBVeUtKbWFUa0R5Y2ZkNExmTUorOGJORmwvR01BQ05zZkZUUlVPTzJlbEhP?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acf4e71a-e433-4572-0dad-08dd4a6af1dd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 07:08:54.3569 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: h/ZBIAtN9rgxgjj5+qnuQLlmlifV4sUK0q39w2mfhW6w2p24CdzcJOOJNEvOqYRrgg+xe+vp6ViHmM2vPNQl766ewYhJsfFnxnTHwtr8Xks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8839
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


On 2/10/2025 9:37 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Since we don't do mailbox updates the push send bit
> should alwyas clear by the time the delay vblank fires
> and the flip completes. Check for that to make sure we
> haven't screwed up the sequencing/vblank evasion/etc.
>
> On the DSB path we should be able to guarantee this
> since we don't have to deal with any scheduler latencies
> and whatnot. I suppose unexpected DMA/memory latencies
> might be the only thing that might trip us up here.
>
> For the MMIO path we do always have a non-zero chance
> that vblank evasion fails (since we can't really guarantee
> anything about the scheduling behaviour). That could trip
> up this check, but that seems fine since we already print
> errors for other types of vblank evasion failures.
>
> Should the CPU vblank evasion actually fail, then the push
> send bit can still be set when the next commit happens. But
> both the DSB and MMIO paths should handle that situation
> gracefully.
>
> v2: Only check once instead of polling for two scanlines
>      since we should now be guaranteed to be past the
>      delayed vblank.
>      Also check in the MMIO path for good measure
> v3: Skip the push send check when VRR is enabled.
>      With joiner the secondary pipe's DSBs doen't have access
>      to the transcoder registers, and so doing this check
>      there triggers a reponse timeout error on the DSB. VRR
>      is not currently allowed when using joiner, so this will
>      prevent the bogus register access.
>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com> #v1
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  1 +
>   drivers/gpu/drm/i915/display/intel_display.c |  4 +++
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 34 ++++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 ++
>   4 files changed, 41 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 4d8f6509cac4..cfe14162231d 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1991,6 +1991,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   	if (crtc_state->use_dsb) {
>   		intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
>   		intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
> +		intel_vrr_check_push_sent(crtc_state->dsb_color_vblank, crtc_state);
>   		intel_dsb_interrupt(crtc_state->dsb_color_vblank);
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0790b2a4583e..34434071a415 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7737,6 +7737,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   
>   			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
> +			intel_vrr_check_push_sent(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   		}
>   	}
> @@ -7886,6 +7887,9 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>   			intel_crtc_disable_flip_done(state, crtc);
>   
>   		intel_atomic_dsb_wait_commit(new_crtc_state);
> +
> +		if (!state->base.legacy_cursor_update && !new_crtc_state->use_dsb)
> +			intel_vrr_check_push_sent(NULL, new_crtc_state);
>   	}
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index adb51609d0a3..cac49319026d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -416,6 +416,40 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>   		intel_dsb_nonpost_end(dsb);
>   }
>   
> +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
> +			       const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!crtc_state->vrr.enable)

I think you mean:

if (crtc_state->vrr.enable) return;

Regards,

Ankit

> +		return;
> +
> +	/*
> +	 * Make sure the push send bit has cleared. This should
> +	 * already be the case as long as the caller makes sure
> +	 * this is called after the delayed vblank has occurred.
> +	 */
> +	if (dsb) {
> +		int wait_us, count;
> +
> +		wait_us = 2;
> +		count = 1;
> +
> +		/*
> +		 * If the bit hasn't cleared the DSB will
> +		 * raise the poll error interrupt.
> +		 */
> +		intel_dsb_poll(dsb, TRANS_PUSH(display, cpu_transcoder),
> +			       TRANS_PUSH_SEND, 0, wait_us, count);
> +	} else {
> +		if (intel_vrr_is_push_sent(crtc_state))
> +			drm_err(display->drm, "[CRTC:%d:%s] VRR push send still pending\n",
> +				crtc->base.base.id, crtc->base.name);
> +	}
> +}
> +
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 899cbf40f880..514822577e8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -25,6 +25,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_send_push(struct intel_dsb *dsb,
>   			 const struct intel_crtc_state *crtc_state);
> +void intel_vrr_check_push_sent(struct intel_dsb *dsb,
> +			       const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
