Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGgyArWFgGnE8wIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 12:08:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B40FCB7CD
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 12:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBD9410E45B;
	Mon,  2 Feb 2026 11:08:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="axFuhNdd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53A910E458;
 Mon,  2 Feb 2026 11:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770030513; x=1801566513;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=kWzoxdMGp7vpvhK4aeiVTQX6rycMZrfnrLKq7YkjZWc=;
 b=axFuhNddexticEtmeDjRSlXLlGBhXJujWjPfQwALc6Kyb2aM7WbAvHRt
 Wvtw00iWR26/yrbC+BtDmu8z2ALsyeq1zcrtue4cUVnabNzwhzpUS3n5L
 eGog86Ajw0/nsNXw89gUlxi8OV8NBfRGbcqyo4eEZIXNLFV3eIOkPy2rO
 hW8eWOf1nxSnTd3dv8YtASvBWGYJO2Bz9F0RTEeUGGCLzIDMHkC+bCBQT
 hvnoq8rNIOwmnV5J95JIeBCwxfD618LCpYmt0yGHlIDrTFYcI6rVo3IwP
 T49lc5937HCZxXwfmKRIEYENovaahHLenGActZK+whQWHCJ+crmqcazrh w==;
X-CSE-ConnectionGUID: /UOH1ACcSjSPoVTH8vMyRQ==
X-CSE-MsgGUID: Fu5YFck4R42FxqhFGzhKtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71083019"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71083019"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 03:08:33 -0800
X-CSE-ConnectionGUID: WzRwXzwjT9CFOCfUW8x11A==
X-CSE-MsgGUID: 8cs0Z+PlTlCYZsFn0nrHzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="209769457"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 03:08:32 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 03:08:31 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 03:08:31 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 03:08:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sScQFGHAaCs/9a/H9ek95MWop3tbUU8q9YoxxDo4g/maM681tDdIHezFvWKnGdMJ1StjA1jx12qEEIxC5283KRy51J/8n2sapihS5Ir5NtZ54pu0Tn7DfrzP8Zqwe1VhI8Ln1eZYMRVLYEmTzqswsp4cKS52CuF7OXtbIpuzKefWNbXE5VZdf09V2WfA5poaNb6fhK+wZpvjqM7T/rVPEa4jMEG5oaOOVYOPQYZYYVxiXu4sk0lkBjx2H0COf5UOPGxPml0rsec6LgY/3H/O49g7Y89lgwWbSWgSrt5F3s3dY/K4NssY2HgUCc4OJVkTfdNcXY7I89MSgBntBk7wXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iiyxUFkF4araQNAa64jWTfBqlKpvMAPBIr/6wzxSIbw=;
 b=hwjb+Wtg0jdJ2aRjmbUQ1D2HPbsx7eouz1nM7g0xBR5NiFKzZNOysb1A5SGWsXpspH+6Se58WB4l7pp4R+42WKYg+LnwcpjasSbMkgZYFWbVscUpFC4A4rv/gt6ACvRZKvq2V+Zbrq/1nLCK5xBNoxY+pgFH4AR2x+HeV+YU7KtJROiGcb8daCxvStEtEbPTRD9cdXBEyUxCgEpyci3eMSn/cBZQIw1j2hIg8g851js+BGqFhfilzr29Hx45eCj+m2vTiyPqFlSWTWCWJzy9+aSm07VES9bSMf7fnSQOl/7wnD/Ral6ai7qP1KP4ia+NkuyhaCGNzxXpgVqZN6D1Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV3PR11MB8603.namprd11.prod.outlook.com (2603:10b6:408:1b6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 11:08:29 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 11:08:29 +0000
Date: Mon, 2 Feb 2026 11:08:17 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v3 3/6] lib/igt_device_scan: Include PCIe bridge
 upstream port if available
Message-ID: <lk2jd4ej5eedwaccuprruzg4yqoia7n2kc4723pnkmbaatormq@g6o7nysaediu>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
 <20260128161041.225652-11-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260128161041.225652-11-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO2P265CA0207.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::27) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV3PR11MB8603:EE_
X-MS-Office365-Filtering-Correlation-Id: 14090071-34f1-45ea-9b80-08de624b64ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V3REVHMwQ2I1cEI1aTJHUlJZRlI2Wis5dVlYMUltNlV0cXBwWTErQXdyd2Y0?=
 =?utf-8?B?MjZmMFErbGIyVVB5cXJDb004SFpFSWluVGFic2IyNURFWUdsUHNpTXQ5bkZ0?=
 =?utf-8?B?T3QyNlMvY3hRK2ZQTnd3cmlYR0NWYkRKRjgzck96VUgzNWRTWXhOZFFnbXRp?=
 =?utf-8?B?SlRxVGdoYTYrRVlOOCtNVzRtWjVYOEt0Tkk2ZGxMRUZ1SUppOG05eFZqN0V4?=
 =?utf-8?B?RFkvSjZidm1NTmZnQis4bkhGVTE0NDc0RGVFbER2N25zZWQ1UWdHT2d5Vkc3?=
 =?utf-8?B?UTB5aHlXNW9BOTVnMkpZbzZKSGJqUDN2dDlLRVFFQjZ2aGtWMmc3T0JmdTJJ?=
 =?utf-8?B?NTBIcGt2SG9QNjVlZzVQbEkyTjFKN3hMM3UvSFBmM1lGTmpBcUFTTDJ4V2Z1?=
 =?utf-8?B?T0lJdlFheC9LOFA4Smx2djZMaXNWRlZNZWZnUndMNlRKaXlON0pIMDRBY3po?=
 =?utf-8?B?Z3paaWk2Zy83VGc2VS95Tll6eVRQN1paVHhBUCt3RkxsVjQ4UFlWMkVOZXIz?=
 =?utf-8?B?MG43bFVFeXJmVjExdmdVc0hTVFhGbGdwSXcvQVFLZERPUzhkWC9rY0trY29J?=
 =?utf-8?B?MzNoZURSOGFld3ROWEtOMWV2ZW1HM0lqRnl5SG9PZUxXMHg5NzM5T052NjRF?=
 =?utf-8?B?ZGdUdE1lRS9VcjN6YkxJVWQ0WnBuZUIvenVKY2FCejhjQ250NWlFUWtaMTR1?=
 =?utf-8?B?aUZPejlhK0ZBelVDK2MwdlhRYXVwK210V0svZkY4N0g2dWZMRExQQ0YvSDg4?=
 =?utf-8?B?NlVQQnloZmhtVXFTSDlkSmVHT0pmZEt6bElRVkRZQ0t1Q0lFUzFHV3VoRXB4?=
 =?utf-8?B?aG9jYXI1WS9UekV1QUJETTNmNzhxcXZTdG9tUm9HSXp2eUNxMDR3VHlxSnUz?=
 =?utf-8?B?YnRiNkh3N08wU1N6eTV3M0ZlbUJiUWlLT2tQOUhGcUZwMVNXSzNuYldUeTNN?=
 =?utf-8?B?eG1nUDZhODdDOUdVMjZCSCtaNGxhdTNWWFVKSFRObXJ5OUUraW9vMmZKVVBj?=
 =?utf-8?B?RzltcmdaTEwzeFdCYVNEZDJGVEh6UFhUNFN5dWtwdTFqOUlUamlqeHdzOEdJ?=
 =?utf-8?B?bnZwY0luODIxV2RXTDZvazhWVEQ2N1BJeEJBMXFjazRNclZrbDhucnVHcDhP?=
 =?utf-8?B?azg2bXVtV1FuM3g0MkVxRnFpWmlwajhDSEZiM095UEZ5cWwyZ2ZNa1JXeU9X?=
 =?utf-8?B?SWxaOTkxSmNoaUw1UlZieU96Wld2ckc5TEdlcnJIR2tOeXM5dlRMZ2E3TlNo?=
 =?utf-8?B?U1VVeGVlZ2p2bVozdWI3bCtlUUY3K0RFOFFueHE5dTk5VDJEQm5XRk1uaW05?=
 =?utf-8?B?OXZybDNyWkl6Wll0UjBCdUVUYTFrQ2JEemR3ZkFxWUhhNjZ0M0pRSm9lTzZU?=
 =?utf-8?B?d2pzQ3NOdEZHOFRiMUZrV2VNWC9CMjdXQ040VEFCcnFrSTJ1SkZjY2hSU3FB?=
 =?utf-8?B?WE12VmlHaHVDVlVOdjUwQWorUmJZeTBIaXRSM0J6bGFXSDhub1A5WFludVNN?=
 =?utf-8?B?MnQvSlMrYkZXd2hRQUdMSUdFbStSdlU4dENYa2pTcG5oQ09keFhKQWQwdXh3?=
 =?utf-8?B?TTJDQjkxMlg0cmdxSUtoam5tU1kvTVV1YnozWUhpdlNTSmlRYW9QU1cwZHg3?=
 =?utf-8?B?NDJxVEkxNnA3MVBoUUo4QzZsczRpL0dOV3JvaS9ZS2hPQXByTzN0RTBtZkg2?=
 =?utf-8?B?TVpWQ3lYcnNpeFM2Q25FRDNYbHRaSDZNMW9aNFVvTDI4K3JwZkp5UVhaajV0?=
 =?utf-8?B?eDVJQ2FRN1JPN0F6QStzK3A0Sm5pKzVFTC9abjZUMnlqRTh6MFlZQjErQzk1?=
 =?utf-8?B?cUFHRmJxSW5JU1RTakNhK3liTWtCT3hIWlk1a09LR3VnVDVzWnhibzVQcUdF?=
 =?utf-8?B?enBHTzMvUE5YQ2tNQjFhOFR3Ry9rQzdSYTB2ajNFb0lIRjFYU056WW16c3Ba?=
 =?utf-8?B?UUlpMHVEaElPbkwrcm9VNE8wSFBvRVAvYXB2NHppVEJINHNVNTVacjZnMS92?=
 =?utf-8?B?dDlpcHFHV3V5bzJZQ2NrSHJCUW5RM052aTRTWU9qem9xNjNSMXdDVFpmTnZB?=
 =?utf-8?B?WHZOdkRVaDRWMklpR3VhK3ZpN3lnNHJPVjFTc1U4V2Q1VEVnRjRScTY2d01T?=
 =?utf-8?Q?3YFQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Zzc2S0MyTUlEbWRLM3lQZ2NoVnI3MnBST05MU3k3czIwZmdQeElxODB1KzV3?=
 =?utf-8?B?WGtCU0Y0WHFUQUh0ZFBJN1VQOWMxaGFGK291UVBjVU1WclpZWU90YTJiZ09C?=
 =?utf-8?B?bnRMUU54blRNcjR4bzFvZ2d0czJESEY1RjQ5bDNmemVYdml1TDVGdFJzV0g3?=
 =?utf-8?B?WWtjdGNMdlgrd3laTk5mdWZjcjc2VjRzRWM1d3VIeFZPQXc1OFQzQ1JZZkFj?=
 =?utf-8?B?UEMwRGhNUGNkc3MzeEFBMFhHRy9OYkJtZEYvYUs4R0ZQN3FmbUdNQXFodjhE?=
 =?utf-8?B?MkU2cEhFdk5WcG9GcW9IS3RZT0xXbE1EZjl3djJXMXhsZnJGejdMT1V6bDlI?=
 =?utf-8?B?RWZtbG9yb04xaHI0a2RTMGJ0ZzhTbXVWM1BuclNIeno4OURQc2dQWURzV2NS?=
 =?utf-8?B?NmdtaUlvZVhzY2tqQ2hGN1BiNHV6QXJOaXhhK3g2VldaRmdPZzBsZnlSSFBm?=
 =?utf-8?B?eDdDcXU1dkJaS1RLMkx0N1d2R0ZkdGJEOWlScGVzOUVtZm00dngvckszR0Z3?=
 =?utf-8?B?OWdGcDhNQ21UL0FvTDhYcCtWNEVSWndxd082VkNQaUZ0eElBa2RXeCtLcjVy?=
 =?utf-8?B?L3Nrc1RoYVZiMjdxUGRDWjJRSEJCaEdzbGM1ZG1TSnhOaVhHRm1rNUwxc0tD?=
 =?utf-8?B?WFBQdzdqWTZXRWEyMHJ5WXhHd1JWTFVTb1BRbWFZemlpV2VZNUVIclU1U1Bh?=
 =?utf-8?B?SE1zaXI1TkY1WWR2ck0vM0FYUmhtK25XZzVtV0NFTDdPbWJvWVNyYnYzSTM5?=
 =?utf-8?B?UTZNVkQwVzVlL3Q4VURtTHFSN2U1TUlxc2NCMEw4cHZ5Vy9saE9NYjZpMXM1?=
 =?utf-8?B?SStKQVJBYUUyU0FRM2dsZnVxWVplQlEreEJRS2JOUm5vWEpIOWIxaVhzVnlh?=
 =?utf-8?B?Qjgvamh0YkJnTGF0ZjFZczMwSE5vYm5xb0Q0Wk9WVkRBMyt4MkxSZ1Z4TklF?=
 =?utf-8?B?WkVRQTRKeU9VU2ZRTFZuemFDeTFkT2VZdVhvU1NTOXJEZDJGbjU2UEhBdW0x?=
 =?utf-8?B?SWh2bmwyN0o4REgvVmNtd2JHUnUxVVd6SmplT0NLSlBYS0d5ZGlsZnR2QWJH?=
 =?utf-8?B?dUZPSHZPVmNKcCtYdmx2a3RDaldKdXRiRmtncklIZDd4NnYwdUNZUVg3dktS?=
 =?utf-8?B?cThSWVNGb21PODhCV2gxMVAxTU1ZUGx5NU04STdzaE56Nkx2d3BaZEpkcXVR?=
 =?utf-8?B?bklSVXNtZ3NqM0YyK203cWlEMzlzVHE0cy84bU4xU3pJbkhOUERycG43aTlW?=
 =?utf-8?B?cEp6aG5XV245clBLRUtmY290TDlnQXYwYThLczJPK3M5elN5QWdMMnRxejU1?=
 =?utf-8?B?SDFKRDNmWkt1NWp1UGRtL2tRd0JsRmZlaUE3NDdqYkRiUHNqRHdqdjVaalds?=
 =?utf-8?B?Y3VqWjR6NGI4VjYrSGxwejRYbFlMR0U2L28rZXlBOWhHd1NTWTVmN2x3bEli?=
 =?utf-8?B?bjBDbWZ6T2Fac1hnQlM1VndCM1J4K2MyZmpPdUlpZ1ozKzF5QTBEeFNsQjVm?=
 =?utf-8?B?bElHOThTQmZFLzZwQmZDY0IxaEI3d0pHbWZrcU5LWDhIeWZkeGZoMXljMklT?=
 =?utf-8?B?ajN0Q3VHenEyVE42MFdBbFpqelJTaVJEMlVKcDh6VzIvK0hVS0R2T3QzRWpJ?=
 =?utf-8?B?SUhyQ3MvZEJjSHJmaXBidjNmQ0ttbzFKdjBEclQ3NVlnMWgwMEdZbmRPamha?=
 =?utf-8?B?by9SbjlMQU4yRitWTzZNUXJjZkNxNkxYZnl6bEdRSlhyYkljNkFsWHpKZEJS?=
 =?utf-8?B?bG53Q2Z4MTJ5MHFNbTdMclc1eUtNMmJtTWpKNmtqNWhrendybnAya2FkQ1Z2?=
 =?utf-8?B?czlmQkRUdW92R00rNTB2STdHcXd5aGRqWHJiWnRaT3JYdEowL1krcmlBd0Fi?=
 =?utf-8?B?VHhaZEo4dC9lbDJjYldRc1I0aGF2RG9ReFhDb1FGYVAzY2xnU0lzVVhmbmJJ?=
 =?utf-8?B?Tkxwb00xRXIxaGpuZUtBRDhPeCtCQVZaZ1VIVUpBbVhZM0hCcWxzaTFwUy9C?=
 =?utf-8?B?K0hiOFBEOVFnakN6ZUlnY2MxWER5SnBBUVRkM3IyNUxjamNvU0pkeWZFaG1k?=
 =?utf-8?B?eUN3eERuWW5RLzNPODlxM2pIK3Y1QVIwc1hoMlhZaUgySlAyL25MUk5OSVgv?=
 =?utf-8?B?RDZQc0QzaWhLb0JTekVWRG11eE94M2FsTE9aeWh2cUdIcWRHVEYrUURmbEUy?=
 =?utf-8?B?RitvSGRQaUw2WEZFcE00bEpGLzNVQ1dPNUtibXE3NjZseUN1SVdBS3dWN290?=
 =?utf-8?B?Y0FKT0VpWHpVdEFQYWFTYWpLSDRScVdkRHN6N3VyUzJuQXJhSG1IK2tZN0hh?=
 =?utf-8?B?QzZPWmtJKzNlRGF6VzlIY2Y5V2xCRkp0OHFBcGc5Ri9oY1VMYVVtKzNyWktI?=
 =?utf-8?Q?NwvCNT/Iy1nfyV3A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14090071-34f1-45ea-9b80-08de624b64ee
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 11:08:28.9744 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LHc+ZKi3HdKlNKyuSGF3dOmu/B12n3AnF7yK7y6q+LxwNbUTR4AxsDMbJWWtJ8EIBRZF7JIAVNwY9jPSHNx+em471JCMAKxzAiZzgBTjxqM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8603
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7B40FCB7CD
X-Rspamd-Action: no action

Hi Janusz,

[...]

> +static bool is_pcie_upstream_bridge(struct pci_dev *dev)
> +{
> +	struct pci_cap *pcie;
> +	uint8_t type;
> +
> +	type = pci_read_byte(dev, PCI_HEADER_TYPE) & 0x7f;
0x7f is a magic value here. It took some time to find out why
you apply that mask here, so it might be good to add a short
comment that this is supposed to remove multi-function device
property from the whole value.

Rest of the code looks good to me:
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
