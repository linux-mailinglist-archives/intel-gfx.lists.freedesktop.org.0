Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A475E9A4066
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2024 15:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EC310E932;
	Fri, 18 Oct 2024 13:50:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M+e1ROwF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D75EC10E930;
 Fri, 18 Oct 2024 13:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729259437; x=1760795437;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=b3DpGWkHhuvBCCzha8WLq3Cw9s34qaUPqIbpXSyxqY0=;
 b=M+e1ROwFNiLRD39MjWfzVqKd6Yl98QK0nxexXv2wVWqh/Y/6IJYGLHvj
 oqJ+q2fWPXbsvHDTzdn4kHJ6yDcOdcEU6EA3vrMTV++x34tnGAH7iTRP4
 taTGwHS2ATN/SwoVGp1V+lh+oX6iTe1H+H4INBYDi7kxN9C0Cp7xoZHLj
 ne0WSMKatmH6YHDQbEh+WmRyV3+aLptnsZT90ck2ykl8uw8g4oeq8GzJl
 g9Xf2VO60qmzW/U8EPKDWlGqPowzJzySXUnPnGSEfcYmJOfh6j3lHO18f
 hk04XEzW0AqwzocCT/lntAJhmnZ4/pd5k47/FgD+lgHtrfG/4TsIuiOjQ A==;
X-CSE-ConnectionGUID: XEo+xQqhTuCBuN+B/W39aA==
X-CSE-MsgGUID: 1Q8oEfH9QVmO2i7Gah4lEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11229"; a="28252182"
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="28252182"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 06:50:36 -0700
X-CSE-ConnectionGUID: afGxTejOQKeGPTWWZCKpmw==
X-CSE-MsgGUID: dEsa7jmdROK8s5JXlalqUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="116331644"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 06:50:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 06:50:35 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 06:50:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 06:50:35 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 06:50:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XBLxxHh42ZsqvEAP0/cm4vgg4M5ImCUSKWYRDbvz7r38sv85AM4ISqTGbzxxWUwhxS753H72N8hpElvP7YvVnuR6S4mh8hEYnv+062sjK4SjCTQFi1AX0ca/0VlQ32pJEfb/XGaSJD9flVn8s8xNeWv6EVqe+49TQFzrS3R7tk/rHnR0FVzqmebZcghWHsb/IXZGhn7uIMRwOwSSpf81LZcSvSXLjVYkNJqMtxFgYMr2TlzpgzJN79fwhesgvAmUxKsselOncJO7QBlBYSmMCR1mroT58PLjHMKsaF/NBZZLpLWmjey4ZkvWelNdN5hIOJqxnYYba6o8U5qomrM57w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5a2aA1ZToFSRG4rE8biJ5YLS/qsRQm2tGYvBTMpjp20=;
 b=sgANF7FCg4tsEMW+X6KeJOqNwqQrcXALhx6vq7WoanDkmkZageuNgOB6Uxj5xdRm74awYPkb71+sTPB4bPxSTbL6C+cWCBueg4Dz8+N23vX+uvTHQrSC8CdUVUiRawHS7mUCfAVjRe36CEekQbcVrflQ0CnZS8Z1bmyC/jZ0YyxYupERVCjxT0SVOZeAMskS8Piu8IKNzej6JVWe+QJ905aLbwsJNghCbBBGO7pmJKOWfl9ZvPyENEu97CfPVFzg7CL1Q5Xq18nIwj6BQlXYecTNboXrjJbb1HM3vkGZtHvNb6XXlfTC7yeC+hM2kOnAnqvlLe2qm045xXI7SfP2ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB6327.namprd11.prod.outlook.com (2603:10b6:8:d1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Fri, 18 Oct
 2024 13:50:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8069.016; Fri, 18 Oct 2024
 13:50:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172910713272.1275582.739090163930825636@2413ebb6fbb6>
References: <20241016135300.21428-1-gustavo.sousa@intel.com>
 <172910713272.1275582.739090163930825636@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BUILD: warning for Miscelaneous fixes for
 display tracepoints (rev4)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <i915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Fri, 18 Oct 2024 10:50:28 -0300
Message-ID: <172925942857.2355.8909468229491797799@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0152.namprd03.prod.outlook.com
 (2603:10b6:303:8d::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB6327:EE_
X-MS-Office365-Filtering-Correlation-Id: d1909e2c-f5ca-4303-b4bd-08dcef7bd5b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUYwOEhSS2hUMzBXTFh4bUhPK2pNdWxkcldBQ0tzakNGUzd2bHVyS1lvY1pK?=
 =?utf-8?B?NGtiN1l0alV3VjFnZUFpWlhuSkVpUFA0N2Q1bkFQRjU1UGhCZllQYUtyWU5n?=
 =?utf-8?B?S3ZqQVYwc0dsY2Q1TFlQcG04ZGpra2IrbVdXcU9mM2FTUGdaUWszeUJIQnQz?=
 =?utf-8?B?NzhRdVRXVEdBTm9YSzJLR1QySGluRXRubzZrTi9XdnR0TzBvQmU0MU9QRW5p?=
 =?utf-8?B?K3hPS2VvOVdaRzdsM0I3ZElqWGhyZkdmQXlXUlRtS2Zuc1ZNWVdxQjlkdXNK?=
 =?utf-8?B?aHRWUTcyUDlPTTV5cHJuVHlVZGlhU1lRR3poTjhaTDRBZTFGdzR0dzY3SXVI?=
 =?utf-8?B?LzFxMGNTVUtGWTJFNDFFUElNR0gwNHExUG5kYWlCU0E4aXRZTVg1MkdCZXpm?=
 =?utf-8?B?TUwyWmxkTWIwWjk5dFNnYlZxNkwxRXlPQTNHWC93bG5LcUgzQ1p4ZERJL0Uw?=
 =?utf-8?B?STBSZFppVW5rSk1XM2pJWk5mc2pEMm5PeXJHNlh5M2J6UUNYMTdHaGNmYUJ3?=
 =?utf-8?B?TUFBM01DeUJvcFBmV0xNZE5mWERZcUVjeXBRWE5wR0MwcnZuTVJUM3B1VjBi?=
 =?utf-8?B?aTNWbnEzUG43ekx0WUxWWVdJWDBZYlM2bXBjTllrVkJRNXVTUE5adDZzc2FW?=
 =?utf-8?B?YjBTS1dRQ2tpdmUyV3Q1aHZaMlN4MzFaK3R4QnpkSVB3RTF6WWtFNVJwTlBP?=
 =?utf-8?B?RndIdnowUTdlTmExbEdRaGkwMk00NUU2Zi9YL1NRZ0xFa2NUUTlRdDEreVRN?=
 =?utf-8?B?SzRTQ2I3VjZrY1hEMXNGZlJSb3pwZi8vaUVIMVVpTDNtZm5xZVM4SzBpd3BR?=
 =?utf-8?B?RVJobWpXY3VvMXFPbEZlS2FJV1ZyRUR1alhlZUg1amQyODVodnBFc2JUZ0lQ?=
 =?utf-8?B?Wlh6ME1oU2loVXRaOXVqRzZWMUVvM3pBYlBBRHhvZVFuVUJRaUx6VTF1WEhP?=
 =?utf-8?B?NE1ISTRDdlV2YWtyMHlmbWl0VnowYW5KQmJBU0xBWjBqYjhHc3gvSGJrZ0wy?=
 =?utf-8?B?WEhZNGtaZ3pSc2lXNFN4TzAwOUNadnNjd25qY2hmWWdFOWJlcTFoZ3ErRnFk?=
 =?utf-8?B?RVdpaVR0WVVCTE9QNGdFTVVRVERzcll4aWR3bkxzS1ptY1RSQldSVkpBQTFo?=
 =?utf-8?B?YytOV21sbTNNLzVFWU5YVjhFQ2plWCsycWpuYkhsekRBZWNBK29GM011M3lX?=
 =?utf-8?B?UUFsbEJwVUs4UzJUUXYvSHdCNy8xMm01czh4c2krRnlib0s1NzZ1dVQySjBh?=
 =?utf-8?B?Y2U0OEJFcXFoZDVSOThacG1hRTgvK1hFcHoyWDB1U1FFQkNleFlxMEdVb3lB?=
 =?utf-8?B?aTlKZXQ1RXFJSXVDVTZOS1VPdHk0UmVSNzFxS00vQ1Frb1Bia0ExSTA2TkNI?=
 =?utf-8?B?SEpVT2xNMTZ4RDBOaXFKZXBTVEJ0Vktzc1E0MUFCMHRwZCtmcEpvR052YUo1?=
 =?utf-8?B?VFhkZHFhRmp5WVlHUGNXOFkzNlpGYnJsK2h0TXlSTDlGLytSMkdIMWxRcXRT?=
 =?utf-8?B?MDQwR3JKQXlQQTVjU2lBRmdPTWE1cXl5anFOTlJYZ3Z3WDU0UW5QcTF2N05u?=
 =?utf-8?B?VzluWW90clVMSUs4NDlYUE9yOWkxK0ZPRUJYNlpnOTRDMFY0R3hUNGFpYnY2?=
 =?utf-8?B?bUNYUzJvY3MyNE1uUmNpa1hnMHVjdUZOMkV3a2pPSUZYU0pLeUp1YlRQS1Z1?=
 =?utf-8?B?OXhNM1pGdjA3QUl6ZG9QOHZPVlp4OURGcS9ic0tiSmQ1b2NkbDI3YWxnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M01GYjE5UklOcDNxLzVTS25JRTB0UGNJaTNDZVRyS0E0UURXNWpuV3V0UG5N?=
 =?utf-8?B?ajRkQmZnZytaUkdUYjc5WWNqNENZUXdkTUg0ZlNNOVRxNGxuQkJuV2FFdHVq?=
 =?utf-8?B?cGRadmorM3JrYlZTVHkxVC9rbnBKK2p2c3c1UXZ6dEhmZXNJS2VodmN2TXh4?=
 =?utf-8?B?OUtHTEM1WlRJM2FrZDIyK1ptTTgxNldDWW0weHFpaU5iMjYvNllrUnV5ekRN?=
 =?utf-8?B?MmJZSmR2SFNrUXpQaUg0S2pid0hPdGF5RnprSnhFelM4Nk4vclFEY3dqUUZ3?=
 =?utf-8?B?MlVQMmhFQmRSVTZZT0JleE1ocTVMZnNpQUhxMEdnSUp3WFN3UFJQYUx2bFpn?=
 =?utf-8?B?bXc3TEZ2R3RSMmZTZS9TNUFLMDVjdmw5SS8ydlpuQjZmbXZPenBUcXlZdUFx?=
 =?utf-8?B?L09QMENGR3dlYnNOWk53bHM4amRxTWhxVnpQenVKdTlReGQrbWk0aE1RRHVq?=
 =?utf-8?B?My80VnlJem43SkdXNnB1bzJycHVuNTZXTHp0VjN0OC80ajVRSUlmL2JiVW1S?=
 =?utf-8?B?SDdDQkhEcE1RUzNJUW1GZTB4R1VaSWFUMnBvMmZDcjhoWVp6dVVNQU55RFpB?=
 =?utf-8?B?V0pkMlpWR3M4UHUzS1o0dDRINThycm1BMW9CUlgvWStyWFlFU0ZQY05UbFJp?=
 =?utf-8?B?Z3c3aXpPUHFEYzdodlh4UUxsUVdiUUs0OTJ2bHJjRU9EQVVDdU1CUTVnVTNu?=
 =?utf-8?B?R0ZlS2NBeDZKOENNbG5EV0NKVWJJLzRYdnNMVlJ0bjA2RGtFWXFvRzd6YlFW?=
 =?utf-8?B?ZWRvYlk1OTFXekdYZUp6ZVZRNURETjRTQnhTNUh4MWhidC9oaTlibEY4cjU5?=
 =?utf-8?B?bGRhTHJlOTE1SXNkOTBYZnJvREhyYWx2T0pxd3dkVklTWmJqSlNVb3REaU5l?=
 =?utf-8?B?YStOYzVkU1pVeW53UFFldzVPSHdiYjd5azlnblZqVjVLaERMa0IzdjZMRkNy?=
 =?utf-8?B?K2pxTERCeWR3MDVMcDUyNlVZNzQ0WndQR0ZNV0t1cy9yT28zWWw0SmtEMzFP?=
 =?utf-8?B?S0FSRHptV3R6dHFzRU9RQ05tUTVxUXdvZEhCMStCRERhblRuQzZPUWhNV2d6?=
 =?utf-8?B?cGJJd0pzLzdLazNuZnE2aHBiVlpSVDZtdFFxUC8xUGVlbjVIa2dYMmQ3K1Vi?=
 =?utf-8?B?U24zNmpwM2h0d2hrL1NqN0tDYVB3NEdLLzlMVWEvQUhUTkF5NElpamFZUE9Q?=
 =?utf-8?B?TVJDd0hxdGxURU1FWjB2K1RuZVRzaFpJSzJPUDdhUk5JNzNlNURpQVIzaTl4?=
 =?utf-8?B?TFFDV3UxTkFBRWo0eC8yV01LVDFjQVc3bEdMTnAxU2kveDFNOExVZWZNSVps?=
 =?utf-8?B?R0NYd2h0cWVsM2xWSkFsaFd6d2NoU2RKR2pqRkJObm9jTzh2M0J5dUViV3lJ?=
 =?utf-8?B?a25PNTdENGVhTU53NmlCTHc0c2c3ZnFuR3hseFU2VW5IRFlzY1RpVXN0WjBL?=
 =?utf-8?B?R1JJREpCZzJVTWdQaTR2Sk11SUw1dE1VdFpsRytRc1h0YVU4UE4yMnd2eVR2?=
 =?utf-8?B?dkFWYjFSNTdNdmpzbnVkbGdaMlF4dVRueWNnSGhDVkQrd1B3SVZnTkU3a3hP?=
 =?utf-8?B?aEJrOFM2b1l1aUtZYzk2VGEwK3FZczNqTnd6YmdZRXlLRWluaFR6dVpldmtT?=
 =?utf-8?B?ZHozTU9sOUl0RzFKS2RSd3hIVzh3bk5CdE9NY0wrUXh6SGF4RXFWZUFjVnNV?=
 =?utf-8?B?QXJXckdxK0lNYS9qNUtUSDhXVGZaK0pYUFBueDJkMURNMXFteXU4REZZeURB?=
 =?utf-8?B?UVdOZlc4ZUlxMFR6bWJlYmF3eVI3YTd3Z1FqVExsWGhmUjNTM0ljMm5BSDNr?=
 =?utf-8?B?MmJDdDI5aGZzaWgxYzRlODE4TWdaQmVnY0JETVpnRFE3Vzh4aGZoQ0I0OVRp?=
 =?utf-8?B?b2pkRUZHZVcrcDhTUURZQ2poWERvLzFLK2g4VHd2VVVTczEvc3VqMzFiZEZt?=
 =?utf-8?B?T2xvQlM2RDRISkNZTDlLdTZGVlcwSlIybFdMbEdEZDg2WVdwWUpBekFURVVW?=
 =?utf-8?B?TmpBUm8xTEkwdXFNZ0hOV2ZTTlBadjdES2VHd1pZNmhNbERac2ljWllhMnNm?=
 =?utf-8?B?ZUlYVVk3TVJmWXdMVjhkZys5bXpKeFJXSVVhWmh2Qy9MTUlVUUVwaFJlYjJz?=
 =?utf-8?B?elpGZXdJanFVbm5USk05eXlkRnIwTFA5aWxKZHhUdzhhU3VHMkxjUVpYVXpC?=
 =?utf-8?B?eXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d1909e2c-f5ca-4303-b4bd-08dcef7bd5b3
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 13:50:32.6069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SudtuJS6V4c9zAUmcDNUrBKSeQ1HFxwhdrNNJBn8egVZ2p6q4VR5EKOOtQj3ci1/5YtrB6knpAkWCabgWzJVXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6327
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

Quoting Patchwork (2024-10-16 16:32:12-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: Miscelaneous fixes for display tracepoints (rev4)
>URL   : https://patchwork.freedesktop.org/series/137978/
>State : warning
>
>=3D=3D Summary =3D=3D
>
>Error: patch https://patchwork.freedesktop.org/api/1.0/series/137978/revis=
ions/4/mbox/ not found
>

So, we got this email complaining that it could not find the mbox, but
then we later got test results for the series. Did it use the correct
build?

--
Gustavo Sousa
