Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 496BEC87EE8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 04:19:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4C8F10E4FB;
	Wed, 26 Nov 2025 03:19:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jwJYmbEt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACBC10E4FB;
 Wed, 26 Nov 2025 03:19:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764127184; x=1795663184;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uxd2IOi5bKT4PYDRHSIOwoJOfGQj+xsReLlnJCKjolg=;
 b=jwJYmbEtoj6BSAALN4DMteXlW41Nanh66FBxVIw4k3qLxKJH8y+LOg50
 1nnv0VdJgY4If7oZNi5eNZanBhenqCE9c5WKh3ar+s6XnX5I7fI74DafI
 kGa0Z+os61OOpUEYsNoAo81b/WPXoRng/eidDoJvz78L5Wr3nxLk3CIg4
 /qAjalEDXxausVnJ01rhiljenkY8qHw+qAyh/p4XXRrNU/gm+CVKKpQB9
 6oWLdXHw+Z+fADOiykL/chKxpdYadNxV0/GD/Xs2fZ/oCJg6azQQLxKnf
 nVpJoGYZa7JpJPav2ehYkS5bcYRSyfvtWelc57IwQJ64l6DVeNLPak6nw g==;
X-CSE-ConnectionGUID: wqV6Xyl5To6mKYZ4y3zThw==
X-CSE-MsgGUID: UIJwQsIdR12TYENRt4gL2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="91644271"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="91644271"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:19:43 -0800
X-CSE-ConnectionGUID: bg6B2vfNT4+afZSrI0K+KA==
X-CSE-MsgGUID: Eg2AENxfSpKa6qe2JFacyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="193254739"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 19:19:43 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:19:43 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 19:19:43 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.12) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 19:19:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QSVB24mcmFdBHpUUhF/VPPm9cl50e6sGBeFsJokYYeW+fzUNf8LK/L9ErHJjqkwkFab5lrxB70Ud7i6nqUjOjLQ1NAa1CxKuZovZedftVptVk6MTNTUL47YIgXTg2gCczSVfxumTeo1c42sXewQksI2ss6YlbhlTx0QtT1XLfYNA5Rf6zpKQfuiD8mcamMxi0EvJ6xIJan4MkZFBN3qPcdiAwmM3mPSYDcF8ezc2wf/tom8m+ddo8VQhaZeoVXwujvPMdSrFovObYijrGUU8b9jxkUH6ecUyDP4Yf5fHAPGrvRgcuPMq29BDgGj5TW9dJ9p4VZ+tK/fHGzXH7k/Usw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qiVbaY4gUtewJN5fdI/wnsW1p9R8Dbx4+DorjXnIVf8=;
 b=RxI6ZUT6bUpPTaDBMv0Aj7ibm1F4Dtyc6ZeihRZ7yQWEWhi0+P7T7mKU11WKuAipmIaA63665bT/rQ68mAU0h/R+QRai651iEa/AOHGDnr5i/sWasx1s4x9IWWogij01QjUqGIl4jW8UDfYzkH8yql8l6RWoK5Mjk4yzpXzlKOI1axK9BqsWXgWYV31zxi4Whrn23Q637GnD3R2zG8PrnOedbwFNmUNtDDxR9UvTF7fJ1zUFg9BvYujc+njSOmJZohvtfrLhtEvfHXSEOI3Pr0GDt3IMcyFkf2pMnmHA/VUrM9KaikJUmrXwXAcSgvYmanl0daO47CqgDBgfox0vqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5258.namprd11.prod.outlook.com (2603:10b6:408:133::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 03:19:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 03:19:41 +0000
Message-ID: <ae40fde7-19f5-4eef-b125-414b1e0a1d0d@intel.com>
Date: Wed, 26 Nov 2025 08:49:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 03/18] drm/i915/vrr: Add VRR DC balance registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-4-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0034.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:17a::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5258:EE_
X-MS-Office365-Filtering-Correlation-Id: f46922d6-c96f-4006-c90d-08de2c9aa30f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VEp6UzB2SjgxcW5MVncyeWZEcjlLcWROMXlkNThSbnZGL0VYVG9XNUE4OFNO?=
 =?utf-8?B?REVwZVlxdXFJRWZhMHEzRmw3aW84VjlWRW5xRmlEVGp1WW1Uekp2N1NLNU82?=
 =?utf-8?B?NkFDZ2dPYXUwc0NhYTl4Zk8wQklSeHcyQUszM0RWdVhZUVdlMTQ4eUxrc0s2?=
 =?utf-8?B?KzcwYW01NnVDRHo2cFZqamliNS8yVFJVUjF0ZUN3dlFSMEVKc2IyQnVlN2Fw?=
 =?utf-8?B?UTlVS2dKTGNJY0d1MUxXRmJIamlkY04xTjgxdWg4MTU5Tlp0L2pLdi9FUTd6?=
 =?utf-8?B?QzdnUGFHL21wSnBtZ2oxRTBOaFJHQWRycUFqaTByNXNRSHMzbUxHUUJXL0Qx?=
 =?utf-8?B?YXEyc1VzLzRHQWlFdUQ2UzJ1VFFuTjlxdWRqaGl3V0lReFVFTnBCUE5jbUdx?=
 =?utf-8?B?K0UrbDJYcFZER3RjM1NsbEFZQnhrVjYyMW80MWNZOFVjWnREenZpRks3eHEy?=
 =?utf-8?B?NS82UGFuRjhOeUxJM1VKOGxmeXpuWXlBRzlkZmxEendZWjVkelp4MHg3ekla?=
 =?utf-8?B?NFU1SWVNVHhEeGlKTm8waHMxZXZWdldyeG1YNkhmditid0JoZGozdFRjL3hn?=
 =?utf-8?B?RE1XOGY1QlRCWkRQOUsxMGl5SXdBT1cwdVdJNlhVQ2x4K0NLQThLaUQxZHBR?=
 =?utf-8?B?QjRwd1RoUy9TdEk0RkM1anY5cTFVSGV1SGM4aXNIb2s5UW1EZUFaL0hLaTFG?=
 =?utf-8?B?Z0laOXNNUE9CSHNaeC9mYTBJeitac1U0bXdvSTZwanoyWUxqdHRiNXA1WklW?=
 =?utf-8?B?Zkx2SkhpekY5Q2NycmIySC9tT2M0dnhFMU1COU5iaXhGRWl0RlVXYjdqMmhL?=
 =?utf-8?B?VHBNbTFSOGEybEM1VllDcVp3M09KS0dpY1lpMlFBUU0waUtMRjZLTDRhTEh0?=
 =?utf-8?B?bUhwSDFhNkxNWS9IR2poVGNCdXBjamV3ZWVtN0c2VFFOMmJjMDgzb0JDK3B3?=
 =?utf-8?B?Qlh5c283blYzVGRNRDRJc05qNzhtWHpIRHFNN1psSXdYU3o2L3U4K251WXF2?=
 =?utf-8?B?UjYzejlIdEdvU3ZmMzRJL3Q5b1EvTGJieWdrU2RaeWl0cDZ6SWkvNHR4blVC?=
 =?utf-8?B?Q0VoeWJGZjZPUUNYclFBTUMzTGR0MUxQYnh6WG9oTmwrajRPUDFET2IrRkZo?=
 =?utf-8?B?bjRIK0FyRm5nMEJiaHZsUWVuQ1dQWlFKNHBPdG5lVTBBZlN6RldhT25oaUJ5?=
 =?utf-8?B?OHp4ZDVnN01vRWphb21CREFXRWszd1U4blFDdkxtNFEycy9jU01keHdZYXNW?=
 =?utf-8?B?ckdCcVo2b3IvQXVsem53UExEdzZvS01iYkh1MEtPSjZrY0xra2lTV2VDRnlI?=
 =?utf-8?B?eVU3UVV1WTViUlNDUEtwNkltdGF4SWZpY3RUbUZ5cmQxQklhTGs1Yjh6Zk1u?=
 =?utf-8?B?ZmYzMHpaYWpWR1E0UlNkL2hYYkJyUWkzN0I0em9MeXdBaUl5MjJMVUMvQ1Rt?=
 =?utf-8?B?ek5sUVdYNVNXeUlTeTdtSFFwRmIzb1g3NElVZkxYOXhRbURuR29LZTJHdHUx?=
 =?utf-8?B?OXZMSTNjYmt5TUlXMkJIRGdUTndvNTV6S2JKeElyS2tBbWVZUlhDT0tDbTln?=
 =?utf-8?B?Q0FxQTNwMk53eGY0ampJOGk4WTNmamJtejBZWjQ3KzVVNyt6MVdHckViaUtQ?=
 =?utf-8?B?MDZLcXVjSWg3MU53eEwrVEhmNGcwQ2doUXRSSzJOM01WL09ZZEpoMlBNYWQ4?=
 =?utf-8?B?NXMzTklIbHRkRTdyN0hwZWJQRjlhaDROeGM0WkRRaXpjOUVOeUVYd2MyT1Rq?=
 =?utf-8?B?dytPazlmK3ZmRm41RDRSc2JXZDliV0hQOUM1U2N0UnFRYTJ4ZXVNVThSTUY0?=
 =?utf-8?B?UVRua05CL00rSzlDbmpPRDlXeHdsb1d4UGtxeTVVbkNpM2dhaDFNQlI1ZnA4?=
 =?utf-8?B?TENLS25UVUt0eWJKWVIyY3lMbEszNFpHWSt5N0FRaEhkZEpFK0l0TjZkai80?=
 =?utf-8?Q?ck1YD2GsTJ4ePdgSWUww92JLOnoPnXl/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WFZESTFaNVBWOW5jeTBwQVFueEFrdU5oVUhVbFhyN3ZacDU4ZElYMTJSVnd6?=
 =?utf-8?B?MjkzbGJqVGNOeFl1aFg3d016bklyemt6MXd0d0ZVc00zT0NqL0ZobzlWMlpE?=
 =?utf-8?B?TXJEQ0xDZEpYOTJyR2p6eUlVczBCVG5PRTJEQUNFNnI0OVVzRmM2SVFYV1JQ?=
 =?utf-8?B?WThHUzZFUnF5M1pnTEs3enMwR1gyOVp4QmcwSDJjYUJTa0ZzNHZJQTJabXlN?=
 =?utf-8?B?cmpOR0pwUDdZODliZkpnWUsxYlV1dThrS3JaSkQzelQvQktOb2ZCQkEzSTFm?=
 =?utf-8?B?a1dIYThCUkkyTnlZTlZTY3hIVHlEdGxYSzlwVEdRMG5VbFNiUzFJLzFwWEw0?=
 =?utf-8?B?UGFzeXQzbXZNM3Bjc1dZeVU1OUt1bHBocnhzR0dXdnc0a050MVNscFhpQVd3?=
 =?utf-8?B?Wk9tK2FwYTNyOStBWWJkSHRnNmNFTS95RkhzNGhNSWwvd214Qm00bk54T1pK?=
 =?utf-8?B?YUVsd0JrQTVvWG53c0E5bnE2bjNWOWdPWG1XbnRNczR5TG15WENCNit4S09W?=
 =?utf-8?B?c3dHZHNNNTNrbW5saWhyUDhGVG1wc0JCQ3MrcUFSdlNqeEplTDBjdkNYQXI4?=
 =?utf-8?B?TVF1TlhveFhlc0RTYldjdUNIOEZ2cDY2cXZXVGE0a2g2UkdBSmVqcEFqZ3pY?=
 =?utf-8?B?amNUN2hwZlEvRkZZMDJOdmNuOHlPME9GZUNSeUJmYUwxTmM4TTl4akQ5STlC?=
 =?utf-8?B?M241YWY3REVhaFU2a0J3bWVtT2xnQzNtelVGbC94MUcwcW5RNGlURityK3VT?=
 =?utf-8?B?cEUxY2dkVjdXRWdITVB2ZWhvdmFYTGZ4NkRrM0RlajRRNWxFc01EUHU1UjBq?=
 =?utf-8?B?ZHE5dFBpSGhFUjFtOEtnVmZwR0VzNFpMUWlEemhaMmo3dXpKMk1YSmNybVVr?=
 =?utf-8?B?MlRGYmVuT2Q4cFNHUmVPNHJpb29oVE9iNFN2NVBQM1dlc0xlNGp5NVdPTlpI?=
 =?utf-8?B?ajBFaHk3RS9PRDdNRTBQOUszdVdrL2VHbFBzdUkyM0FjK3NLNkRDQng4WTQy?=
 =?utf-8?B?d2xPU1doMWVrNW01MnJxdmVhdEVqcnhIWlJadU15UmpkYzJObkR6NmNta2lt?=
 =?utf-8?B?c3Qrc2h2NDlpUWxWZEJhYnUrRk1KSkZ0WXdlWHQvcExHU3ZheVhuZ3VyMElD?=
 =?utf-8?B?VWk1L2NENzVHMHJIc25oNWtvVFkxa2xkYzY4TkZ4Q09VNWtLNTNoRzhld09P?=
 =?utf-8?B?aFYybFhxb1hyZERvTlhtVlFyNm9HbWpvVm5WdjY0TVpFMWY2emNsN2RyUitK?=
 =?utf-8?B?VVhaY3hkbmtFbENuSk5QSVk4VzdRMVIrOTR6QjQvK1VvRTNNQUExWjc0YmNu?=
 =?utf-8?B?eFJEWXo1cnQ3RFBFN3paUnRGc2xXNFhpNkJYY1B5MTFUb0xFcVBVSnJGZ0Z5?=
 =?utf-8?B?WGJqZUNNdnBIN2tFSWtUNmxpc3V4QW56K0NyaTFRc2E2dkhyQisxQzNJaTdv?=
 =?utf-8?B?eWI2OTZlVVZ4enFsd0NiaCtSNVM1MUlxcjRJRjBja1l0ZVFWaEtKdjR6THN5?=
 =?utf-8?B?RzZJRFZGd0l4eHJwTUcycVZ0djVkR3NuV2k0aXNEeUwxRjQrY1Zqa1BsSlV3?=
 =?utf-8?B?U3dHalN3RzA3eEdrVXovMW5qZmJmSUMxUDRjUnZ4K3h2T2dBVEx5bWdaZEhC?=
 =?utf-8?B?UkwveGs1RWNoVVZsdWtSdDN1Vi84UkFJMDlDOEF4SGdZMm00MzJtY3llUnVs?=
 =?utf-8?B?NVFMTmZJR2I5ZmVqblZibXVISWt6a3RjM3poK1ZEVUw3NkJCYnA3NVA2WGhS?=
 =?utf-8?B?WU53U2x3TlBiajc2dlNWb2RVbG5EaHltdmZMc1dGbUJ3cDJKQjBXQWtqZFlD?=
 =?utf-8?B?TitrQmp5N3ZSejV6NEV2UXd4UXBFT2h4My9FV3MrQzYwNS9oNHo0RGlFSUp4?=
 =?utf-8?B?Q1dJTUpXRzhEbE4vZW02eTZzRWFVbHdUSnd6U1JGSzdPS0Jjb2ZtQk1nakQ4?=
 =?utf-8?B?S05HVFo0bXBOcER6dFZaRVJRL29sZ3AwQ2FyWmFtZXBzRTV4eDZvTU4walNR?=
 =?utf-8?B?Wll4RGFieitHa3ErOUZXWmR2aWhvV3lmazJMRzNXeDFQR3NEOER0S1dhZlhp?=
 =?utf-8?B?L3drK09BR2l1ZkhoUlNhUUxTejl2dk1LNXkrZHZyOHpxa2ttQUlYWmFFUlkx?=
 =?utf-8?B?bmxoMzZROXlONzBtUlY5ZzJLUDhub1ZaOTBrRlRQbTlUVm51OEpKRS9DUThX?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f46922d6-c96f-4006-c90d-08de2c9aa30f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 03:19:41.1629 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pE8uBVv5Nc3USdzzomDthqzRqoZFvRamm6zit1uVeCmxO1jJ2PlH5GisXArK+urRCapDmazu+Z47LFga5i2aKPkQwSXR5/isSoEZQu6Ger8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5258
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Add VRR register offsets and bits to access DC Balance configuration.
>
> --v2:
> - Separate register definitions. (Ankit)
> - Remove usage of dev_priv. (Jani, Nikula)
>
> --v3:
> - Convert register address offset, from capital to small. (Ankit)
> - Move mask bits near to register offsets. (Ankit)
>
> --v4:
> - Use _MMIO_TRANS wherever possible. (Jani)
>
> --v5:
> - Added LIVE Value registers for VMAX and FLIPLINE as provided by DMC fw
> - For pipe B it is temporary and expected to change later once finalised.
>
> --v6:
> - Add live value registers for DCB VMAX/FLIPLINE.
>
> --v7:
> - Correct commit message file. (Jani Nikula)
> - Add bits in highest to lowest order. (Jani Nikula)
>
> --v8:
> - Register/bitfields indentation changes as per i915_reg.h
> mentioned format (Jani, Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 69 +++++++++++++++++++
>   1 file changed, 69 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index ba9b9215dc11..a15e206ead94 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -8,6 +8,74 @@
>   
>   #include "intel_display_reg_defs.h"
>   
> +/* VRR registers */

This is not required.


Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A	0x604d4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B	0x614d4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B)
> +#define  VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define  VRR_DCB_ADJ_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_ADJ_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A		0x90700
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B		0x98700
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
> +								    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_A, \
> +								    _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE_B)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A		0x604d8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B		0x614d8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_B)
> +#define  VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define  VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define  VRR_DCB_ADJ_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_ADJ_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A	0x906f8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B	0x986f8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_A, \
> +							    _TRANS_VRR_DCB_ADJ_VMAX_CFG_LIVE_B)
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_A		0x60418
> +#define _TRANS_VRR_DCB_FLIPLINE_B		0x61418
> +#define TRANS_VRR_DCB_FLIPLINE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_B)
> +#define  VRR_DCB_FLIPLINE_MASK			REG_GENMASK(19, 0)
> +#define  VRR_DCB_FLIPLINE(flipline)		REG_FIELD_PREP(VRR_DCB_FLIPLINE_MASK, \
> +							       (flipline))
> +
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_A		0x906fc
> +#define _TRANS_VRR_DCB_FLIPLINE_LIVE_B		0x986fc
> +#define TRANS_VRR_DCB_FLIPLINE_LIVE(trans)	_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_A, \
> +							    _TRANS_VRR_DCB_FLIPLINE_LIVE_B)
> +
> +#define _TRANS_VRR_DCB_VMAX_A			0x60414
> +#define _TRANS_VRR_DCB_VMAX_B			0x61414
> +#define TRANS_VRR_DCB_VMAX(trans)		_MMIO_TRANS(trans, \
> +							     _TRANS_VRR_DCB_VMAX_A, \
> +							     _TRANS_VRR_DCB_VMAX_B)
> +#define  VRR_DCB_VMAX_MASK			REG_GENMASK(19, 0)
> +#define  VRR_DCB_VMAX(vmax)			REG_FIELD_PREP(VRR_DCB_VMAX_MASK, (vmax))
> +
> +#define _TRANS_VRR_DCB_VMAX_LIVE_A		0x906f4
> +#define _TRANS_VRR_DCB_VMAX_LIVE_B		0x986f4
> +#define TRANS_VRR_DCB_VMAX_LIVE(trans)		_MMIO_TRANS(trans, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_A, \
> +							    _TRANS_VRR_DCB_VMAX_LIVE_B)
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A		0x604c0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B		0x614c0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(trans)	_MMIO_TRANS(trans, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A, \
> +							     _TRANS_ADAPTIVE_SYNC_DCB_CTL_B)
> +#define  ADAPTIVE_SYNC_COUNTER_EN		REG_BIT(31)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
> @@ -19,6 +87,7 @@
>   #define   VRR_CTL_CMRR_ENABLE			REG_BIT(27)
>   #define   VRR_CTL_PIPELINE_FULL_MASK		REG_GENMASK(10, 3)
>   #define   VRR_CTL_PIPELINE_FULL(x)		REG_FIELD_PREP(VRR_CTL_PIPELINE_FULL_MASK, (x))
> +#define   VRR_CTL_DCB_ADJ_ENABLE		REG_BIT(28)
>   #define   VRR_CTL_PIPELINE_FULL_OVERRIDE	REG_BIT(0)
>   #define   XELPD_VRR_CTL_VRR_GUARDBAND_MASK	REG_GENMASK(15, 0)
>   #define   XELPD_VRR_CTL_VRR_GUARDBAND(x)	REG_FIELD_PREP(XELPD_VRR_CTL_VRR_GUARDBAND_MASK, (x))
