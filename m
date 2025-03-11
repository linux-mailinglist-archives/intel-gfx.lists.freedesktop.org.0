Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DF5A5B890
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Mar 2025 06:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58AE210E11D;
	Tue, 11 Mar 2025 05:33:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZS97k6+E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F42B10E11D;
 Tue, 11 Mar 2025 05:33:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741671216; x=1773207216;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2ZgAJxAMAx00C1/ms9SP02o1KGafc5pNh89mv/aB6YE=;
 b=ZS97k6+EJe03MbMo9hucIaxfxulUc9EGWCit/Rcjv1p2tYitm1xSxwxW
 CCjTir//bFuILm2eB4H0hESgekLDfSdKh5FLFJ7q/xx2xQWQ90G8N/Q4N
 Rbp1iE/j6Ppj0Wn96lme0DopYYPAEuUxHdOOrQBxcEfEWAV+6aNaxY/20
 K20E0fd2wq3Zd0KyBo/qQUHFF19riljfUYdLP4suaqqkTkk+vRKkxiuQE
 fdJbneYVyVF0UmNjtHQaD5QNiuFa8KCKhGIy7XMwLBS3+f/crrFi0kDRH
 qBGrC7oB6xcZ81f6oJ8xwRVPEc5Kl0h878MIcVMiBwRAcPQHRWths1/6R g==;
X-CSE-ConnectionGUID: 46V2Zl2ATlujC/prRBfpjw==
X-CSE-MsgGUID: g+JwNZjhSwWA18bV9dI64A==
X-IronPort-AV: E=McAfee;i="6700,10204,11369"; a="42805174"
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="42805174"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2025 22:33:30 -0700
X-CSE-ConnectionGUID: IBQ/oABISuOPhANlrw7e4A==
X-CSE-MsgGUID: hUPmqXrpRze1o91q0KDWTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,238,1736841600"; d="scan'208";a="157406804"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Mar 2025 22:33:29 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Mar 2025 22:33:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 10 Mar 2025 22:33:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Mar 2025 22:33:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Dx8esjvnefH60Et9MKSvHBR8NNn79P1ILxTWZnr4vVk0h73/RZkez5RxSs1n2/fDqTPJmn8+M25IiSeb3XXcfp/3Zt+uNfLgCKR70IsXUnQRan5lcHXtOqu0BxuGb3m0vbTenE2Gc32o2LVEUn0lQ6iu05WvVCZ3Z3sBq5rnpDPXVIUbBPU+lHw+kViGtm68hZmunTeuGmr3QTFTzuwl4IKg318wVtcNa0jcPWQOaiTj4/Lse305xW1GWanxpQW3MM5hZb2xZJ985ozC9TlOFVG5aq9PBdyCuInjzRyyFrwuN05o6j5gtorC8ork/CYP8JyT/oTIlqqZDfBcs4ixFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sja+HYx3lRkbd3d3cotSAvJtrttyz2zNmTofKTgaMQU=;
 b=dv6i7zO5ecHJoLmZaGpnAeqxlMj3JHC2AtlLuLnawvDxE8YDv6GRQi8w6SxmnjfG8r7oGTbPE5UYp/ua49zNsZb4CQbRJfQ/XwOO+TK+cdOfPW9nEMPVdeWUA2GN4Lv1GtsRXZFgxWGPeoQE2w6cr8lJKqmmM2UvThrZYUaNtwgaBhj5I8xssLxXYFI9kWrsxTGr+o8X4x9S9zXzsXhXRV7ltM6CMLs+mPGbz/L9euz5dJu3rgro3qU21jXBP7FpN697+f2FTciuV8maPOc9Bm30abc+m0a6Xu2ExFj7fmstzbl4+OUOFu9CnYH7Rpw3uLpyx5fTmvlb2/J11AzZTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7196.namprd11.prod.outlook.com (2603:10b6:930:94::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Tue, 11 Mar
 2025 05:33:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Tue, 11 Mar 2025
 05:33:27 +0000
Message-ID: <df831f85-72b6-4530-9ea1-eceef67de304@intel.com>
Date: Tue, 11 Mar 2025 11:03:20 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vdsc: Use the DSC config tables for DSI panels
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <william.tseng@intel.com>, <jani.nikula@intel.com>
References: <20250228152531.403026-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250228152531.403026-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0184.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7196:EE_
X-MS-Office365-Filtering-Correlation-Id: 1078d93b-a9a7-4bbf-83b6-08dd605e3ff2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2tNYTE0T25jUmJDMjdUVHNYaUhYKzMwR3BMVHRYMUxrYWFwS2doRkd2aTV5?=
 =?utf-8?B?OHM1NTc3WUVReHgrWTl0TzRXS3hFKzlCM2VON0R6R2wwNElJc3hiaUdnMFo2?=
 =?utf-8?B?MVVHQVdIekx0dVVPbmVzNmZ3VTdmTFRCdmJRdHBUSW5CREFWY3lYVVJSelo2?=
 =?utf-8?B?em9xVXVhNDFQMnozZ3lOQmlCeGxjekpReDdEcUZTWE9ET2hNbEtZYkgvVVEr?=
 =?utf-8?B?ci9nWVBwcFZPVStWOWYwNENUM0YrOXBzZ2p1YXRSakFkRGw4NjBqWjJTU3JB?=
 =?utf-8?B?aVBhSk5UVk41OXJCVDFiQXdWNnhJMDlGTS93WHBMRi9oM3czQ2pjeUl3Nmg0?=
 =?utf-8?B?Z001UTFzSGJjOURFbnFkdHp5bmRnL0d0T0c3ZWxYSlBjYUhhRlRueUI2WFFa?=
 =?utf-8?B?a0FLL2VFRldJTlc5eGw1WVpicmlMQXdTQjA4SytHQTZNckNTUGJZeWFPUU9Z?=
 =?utf-8?B?MTQ3VjZTUkNVR3ZNV0t2NUFFVkpMRlJhak14RUdMUS8xRVZ0OU9FRXRSS1B0?=
 =?utf-8?B?ZHh6aUZQSmJ1Y1JIbGdIY3FnZ2ZZMEloNkIyQTBjY1FjNmxGQ005QWY1TzlG?=
 =?utf-8?B?bERxYlVhNmUrOGhPUkh1NGdsMFpoMkIzNG40TEJGN0tRN1F3MXVQMU5NNGt0?=
 =?utf-8?B?NFdGZHlCdjZhKzVRdXJMbTBiRnFPT0U4eTNlMzNnZFBaNDBvSHZ5Z1kxTVdB?=
 =?utf-8?B?ZHBXZlZhWFNBOTM1UURBbk9mVlY3d2FSRHozUEFiQnEzZHloRmx1aXo2QUNW?=
 =?utf-8?B?QjROYnovbG9ZS0RMMGo2aHZHZjZNRDJQcmJQNXpSWHU4OUFCdE9sUUh3S2JR?=
 =?utf-8?B?OTUrV2FOS3U1RWFVQ3BNVlRqazB0eGgwZzJZaklMY0FRYnZ4RHhuZmRta0pj?=
 =?utf-8?B?KzhDQWhiYW5LeGUvODRSU3VhK3BVTG5iY3J6bzJEbDZnTURSSmY3QzZMLzV1?=
 =?utf-8?B?Q0N1eHhIVEVCekl5UXZrMnhKWmlsUU1wY2txOTRqd3NhQUhpemNGYW5YOTU5?=
 =?utf-8?B?UDhVMGJzdFZSdkdvNkNjNVVaZVdtZVdsbUkrTGpkcEtNSG8xZG9SeU9YUDdE?=
 =?utf-8?B?NXJZYldFRTNSSEU0QmFZd05yRHZCa092OTlZSmpRL3dkdW9iOUMyWU5XMVFw?=
 =?utf-8?B?cklqNGFGbE1uaUdMay9FMXV2OXBncFZHYm1qZWdvVlZsd1VNeE5BT2dZZkNx?=
 =?utf-8?B?dWhicWhveTIvQjZLZzVQc25VK29paHF6SWp4V01QNTBwUDA0RmxzMTRnT0x2?=
 =?utf-8?B?VmlkVnhWVDhpY2FxeGJPQ3ZBVU00RWRWZ1kwL2lyZnY1a1RKQTBVczdFN3hV?=
 =?utf-8?B?Ly9NYzdOT1dySXJGZGdxaGVpUzZuM1h0SnFMOTJOd3gvaGs5TmFwWnlMNVZC?=
 =?utf-8?B?QzQ3ODlYcWR2S0twT3JHMVhoc3lKeGhZcnpIVUVSYkJMTXl1YytmSGlhNHBM?=
 =?utf-8?B?WDNaem1xQ2VMN0V6dmJBMCtaV1NURGUwSkhiZkU3dzlLN2ZqR2JOMU1lNzlT?=
 =?utf-8?B?blNoMHlsYjlyYVhrbnNhbC9oRWtQU2JCb1JFaHhLVVV4K1d4VXdEdy92YWZn?=
 =?utf-8?B?alNMWHhrTmlxK2RWWXJLUmVTSjdHS1hMYk5vYlhRWFN5RTAzdE1wYjBOaHh4?=
 =?utf-8?B?aEcrWEU0UWsrUFo4a3dudEtJL3Q4QmMvVnNkVGVRLy9hWlNEeldkeGJDV3ZU?=
 =?utf-8?B?Szd0OEhhbWV6S1RVTG5STW5mSnJQbUpIZGR6OFJtOG1RazFrT0hramdJUmhD?=
 =?utf-8?B?TExrM2RaL2J2RERFbU00TCtkTWxCNkUwbzBlQXQvUWEwNXM3V3pIbE5YcTRY?=
 =?utf-8?B?WHpTbFBqM2ZXeEdtbGtrQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TE93TnhrRHVGa0ZUdXpDc0U0VlJkdWlDZDBlUmQzSkc2b2FXM1JZMnZYcFZh?=
 =?utf-8?B?b25sU3hTZTc2TFVlNUo3QjVqU25CZk1YNWF5ZjRPdWgyMGdicGVLRWVqR2ZZ?=
 =?utf-8?B?YXNQOGQ0enhYTWpROFZtM0JidlBoMk5KR0plV2EwcDV6NXhNKzBUY0xpVW50?=
 =?utf-8?B?a3RmU2ZNOG9vZnloTStkVG42cmx2YUxNQjRtNkZRalhJcDU5MWVGbUptZ09p?=
 =?utf-8?B?a2ZXMWZ6MGZKWVVsb1NTOE9oTmVKdVRiNUZmT0RMN3VzUkJjb2JlRHBQT2Zl?=
 =?utf-8?B?c2FVbTg5Nk1wbld0dTBUT3FPaEdNUEJrT0xFdk0rTyttaVNyMlIwVGdDaEFD?=
 =?utf-8?B?ZTZSM29YYSsrL2VqTzRENDRZYVZuVTZRUEdhT2VTRk9oOGtSNlBscUkycXEx?=
 =?utf-8?B?eUNHaC9hK3Vha2ZERGdqMC9OeXQrS2NXNm0remNZN3B3MDNNTythcWc1QUpW?=
 =?utf-8?B?THNpRTFTUUFSaVhTb3Vlb1FZNlZ5a2RsS0pXbjQ4djlpcXl4WmovZUpVbG1s?=
 =?utf-8?B?dHljOEZBNUptWldpY2Q1T3pkQzAyUmg3MFprTExCMVhWQ3J1Nndma1JjWXh3?=
 =?utf-8?B?ZWFudisxV3pCUFR6MEV3VWxKdlJxN2JPNXd6MWZyb2t0T1pDZi9tU1paaDFy?=
 =?utf-8?B?R2VINW5KcERhc0toM0ZpTVArUkVvM3VwclRKU0pOcTZvWkgvTlZ4NXh6VFNF?=
 =?utf-8?B?dW1kTnRUTzQvdmNYWHVxOGYyd2pVb1crUFRVKzkxdzMrNEtBTE5KTmF5NGR6?=
 =?utf-8?B?SmhMN2pHOGlibkREb0FNMkROTFZXTDFmTmhDOVlXcDdRREhNMk5JdHJZNTZh?=
 =?utf-8?B?VHd0VGVCUzIyQUlQVU5mc2dhczRVZWl3SHVPd2FEdXJNN2g4QmpiSjBoaDhz?=
 =?utf-8?B?bnhaaWVmSmRzMUtSZnBNcURFM0UveU1Zdk00YitGb214cTdTSTIrYnJqRVNX?=
 =?utf-8?B?a09mNHZGSEJXWU83TWx2TDFTaTI3WnlXNjZ6YjZPY0oxSVlVeEFZeDUzZU9Z?=
 =?utf-8?B?Qi9NRWtJUzRMOE9DeXMrcVcybEpaSDRsTUNrdXdNQmFvOGU5WW03RWU4OEJx?=
 =?utf-8?B?d2lKS0twdURodDNZSC9lUGkwc0toK0MyYVowVkF4K3VRMUVQbVQ1aGF3dkI0?=
 =?utf-8?B?SXJyR2RVR29QS1dJa25lUndPb0FPa0NzSEFXOVRaOXdhSWNNMUdVbDBSTGZF?=
 =?utf-8?B?amhsL21HWnh6YmZ4TmZWY3BDSHdWSm9UaXo2SnFETXdOTzVudjYrQ0dnN3d1?=
 =?utf-8?B?eVdHQ1hienJyaG9vQlpUVUo4V25idUkwVnpSaVNDanBLR0JMSURqN3E2Vk5T?=
 =?utf-8?B?WmhJSHJsQ21RbDFmUXRuL2cwaGpacXBXckJuL3BoWm9reVE2M3V6THFUSm9x?=
 =?utf-8?B?d2RkcEFUTEdRM2tXS3lJczRxUEF2ekhlS3RHMWVrRmh4N2F4V1JSQ3g4dXVJ?=
 =?utf-8?B?U0NuVGVkektwaTRaTlowWDZzRG84R3N0WXZUUUNKbGY2dEZjQXhjMnBUR2FP?=
 =?utf-8?B?VVQ4T2xpUlJwK084bUZxZVFaQVBvekdZRkpqTFgxNWxGMGxOZ003cm1RUUdI?=
 =?utf-8?B?U1NEYTNXTkxMMmttK2xsVXduZ1NyYUZxWXpqY2VTNm5RYWJ6NktqT1NPVGJ6?=
 =?utf-8?B?d1VTOGNzS2UvamNRd0thMTNiYm1ObE83UkczSzhkUzFOWmd3VnpHY2RqQ1Ax?=
 =?utf-8?B?Rmc5M1prd2hrdUo4cmtjSnpzd0JFbkZ0Y3BqNnpUUzNmWGFaaDJFVW5Idm1k?=
 =?utf-8?B?THZPMFFXWEYzVWhPR3Q4NW90MGowdG0rdldkbDhMVmRvWmxMRkkrT1hJcjBr?=
 =?utf-8?B?emlCQjJuaGNDaTJKcUR2VUtOSVZpQ1BvWVZUYytwdW5PV240Rk50R2dJcVpr?=
 =?utf-8?B?Ymszano1dTVUdzhvT1ZIYWN6emo5MzJya2lGT0UrZ2ZrOTE3K2E4azB4aFhI?=
 =?utf-8?B?STdEak9HcWdndndPRlluem9BRm9jcHNubDkvNHJHamp6VUhoNVF4cnl2UGdH?=
 =?utf-8?B?V1JWdVhEdlEyQldqa1FsclpLODZHMFFKMXN6RFpsYjlYN0RHYnAvcWV5TVFK?=
 =?utf-8?B?dkthY2xrYUNFc3ZJZHI3UWNBTEJGT1NmdXBwa0daRVVCbERZeElTKzlVYzh4?=
 =?utf-8?B?U25ocitUUHZNYUFPcEh6MGEvMVVIZEJGejNSVGJ6V200QVBLQnVzK3ZGQUIy?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1078d93b-a9a7-4bbf-83b6-08dd605e3ff2
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2025 05:33:27.6507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GHS5R+K994TkzEahe6/s9PUeHqXqJ1TkaxS4pn46fQWp2g1zzqNimzulQC2K08DfIRNFjVHYfsHDJpok53zhvd2D9L1wh8IbjHa7XHMxU8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7196
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


On 2/28/2025 8:55 PM, Suraj Kandpal wrote:
> Some DSI panel vendors end up hardcoding PPS params because of which
> it does not listen to the params sent from the source. We use the
> default config tables for DSI panels when using DSC 1.1 rather than
> calculate our own rc parameters.
>
> --v2
> -Use intel_crtc_has_type [Jani]
>
> --v4
> -Use a function to check Mipi dsi dsc 1.1 condition [Ankit]
> -Add documentation for using this condition [Ankit]
> -Rebase
>
> --v5
> -Pass only the crtc_state [Jani]
> -Fixup the comment [Jani]
> -Check for dsc major version [Jani]
> -Use co-developed-by tag [Jani]
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13719
> Co-developed-by: William Tseng <william.tseng@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vdsc.c | 17 ++++++++++++++++-
>   1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 3ed64c17bdff..04ba9f6b7ea2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -259,6 +259,15 @@ static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pipe_config
>   	return 0;
>   }
>   
> +static bool is_dsi_dsc_1_1(struct intel_crtc_state *crtc_state)
> +{
> +	struct drm_dsc_config *vdsc_cfg = &crtc_state->dsc.config;
> +
> +	return vdsc_cfg->dsc_version_major == 1 &&
> +		vdsc_cfg->dsc_version_minor == 1 &&
> +		intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DSI);
> +}
> +
>   int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>   {
>   	struct intel_display *display = to_intel_display(pipe_config);
> @@ -317,8 +326,14 @@ int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)
>   	 * From XE_LPD onwards we supports compression bpps in steps of 1
>   	 * upto uncompressed bpp-1, hence add calculations for all the rc
>   	 * parameters
> +	 *
> +	 * We also don't want to calculate all rc parameters when the panel
> +	 * is MIPI DSI and it's using DSC 1.1. The reason being that some
> +	 * DSI panels vendors have hardcoded PPS params in the VBT causing
> +	 * the parameters sent from the source to be ignore. This causes a
> +	 * noise in the display.

If I understand correctly, the issue is seen because in 
calculate_rc_params() we are interpolating some of the params for 
varying DSC variables like bits_per_pixel.

The derived params though based on the DSC1.2a C-Model, may have a bit 
difference from the original parameters set which generally is fine and 
is known to be working.

However for some DSI panels that support DSC1.1, few of the PPS params 
are hard coded. Due to this, there is some mismatch with derived rc 
parameters with the parameters the panel expects.

Furthermore for DSI panels we are currently using  bits_per_pixel 
(compressed bpp) hardcoded from VBT, (unlike other encoders where we 
find the optimum compressed bpp) so dont need to rely on interpolation, 
as we can get the required rc parameters from the tables.

So for such a case it makes sense to avoid using calculate_rc_params and 
fallback to the specific rc parameters from the table.

Perhaps we can document some of this as this is not vert explicit from 
comment.


In any case the change looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   	 */
> -	if (DISPLAY_VER(display) >= 13) {
> +	if (DISPLAY_VER(display) >= 13 && !is_dsi_dsc_1_1(pipe_config)) {
>   		calculate_rc_params(vdsc_cfg);
>   	} else {
>   		if ((compressed_bpp == 8 ||
