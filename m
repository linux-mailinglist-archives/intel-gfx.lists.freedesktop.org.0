Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4A0A3BE36
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:35:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB52D10E288;
	Wed, 19 Feb 2025 12:35:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aljQirnM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D15E10E288;
 Wed, 19 Feb 2025 12:35:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739968525; x=1771504525;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2C1icZkE7gUx5MsHrkvQZsxR8AePnKbGej8UQNuJ0C0=;
 b=aljQirnMMKOh/KYeQMKBYcoAojkcaXgNOLPXGaIpq2YQ9DD4c3gSl1ra
 r2599oz9iVZHcsnmm5vscZTQ5G8XvFMKILW20ZoirJS+xYllpzqDSMxvc
 yb9CdiBa5aeNESaJ7dov3ACieSRLcFZC2n0ckHamRBJ451RCGSPg0vBhd
 SWUGyLbNaU2tmv4+sS6A+JpoRj+YoaNyMcEBsqeICzwv6IPYCO73AQLr7
 jc2Ohv59OfTaoiapTFjiO3BdhNo5WoHSalzmwYY4arWtjOramuRmoMSaT
 B9jlfwbhEsLPxd59G4S1n3A2RQDwdKY0B5IYMvb1H/YoiPL/qyibLaL11 A==;
X-CSE-ConnectionGUID: Kn5b5hEeQmS1aPxabvJrpg==
X-CSE-MsgGUID: +S0kbHfXQ6SBDB8veEwgFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11350"; a="44618407"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="44618407"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:35:24 -0800
X-CSE-ConnectionGUID: OWBW3JD7SfSeR+E+IXb2vQ==
X-CSE-MsgGUID: 7aD1LN8ZSvyhSwM1rGiZ6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="114623158"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:35:18 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 19 Feb 2025 04:35:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 19 Feb 2025 04:35:18 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:35:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H/9wP0A3X9h/Z8mEvlOXmEtRSIPlH/HpHWYeun0yPc6KybKzMtDn2jnu9fIOKYoHpd3A1kuKJhK65FCVSZDLSkUwOqWqKfg+9djJLQgCjrCudlS3exCjrm6KXuHnwA1hLk1tGULEAglNkaddVM0xeoIy8kyoqe5zpUb3tOA2qOb0ra5C83jqK9JivrCPED97OORIaoTwjGNn01suy7Fj4mksYOvSXEmz9x1FbSt4rfnNXzXfd1NJwspqW0lPrd2MpJ6AGiIXQXMqLLXCrYei7t4LK08qdjd7juU5VByRF9clSatVdR/0WXFbbTdRxB9WXbTYwoxV8byCKrropAbVTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nCL3hNEa96UhVnx+HPShx5nlyw0hxBRKmnAp3TBW7OA=;
 b=EwabA0hRkpi6GOzuLdTbnPCKB2ZWwDWpNgzqGVWIK4PdwyQw/ftqgfte2FIrClrljZP9MxOjEgRLl1FdUuzzvEeVsucyQ9hnLFSTXAd1Pcrgaspv2A8/6TEsIlANLZthjbfI+0xBpPzUateiqHjX56D8jKfO3gwfCvKKY08X8PgRjmlU8dcmlDHEa8iyBe1JjZQDB3bTfkcQraaUpEB525j3WaoY8GFJtqlaXPS3YLvQqXk0iQs6ddHk5mtaJd5z2DSAqy306fUbynyn9AgzUA22g0CcBB1JBQcSki8wSEmivbf55YGurYHk3E821FZwMse9HOw9F5Cxd/qMQWBGlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7479.namprd11.prod.outlook.com (2603:10b6:510:27f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Wed, 19 Feb
 2025 12:35:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8466.013; Wed, 19 Feb 2025
 12:35:15 +0000
Message-ID: <362f411e-1559-4270-8ff6-28c2209f6c80@intel.com>
Date: Wed, 19 Feb 2025 18:05:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/19] drm/i915/vrr: Track vrr.enable only for variable
 timing
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-6-ankit.k.nautiyal@intel.com>
 <Z7N6vPdH1Y8TOiFR@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z7N6vPdH1Y8TOiFR@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7479:EE_
X-MS-Office365-Filtering-Correlation-Id: a1968ae2-ecb4-4c15-5ffa-08dd50e1dc4e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Mm9LUlZLR2h0RXhtd1pvVDdlTmZOZjI0Q3NsK0ZOK0lIMzJkKzFuVzI5Ni8y?=
 =?utf-8?B?UnFTcGhseUVuVlBsUTVZcFViSmxBMjl0NzBVNVhNZ00zTS9FL2lwMk1aZHc1?=
 =?utf-8?B?WTFleVlmR3o0VmFMUko1allkWkRTbkRZQTV6OUxaYm5oQnZJRlM3L3pXZXp1?=
 =?utf-8?B?MFQ4MVVWRllzT0o3NzluRXFFcEdDcTV3QVBMR2IvZ1d6QTNsaU0xS3Bkd3RT?=
 =?utf-8?B?aDdRWUxyZTJ0R2FvOGFleitFcGI1R09WNnl5U2Fpcnhwc1RJZ3VnMVYxVE5M?=
 =?utf-8?B?Wnh6dXFjZC8yMm9ra1BhYmxCZFoyR1RKVDE4WmEwSjZqQk9RczlPTU44MzhK?=
 =?utf-8?B?ZG8vUEp2NlhqZVRXZUlCRVVVaXZORDZGMldmdFYvY3duajU2eEMzazRBV0p2?=
 =?utf-8?B?TlVNbm43ME04NUV5QmVlR0RIMGw3YlM0WmZWY1ZmS1ZWMHVIcDVRV1NqbmI1?=
 =?utf-8?B?U1pjdTFaZG5QNXBmWTdTY2lSaXRjeE1CcXJISkk2Q1dSZ0o1S1gvT09xamNK?=
 =?utf-8?B?Y21GbmtZcHVtTkxkSVV0R1JoK3BheUdpZDRRb3ZxSWlYSk9xdVBiZ201cGV6?=
 =?utf-8?B?WlpNQVN4WWJ2ZGk3VEVzMFBhOUNWUk9mc2dpOXhzVFduUFZNclhLKzRyV0RH?=
 =?utf-8?B?cWlwS0JCbytYOENPNThYcGZrRmdBeWFPdnNmcmVjT092YnltWWxMZE9MalFG?=
 =?utf-8?B?eFM5bmViNUlrUEZxVUhZdTQxb0lpcGJDMkpKYnd2SHdObXIxMEU3d1BUL3NW?=
 =?utf-8?B?ekVIZ0ZrdEtDV09maW94a2RPZVZIV3g4LzhlQWZEWDgyOU9EYmRrZ2QzRnJL?=
 =?utf-8?B?Z0FhaGN4QmIvbUEvNW5KSzlBQWFuNHdXanovZXgzSUwwS3lHUWhLNU1yc2Ru?=
 =?utf-8?B?clhjd0k4UXVxVmNQSWZUWTVGMTdHcE56WjVsU3E2dzhsclU4NDdWTFJWTTUr?=
 =?utf-8?B?N1E4UFdiME9LTDJyNU5ob2tmc2MwRHFzRUh1NmtscDIrT3VBY3dKdDQ2aGE3?=
 =?utf-8?B?a0krcTRidXNGVVFzU1U5ZzdiTk5RbUo2K05hbXczVS9HSUhMbnNjSnlnV0V2?=
 =?utf-8?B?RG1RQzdBWHhRaG5HcnFBWjNUR1FDcVVteDN1bEZmWFBLY3dOaHhEYlpOT09h?=
 =?utf-8?B?d1U0YzNIR090YWNBSFNhOFcrZFVGdFU2N2xUdDFpNXlSM1UwNG9ZOWpjRkE0?=
 =?utf-8?B?SFYyZXVmY2RIK1cwWnNBVC9OV2YvekJPWnU2MmVPL1JnSXgvSGNIMjJTV2pz?=
 =?utf-8?B?OUVUSHppNzZuYnlxT3ZuVGpUWVpUVUF2b3Y1d3JpNUtXeFlzSVBCdDE3SVdF?=
 =?utf-8?B?bEg5T2p6dG91R0FxMVhmRnJSNEt0Yy9GaisxYWtPSDdjKy8wUkpPclMxU1dz?=
 =?utf-8?B?YS9LbVBGZE9NWGk2TmFOQ3BpUS9VSkd6bVVqYWwyZDFpWkMzc2hJbkU4S3BJ?=
 =?utf-8?B?bGoydDNxUUpZaWJuOEJnZzREZUpmdER2L0JmNGhNd213ZlI0eE80Vm1YMXln?=
 =?utf-8?B?elA1VEhvMXZmVVIrTzBSL2pxaXJWbDdoLzhFNnNYTnhCSVNiY3gwS0JBYk5l?=
 =?utf-8?B?MWV0V09xUDlJZ21XazJQSSszRllaOEsxVGhEbzhUTGRWOWw2RUdtUFZ4YUVq?=
 =?utf-8?B?ZlAxTlY1dkkweHl4VXFPLzR0SzllODVxYzhMaXBnUzBRWm9CRW5uVFhGcith?=
 =?utf-8?B?QVRGQTZ5aXR1MFpNRVpsaTBvcWtkUHZpWFJ5WGVsY1hEeENERmk2SXpFdFFy?=
 =?utf-8?B?bzBGK3VLRUR1NU9SZXZ4RVpvWHkyalBmVVljcE1XRFhGakN2WU1lU2JkdGNa?=
 =?utf-8?B?NUNvWFp6NjN2UURHcmcwWEFTelp6WCt1aTBLOFJCT0lvbzJ0cmU1RnB0clpT?=
 =?utf-8?Q?YC4iE4ZTkci0Z?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGhoWUNGcUx1MEdJc2VuVStUNEhqZTdTM05aUjlxYXVobmlGcUxXbHJlRzEx?=
 =?utf-8?B?Ym1LOWJkeVlNNVFtREM1NlBTbEo0WjFGQ2d3dkhROFB3RndiTnFVSldaN0JZ?=
 =?utf-8?B?ek1GUUhtcFJRaTVxWnVJbnhOa3l4U0psbEJDcXhVa3h4NCtpUllBWlNqVFZT?=
 =?utf-8?B?Rmc5d2hWcmtaMXhQb0duWHo5WjlLL280Y0ZYT2JDTE9BMVFqYU9kRzRoeWlv?=
 =?utf-8?B?cURBb2ZMc1NNelRlQW1aK3R0b3NjNFg5eSthWWZuNWZ1YlVlQ2pWanp4enVj?=
 =?utf-8?B?bmlHbUJ2MEQxSXo1ejNQcTlQZnZuMTFneW9OeGM2QVVxdjAzTWJqQVFPZGl4?=
 =?utf-8?B?THdNU2lZNFBXaUhDUlhNNGxjZWwwZm0zTW9sNEVhR3lrN3FZT2szZzF4bm9a?=
 =?utf-8?B?S2d1dUt5RW9BdGJ1QWhKRitWeVVKSm5HR0VxS1F4K3MrKzRmYlM5endXZk9P?=
 =?utf-8?B?aVQ1NzlBd2phQlRGWmtRTSsrWUxhUDkwVTIyTEJVOFdOOFVZWGh4NkJrWXE0?=
 =?utf-8?B?Mk1JYmVXQkN5UnZkTmIxanRaT1NVUWl5NXVzc0NzVW1tMjFyR3lxQ0d0bFpS?=
 =?utf-8?B?eitsZXEzS2hrclR1L0R3aFVwMWlxblNrSElnMHRMeXRSaUxvcHkxSDFZSm1I?=
 =?utf-8?B?RHRqN1V1SzF3KzJybnViYi9FYXRNOTZ6NUtpamRXMTF1N1NNWGJ4OUpxUEhv?=
 =?utf-8?B?Y3BPZlF0YUlySzV5bEdUalU4YUdla2tUekdUSDAvalY1cHd2blIzZE1GTjhC?=
 =?utf-8?B?d1pNVk1LS1NMUWhiZ2FBWTVUM2JpKzJpdGQ4U2E3MVloMXZuY0YxQWd1dkJG?=
 =?utf-8?B?YUU5anR3N3NwZ3U5UXpFaGtQZllBYTR1amZiTzNPRU1MZkJ1L3YxbFlyaFEv?=
 =?utf-8?B?UGNaVTJyekVsU2RVbWlHc2pXMHF0a3kvcUtiSGllTWU0QnYrQ0MyRmJpZG5n?=
 =?utf-8?B?dVY3U3FXcUdGbWJsQ3pLS09FZDBjSWdyaCtWN2MwemhWTUNrUEM3bU0yend2?=
 =?utf-8?B?aWtFZC9seUltaEpOdEcrY0xGd3NnTUZiQXQ3VEJQOHBwQkRGWVJZOWVIY0Rr?=
 =?utf-8?B?T0hoWnBoTmRaaHJldWllVk51bTNDM0loYlg5dFVrMTliM3N4bkpxbmdPaS9G?=
 =?utf-8?B?T3F2N3JRTG1nRmtJeDg4RlJnVjZmUVdwMStjenRjQTM0NE40QU9jYWNQVWNR?=
 =?utf-8?B?L1dvVFltbTFoaTlRV1IydWZ1NnVRaUxNcWZuVEJtWkJLUjNEQ3NUWG1SVVZy?=
 =?utf-8?B?QnRlZ3RGNjA2cmhiWlJCNTh4aUlCR1Z5ZFZ2WHA4NThZc3pPUW5TZHU4Y3Vm?=
 =?utf-8?B?RjUzbkwvVUxoWTBuOWM3bHhaTVE3VHFiVG5EbkZ0dzU0RzdVSjBUeEJTU0to?=
 =?utf-8?B?RDN2by9MUTU3V0JHSTNCTFRPZVJrSWNzakczRnJZZnFmUWtKYUlGSnRtck5v?=
 =?utf-8?B?VENWcVVVUVFnSlhEaFkvWllsTU1PekprNVl0MHRzUWJqbmZPT2JNbVRSUkFh?=
 =?utf-8?B?S1RGZXRiRlowdU9BRTdoc1VlR1dCZFIyS1FLdmFocjFuMDJPMVNIdzJCeFhn?=
 =?utf-8?B?V2M1UmxlZkJtblYxMnp5ZE9TYVM1d3UzZjd5eDZOdlloWVl0WkNsTlVYMUlH?=
 =?utf-8?B?WVJDcDllMkl2akhEUkRhalIwaXFnVFNqZ3pJZTFSTHdlbjdubERNY3FpTnFU?=
 =?utf-8?B?SllDVkM2ZUVEbU8zS1JkWmhTcXZuL242NTZqUStyc3F6Q1lHcjZxdUI4M1Aw?=
 =?utf-8?B?L0cvamZCam9aRTc2RHlmc3JHR2kwRVk0bWhSVDJETkJGcHludWI2QVlMZlFC?=
 =?utf-8?B?WVByT0pNeWQzemgwMDJIWGNjTFNZRXB3VU4xRGhrNUJHVXRpdUwyaUR6TlEw?=
 =?utf-8?B?dEVFSDhYa3NETUg1VGl3L0FhajRYcG84SU9UM2Ixakx5eUVCZ2pJZXhjeXNO?=
 =?utf-8?B?WHAxbjVMK0ZiQmxVVHdFTXZlUWVUbTJMMW1rQTQ4MnByeHNrUEFheHN2Vi9t?=
 =?utf-8?B?SC80VTRPUysreHpyRHFzQndMdEVUaFlXSGJyRmorV0JzMEthdCtFWVBUaERI?=
 =?utf-8?B?VHVjQnpKMmdzNkRKVWhLWDlkb3Q2SG5yNDFqNG1POXlDb3NNRDI3bXcralBJ?=
 =?utf-8?B?OVdyQkZTMTQ2aHVtdDFJR1h3SFk1bzFjdXZZZEVEdkZ5OVdvcG9ESTViaUE1?=
 =?utf-8?B?T3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1968ae2-ecb4-4c15-5ffa-08dd50e1dc4e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2025 12:35:15.3927 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +/MQnwuabBNatmG0VBoWvvZjgbY0Jn9hc36bziXuIGl5tQaR89Tk0rF6sFH/yq/xHA6iG/cb+TZMVW4iZzpYVdvoDnMngWddGNaOpUoICCk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7479
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


On 2/17/2025 11:36 PM, Ville Syrjälä wrote:
> On Fri, Feb 14, 2025 at 05:41:15PM +0530, Ankit Nautiyal wrote:
>> Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
>> generator is used with variable timings.
>>
>> Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
>> when vmax == vmin == flipline (fixed refresh rate timing).
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
>>   1 file changed, 11 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 0ee7fb0362ce..efa2aa284285 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -226,7 +226,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>>   static
>>   void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>>   {
>> -	crtc_state->vrr.enable = true;
>>   	crtc_state->cmrr.enable = true;
>>   	/*
>>   	 * TODO: Compute precise target refresh rate to determine
>> @@ -528,6 +527,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>>   }
>>   
>> +static
>> +bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return crtc_state->vrr.flipline &&
>> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
>> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;
> crtc_state->vrr.flipling == intel_vrr_vmin_flipline(...)
> to make this also do the right thing for icl/tgl.

Sure, will make the suggested changes.

Regards,

Ankit

>
>> +}
>> +
>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -537,7 +544,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	trans_vrr_ctl = intel_de_read(display,
>>   				      TRANS_VRR_CTL(display, cpu_transcoder));
>>   
>> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>>   	if (HAS_CMRR(display))
>>   		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>>   
>> @@ -577,6 +583,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		}
>>   	}
>>   
>> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
>> +				 !intel_vrr_is_fixed_rr(crtc_state);
>> +
>>   	if (crtc_state->vrr.enable)
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> -- 
>> 2.45.2
