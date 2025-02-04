Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 765D5A27069
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 12:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C73910E5F7;
	Tue,  4 Feb 2025 11:37:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UMIxc1d4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B43989316;
 Tue,  4 Feb 2025 11:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738669058; x=1770205058;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=PxCwcY9/VQn8lsxaqnedoKzuXaZUuwwIrpUDbQJQJV8=;
 b=UMIxc1d4rauEucuB91zEnNqQlmUEuIVJaY8xc7TMd/NkU4fs7YlaFwbc
 6P6MOCScZ/DI//qSttKYFimxvOwH4roItv6kr/XCkUrslhgTjMJy/lTl6
 tVO0DCyMeHuQO/naHWSTQKr+QmyffdDCZeGLRnNmyJFu5DRKy1Pt2SRA+
 3HIckUax9l2ZLpT0K8V39n4TEH3VAMyiAy8xzBGDuiL2TTm4d6xVjONKs
 zNJgvOHEOL9rJR6gtguW2J8KkO4RMVnzjzV++NLmjaqZ+6BPdmcSUi6L4
 dz2D+O/9sTOcYb/MjuAnCHsXKxrwoKBAEAeYVEB60mZwxfCBWK9DkyZA+ w==;
X-CSE-ConnectionGUID: fPNj7BzCTOeBAarTHU/5Tg==
X-CSE-MsgGUID: Ko3ApA9YTa22QcL/22UPug==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="39073767"
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="39073767"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 03:37:38 -0800
X-CSE-ConnectionGUID: tsSgCz+wQBa7yCOjU3hchg==
X-CSE-MsgGUID: cM/750mHQUqbkTnGItft8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,258,1732608000"; d="scan'208";a="110412697"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 03:37:38 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 03:37:37 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 03:37:37 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 03:37:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OX0kcyMs/v3F5vc2DdaJmt8xfiDq5R0fWWVY06giDLLQCSYNlBpe4T5l6L9Jel2+ActuqrtqiJJh21SJ55O5qxWrrdwbyc/6mGjf7OGg+j/93BEffBfPeHDcnOOJ+FpR7lEg2N0ZHAQzpB7v0ZxVMyFWgZw12XtItdVj0xyIPhEqV2eh8zmcXLeVEhQgK/3uCOLhoxA7PSBCUJzxnUeOJEDrTtE7bBgVmdGZ0wj9yb9EOSk0azmcu9GPrVg4CkytVU5NGs66Bdmgenjr17+eSK2A8wgRPV50wHzucWMJdpQpH9LVRwXgEWx6nQ7iWQPq46Vku2YkYXMrfAVImG1YJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/MY2xdw7+oKn3qrKpsO+Ep6fwJVgIBPAGeqdNGSMRRU=;
 b=fBrEziGAQiuBcjswT2IF9FcVYgfdDKbirtgS6c77brV8ihVpw9F/gAuJA7v9ejc6/hmHWT0x1q+df+oxMLg3Avh0PMcxwWemcRynuZl6AXs1AXpKLceOpgn3a9LnGD0e9ymSZsuTJ7TCzMSPJe/PKyRiTnGMouSiiWdzmbMKZrSZHtBF52cBdIXhwKIjc/UXavXV6FkEBeuM4q2MuPHdXakz8t742xuBm5kDZd23i6FqHBDkNzCF1FxyrTfG99Op6lq9yRbk21+KB8Eo1oECPZ44ax4OXAyg6rPq76oHR75tAIDOMEUIw8mslfMseoo1O+cj4lURd7Ieuoa5Z5lCEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM4PR11MB6261.namprd11.prod.outlook.com (2603:10b6:8:a8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Tue, 4 Feb
 2025 11:37:07 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8398.021; Tue, 4 Feb 2025
 11:37:07 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173864206363.614152.4970948120933597813@b555e5b46a47>
References: <20250203205941.251754-1-gustavo.sousa@intel.com>
 <173864206363.614152.4970948120933597813@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/dmc_wl: Track
 INITIATE_PM_DMD_REQ for DC5
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Tue, 4 Feb 2025 08:37:04 -0300
Message-ID: <173866902411.77773.5703217066383995711@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0097.namprd03.prod.outlook.com
 (2603:10b6:303:b7::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM4PR11MB6261:EE_
X-MS-Office365-Filtering-Correlation-Id: 28b8340e-06f5-4c6f-4b89-08dd45104127
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SUtSUS85R1dITzM4cjVRd1NtVnVQT2JTYkhMclJJYk5CU0xrQjRxSFVrdkt4?=
 =?utf-8?B?eUlSTHd3RXlwQjFMbmRCaFYzUWFHMldQd2Rza2dQZlNMSlA2WUJXNW00YVdy?=
 =?utf-8?B?ckpwR0hVZzFHcTk5S2oyL3V1aHFIbjRzeFJhS2JxSjFVc05Ub054SngxV2FM?=
 =?utf-8?B?TXBoQWRrSEd5N2k0dTRPelRqUzhzWHV3bXN0V1pVKzZWVGtEMGxQTWx4SktB?=
 =?utf-8?B?UERJRENDZE5nekVUSDRUbTRTemZWS05ZU0JUbkJoanRYU3ppUGVOSWtid0hU?=
 =?utf-8?B?cFhsN0gyd25BNWZYZ1hicEJ0d0dDTi85N2RyRXRDTGRadzhFQ3hLNllKRjYy?=
 =?utf-8?B?NituVUdEOThyMXRsbitLK3NJMFVoMXBZUEVDWENsalIvY1Q1SDVrUzVWeEtu?=
 =?utf-8?B?RXMzaVNLUGsveHQrb0NLUnVWTStFUzhNSFh0dnkwOXZyUTJ0Yk03SnNXekNi?=
 =?utf-8?B?Mk5COVkvZDJCc0srK09WSEwyVEtmUlhsZTg2V1ZURjJDTFBIcXQ0NndIa25G?=
 =?utf-8?B?SlhCU0U3QkRLSWp5ZWY3TFR6YlJackEydHZyOGszNmx6WXovbDJSQ2NiL3Ux?=
 =?utf-8?B?WGhOcUdOMkFBcTJZSUFZMzkwN2djV3lxM2QrYkx1UEFlQllNcGxjYW5EdDNo?=
 =?utf-8?B?QUxpdk1iOFVNd0FjS2MwbnJoSzB1bHhMcThhUUdZSUtHUXJhOHhiclBBczVO?=
 =?utf-8?B?S0ZicWM5TGgvZEJsWHFURDB5TGdsRk9kN3FKN2xXN2N5QWdRSEtnNmZPYmtC?=
 =?utf-8?B?eTNOek9qcDdDRDVrNWVSS0d3TFFDOXN0eDUrOUVvWHhZbU9MMVRpbDk0SU1o?=
 =?utf-8?B?eUtCeHg2MDhBaVJXdEJVdUhWZkN6QmlhSS94WWlORDV6VHk3OHFEcENpWnBD?=
 =?utf-8?B?aHNyV3NteE9Va25WNFZNMjIyWSsvR2lBVWd4UkJFaFQ3UFc0SERMSTJoODYw?=
 =?utf-8?B?ZkhTaTVYV0N5OElLWTk0b0FOQ1VMYWNuR2IyM0RmV2FPZldYS3NUamo0d29T?=
 =?utf-8?B?Z01ncXFkaFg4Q1pRSTdUYUNxVjJITWozcmV3TzJROEJuaWpteFI2OVhuTjVZ?=
 =?utf-8?B?YUNFUXpxbi9jUW5YQWpYeW0xek5lOU43MmdDQjc5QkVSR3hCK2NYaUJFMWFl?=
 =?utf-8?B?UjlrN3o0Z2FFZ2hqZjBIdWY2Y3dLU3NYUVFBdFNmTCtydVVkQm1xYnZwOVVD?=
 =?utf-8?B?U3FyY1QxOURNR0lRdGRFR2dHcDF3Vk9QcGM4bWh3WmpMTW12aHNkV2M4ZVFj?=
 =?utf-8?B?SEZETmFTZkE5alE4Z2FtSmovYmZtd2pVRmlMMXdSYmd0U2EvTEY1YWVyMFdD?=
 =?utf-8?B?QkNIenJQenVnTEhsWlp1TnVJSHB2ZjVYb096M053YndWZlVubExldWx0dCtY?=
 =?utf-8?B?cjl4ZXVabEdJcmlyVXhUbU1ET0N5aHROZFZWTzRVbVc1VFNDa0V0MStPVFpk?=
 =?utf-8?B?b280d2lwcno5MmVDMTlUV01XZE9UeUNDK2czajkxS3hlUWplenpzOXY1VTNt?=
 =?utf-8?B?bkhENFpjT3prUjJ2ZFlDUE5QdDVBOFVud2I2ZHB2SEJiZ1J5ams1K1ZtV0Iz?=
 =?utf-8?B?MHZOU0NCTzlzSFM0TnhmdmpQVjdSbzlzMk9XZjJhc0EyamJzUUo1MXY4Tzha?=
 =?utf-8?B?RVFGTVlTUXk0bzdzNTVways2NDg3Y1I0SndEMVdnc1g5aGFkbk9NU0hoeGVZ?=
 =?utf-8?B?blV4a283VTlrYm1OdVRJT3F3UmJaNFJtVW4rRmlvZStxcVNKNFlPYStwRVMx?=
 =?utf-8?B?aUUra0tIalF4b2Rvd3hFSHVrdEdJVUlZa2JsTHVsaC80WTV1VXRXOW0zR09q?=
 =?utf-8?B?WWdlTUVLZGVGcmp1QjJzbTJVSUNBdG5rMkJ3VFhUNDhTQjdHdlUxZFJpVGZQ?=
 =?utf-8?B?Yk5CSUhtUnkzZjE3K29zMXlxRmR1NnhtelFBSkREOEZSbHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0FYVlhBUGRYeVQ3bDBKSmtBV1ZkaXRiRkdERlVpd0tCbVBrSndVT0l0OGlB?=
 =?utf-8?B?MW10ZGdoUzJselREeVJsRVpPT3VzVllSSkh6cmhFa1Q2VzVEQzMwM0VkcnFx?=
 =?utf-8?B?UjcrVWxXMy8vcTBGWWM5allmemZaTnZGa1RrT1JGVitJd1UvQ2pIUUd4UWtj?=
 =?utf-8?B?L2x5aFI5RXE4L3dQNlA1ek5xZHJTd3phMGcrOHpDOXNRdEE3cm5ocE5EQkN4?=
 =?utf-8?B?bzBHb2crUGdSZWIrZnd0ajJsSElVeVhaRXNiY0JIY1RXWVR4cmMwMzk1Y3lB?=
 =?utf-8?B?QkNKcHlqODBYazRPc0lMeklBWmVjMEJ1ZWxpK21nRitqZ2VCTDNaZjZqUGtz?=
 =?utf-8?B?Tzk3MEVnS0lvSDZvTjJFMjNSTkYzSGZIZzh3dk5RV2YyTkFRdk5IRWNHZG0y?=
 =?utf-8?B?dzl1d041SXY2enY1eSt0NjNHa0pyM0wyNjh6TkRPZzZxOXBYK1RYSGI4cWph?=
 =?utf-8?B?S0QwSzVpam53azhLVXFLWTNsWHdYWkEzTFZCU0pTWU1YZklOTFNxL0VzMHlS?=
 =?utf-8?B?YzhFYlhaYWUrNEt5UXN3bG9RKzBWTS9hM2RjM05XOTdxalRKQmdHODFGTXM0?=
 =?utf-8?B?anhtejJDM2U3Q1FOYmFyYWFNL1NKR2FwNzNCczVIRW9adGM1dzlUL29tOU1F?=
 =?utf-8?B?cVZuRHdKMFAwaE8zaEtLMWJXSjlSYmZLS2NLcmJGMUNmVm55T2tkSzlndnVv?=
 =?utf-8?B?aW9NNUk3dlQvTUQ0MzVtZmNJY3Y4T09MNWlyeWdOSjJVN3VZcnZWMW0wWjlT?=
 =?utf-8?B?L2RCeXdSclc5TXhUUUtrd3JCN0RQTlBZeGtIeWhkMllZQkdTUGNpTjhYcmZT?=
 =?utf-8?B?aGxZNFFSYUw1TUtqUEZFSlJ0MVJoWkpFSWlFdzV3RHhRcFI0UTZhWWJnNEpY?=
 =?utf-8?B?U2UwWFA5WGVydVIrWVlsN1RqcFhPaWVuQThjREwwYSs3Zmp3S080Z2FhS0Na?=
 =?utf-8?B?cjZoWXF2UnprSDZZMDh1MXpOUml1c085OFNHaWlWOWN6TGpsY2kwYlM4TFJY?=
 =?utf-8?B?aWtkRVFXTmVpdUIvbG90TlpMYmgxY0Vic21HWUxoMHIvSURLbnllRGhGbTUr?=
 =?utf-8?B?VWwvTFNrU3hzUXFTS2NwVmppZWdRSGRseEtRSEF0cVF3TzNCc3pjYW1VZTc3?=
 =?utf-8?B?c2FJWTNIb1BCbm5Fb0FKdkM5c0krZ2o2MUlFZnRUTy9kMVFIaFVUSkJFY1BM?=
 =?utf-8?B?OUNHZ0R3Zm11SjNjcjlkREhsTm9nTHMxS3RXc2FHR2J2REFEakhPeG5SdUN0?=
 =?utf-8?B?TTEvRERrSnhveGYzdUtlZ3Yxa2lQNW82SzhmSDIyTWs1cWlTN1lMV09tSVZn?=
 =?utf-8?B?QkJyN3lIUzQreGVoK084b0pPNUtrZkNGWjhWSUIxc3lseDR2NEttUzFGdVIw?=
 =?utf-8?B?M0liRkx4ZFFwTUFEdEd2bEJCMHJCeTlOYmZyWXcyM0tnak5palVVd1hmVTUr?=
 =?utf-8?B?QVlIUHl6Vzlmb0VqSU5vUDNLb2JQcFBJZDV1TWlVS1JhOUJaZ0lQWUFMdEJk?=
 =?utf-8?B?VVlOVFVlMFJMZW81amJoZzBiVHVOYkRmdDFjUStjMlY1WHFCWVc2S3JEVEpv?=
 =?utf-8?B?TW52M2ptZzNXd2R3NWdNUElvQllkd3hNUnVuTjVNdEo2UU1Ea3Z6TU5HTS9V?=
 =?utf-8?B?bzFVWVB6ZDJSTEpNM1hHVFJQYjUyay8xNFhxZ2tuS0RZOHQ3VlVNK2JtdGVM?=
 =?utf-8?B?VWxvZEQ5Tkw3NjduczN1WllES3ZKTjZvZFAvblJjb1VaZzEyQ1BRdWlZSi83?=
 =?utf-8?B?ZjR1MmMyMU1Ud1BqdjhscGZXR1pkT2hwblpDVFdyOFhpOGZibWdCSzdMeXJy?=
 =?utf-8?B?ZVZqcDV4Y0JhSUZPbU9qZVZxUUEzQURJMzlxc21oZVpOSC9uWDhHVXN2ZkUv?=
 =?utf-8?B?REw4eGNnNVpvaXQrc0tva2FkRmpjRVRjRjgvaXFNWkU1cTdjTHZPL2h2anpy?=
 =?utf-8?B?bS8rTGdJVHJZWE9HNkZ3OXFhTUc4NW5aSmNucW5SOU5VdDNndkZLa3p4eWE3?=
 =?utf-8?B?cFJqczlkRlE5VWsyRFR2dWRoOFdUcEtQWiswUkxldmo3a2s3OG5iZFBvUzM4?=
 =?utf-8?B?MEJOaXV3STgxYmJMaCtJTGc4a3FBYnVzeGgrR0NVVURndEE3Q0s4K1ZJa2Vq?=
 =?utf-8?B?RkFxNC91cTFjYis5eFpwZjN1bTl3aFI5WGIzb3N6aHkwTVYvZzlZZjBUSXFL?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 28b8340e-06f5-4c6f-4b89-08dd45104127
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 11:37:07.2774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 79/uw6DnpP0qE34hl7pTDXtPm7Fx0YSrmjjJYhO+4YhYaFKVRA1CvQ/fk2/zSz4KzobQHolcRsoszw5mBlfh+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6261
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

Quoting Patchwork (2025-02-04 01:07:43-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Track INITIATE_PM_DMD_REQ for DC5
>URL   : https://patchwork.freedesktop.org/series/144278/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_16058_full -> Patchwork_144278v1_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_144278v1_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_144278v1_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
144278v1_full:
>
>### IGT changes ###
>
>#### Possible regressions ####

Hi, CI Team.

>
>  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
>    - shard-mtlp:         [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16058/shard-mtlp-4=
/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144278v1/shard-=
mtlp-7/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

This should probably be mapped to https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13193

>
>  * igt@i915_pm_rpm@system-suspend:
>    - shard-rkl:          [PASS][3] -> [INCOMPLETE][4]
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16058/shard-rkl-3/=
igt@i915_pm_rpm@system-suspend.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144278v1/shard-=
rkl-5/igt@i915_pm_rpm@system-suspend.html
>

This patch simply adds an offset to a table and should not affect
platforms with display version < 30, so none of the above failures are
related to this patch.

--
Gustavo Sousa
