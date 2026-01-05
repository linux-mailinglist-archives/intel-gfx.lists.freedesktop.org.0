Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6676CF1FA0
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 06:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FA7410E151;
	Mon,  5 Jan 2026 05:29:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nFphLJM2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38E8B10E138;
 Mon,  5 Jan 2026 05:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767590953; x=1799126953;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Hk4/uD7Fa6Cd0Jtg/G0qw3eigmE56PHt0rulrR/PVqU=;
 b=nFphLJM2KpHrf3uQ2e8OC9WQwpmYk+mCj3GCf+5fBhk0ai20UJhgCOQl
 JMGKJOElU6VRkE7mb4cdvpL35KO6rDXanTshW1eDlFOy/H0LxOY4IdNHq
 HuLNqBXDhnQYp3vBnHXJSrATvIIIFT5zJIQOanqf5J2rhwvqR4UbAKNcr
 VQhLBB2paNMxikEed3epO/L9o5j0h7YYg+iGPAWFvW3idg41FwxH2hpKb
 juvvMoe4xq4LMfy71E/AFcHXbqOQaRpo2cOFEaj+yqzDdDugtozyZ0fNC
 SxreTBvlk7bGEt0Cu0L1glxeJs5wp5q5z6+qPBIyuniC+dPMWle8ANVM3 A==;
X-CSE-ConnectionGUID: QLm27+czR0W//Vo/pPsJgA==
X-CSE-MsgGUID: AF5wsn2NR9GssOygunl5vA==
X-IronPort-AV: E=McAfee;i="6800,10657,11661"; a="72803574"
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="72803574"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:29:12 -0800
X-CSE-ConnectionGUID: fWMtpJDEQ1afYqgOrspNlA==
X-CSE-MsgGUID: iI1n00fRTuW0Yyl19SjF+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,202,1763452800"; d="scan'208";a="225835804"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2026 21:29:13 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:29:12 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 4 Jan 2026 21:29:12 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.31) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 4 Jan 2026 21:29:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rpEVC8ele8/qe13jK8KvEKg0KxZHcbb30V9Q0yYOb1Yve79E1BEe6MDxVQ7mRYviUgksk3hv/JSL2g9XNxFStqNEmXYbdDPi1jFg4irg6ZUEc0r2qd53Yh086S6oMUSYcqtgp1kjmrd369CIjjnTX6YSd3hk5NYx+E9+uO6GGbHfOwbQbbmQwCxV/o46znIxid77V80IhVRGnJPpmJWb3lOjb+x+luA6lwyvuy6HcrQTG03MlRZgsuiEK+3QuRjMegG6vnUA2c2T8gKECX8AtECbbBqgLCTjlHisFsTMy7ISBOJHyosh3f4Ensps0xgBFegeDAaq7TvLVOsb2bYBTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RutRZm1PSGRa4Tv00V3E424lFzkKjWU2seynkJiS0XM=;
 b=NoPka38fHppV5PGjVrTo3RFn/PNiEP16dYAkwaWB0Ef7NJ0ncguWIimIMjLQwR89YcwE+EN0scRr6xhCcJdHuNZyKqSqVrOhFOE+HfN6pNMGdGzjG+tQrzav0mJbycJu8Y6uhyUn2rboA2ugiASMC/xn5ZAYHyMw+eqfaW53GCYb2FvQS3pu9Ah5OB0u2xpR5h7e1W5UBR1WaWnGDPKEBOcGyyyzt/izJSfh3+Q5ell+2eKUnrUxjAnYNOUXZ6+UIj2YFKjOj6zg34RaZ/EOmaEwAXVTzUJqk7Cm531montU6WLq03pLmsVB6uNSKyggNRuaB+ExmRnanpO0jeqIkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB7087.namprd11.prod.outlook.com (2603:10b6:806:2b5::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 05:29:10 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 05:29:09 +0000
Message-ID: <758597f0-6f56-4737-accd-cb3f75256a30@intel.com>
Date: Mon, 5 Jan 2026 10:59:03 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/ltphy: Compare only certain fields in state
 verify function
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
References: <20251231052315.77828-1-suraj.kandpal@intel.com>
 <20251231052315.77828-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251231052315.77828-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0190.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB7087:EE_
X-MS-Office365-Filtering-Correlation-Id: cbc5f2c7-135a-4951-dbdf-08de4c1b59f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RUlMZnIwOUFFOTdNZDlUNHRpeTNOdFpRM3U3Ym9GUUdrMGhqRytRWnNjZFdz?=
 =?utf-8?B?UEpzSnBVaFp3N0s0am5uSXNZR2xpd1VHQnF5UVRUYjhLekRBYkw1Zi9kd1Vj?=
 =?utf-8?B?UGdYQU1CR0lSTHV1WnE5N1RzcVpGdHg5MXhCZ1JpS1NLVU1laXluamdlbXJw?=
 =?utf-8?B?Ky83UDBtQVBzM2ZKYjZlaXpkSmxHOGJUd1hTVnVCbWdicHphdWR5Zk1RejAx?=
 =?utf-8?B?QlQrcjZNSjFsTWNiR01RZ3BpT2J4SGJ6WjlsVlZBcUVmMzFhWUZaWnI4M2R3?=
 =?utf-8?B?ODhQMDZCS3F2QjNqa3NMR25MQWVaN1dQV1g1RWVaR3I2NXhqSzQ3T2toM1lS?=
 =?utf-8?B?YkVrcEh6SFhuQVJzYkJ0aDNydjlrT3hiWVhFM0RRWGp2b1ZjVzR2cllCYmlj?=
 =?utf-8?B?alBYaHFuTy9la013ZCtyYXNjZ2ZGVVNQODZRQ1VHRUZoQXkrN2lKMHZZQVdT?=
 =?utf-8?B?LzVQaVB5TlZUR2hFSXViOEcxZXpGS0lzakFhd1lONDBYaFp5dEk1QUw1R09z?=
 =?utf-8?B?Z3M5SVZQWWtkalN6VG9KOVVRYTR6cFhoOFJDWlRFWXRYUVZCQlFLSjhaSStS?=
 =?utf-8?B?Z0NNMkpsTnJxWDUxOHZhM2VrRGlENC9ieTJRbDVoZk5ydXZXdlZ1ODVWeEl3?=
 =?utf-8?B?WFFOVkZwWklZaUtIdXhxVk1YUEJGUXdRcUlvZnlsTGdjNVRxNVhJYm1BV016?=
 =?utf-8?B?S1J1ZG9kZEJhTk1HYlFzZDlsZGFveHB3Q2NlTlVhRG9ZS1VCUmEwN2xPWEhv?=
 =?utf-8?B?TzdGY20yRkQvYSsycCt5UzFxTjV3NDEzTDYrS1E3dk1KNGlTOE8zeHBKb1lX?=
 =?utf-8?B?ZzN0bE9Kem1seEo1NktYb041b2Y4T0sva0cvRkwwME5JaVNNL09CVkg5UDdj?=
 =?utf-8?B?VmlST3NIcVZBdkNaNWFrclJOWmxOdWhyK0pmWmRzVEw3U3BDMC9aNVVSMWNX?=
 =?utf-8?B?VWpVZmVsdFlnQmR1MzhuVEJvOVZreE9GeUdkVlkycVpHTVhXK0xUSnUxNWhR?=
 =?utf-8?B?ejFYZkVWWE8yWTBZYkovYW1XYjZ6REhZbDdQU2xlV3lFeWk0dzRuNWZsdXpp?=
 =?utf-8?B?amNZYzluOHdONnhHS1BiNGRFSk1EZlpKRTB2RldmaG9qRlErNThUV2g3WWZi?=
 =?utf-8?B?KzdBZ1Y5L3c3N1lmMURsN2dlOWhqdzRJQ1pDUkVidTJOeEtwbllXcXIrc1E2?=
 =?utf-8?B?VEFLcmtnUDQxaHRLaWhHR0hWRmZTVHVVb2dnanhEYTJQYldDblBGSVBHZldY?=
 =?utf-8?B?M1ZjUzc0eGtpZ2ZuK04wK1BqdUFoOGdVSFdoNmxDbzhNRFAvSzh2YXFsUnZV?=
 =?utf-8?B?NVgwck9DL1BQaUhuOWJQeXJGMDJhRUd0OS9WeU1vVEhlNWExNlE5TTNJOVEx?=
 =?utf-8?B?cUx6Zm9ZUlphNkxnQ09zTlc4QXdKWk4yWUtCRzJicitZN29DbElNTkNFeGwy?=
 =?utf-8?B?TjVwbEFEdDY4ZFFyUE00ZDk4TmFHN3dGNEZxMVpwTGhORURSc0toT09mUFEw?=
 =?utf-8?B?WGRvTUFlSmZKTVpEbVNZbTJkckJya1pWUEw1SW9ZcVlOTG1WR1pIL0FkVndS?=
 =?utf-8?B?MmcweTZ1UlFVMEpMUHl1TGtHMGJpQjJxNXpMNTFPOFpxVTRoR3dLajJ4dkFD?=
 =?utf-8?B?QzhqeVJoamRPNXBDR1NmTVBMamw5dDkrVUlOZlFQeFl6TUMxSVJoS1BLanc4?=
 =?utf-8?B?TEN3VmRLMW1RWEFvbVMxeWpUL3pabTVZYUY3YklOamRVbm50bytvNWIvYkxX?=
 =?utf-8?B?bHJqZEZITmFmc1crN1RtL1RIZVlyQTMrZENUSTFPRnVlczNkblAzL0lEWm1T?=
 =?utf-8?B?N2YxOFJnRVdTMXR6bk9lbHc3OWI5UFhQSmgxRmRnZ3laTlpxQnlZYjRhWWV0?=
 =?utf-8?B?RXdLTzBFMisvY1VmSEVrRjV0Tm50WjhLTDV4REFvYUt0ZnRNa2FHQ01uTm11?=
 =?utf-8?Q?ziMGDHhmTLS2rAuEsbcKB+p1cxUy6wIN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cmtqZCtjNHBwRmNSYWVEejVVb0tvdmxKNHlEYnNoZzl5UEM3UzBvVTY1U21I?=
 =?utf-8?B?eGRtc20ra2gzeXY1anpqcGlvUnJiblVXUGRLN1JvUXhDamZFb29rSmkxL1p1?=
 =?utf-8?B?Um1XR2xzTTYzczN2Q0ZBcU45NW5WcENQOXIyK094a0JlR3NJTWVjbDZCbkli?=
 =?utf-8?B?aFJ0ei9vekZ0OUFMTkVLcWcyczluQ3FrUDVKVDlrZStTUndQNVVFempZcWFG?=
 =?utf-8?B?cGxmYnQzc2xKVWRFTUtVbndaUXVtdDYydFlCT21HaEMzMVBwdDZ6MkwxWEFa?=
 =?utf-8?B?azYrcEw2Z29Ed04zSEMrTzBCR3ZyTXlYK1RHZXd2bi8wbDc1bHRRaDNJbWRM?=
 =?utf-8?B?Qlp4cFJZTkhha05hR2RoaE5aQ3ZPZW5zT2cveTE3Ty9Ld2V2VE5oYlljeHk4?=
 =?utf-8?B?dU9Fd0p1YkE5TU1SWW1GRFRTK2VubnZOUGJuSGRCWmhDanNoNTFKd2tnVWdZ?=
 =?utf-8?B?TkpKakdYM1Qzc09lazhpTGpUeUxINjZzdkI2YXJhZDBNb0NZeVRMTlc5M0hV?=
 =?utf-8?B?Z3NBcGQ2NndWMWk4dVFUOUZpNVRHMVdEd0FMQTVMdWdqbTdzSnM1TW9xWmE3?=
 =?utf-8?B?U2JueWZwcC84TGxobTNQalkrU21TOTVZY3BwQ1Vpemx6cTBXZS9CWDk1dWFZ?=
 =?utf-8?B?RC9nemFWWDl0Z2VhK0Fub3ZaRnljZmVxQlExaS9FV1FPakk0T012eHBTNnow?=
 =?utf-8?B?QTBUTGYweDZ5Z2ZCMVRjdlRvVEdFeEk2Wms3RmlBaC80bEdLV3cxWTBPejA0?=
 =?utf-8?B?ZVBoTkNRcG5VYVVYc1lKTGxJTjRmc1g0akxkakx0YWtKeTg1eXh6Y0xzc2w2?=
 =?utf-8?B?ZE00b0RXMEdvTmlBTlNyWDE5QWwwODQyM1hITFFjczlHTmh6TGpiL0xqMy94?=
 =?utf-8?B?dk5UVjhhcWJTZmVOTkZ4d3lSU2k5UzVFbERQa1hpbUcxQThUbVE0RUxnalhq?=
 =?utf-8?B?aXppUjJ1NXJmTzAxVlN5Mjg0Z2RRUHMxNDVNTXpGRGc3dGpoZlJoc3BybFAy?=
 =?utf-8?B?V2p5Tk1iT05DSVdHdkdHOEg4ZFFwcGRuMkYvRUhSWjRWblpQcUdaZWVrSm9E?=
 =?utf-8?B?Q2xScGZkUFRiZmp6WWN4dy9pR0k1WGhqdkUrWlFSaC9LcU1YeG10ZC94TkUz?=
 =?utf-8?B?VFlmWmlnVjU3K1pDd01pbVdtUjZRMzdOb2FWc3BnaXNYdWZKbTdlMDRyVTJv?=
 =?utf-8?B?THRmVWR6Z2Z0cTZmNDlWNHp4azFQa1ZNbWtOOGROWnoxbnZMRTFKbkk4UVJG?=
 =?utf-8?B?QmFzTzdyc2NRdm1xU2VnR1FJYVZFa3MvSGhlbnJNbnhtWUduUXdySjFDUVkw?=
 =?utf-8?B?eGRXRUd2WWppa29pdTVLZUkwRGEzaHVjeWtITHFSbHdvVm1TQ0NsSWdkVVBR?=
 =?utf-8?B?b2Zsbi9MbHU5TTlZcEtwdmU1ZElEUTdjYVpiSFFPVGoyTnRVVDJrTk0zRm5q?=
 =?utf-8?B?WWNPaFdxYmFNcXgrbWZERVRIQk1QWVZDd1ZUamV0YUFPZTIwMHZGS2xYZDVK?=
 =?utf-8?B?SGRCdUQrSE5mRlNRdlRaUVVmeTgyWGJUR0g0em9lbzJaQ2liZmNHWGNUUy9t?=
 =?utf-8?B?SjZSZUNCVGtCYXgyRC9vV2kxbDZVUWE5ZWxzeWo5MGdnbkg0aWVoYTJsTWFI?=
 =?utf-8?B?eFhTeEZLQXhta3FHTEx1M2dmaTR1WHcvbk0zZ3ZLN0J2YVN3cFAwZmgyelB1?=
 =?utf-8?B?YkFlWEdrK3NET1hQQXBQb0FRQ2d1MktPV2lWUjZ4aFg1UWhXRVF2OWlLaGph?=
 =?utf-8?B?K0paREs2ditPVEYrR0dyQ0xTcGc0dm83QW1EeW1QWUhLZCt3N2NLZDVVblFZ?=
 =?utf-8?B?RHlQVXdYaU16d1piTitmVmxDTFlIQkVHb1FxNm9PaDh0azdCQ0hvWm9JVFVT?=
 =?utf-8?B?VS9HaldyNmhvU0tnR0FoMlVqUUJnNUhpRDJTWHdWOEp0alI4WmdybmxydzBZ?=
 =?utf-8?B?Smg0THNMZHpGOEdla3orRnBCYW83VVNlM0cxZS9tZXM0MzJhWlpXbTlXNE5z?=
 =?utf-8?B?WkhXdzA2QXJrdkxhOFJDOG5GWHhuZXpIalZ6dnJFU1lPbnZkNUFtT09oenN2?=
 =?utf-8?B?elFuemF5ZFduRDRlZWRtQXg5NEQyaGZHMk9kRGc5Qll3U1I1cXQxdWlFOGJT?=
 =?utf-8?B?UGFkMDJrQk55YWcwQWxlRGF6TmMyc216QW10MHUrMTF4UEZNZjRXTHdSZnMz?=
 =?utf-8?B?cEVKRlUySWZOaTM5Q0drdTl0dW81OXJaVElOVkhVeDZGbGx5V2pqV3RHYnpl?=
 =?utf-8?B?aWJLdUR1NGZUQUJhL0lpdmRzTlJnQkowSXpoaGtvYVNJWXlQTXI0MS9PV0cv?=
 =?utf-8?B?SkpxSk9USWM5MnV6NFMrME8wdEtvMUVadUlPQzhkVC8rVjhjMUxpV1hWUE9Z?=
 =?utf-8?Q?1sVtRQPVt/f9YflU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cbc5f2c7-135a-4951-dbdf-08de4c1b59f1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 05:29:09.3242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7+DZNAsAKXaLeuyVK78SkZ5obrhA9PYuvtaCrqrRCVvRmPcchJqj+quS+IS8SqUhkeZ72LZpT7S3xGmJ+uRl+OfqVqIVXw3QK3M8HuOxdJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7087
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


On 12/31/2025 10:53 AM, Suraj Kandpal wrote:
> Verify only the config[0,2] fields in the LT PHY state since these
> are the only reliable values we can get back when we read the VDR
> registers. The reason being that the state does not persist for other
> VDR registers when power gating comes into picture.
> Though not ideal this change does not hit us badly in perspective of how
> we use the compare function to decide if fastset is required or if we
> wrote the state correctly. VDR0_CONFIG and VDR1_CONFIG hold the values
> that indicate the PLL operating mode and link rate which is usually
> what we need to check if something has changed or not.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_lt_phy.c | 17 +++++++++++------
>   1 file changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 9501ac861712..cc85818c2b7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -2207,13 +2207,18 @@ bool
>   intel_lt_phy_pll_compare_hw_state(const struct intel_lt_phy_pll_state *a,
>   				  const struct intel_lt_phy_pll_state *b)
>   {
> -	if (memcmp(&a->config, &b->config, sizeof(a->config)) != 0)
> -		return false;
> -
> -	if (memcmp(&a->data, &b->data, sizeof(a->data)) != 0)
> -		return false;
> +	/*
> +	 * With LT PHY values other than VDR0_CONFIG and VDR2_CONFIG are
> +	 * unreliable and cannot always be read back since internally
> +	 * the after power gating values are not restored back to the
> +	 * shadow VDR registers, hence we do not compare the whole state
> +	 * just the two VDR registers.

This can be broken down into simpler sentences.

With above fixed:


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> +	 */
> +	if (a->config[0] == b->config[0] &&
> +	    a->config[2] == b->config[2])
> +		return true;
>   
> -	return true;
> +	return false;
>   }
>   
>   void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
