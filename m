Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2ACB04819
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jul 2025 21:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65B9E10E34F;
	Mon, 14 Jul 2025 19:51:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvBL4HvP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D73C10E346;
 Mon, 14 Jul 2025 19:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752522701; x=1784058701;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Sn2LMosO3K9OS2aKj2eKxiMvlH3XgX36bv5bqBCwcTE=;
 b=LvBL4HvPnqrkjhpeVypI0odAc6M96wuRQWpiNuV6Pv2bc4XnMcjvq41o
 muuwalTUAVB8C5LLTqxCe4ls9jETd8LLY278i+PfRN/KHdVkViwTpjTSc
 2OryPBVN01HKLvAaEEIRk0GmSUBlw66PSfTjFA/dDXayzDKtOs9BYlKKo
 osPkCg5Qjwhs9ZqCn3XcJtAF8dQM8PZBzBMiFuv7Lw/ydac7ibN1GFPln
 96dEMCToZbHJq2OJonys/fDZlOND326rzTuU7y4NTmDUCbnITz/8DPBdN
 ptTppYWJWA+Ew2dMLih0JtObqJySACmDL+h6k01X4MWqGp/y7h7jkQnvq A==;
X-CSE-ConnectionGUID: DimAwwdKRJ2iKLxG6dFkfA==
X-CSE-MsgGUID: UYo/FzrERsOs3nZm/qd3/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11491"; a="54854052"
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="54854052"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 12:51:41 -0700
X-CSE-ConnectionGUID: C9aY0JvOSOizeZHB2tRdfw==
X-CSE-MsgGUID: UFlcyHRATi2T3z9F06FXbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,312,1744095600"; d="scan'208";a="156432406"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2025 12:51:41 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Mon, 14 Jul 2025 12:51:40 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Mon, 14 Jul 2025 12:51:40 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 14 Jul 2025 12:51:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=D/YI3nThcOwSBZl2Lxt3OPchQ5Mvx3+xbpNw1ep7Owz2eXVTEKm5DwPQ4Gm68snDZt1EsuiTAUUe1PKEF17zwO9LGnFQXQtLmDM6mw5H0UpSjqItyRJNFd3kaPJjg3uzcipubAOB9bl4crlmhXcZ2MhVSBHAH8VTyFoHl0F74ZqX86n5L9td0m7kMYjeGnBz7t9coUKomP3uKWiFqb+Ku7yCTJ9WFVpfOfq3XUg/u8jQ4u+1N1w6CU7DLnaz1VNsllr589NKpWgt7RX7kDCAcbv26L/KMU1qMOPGn6n8EWBBmgnyZWL5E7ZlZDlwzmOMhk348bmQOjvvkZC7p3ZrfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vLE7luh7UZQ/hlC01prUoH/JzzQaAHXwen/eRtWPeAQ=;
 b=RqwP6cUcrL+7u99IMw1bMJnmzJbChWkUGkI160Nac14kLEPFNuf9aD6lG7J8gOSrN88rmr9zlIQN9rDVMJrnh1zwasI0PXPLsFSZmd4PfHq+fSnhLhSr4q2TsAHCJ09WPM9dnAqLKlmIsA8WNZwgONrV3OQc6OYAR1qkSiDRfBQBFuucYHuLxDT9uyJg8h0s/yyhT8RIls3nmvjF8EhD68wqLE+iSniBVtjR0yM4MZ73mViGntyZLEc+Xxfj5w5SoCDBxsdecxZIKLtczF8f4m8U3R3WlZPWUYXNN4VT1KWY0Xh855kloPUj6xigLi1MfJQniH4PFzhrHY4F+vvLCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB6075.namprd11.prod.outlook.com (2603:10b6:208:3d5::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.23; Mon, 14 Jul
 2025 19:51:23 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Mon, 14 Jul 2025
 19:51:23 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <175250567065.1809.3544809721458903787@intel.com>
References: <20250714055344.3825881-1-chaitanya.kumar.borah@intel.com>
 <175250567065.1809.3544809721458903787@intel.com>
Subject: Re: [PATCH] drm/i915/display: Add power well mapping for WCL
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <matthew.d.roper@intel.com>, <dnyaneshwar.bhadane@intel.com>,
 <dibin.moolakadan.subrahmanian@intel.com>, <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Mon, 14 Jul 2025 16:51:18 -0300
Message-ID: <175252267874.1809.10923766878963295870@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0151.namprd03.prod.outlook.com
 (2603:10b6:303:8d::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB6075:EE_
X-MS-Office365-Filtering-Correlation-Id: 46fa0193-6c16-41de-7e74-08ddc30fcfdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZGpaSENVUVBBZloyZmduMVBKRHhraHordkg3aTZ2M3FmM2JlWEJZQStEdVhi?=
 =?utf-8?B?MVJkRmcyLzVPZGliZjRXZXRReXA0WWxhakQzci8rKyszTHN4c1RhcE90c3hu?=
 =?utf-8?B?OG5wOFpIWHlCSXcwQjcxanMxK0ZXWEQ5aVVra2pqcVl5U09IcDVmUWRSSElW?=
 =?utf-8?B?WnlSMjNyVExpY2FqY3lHcVpTU2pOUXp4M1FnZFpzM3FDNnJYR3FrVWdrWTF0?=
 =?utf-8?B?MEF6bC92TnMrclJJazF4bmJPNzV4Qk9IdkRMRHRlN09UbDJsTzhGb2JoMU1q?=
 =?utf-8?B?L3RWN05yaWY3amtkVUNXMnVpdTNoSGlMTGdHL2I2SFc1b1A1Q05TTzJWNC9L?=
 =?utf-8?B?K0gxOWwwSWJaVzBzNFpVZFVaWFphR3hDcVRjM09KMXhET1gvOXV4eXczMGMz?=
 =?utf-8?B?d0I2NnZURXphMlBxbGsxdEtWbTBKTEVBT1A1OCt3RlJNNFJpeTFVNzBpcjZp?=
 =?utf-8?B?WEUxcWpIb3Z5YW9LRVFDcTZOQWIrTmJQM0NENzFjNlpSajJKUkdnbDk2a3ZE?=
 =?utf-8?B?dWlFSDR0NS9Pa2RwaG5yOTlRRWEvWWE5MmUzdHhLRDN1STRwZUJ6QXdmbVpu?=
 =?utf-8?B?N3dkUUhNaFF3cXFueUVLaDBkblFsYnl5Nm9sQk0wRG8vNnlQZmdJaUg0em1i?=
 =?utf-8?B?dkFiUU9ISTV2R2JKd0RscVNEaFpLUUF6czJnUGU4SzdFSEQzZEFVT2E2TTJo?=
 =?utf-8?B?U3JiVHZ5WGxWQTZvdDBIQ1RVVGROa1RuMms0Uys0akY0bmFmK0lObmh1aUZJ?=
 =?utf-8?B?YXR6V2pVQ3Frc2plWHNjNXJGbUVVamEvVVErMnQ3QlBuRXp2K0lVSUJKN3dD?=
 =?utf-8?B?dk16Q0N2cVNHRS9USHBIVDJjNUwrMnlHVVFVaWFaT3hVeTYxdDJrTEZ6Qlkr?=
 =?utf-8?B?bnR2eUxsUHl0eVdZTXgyRnBIVEJwZnVuRzFJbWNpTkdDUnFiaDN3Nm51RWtY?=
 =?utf-8?B?ZnVPOVFRWUpQeElqeFFlZGl4OGY3V3N4RTFNMGZJYTB0R3pqWTZ3UEtudERV?=
 =?utf-8?B?aUZuMkxZV1dmWi9ySU1QTVpwajdFSFlhQzFpTTd1VWRWQ1VmTHlvaWdZU1B0?=
 =?utf-8?B?ZTR4YytjNEtJSy82bFYrV2g0dlQ2TS90eHBHVjNmMGNLMkk4S0RLL3d4N0pO?=
 =?utf-8?B?NU56RmE4dnA5WnZXUndkWU10bXZFSDZBUDc5RlJaTytCeG4reTlpVXViOVJL?=
 =?utf-8?B?N1k3T1ZQR2FrNFdBSFE4eWtMZ0VqRUtuZExwbTZSUWpwalhrZ2dFRXg0WXZr?=
 =?utf-8?B?NTJucjEvVjFHSzdqN0hDaW5zeEo5bUQrNXRuTkt1T1FNU0UrODgvc0JjQ2RL?=
 =?utf-8?B?ekgvMDF3ZDZxcHd6bklPNWZRTXQ1UHROdG1JVWN2MnA5UmhuRXdGejdEZ1l0?=
 =?utf-8?B?SUJxdWVwRTZidm4ySU1teW54bFdUTXFPR2RlSEZvdHpQaVZkQUdSd3FpakxF?=
 =?utf-8?B?UHlOMmNHRHEyaWdyRWRRTmVZL1ZEWDFQcWJWRzNsUlUwUlZic3diQTgzTm9S?=
 =?utf-8?B?UzRSSnF1MnYrZ1RER2FFcnRmaHd2Ri9JOUJjeEpMVkNaYTg1NVB2b3FsNW9t?=
 =?utf-8?B?Wk1sbDFScVVESWQxWTcwa3V2OTF0b29mN0NBMmtINkpkNjdtUVBTSWRKZWV1?=
 =?utf-8?B?N3RJRk1pR3ZzT1FsYlI1K2l1YkZkTGVRS1hPeTdVd2MvTzVvOW1nL2VwQitI?=
 =?utf-8?B?QXVSbnhHT1p0Z05pa1ZITU1uMmZNU25ULzBkQXhITElCRlEwclhNTGdZaFZy?=
 =?utf-8?B?T2p5MWNpU1grdFBSQzVhUTBrc3BGTDF5M0dZNDl6YUw3S1VrYU1YSUJYV2hB?=
 =?utf-8?B?bDMrOWFjOVZXRXVVM3hzcm1QVk5QMGpxMi93SE1oeGxmTmhVYStTbnE3cGg1?=
 =?utf-8?B?OWE2WTNEd0p5ZmdYSE1FUEcwUHNGdDNPL2YwdWVuYU14OTI4QjVKUHF1YlZL?=
 =?utf-8?Q?gZ5q7QMILJ4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1lNbkx6ZU0vdE1hWm1yd2xIQUpKM3JOZWEzN0R3U0hnOGliK2JWS2V6RFdG?=
 =?utf-8?B?MjFRZ1A4ay9LTkx1OVFZQnFmR3NSTWc1cTZFSDBVcjZNMHV3ZGFDR2FrRHBG?=
 =?utf-8?B?TnBtZHhLWDdFSjBBWlZ0T0tsdnZTVjVRRzdxUTNiYUtUQWgzdXd5ZlNhZE12?=
 =?utf-8?B?Z2NDOG5KNDA4WURuVVZYbWh2NTk5UjN3Qy9BUWQ2UnhKMGRMWWZQY3lmYlVU?=
 =?utf-8?B?Y2UyZ2pocmV1MUhKRENCQWVwYVVUaEVVN0Mza0kvMFkwYmowUUo5aFBUcWQw?=
 =?utf-8?B?TGcrZWU5bHo5NTNiTG0xMGNPZ2tsRitIdHk5ZmZ6SWJWMnhkWGZqbC9Wek0w?=
 =?utf-8?B?VHdFUyt4YUxPYkRRK2ZmM1ByYTFJbUhBcnd4Z25kbkZhK2kxcnY4SEtjMExX?=
 =?utf-8?B?UTZ6OFJmVFQ5SnlzdTlYQWhoZHN4YWNPbm1URVFJVzB1dU9HZmt4Z25yNHpL?=
 =?utf-8?B?M3IrYkIyYkl5aDNtU3M1aU9LMkJjOU9RMTc5YkM3R3FLN3ZmTkNqM2g3bzVU?=
 =?utf-8?B?b3hiWEpvWEJic3N3VTB6eEVGcElob1czajl4V0w3VWhWa1JZRTVyc0xmWjNI?=
 =?utf-8?B?R2VIVW40L3ozWWl4YUZTeFpTWTE3aVNTSlpDL2tOV0tXb2dvdkxSSWpOcHNo?=
 =?utf-8?B?Z3lXcmZScUppNkhHMFp0QjlSeWJ3WDdkSWlodmNMdTJLSnl4WExqWUJyVkV5?=
 =?utf-8?B?dFJIS3B6WE5MdzZ5dnJ2VVdMNjlPaUtGMzdjd1pXZC9jVEcyWW8vMGx5YU41?=
 =?utf-8?B?STYxdE5DVXErU29JRnVlZnFoZHBEYmRnaWZWMEFhWkJpSFNlRk5YTTZoclZD?=
 =?utf-8?B?NXZqMkgzN3FwdGNOUVF5WXA4MHZySzRDVlpQZWpBT1F4OGIxUzVIV1JaYk9R?=
 =?utf-8?B?V0F1dDAyMUtpUFF6V1h6ZE5tR0VETTJEYlEwU25jT05DZEVrZnV6VlJ0Umdx?=
 =?utf-8?B?b0ZENnovRW5XMDBYRmhrUWprSldjd3JyRnFaeWZxM1kvZWV4WG1JcmVsb0lG?=
 =?utf-8?B?UFEvUVR2Q00rT2Z6My9zSW5FVWpHZWtvSkQ0UitubXRsWVUzcHN3NCtNK2FU?=
 =?utf-8?B?WlErMTl3d3JnSG9wYzRwK0ZKbDIzSXhTcHduMlh3QnhSQWFpZUhaZlkvNTB5?=
 =?utf-8?B?enhGbk1iQ1ErOGplcmJhUkFKU01rZit4clFtMGNRb1BTd2hwS05UVXpTdVhY?=
 =?utf-8?B?NTQrZmNUU2E1akp5MXhMY1hRL1NzZFIyQVltTzQ0cDQzQ1JhWTBvNEppbk1K?=
 =?utf-8?B?R3B0WmEralczOFlmTk1jVkRMaXgwUXVteE81djdKQWJVT012V21PdDE4MXhn?=
 =?utf-8?B?Y0tSQW5KTEk1a002MmoydHY4UFlJb1lQT2IrdTVMTnhNRW1jRHBDMlU3ZFdW?=
 =?utf-8?B?d1VuWXV5TDkzZVhDREoyZU5kTFJjcitOZVZQZTF0ajY2YldCejBlVFZMVDB3?=
 =?utf-8?B?eElwRWQrYzg1dU5VQkhkZXZLTnZIMncwVnN5NkZPNnZ3QnU4aklpZEEwUDZY?=
 =?utf-8?B?ZmFXOHI0azlzOE1kVVBmQVFOQkw5OHM5MTZYcDFEQmVYVkFDQzFTNDVmWXNQ?=
 =?utf-8?B?bTJsRGZBcTltN0V4ak83a05QNitVWVkyN3pwMkRKc05lVXVYcGEwR29ObXRa?=
 =?utf-8?B?MUMyZ2cxRHZIbzFLQ2lYSDNsZnU4c2VTeFBKTWdpUE04QnpiVmovR0RPK0xi?=
 =?utf-8?B?Ukg0aFhBcWZSRW44Sk8yVERBZEg1aUVnTzJYNTI2NElqeERCWlE0UEhCM1B0?=
 =?utf-8?B?VzZKYjZzSVhqT3ROUWU1Qm9ZUnhzVXpERnRkeWp5SGtTMmdlNkM0ano1Q2V6?=
 =?utf-8?B?TG5JSlU3RnY4ekU3YnVkdnhSUHA3QWV3UndGQ2l0Q3IzYk0vT2xmd1F2WFZj?=
 =?utf-8?B?bWw3dGlMZnZCaHIwb2Q0b213SDhEckpLU0xSWmJPQzNTclNlU1ZXTVZRVnRG?=
 =?utf-8?B?U3FjQ1ptRWN3R2wrMkZYYlluTnhKOUkyVEY3WmhBU2NVeTlSTWRaMXJlcDhE?=
 =?utf-8?B?MVJ3bTRKVWVjOTVxdW5kRytQWGIwVkhFNEpJZ25NcEt5Y0IzOE5kUXBkby9v?=
 =?utf-8?B?Q1VLWFQxRHBwbzJxWGxGcGlVVGN5d3NLaUpkcDNvYVkwWXF3azVrWURtMXBk?=
 =?utf-8?B?WDZsTFg0ODJVSGxiY3FpRW4ycUZxeG00U2FjQzRuNTRReVhOem5IUnZydXVp?=
 =?utf-8?B?MWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46fa0193-6c16-41de-7e74-08ddc30fcfdb
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2025 19:51:23.7868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lgODNfkxk07Yt5Wn0gmKniYWgOTtRpvZcRS6Dm45vKJwzwJZ2etSU/2IeENzCoalA5CqcGIB1ZVlye6jZPb02w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6075
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

Quoting Gustavo Sousa (2025-07-14 12:07:50-03:00)
>Quoting Chaitanya Kumar Borah (2025-07-14 02:53:44-03:00)
>>WCL has 3 pipes, create power well mapping to reflect
>
>I believe display fuses should reflect that, right? I don't have a WCL
>handy to check that, but I believe so.
>
>In that case, I believe a better solution would be to filter out the
>power well mapping during initialization (__set_power_wells) based on
>the availability of the associated hardware resource (display pipes in
>this case).

Hm... Thinking again, I think even this solution wouldn't be very
robust. If, for some reason, a pipe-specific power well would need to
power stuff other than the pipe itself, then a simple filtering based
only on the info about fused-off pipes could be buggy.

For some context, this patch come from the fact that we would get
timeouts during display initialization, right? I think that comes from
the fact that we do intel_display_power_get(display, POWER_DOMAIN_INIT)
during initialization, which tries do get every power well that
POWER_DOMAIN_INIT maps to, including pipe D's power well, which is not
included in WCL.

Ideally, we should just make sure that power domains for fused-off pipes
are cleared in power mappings, but that doesn't really work because
there is no real hierarchy of power domains encoded in our driver. It is
just a flat structure that maps power domains directly to power wells.

Now, I'm not sure how involved (or worth it) would it be to convert the
existing infrastructure to a hierarchical one... I wonder if a simpler
solution (but that does not involve hardcoding a new mapping) is
feasible. Perhaps we should treat POWER_DOMAIN_INIT as something
special?

--
Gustavo Sousa

>
>That way, we do not need to hardcode different mappings for different
>variations of a display arch.
>
>--
>Gustavo Sousa
>
>>HW. Rest remains similar to Xe3 power well configuration.
>>
>>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>>---
>> .../i915/display/intel_display_power_map.c    | 58 ++++++++++++++++++-
>> 1 file changed, 57 insertions(+), 1 deletion(-)
>>
>>diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/dri=
vers/gpu/drm/i915/display/intel_display_power_map.c
>>index 77268802b55e..23c59b587f78 100644
>>--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>>+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>>@@ -1717,6 +1717,60 @@ static const struct i915_power_well_desc_list xe3l=
pd_power_wells[] =3D {
>>         I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>> };
>>=20
>>+static const struct i915_power_well_desc wcl_power_wells_main[] =3D {
>>+        {
>>+                .instances =3D &I915_PW_INSTANCES(
>>+                        I915_PW("PW_2", &xe3lpd_pwdoms_pw_2,
>>+                                .hsw.idx =3D ICL_PW_CTL_IDX_PW_2,
>>+                                .id =3D SKL_DISP_PW_2),
>>+                ),
>>+                .ops =3D &hsw_power_well_ops,
>>+                .has_vga =3D true,
>>+                .has_fuses =3D true,
>>+        }, {
>>+                .instances =3D &I915_PW_INSTANCES(
>>+                        I915_PW("PW_A", &xelpd_pwdoms_pw_a,
>>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_A),
>>+                ),
>>+                .ops =3D &hsw_power_well_ops,
>>+                .irq_pipe_mask =3D BIT(PIPE_A),
>>+                .has_fuses =3D true,
>>+        }, {
>>+                .instances =3D &I915_PW_INSTANCES(
>>+                        I915_PW("PW_B", &xe3lpd_pwdoms_pw_b,
>>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_B),
>>+                ),
>>+                .ops =3D &hsw_power_well_ops,
>>+                .irq_pipe_mask =3D BIT(PIPE_B),
>>+                .has_fuses =3D true,
>>+        }, {
>>+                .instances =3D &I915_PW_INSTANCES(
>>+                        I915_PW("PW_C", &xe3lpd_pwdoms_pw_c,
>>+                                .hsw.idx =3D XELPD_PW_CTL_IDX_PW_C),
>>+                ),
>>+                .ops =3D &hsw_power_well_ops,
>>+                .irq_pipe_mask =3D BIT(PIPE_C),
>>+                .has_fuses =3D true,
>>+        }, {
>>+                .instances =3D &I915_PW_INSTANCES(
>>+                        I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_=
ch =3D AUX_CH_A),
>>+                        I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_=
ch =3D AUX_CH_B),
>>+                        I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelp=
dp.aux_ch =3D AUX_CH_USBC1),
>>+                        I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelp=
dp.aux_ch =3D AUX_CH_USBC2),
>>+                        I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelp=
dp.aux_ch =3D AUX_CH_USBC3),
>>+                        I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelp=
dp.aux_ch =3D AUX_CH_USBC4),
>>+                ),
>>+                .ops =3D &xelpdp_aux_power_well_ops,
>>+        },
>>+};
>>+static const struct i915_power_well_desc_list wcl_power_wells[] =3D {
>>+        I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
>>+        I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
>>+        I915_PW_DESCRIPTORS(xe3lpd_power_wells_dcoff),
>>+        I915_PW_DESCRIPTORS(wcl_power_wells_main),
>>+        I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
>>+};
>>+
>> static void init_power_well_domains(const struct i915_power_well_instanc=
e *inst,
>>                                     struct i915_power_well *power_well)
>> {
>>@@ -1824,7 +1878,9 @@ int intel_display_power_map_init(struct i915_power_=
domains *power_domains)
>>                 return 0;
>>         }
>>=20
>>-        if (DISPLAY_VER(display) >=3D 30)
>>+        if (DISPLAY_VERx100(display) =3D=3D 3002)
>>+                return set_power_wells(power_domains, wcl_power_wells);
>>+        else if (DISPLAY_VER(display) >=3D 30)
>>                 return set_power_wells(power_domains, xe3lpd_power_wells=
);
>>         else if (DISPLAY_VER(display) >=3D 20)
>>                 return set_power_wells(power_domains, xe2lpd_power_wells=
);
>>--=20
>>2.25.1
>>
