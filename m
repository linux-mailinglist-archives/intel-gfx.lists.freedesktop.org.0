Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E03169AC347
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 11:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A29110E361;
	Wed, 23 Oct 2024 09:16:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jG7ne033";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DCAB10E375
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 09:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729675008; x=1761211008;
 h=from:to:subject:date:message-id:references:in-reply-to:
 mime-version; bh=yd1DkbKH0SZzDaAU4PYQEppo8FgRcOTBqa6FjLf0R/c=;
 b=jG7ne0337IUSZ83TEw7qI4Plou0uF0wL8kSAx5zGHMi4WqqyESL+6rOf
 HQ/oY0jWWaahgc6B70ZqejGi6XawuhQos4nfuSMJPD1iI+ljXMwdM2caE
 5kqKjqnlyPeq/4EkTG8NpPpJvVq5vdqliJdUmM4m6rgBc2j02Slr3irev
 A7b8HF9L97E/tghTki/vY4UOLLjVLY7obMGbQ29VWtzR0UlUummbLuQHw
 pRlHPh/98Kxcy0lAlDBzfZSHZWFVfNKyynnucGPoZ9aV6SGAKOiBmakci
 EcpahCg4qEHOyavUy9yjrARmu11nCgHPdtNM7SjZi5qSTlNWUD21Wwo+N A==;
X-CSE-ConnectionGUID: G9KgdebZSqWzjU6zPWocoA==
X-CSE-MsgGUID: w21BM7QeQrWpqXpkhjJSKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="33061164"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208,217";a="33061164"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 02:16:47 -0700
X-CSE-ConnectionGUID: 9JYEh1QwQFKJNnWQfde+Rg==
X-CSE-MsgGUID: lRNJpphrRru4Es9A3RuJ3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208,217";a="80060080"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 02:16:47 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 02:16:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 02:16:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 02:16:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hHvW7utD+cHBrBWKm3XLopzOMOroJ2ncVs2dNaqrU56kL8iKmcSWEK6LvgsCo2Y3cxLM0c1cr8JIWOFuSWcWy3U0BehqMov0OPrbpv2ZxzMpQ5vPrObcoRnaolzhrJKKJHpe4clBEOxTVgkeJFtK1Fi53obqpk2n2Ot/2npCqUrqCJXva3SkP1UPQYuDo0OhQo5lGu7O7jxiB2Z+gWeu+OqVdADsavqEdLuuJG16Cv44CWJnJ+hwadlKqwKGt2lrOv16FJHdGI3Usn76t8xg794vCFPTxucQyJbKn0Lfok9gXaboiegDitMlmsGg4W10K1h3CKlDS34NwZc20nbGGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yd1DkbKH0SZzDaAU4PYQEppo8FgRcOTBqa6FjLf0R/c=;
 b=IN4EqEg1oH4cPYZBQaAI96mlpwXksRWalx5SuVQUYCjRB3vh7dnoZQRPZua8YwhBSbS0OQ2Q1voxle489YpZmw7pdG+9E47PAGaEmcX44m0Vg0yVQoXf7wrz+xdFoKsMLy0a/rrrylKXsz9dpNC8D1riDnhuQaJACL6Ff6IT1+ecb7rVSVMT+BdW7FHt3IO8zav5sbx+iT269lgGWuTZkXX7llJbLI3VyH5Swv1GqhfSKcDc6NWXiowSSL79EMiy2VsjYQL4nsWZQpTo2zg5/HcamxGRyFFUNkUBGFZuu0D07NKfx7e2Zto0JE6yG5Pmrc90FPgajJ7ZQ/S98fU/yA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB7280.namprd11.prod.outlook.com (2603:10b6:8:108::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.28; Wed, 23 Oct 2024 09:16:44 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 09:16:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Naladala, Ramanaidu" <ramanaidu.naladala@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: vbt.psr.enable is only for eDP panels
Thread-Topic: [PATCH] drm/i915/psr: vbt.psr.enable is only for eDP panels
Thread-Index: AQHbI4uv5IqGYGUaF0y6GIuPGOm5urKQ4pUAgAMu4IA=
Date: Wed, 23 Oct 2024 09:16:43 +0000
Message-ID: <477310bcb011a0b4f48624b31b112519059d3cb3.camel@intel.com>
References: <20241021073349.1222331-1-jouni.hogander@intel.com>
 <b93fb4bb-ce8e-4a6b-92f6-3fff3c51ef1c@intel.com>
In-Reply-To: <b93fb4bb-ce8e-4a6b-92f6-3fff3c51ef1c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB7280:EE_
x-ms-office365-filtering-correlation-id: 8dbb7a25-6cb2-41a0-1f32-08dcf3436980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|8096899003|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?dy84ZE9qQUZnWmIyWVgwaG1PVXFqMkRaOVkxRTUrUHJGeHc1WVFRaUNJdGdo?=
 =?utf-8?B?ZnBUaEszUTJnNEVHNlhZNTVpSTNUSW5uRitkb1FqOGdtVEY0djF1RTltcW5n?=
 =?utf-8?B?RTlZRzFrS09nWWhnTytNcVBuUk1XRmFmSlg2SmRVV0ZZQzNlaXFyWWRoVjVr?=
 =?utf-8?B?ZGMrUVlLT0JpdHFVa21IWHErY0VVcHFkZ0YyS3UyMjMzZGMzc2ZWcURMeXls?=
 =?utf-8?B?THRnZDh2OHZ1LzNjVysybllFNU1ZQjYwc3l5WEhWdmZLRkFKQTAyMXltU0dz?=
 =?utf-8?B?R3hCUW5yc1h3ZGZPTEI3V24xNWpZbXZyRTBXL2lNV1ZjREdFZlVZcURZMVdS?=
 =?utf-8?B?dTl1ZnZSOWdjR21BKzJDNytSbnNDU2VKMzBmWFY2ZkViSFZXalpVSllhcE9B?=
 =?utf-8?B?ZTJWd1R4WDNkNmJNbEIwT3lGNnd6SzFMT1djV1FZTHM1SU9vZlBhelhBYnd2?=
 =?utf-8?B?WlpLVjZyL3plY202SUsyNTNndDE3Y3FzYWVoZDFuOFdrVi8wSFhPeWk2dXd3?=
 =?utf-8?B?bGFLb3FTR0J2VTVjZkgxcTk0T3Y4OEFyWVJhczR5cndGUFZCU1dEdUVXZFZJ?=
 =?utf-8?B?bnphaU9ra3pqR0JwM05SUjRpWHF5ZTRFYnMvbVFpcWFxeFg3SXFKMWJwN2s0?=
 =?utf-8?B?SUlhSVlMQ0NxK1RsQlRGaUp0WG9HaG1Gb05ROU1uZFcyRzdhNko2a1NQamJw?=
 =?utf-8?B?YkxTcXRkU2JneXdUSVVQdzBVakMybjlLdWR1N1BRSEhuNmlqU0p0OG1zQWNj?=
 =?utf-8?B?aG9TUXloOFZqZUVwR2wxOWlzNDhtVXNXZkFlSGdnVVROaTh1bjJaUStvUldZ?=
 =?utf-8?B?bjg5dWwvWXFiYjBLY0J2M3JhNExjcUtFaGQ3akd0Y1Yzd0V4YlQxUWlobWZs?=
 =?utf-8?B?bG5uaTFNN2QxaWJheE52bUt5dFhyaGZoTjUxNCttdUEzVktFU212QkNsK0pU?=
 =?utf-8?B?S1dNaWI1bjJEOWZ6bTUvRDNsNTlUZ0szamd5QzNzOU9LRWsrWVhqTlRlaUJF?=
 =?utf-8?B?UnpMREJtQXhnVWJNQ1RRR0QrOWdzdUVEakhua2NrY25qeS80SlRZVzZqMm9m?=
 =?utf-8?B?c294aUlKbERnUVZ5VkgvRTd4dFp3Y0sxYXZqdGZ3bjhKOGYzNzRKVG1lY2Nu?=
 =?utf-8?B?UGVIRGlDYWx4OGNqOXNkQW1uejk3NlRwSHNvVWFiT0FpRkZuOE1Iekl5MzBa?=
 =?utf-8?B?UzFpendlV012KzFiTWFFUUpMRTZPOUZhVWorVzBZcFNGQ0hhRDdKdjgzU2NQ?=
 =?utf-8?B?VmNkZkJkQ1grVmtTS2hsekRFMW9PYnBBWVV3bXdXSi9GS2NaTzJoa0MwbDdr?=
 =?utf-8?B?OGlCRU5IbXhsRjM1cCtOOGdxRTdWWG9WVnlwNEd2d29HMnNXM1JRbGg4aHh6?=
 =?utf-8?B?QUZNZHFXZHU1TEsyMklPUVNEd01TZzBMbC94Mk1PMEpnNDczSzNpdGwwVENS?=
 =?utf-8?B?b2VsdzRGOUJwcXRLYVNWSjZCUkJ6dUg4ZlIrV2t5TEdISzRUcjJxbG1YRGQ5?=
 =?utf-8?B?QjhhR0Zyc3Z3Y1JsZDZCMzFQTm1VUlZwNTVrSkdaSTRNNm1uNmdDaWxxZ0pp?=
 =?utf-8?B?dFNYekM4YzBFN3AzLzQ2Ti9DNGVIQlM4L2Rqb3Z6Q2dIZkhHcmFRS2NZdFFv?=
 =?utf-8?B?NElHWXcxYUVWWGFja3RwWHZvRllLdXBhOGlja1hERCt0UmtWd2c3REwvV1h0?=
 =?utf-8?B?OUh6V2lRNkluUWZtalVEdTd4bGdJNHlxRDRGR1NNMEJNRUVwemw1eE1HNFdZ?=
 =?utf-8?B?ZGx6ZGxVUjVLekFJb0R4VUx2VE83WFpKWVZEbDJna1gxaWR3b0xjd252eG5w?=
 =?utf-8?Q?a6scPLZP560/EnTuk5DYpneGREEIVwEIkHfOo=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(8096899003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2dpK1RyY09JTHh4WXBBMGM0UFJRK0NsNjZMR2N0SmdtNEliUytGUDFEZUM5?=
 =?utf-8?B?ZmF5ZnlONXBwRGZlQzFVRTk0Q2JTeUxZT2ljWUdleG0rMVVtMEZOc3EweDkz?=
 =?utf-8?B?eHFnTm1KRzd2U25LbTEyODQ4RnRucU9jTTJwZkdhdWdwcDBvMGpDRmliUW55?=
 =?utf-8?B?ZXgvdFA1TThNU2xaMWVMT3lvVFRLNTUrZW55MnRiZno0bnVDeHRGYVE0bitY?=
 =?utf-8?B?Yi9mODZrMjhzRFQrNU9VRklCOTB0MDZTQ3VsSndaWHJERVIyT0dGSjBmRHNE?=
 =?utf-8?B?MnpOejY0a3l5T2IyS1I4dGh1bEVOWXhSLzZEYk1Wd21sVjh6dk41RjlleE9n?=
 =?utf-8?B?Z0x0OFFrUDVGY25TbUwzd1VOZGZjdW9sZUM4bkFZU1pwNVhiSXVDRTBNL2dL?=
 =?utf-8?B?V3FHTUVUVStuVk1ObEI1T3lKcWxuTVRNVk0xb2VBN01sMkZiMTFMT1FQUHVv?=
 =?utf-8?B?NEx2U2lMMG5yWnpKMHNQZkJjaG03b2NvL1FIZFpSVkh4WUIwY3NNUDVwenlW?=
 =?utf-8?B?TjduSWFKeFFOVDhwSkxuME5hblgvQlRkUXh1cWJuUTVSMlNpQWFhYWpTbTNv?=
 =?utf-8?B?anhZL0ZSd0ExTFpIaTJJRFRWK2ZTbDBsV3c0a05PSWk1UnljMTl5RmtHakZF?=
 =?utf-8?B?cG9pWk5vRGg1YThDM3Nva0ZyUldQTWFJWUJVZG9zVSt6MTA4SGJKb2FvY1dS?=
 =?utf-8?B?Wk0xOWs4dkFqa2pXdk14am9sTXBqZE5yVXpLZFBCNjg2WElyNE1VdUlWQUl1?=
 =?utf-8?B?TWFGWTVkaFBoTXpMTFBSZkNTQUlwWTNyNFlFVnMwSkhqTFpmTG1DK29YS3Ri?=
 =?utf-8?B?U21SN3dGY2FPM2ZqcWYvK1lqeDRpdURPbkh0Z3FvM0FUdldzbzVJd3BpaFBZ?=
 =?utf-8?B?VXAxTXU3MTZHTTBXdldyUEdRWGdJN2luYTdxQVFISmppZFFSNlVtc2k3MTFa?=
 =?utf-8?B?cFU2dlBHQjMwazFlMDYwVVFzVXJpb3QzK09aUW5pczllaE9WTjBXMDNKem5H?=
 =?utf-8?B?Ti9OM0RkWTRSRm5CdHdXVjhkdDRPU1h5a2ZBYjh4VDFXOEw5NGFCdDBXSCs5?=
 =?utf-8?B?UDE3VGNLcW1hMVZ5MkV2dTJYalVEU0Rha1dQOWJuMW9OVHFza0RWYzhtWWh5?=
 =?utf-8?B?NTVoRmZEa2NQV08wSnFXaW5sWUhHU3R1cHBUZWZYU1UxNUNHRjl0eHdvKzF6?=
 =?utf-8?B?dXpCZUl4RlgzRW0wcC96NmsrUE9TSEFwSXgreEozRmMvWVBQbWhTWXEzQ2d5?=
 =?utf-8?B?cGFKVERTNk8rR05tcnlJOFdRWnk0RXB5b3JURjBwR05BS3ZDM2JUbXdxYllQ?=
 =?utf-8?B?ZWl0Q3huWFNRTmluMHlKNUVESDYraFpGeUMzeUdwWm0xQWdPRFFNdHJ6eFBF?=
 =?utf-8?B?RFU5aTdlcksvM01BRk1qM3dGR0UxUHhCeWFIZVQ5aE1RWUlFMXIvQ2NnWjBV?=
 =?utf-8?B?Uk1TU1Y3ZzdPRFYvN1lNdHFzTmRkUUEwY3c5QVFUM1NPU2VxbTZsSkVwaFBT?=
 =?utf-8?B?SEdZbXRQTmxjZ2E3cEpTRncvVVpkdkdtRzlMNVNPWjhWNzN1KzZhemZ3TjZq?=
 =?utf-8?B?c2ZSMS8zMnE1VDY0Y1ZaaHE0VW8yYkJQT1R4ZHJnK0FUQnN6djBUK0w4NzVk?=
 =?utf-8?B?c3A4WVVxcHRJRXQ0QkFkakxPVGZVZ1Z1ZlNSNXNPd010SHp5WnVQSG5kUEJL?=
 =?utf-8?B?YmJ5QkVsTS9objVSTVpaTzEvOWN5RzBKbmU0MmxoY0U0cjN3ZUlSMnZKNVp6?=
 =?utf-8?B?TUNHTDZMdEtjNk9RU0lhM2NDQ1pFcytsSDNtRURUSEtTV1NsS3VkYUNQS1p3?=
 =?utf-8?B?YmtrSGU5c2NlbjM4ZzZJRUdrTENiMG9aTjMwS2g5MGNIZkdUOXJEU29HRjRa?=
 =?utf-8?B?V25rL2RLRXRiVnBaOUk4VVcxWGJ6aHl3aWlhQXFnRWxXNFE0eW0rTVJMc1Ez?=
 =?utf-8?B?RkNlRVkxT29uYU5JVnRNbG1wWHVFMW1lOEV0ekxWV1d5bUZlL2xjSXZZbit2?=
 =?utf-8?B?Y2EzZkorRU8zOHV1MUpyS3ZPQkQvWUZIeFJBK0duN0xMVGhhUVN1dHhSLzNF?=
 =?utf-8?B?N1JKVkJMSVQ3V3ArMUlYMkZ5Y0JWbHNLQXRqeE5zY1lKVGo1ZWE4bEJYSlh2?=
 =?utf-8?B?dmlYNlp5VXlvL1hmRC9wTXJnVUpXdWxVb2JScWh6N1dsVnc5V1Rza1R3di9a?=
 =?utf-8?B?OVE9PQ==?=
Content-Type: multipart/alternative;
 boundary="_000_477310bcb011a0b4f48624b31b112519059d3cb3camelintelcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8dbb7a25-6cb2-41a0-1f32-08dcf3436980
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2024 09:16:43.7844 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zo34L8MtUBE0UB33wEf7nUNjosM+Eqz4ewSNdGKD3RbrGqkHOGuMZsL5uquiDKipV2pCyxTAcZG69t5h0V2uah2zPcGp7XzfiqTRPx9COy8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7280
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

--_000_477310bcb011a0b4f48624b31b112519059d3cb3camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDI0LTEwLTIxIGF0IDE0OjEwICswNTMwLCBOYWxhZGFsYSwgUmFtYW5haWR1IHdy
b3RlOg0KDQpIaSBKb3VuaSwNCg0KT24gMTAvMjEvMjAyNCAxOjAzIFBNLCBKb3VuaSBIw7ZnYW5k
ZXIgd3JvdGU6DQoNCg0KV2UgZG9uJ3Qgd2FudCB0byBjaGVjayB2YnQucHNyLmVuYWJsZSBvbiBE
UCBQYW5lbCBSZXBsYXkgYXMgaXQgaXMgdGFyZ2V0ZWQNCg0KZm9yIGVEUCBwYW5lbCB1c2FnZSBv
bmx5Lg0KDQoNClNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJA
aW50ZWwuY29tPjxtYWlsdG86am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQotLS0NCg0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0ICsrKy0NCg0KIDEgZmls
ZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCg0KDQpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCg0KaW5kZXggM2IyMDMyNWIzZjZhLi40MTc2
MTYzZWMxOWEgMTAwNjQ0DQoNCi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCg0KKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KDQpAQCAtMjMzLDcgKzIzMyw5IEBAIHN0YXRpYyBib29sIHBzcl9nbG9iYWxfZW5hYmxlZChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KDQogICAgICAgIHN3aXRjaCAoaW50ZWxfZHAtPnBz
ci5kZWJ1ZyAmIEk5MTVfUFNSX0RFQlVHX01PREVfTUFTSykgew0KDQogICAgICAgIGNhc2UgSTkx
NV9QU1JfREVCVUdfREVGQVVMVDoNCg0KICAgICAgICAgICAgICAgIGlmIChkaXNwbGF5LT5wYXJh
bXMuZW5hYmxlX3BzciA9PSAtMSkNCg0KLSAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIGNv
bm5lY3Rvci0+cGFuZWwudmJ0LnBzci5lbmFibGU7DQoNCisgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiBpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApID8NCg0KKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBjb25uZWN0b3ItPnBhbmVsLnZidC5wc3IuZW5hYmxlIDoNCg0KKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICB0cnVlOw0KDQpMR1RNLA0KDQpSZXZpZXdlZC1ieTog
TmFsYWRhbGEgUmFtYW5haWR1IDxyYW1hbmFpZHUubmFsYWRhbGFAaW50ZWwuY29tPG1haWx0bzpy
YW1hbmFpZHUubmFsYWRhbGFAaW50ZWwuY29tPj4NCg0KVGhhbmsgeW91IFJhbWFuYWlkdSBmb3Ig
Y2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1c2hlZCB0byBkcm0taW50ZWwtbmV4dC4N
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQoNCiAgICAgICAgICAgICAgICByZXR1cm4gZGlz
cGxheS0+cGFyYW1zLmVuYWJsZV9wc3I7DQoNCiAgICAgICAgY2FzZSBJOTE1X1BTUl9ERUJVR19E
SVNBQkxFOg0KDQogICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0KDQo=

--_000_477310bcb011a0b4f48624b31b112519059d3cb3camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <E88249109A6AF745BEC2F47FD740D53C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdj5PbiBNb24s
IDIwMjQtMTAtMjEgYXQgMTQ6MTAgKzA1MzAsIE5hbGFkYWxhLCBSYW1hbmFpZHUgd3JvdGU6PC9k
aXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJv
cmRlci1sZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPHA+SGkgSm91
bmksPGJyPg0KPC9wPg0KPGRpdiBjbGFzcz0ibW96LWNpdGUtcHJlZml4Ij5PbiAxMC8yMS8yMDI0
IDE6MDMgUE0sIEpvdW5pIEjDtmdhbmRlciB3cm90ZTo8YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0K
PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBjaXRlPSJtaWQ6MjAyNDEwMjEwNzMzNDku
MTIyMjMzMS0xLWpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbSIgc3R5bGU9Im1hcmdpbjowIDAgMCAu
OGV4OyBib3JkZXItbGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxw
cmU+V2UgZG9uJ3Qgd2FudCB0byBjaGVjayB2YnQucHNyLmVuYWJsZSBvbiBEUCBQYW5lbCBSZXBs
YXkgYXMgaXQgaXMgdGFyZ2V0ZWQ8L3ByZT4NCjxwcmU+Zm9yIGVEUCBwYW5lbCB1c2FnZSBvbmx5
LjwvcHJlPg0KPHByZT48YnI+PC9wcmU+DQo8cHJlPlNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8YSBjbGFzcz0ibW96LXR4dC1saW5rLXJmYzIzOTZFIiBocmVmPSJtYWlsdG86am91bmku
aG9nYW5kZXJAaW50ZWwuY29tIj4mbHQ7am91bmkuaG9nYW5kZXJAaW50ZWwuY29tJmd0OzwvYT48
L3ByZT4NCjxwcmU+LS0tPC9wcmU+DQo8cHJlPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jIHwgNCArKystPC9wcmU+DQo8cHJlPiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pPC9wcmU+DQo8cHJlPjxicj48L3ByZT4NCjxwcmU+ZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jPC9wcmU+DQo8cHJlPmluZGV4IDNi
MjAzMjViM2Y2YS4uNDE3NjE2M2VjMTlhIDEwMDY0NDwvcHJlPg0KPHByZT4tLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jPC9wcmU+DQo8cHJlPisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmM8L3ByZT4NCjxwcmU+QEAgLTIzMyw3
ICsyMzMsOSBAQCBzdGF0aWMgYm9vbCBwc3JfZ2xvYmFsX2VuYWJsZWQoc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCk8L3ByZT4NCjxwcmU+IAlzd2l0Y2ggKGludGVsX2RwLSZndDtwc3IuZGVidWcg
JmFtcDsgSTkxNV9QU1JfREVCVUdfTU9ERV9NQVNLKSB7PC9wcmU+DQo8cHJlPiAJY2FzZSBJOTE1
X1BTUl9ERUJVR19ERUZBVUxUOjwvcHJlPg0KPHByZT4gCQlpZiAoZGlzcGxheS0mZ3Q7cGFyYW1z
LmVuYWJsZV9wc3IgPT0gLTEpPC9wcmU+DQo8cHJlPi0JCQlyZXR1cm4gY29ubmVjdG9yLSZndDtw
YW5lbC52YnQucHNyLmVuYWJsZTs8L3ByZT4NCjxwcmU+KwkJCXJldHVybiBpbnRlbF9kcF9pc19l
ZHAoaW50ZWxfZHApID88L3ByZT4NCjxwcmU+KwkJCQljb25uZWN0b3ItJmd0O3BhbmVsLnZidC5w
c3IuZW5hYmxlIDo8L3ByZT4NCjxwcmU+KwkJCQl0cnVlOzwvcHJlPg0KPC9ibG9ja3F1b3RlPg0K
PHAgY2xhc3M9Ik1zb1BsYWluVGV4dCI+TEdUTSw8L3A+DQo8ZGl2PjxzcGFuIHN0eWxlPSJmb250
LXNpemU6MTIuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0FwdG9zJnF1b3Q7LHNhbnMtc2VyaWY7bXNv
LWFzY2lpLXRoZW1lLWZvbnQ6DQptaW5vci1sYXRpbjttc28tZmFyZWFzdC1mb250LWZhbWlseTpB
cHRvczttc28tZmFyZWFzdC10aGVtZS1mb250Om1pbm9yLWxhdGluOw0KbXNvLWhhbnNpLXRoZW1l
LWZvbnQ6bWlub3ItbGF0aW47bXNvLWJpZGktZm9udC1mYW1pbHk6JnF1b3Q7VGltZXMgTmV3IFJv
bWFuJnF1b3Q7Ow0KbXNvLWJpZGktdGhlbWUtZm9udDptaW5vci1iaWRpO21zby1hbnNpLWxhbmd1
YWdlOkVOLVVTO21zby1mYXJlYXN0LWxhbmd1YWdlOg0KRU4tVVM7bXNvLWJpZGktbGFuZ3VhZ2U6
QVItU0EiPlJldmlld2VkLWJ5Og0KIE5hbGFkYWxhIFJhbWFuYWlkdSAmbHQ7PGEgaHJlZj0ibWFp
bHRvOnJhbWFuYWlkdS5uYWxhZGFsYUBpbnRlbC5jb20iIGNsYXNzPSJtb3otdHh0LWxpbmstZnJl
ZXRleHQiPnJhbWFuYWlkdS5uYWxhZGFsYUBpbnRlbC5jb208L2E+Jmd0Ozwvc3Bhbj4NCjxicj4N
CjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+VGhhbmsgeW91
IFJhbWFuYWlkdSBmb3IgY2hlY2tpbmcgbXkgcGF0Y2guIFRoaXMgaXMgbm93IHB1c2hlZCB0byBk
cm0taW50ZWwtbmV4dC48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PkJSLDwvZGl2Pg0K
PGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+Sm91bmkgSMO2Z2FuZGVyPC9kaXY+DQo8ZGl2Pjxicj4N
CjwvZGl2Pg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4
OyBib3JkZXItbGVmdDoycHggIzcyOWZjZiBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij4NCjxibG9j
a3F1b3RlIHR5cGU9ImNpdGUiIGNpdGU9Im1pZDoyMDI0MTAyMTA3MzM0OS4xMjIyMzMxLTEtam91
bmkuaG9nYW5kZXJAaW50ZWwuY29tIiBzdHlsZT0ibWFyZ2luOjAgMCAwIC44ZXg7IGJvcmRlci1s
ZWZ0OjJweCAjNzI5ZmNmIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPg0KPHByZT4gCQlyZXR1cm4g
ZGlzcGxheS0mZ3Q7cGFyYW1zLmVuYWJsZV9wc3I7PC9wcmU+DQo8cHJlPiAJY2FzZSBJOTE1X1BT
Ul9ERUJVR19ESVNBQkxFOjwvcHJlPg0KPHByZT4gCQlyZXR1cm4gZmFsc2U7PC9wcmU+DQo8L2Js
b2NrcXVvdGU+DQo8ZGl2PjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4N
CjxkaXY+PHNwYW4+PC9zcGFuPjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_477310bcb011a0b4f48624b31b112519059d3cb3camelintelcom_--
