Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC20C976699
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:20:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E990E10EB43;
	Thu, 12 Sep 2024 10:20:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bCm7mYxd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 693F110EB43
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726136447; x=1757672447;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=dj7R5R6nKA9WPykOZyJ2YO6o9vRUwyqmhQJxtrL8kR8=;
 b=bCm7mYxdD6ssVm3m7ut+ouNwPYnnsJMh+suhVP/dvQmgVsGMJyCLGneF
 jCL/vK3p1RrNNkfKimcQSgNTAZSYe9Ej0y+mq+tM2d1OjAndpDHXDjoRo
 cGyUMevSXa59tdTchXyIt5zh6+AlnEwcuRKixSpTT1C1fDs2yY5gv5UOX
 /8rwMydIcbtwEUjtiWjxbfKCsxPJ3iTiMD1AU7jTGif2nR1itg7OrPjc5
 0ormhMkSXHYMoUgQPxzgZg8Z8lxcilALwNX6f737K1WqP2ga+qKiy9qnQ
 5EjbXGqFOcvprHjkIZ1Kyp+2Jc4uhpn1yuNu7pUJV6AhZABWLeV+nyIyf g==;
X-CSE-ConnectionGUID: r8y5215QQSicPNiSw7xhiA==
X-CSE-MsgGUID: 6RPBzGpfQlycQhKWPs4/ag==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24852417"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24852417"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:20:47 -0700
X-CSE-ConnectionGUID: +lTAVyWWTTazXh0eRvTj/g==
X-CSE-MsgGUID: DQ21QgcBTDSJf9WewX+ctg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72030713"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:20:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:20:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:20:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:20:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PIjlhZqf6aiOHuTksVJE0OU3/ebFcLvUm9f0RKZqDSUuPSn9d2xFn8R/PQYj4XW9UyANdXbXud+nAXGB0fzP+H2kgZB7/k3pcju6RyCfDfhdXm3WKcpCGqhcyQOeDlwiwQ5fmJ/Ty6pnO1SaX0XSIVEj7WvOcbR0cGsvxVFXbFX+eMIrcVrTLF9h4MJfm4kt0xAzl2YyJmiTST9s3lNM5IJRBbyS5LlID7LnjMh0c5iiGd5PUtBmaarEtF8aTccE85MKjiU5F4smMloSnnAV2cITanggimPjLPD1WDNq8vdJ9Op9CrjF/X77fCkUx6Zr6y0j8wWSSaU3ddAq2eEa8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rXVskBV26IL5yupkzhJUvoahtlMXQZ15/ve6urv5CmM=;
 b=FKAqjP13EWDa9d68PZXnA4tNCmNxrQp7nyXeA5bLEIsZOQcww8KYt9zkmStGWhCodtpIPHcsGFDFuXt8lpNcGyfPJ2wDC2szYLXWs/ak6UMRsayXul8oARaJKBGw1LJN3Z1v65xyOtQtDLZKCMPLx7q2RPkXL2gfFIy9XRLbPpOWw0osDDldJfsYOw5NNDhMsE+lewf+mVry8Ekuz+nuabOWLro6fZ2sY820wv/9NL5oBEZO3H+sgEex6eUVQZ48DWRpLSCb27S62MnqXE0OaSbZ6FDTCjP3nD2ZwIqpbuOQpHnogjg5p4LobndAz/HGGOdOL0G4prRT1QyudxEnpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6927.namprd11.prod.outlook.com (2603:10b6:510:225::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.27; Thu, 12 Sep
 2024 10:20:43 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7939.022; Thu, 12 Sep 2024
 10:20:42 +0000
Message-ID: <98619708-7750-4a4c-a1d1-8e67965a6909@intel.com>
Date: Thu, 12 Sep 2024 15:50:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/19] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <jani.saarinen@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-8-ankit.k.nautiyal@intel.com>
 <ZuH6v1ysrM5zp4rN@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZuH6v1ysrM5zp4rN@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0018.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::27) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6927:EE_
X-MS-Office365-Filtering-Correlation-Id: 964a4125-9be2-4656-6f0c-08dcd3148e44
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UEtXRG5PR1c1dDNNRy9SeWp1b2toQ2NhSGtyekFoeG8zY0lLS09ybFA4OWcy?=
 =?utf-8?B?MFRkanZQZGo2eHJMQW03TFN6bzQzUitqSFE0eWwrWUhRTTBZVmw3TU5SRThL?=
 =?utf-8?B?NmlEMGwvUHcrY25TdVEyR2k2Z1JvcXNHRmswQnZOL3A1M2RhN0wrUDM4YW9V?=
 =?utf-8?B?ZDJiNHdPTzZ4L1VvTDFGeW1LUTNYL2FVeWRMVEMyR3VLRmJBbnM1MEZyUUJp?=
 =?utf-8?B?SURiTVlGWC9obU9nQlB2R003NFlYQlorQ0lkR3FDQXozbDRLZlU4UVg1SmNN?=
 =?utf-8?B?clVZTkxyQWhZZ05jeFVHZ3JRdkNtMnhGNVNaM3c0cGJPZklSSGNIVFFYWU5N?=
 =?utf-8?B?WGZRT2xTYXNVSjdRV2FiTUFmam5GdW5ZVTdnc2VDOVE2MEcxTTRPMkVFcytL?=
 =?utf-8?B?OE5jMGo5WitzZUNqc2lFWWRWQ2dIaWtrK2hpbGRpZ0ZuZFQvbVNlMFA2c1dk?=
 =?utf-8?B?YkVwa1c2REIxMythVmR1V3RES3VwM0FrVkIvcFpjMkdtWkZVNnRkbGFXVjZQ?=
 =?utf-8?B?ZWlGSEJEY1ZQUUF1UUQxaFM5OFFXbXRMS2pmTGozdVYvVjJyMG9pcVUyNUxE?=
 =?utf-8?B?elM4eEozMWhIYlk3aENBYUZya2tmd2Y5MERNYVdWaTJhNXowZUdnMitqZktE?=
 =?utf-8?B?OU10TzFXZjdvaC9vQlQ4aVlybDZmdFBXY29XelduM1RiOU1hL1VIb2RJd0Ja?=
 =?utf-8?B?bVRNWUNQa0FUTHlSREdES3pHRlNFVkRtWUxGYnBkcm8vcVNESlJzMFNLQ3g0?=
 =?utf-8?B?WnZZYmNnMVRidzI0S3hZYWxpMSsxdHpEWFpKNlNXdUJDTnoraFduYXFzZDBl?=
 =?utf-8?B?YWN5MlFibjdTWU9wbWt3RC9IU2VrRWwxbXlOazUrN09tMkc1blhvMGZBenYz?=
 =?utf-8?B?WnM2RUtaaUdYZWlxekVybkdOWGxnVmR3M0RRR05DKzl5elhXOGNwaUlIV21X?=
 =?utf-8?B?TTVQR2dxYmZJa2pMWTRNMzlrKzZQNTRBMUdnQWhmVUZXWmd6Y3FnUXBqeE5y?=
 =?utf-8?B?MlR0UmUxRmc3bXE2Q3R4UmI5Sm5YMFQ1S3FNcTFwbmhXME9LYnVBVVh2WDN4?=
 =?utf-8?B?UTQ3dEs1UitvTUpGYmZoNWhueUk5MHVMNThPU3EyZVpFTUhUWHlhZ3dUVVcw?=
 =?utf-8?B?VjhxMDNYWG04RXl2bFRWYU4wMTkwNHNKeWk5S2tWR2dJWGFOK1loY0hKT1lD?=
 =?utf-8?B?c2ZJL3V1TzdTRmwzOE4zWXlFVmRscWxkVUZlWWpvZVlxdktlYTczTTdud1VX?=
 =?utf-8?B?YzJZNVhreHovT1g2eWlQWDhuYmdGQjFndU9jRGxZN2gyZDdBR0xrb3NrMDlU?=
 =?utf-8?B?L2dRY0ZpZVB1dndnZjZObG12aGthaVJZSXhoK1V2cTRYRWFkSEZocEJhL3po?=
 =?utf-8?B?d3RxSENjck40WTRRbDQ0M3ZxLzdUcUJaM1BFZXh3aDh2RnF5MDFvSGl0cFFu?=
 =?utf-8?B?TDBVb1F5U2syUzlBa092eklKcDB4ZWp4QkI2cnY2T0dVK2dEOXlHMDhqNXFp?=
 =?utf-8?B?d2grVXdVOTd2aWQ3QkFKWnNNRlZ0VVN1cTRIdFN2V0NNbEs0Z3FzT2FINEdB?=
 =?utf-8?B?ZEZ3OWVXUlZYb3BkTDVTUnY0OTJoYkx1TDRUdHNXaEhjeUVuWTJBNW1oVis1?=
 =?utf-8?B?MVdPOVErZTY5c3JYZ2l0dEpvS2pkdUpFc3VLSDVXQlR6djFiOG1yaVNvSFZ4?=
 =?utf-8?B?S29PbGdoa0JHK1VOdUdDMjI2SUo1TU9HTzQwbDVDTStnWld1S0FQOFE0RUdr?=
 =?utf-8?B?VDBoRmprNU9tMjlvRUtVbm1KYi9pOStTdlFaWkdqUWE4VWk5L0ZxVmZIaUhu?=
 =?utf-8?B?ajBJTDhKNmc0MzhZbXdsQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SkVuQXc1VFVuU2Qyb0lpdUs4NDFFWnlUYkF6enRZM2wvUmh4cGFUYjBWd05h?=
 =?utf-8?B?UVFGMXM1ZlNmSVk2N2VNdnFiSFJlU3g2RXU5dElpVWl2UnVwblM5TUpJRXhE?=
 =?utf-8?B?QlViaEZFbXZGN3hWUzFmbHEvZWxJWVVrODhacVZoZXozcUxJV0dsZkZ1R0I4?=
 =?utf-8?B?RTkxcVp5Y1dtOWpwYnpKK0diNjExNkxGSXZIcFNrMGFkNklGdXRIelM5WXZp?=
 =?utf-8?B?ZU5iMC9CaUhpNmRlZ1owMGdFMlhkMGZuY0N3LzY5aFRvRklxQjJmWjFMclBM?=
 =?utf-8?B?R21UVVpmYkE1RVVRTUJTWVh1SStyT2lkMXZxdVQxb1NrME5STmJGbmtwaVgv?=
 =?utf-8?B?MEdiOUt2SGZYaEh5Z200TkR1eDdsUjdMNGFvWmo0S3VHanhld3FDbzhJcjdO?=
 =?utf-8?B?ZlBKcHJleEc3R3N1V003ZFVGYTZxSkdTR3FuUVJhY1d1NDI4ZGFXUE9BbVho?=
 =?utf-8?B?SWppWS9GUEJRTjJkOFMrdkVsd0cwOGRnU3RCckE1dEtYbElSMThaeXBUQlBV?=
 =?utf-8?B?RFJyZVI4U2xBamdRVnF6UnU5TWZZbnk3cXNReUMweS9leUw2QndtMEFVY0Ja?=
 =?utf-8?B?ajVRcWw2MGxqMkNDaUNLTmNIdzRYbU1UVEl2T1AzTnNzQnpQaThURUZ0Wktq?=
 =?utf-8?B?aCs3Y2dWd0FaTEtWVm5qa0dTOHJHNmdMZFY3R3ZVRVVSdk1hdHJyQVRxelpj?=
 =?utf-8?B?VEJXQ0FBV25XU0l3eU52V21lYnFOWlVLMkRtd0U0T1ZHbHV3d240UURTUGgw?=
 =?utf-8?B?cWpZOS9FK1VnRU0wekhnM2ZhLzVLUU1SV2g5bm9IZTJydWNrclFWbE9hYnpK?=
 =?utf-8?B?b2QzWTZsYzBwbnZ5L0xpbE9WeC9LVXhLY3BCMHdmdkJJZTVKaE53WDlwTnVJ?=
 =?utf-8?B?Vm80c1UyNW5YOUJhUXdnVmtGM2Vvb1JidmRwdVZDblYwUDJod0ZsQ3JyRnRq?=
 =?utf-8?B?aU1TQ3Z5VVRSaGtFQmtlWVRZVFBsbnRaeXZ5WGVqVFVPeHVzaS9XRkRLNXh0?=
 =?utf-8?B?V0Y4RnQ5TGhYVk5XVGE1SkpkYlpCQzZyaWJobVB0UlBreHJhTkpiNEQwYWpF?=
 =?utf-8?B?TURhL2FvWTFUSHNURVAyVnI2ZXp1d1p5R3J5QzBJak5nUmx3dHdVYUIzNldH?=
 =?utf-8?B?bCtjR29JaitJQVZxbWVWbzRHK3E0MUhaWXY4Q2J6aTA1c0xoWUtiZHNSclJR?=
 =?utf-8?B?Y0JWcVhGQkYvWUpyK2U3blVNVGVQR0ZQNTUwbGE2QUZ0bXRvcjhuUVBoYnRE?=
 =?utf-8?B?VklRUDM5TE9KWjVuYmhPcW9BZ0lJOWc4ZTV2bmFNK1BIaUFRbUhjTkkxSlVy?=
 =?utf-8?B?dWlLVHEybnV0eGJONnE4alhIQ1lWNDF3KzFrdWx6cXlWbEN4VHZuQUtNK3pw?=
 =?utf-8?B?cHViMTdiSWZVZ051amJmTlZaUk1XVHVud0tJZ2VPTmg4ZTJzQ0d0VXpZOWlZ?=
 =?utf-8?B?cEdvTFE1OWxVbmRwSVI3dEsxazdPeDdOQ0YvT1BxSXJ5WlYxbE02Nkd6aGg5?=
 =?utf-8?B?WFJrdzdQYlhVTjJOYS9RWlF5UGxEWndZSy9nQ1FXVkVBL3d6aGpNS3lxNXJN?=
 =?utf-8?B?SUZmMStWdVAwZ2JvcnE1SWx4RW5XNXRGZjliZlVVd21QVHhGL1d4Qk9CUUNI?=
 =?utf-8?B?ZDAyc09jR01COVVhVGpNTU5wSUJkdkdPeWgvQVl4R3NmVFQrdVp3VDgrb0tS?=
 =?utf-8?B?SXR0TUFVVmdvQnN1TkR6TGZFVmhpMjJRdTZuUSsveXJoNy8vODdYOGNrb3NM?=
 =?utf-8?B?OUFrNnlMUGk2bjc1Q2JmR3JuWU52R1VWNzZuL0NjSTNQcHhrazZuT01GeHlN?=
 =?utf-8?B?S0o0QXJCUlZnSS9uNHB2REh1c01vclpPY1hQb29KNzhPSS9YWlhXdmVkRjhJ?=
 =?utf-8?B?d3hLaUZlSjdzSHpUaCtZUGZyZjY3ejYxditSWFNCNjBJQWtjTjB5SjlkVGlJ?=
 =?utf-8?B?SUYvWDd5MFFhd2Mwam8rekJwZlFKZk95TnA2OTZDTHRjcVIrOS9lVzV0RVRO?=
 =?utf-8?B?ZmVYNXJQaU4zejIzUGlOYWxpS0k4enZZWDRIVDVTQXMwK1ZMekNLSE5NRGVv?=
 =?utf-8?B?QkdKclBJaC93QytHcXFqV2RvUlV6QjhTZ2ZodWMwSXNTQ05Lc2tEQkt5dTJn?=
 =?utf-8?B?WHBDZXlleGl4bVVBTDVHc0JCN3hwY0NET2tMemtlMVV0aTZyRk92RGYzV1VS?=
 =?utf-8?B?OWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 964a4125-9be2-4656-6f0c-08dcd3148e44
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2024 10:20:42.2661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98q5m49hhn0ito2R4RhlUK+dzCtady1NUYcpfFzb0JxwuPIyr79FFjvu8z/GGMNOOPu/rjriTuS18qLsejk9CiGPLNdMiKIqQldSqbOfuA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6927
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


On 9/12/2024 1:47 AM, Ville Syrjälä wrote:
> On Wed, Sep 11, 2024 at 06:43:37PM +0530, Ankit Nautiyal wrote:
>> In preparation of ultrajoiner, use number of joined pipes in the
>> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c     | 9 +++++----
>>   drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>>   3 files changed, 10 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 65044f63d1f5..6c503b5968d2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1412,7 +1412,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>   	}
>>   
>> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
>> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
>>   		return MODE_CLOCK_HIGH;
>>   
>>   	if (mode_rate > max_rate && !dsc)
>> @@ -2520,14 +2520,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
>>   	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
>>   }
>>   
>> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
>> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
>> +			       int num_joined_pipes)
>>   {
>>   	/*
>>   	 * Pipe joiner needs compression up to display 12 due to bandwidth
>>   	 * limitation. DG2 onwards pipe joiner can be enabled without
>>   	 * compression.
>>   	 */
>> -	return DISPLAY_VER(i915) < 13 && use_joiner;
>> +	return DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2);
> Pointless parens.

Noted. Will remove these.

Besides this, I am wondering if I should change the variable 
num_joined_pipes to num_pipes or num_pipes_used? So its values 1, 2, 4 
make more sense?


Regards,

Ankit

>
>>   }
>>   
>>   static int
>> @@ -2558,7 +2559,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>>   	if (num_joined_pipes == 2)
>>   		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>>   
>> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
>> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
>>   
>>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>>   		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index bc9a82d82df2..cc08a309eb78 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -123,7 +123,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>>   				 int bw_overhead);
>>   int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>>   				int max_dprx_rate, int max_dprx_lanes);
>> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
>> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
>> +			       int num_joined_pipes);
>>   bool intel_dp_has_joiner(struct intel_dp *intel_dp);
>>   bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>>   			    const struct drm_connector_state *conn_state);
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index 383b3e38df52..fb067749f3a0 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -588,7 +588,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>>   	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>>   	pipe_config->has_pch_encoder = false;
>>   
>> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
>> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
>>   
>>   	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>>   		     !intel_dp_mst_compute_config_limits(intel_dp,
>> @@ -1472,6 +1472,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   							 mode->hdisplay, target_clock);
>>   	if (num_joined_pipes == 2) {
>>   		joiner = true;
>> +		num_joined_pipes = 2;
>>   		max_dotclk *= 2;
>>   	}
>>   
>> @@ -1512,7 +1513,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>>   		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>>   	}
>>   
>> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
>> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc) {
>>   		*status = MODE_CLOCK_HIGH;
>>   		return 0;
>>   	}
>> -- 
>> 2.45.2
