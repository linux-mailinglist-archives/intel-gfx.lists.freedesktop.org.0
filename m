Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6D29BCC81
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 13:17:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AFA510E57A;
	Tue,  5 Nov 2024 12:17:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lx3QdiRK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3661410E28C;
 Tue,  5 Nov 2024 12:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730809075; x=1762345075;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=LXgHs/xnLeD2bbqnyl+avJe0xoICmdfACl9MuLnQcas=;
 b=lx3QdiRKR8eEc3M6cLnhe0+Q4jLNHTaNkHh94PTTuAFmnfd2FRRP7fJO
 IdVLTE/ZdX8I1XduGGq+acl2la8r8G2qfJsALK8E1u5w3Elu4FYAjnJtc
 9fXBUDeYP5ABRH4kXeua5ub4beTdzLq5yPSzXJhy/E630KuaOrOhItckm
 AzI7infHexym3sDQ9SvyXajnkUcqgF+qC9VDBc+eyMG7sp71Zrj0xYpFO
 dAWyzJlGg0Va10fM710WFuBrxCeZRyFXloT9V4KhVh4Js+KMBig4YzBuD
 rHAAqH/eQKcuj+EvL+QJnuZl7tCDztdsbBqbFkKv6VOU5OjVrSXpcyqED w==;
X-CSE-ConnectionGUID: etLzZfazT7W8Wq8E0GGTfw==
X-CSE-MsgGUID: v9QuFbtdRRqSDaesGvvxcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11246"; a="30775034"
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="30775034"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 04:17:55 -0800
X-CSE-ConnectionGUID: Gdd2TsSETAu4UA3Fa5DEWA==
X-CSE-MsgGUID: EFj6M/6PSp+iSeSBWwtQ6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="84388119"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 04:17:55 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 04:17:54 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 04:17:54 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 04:17:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QcJVADTLx8dyUnusvM2XOFFMCjlrIpZRVWzpPO/lsTpXWrZj7M3YcEjY93YXm+1nL29kneDN0Yc8eMRsho/pK8HRPqBBiQMpWpyxXmt3EF/tfZopBgP1dUoG6tR4B/3n+h1WSboDiexOgEs6cGnGaCNTcucoOqeYxWatonx0cRDg+6kXUU3O+aClmd799UJDwA16mSRu7HsUQbth7NV34jey5DT4h+VNtWCH6UarFWzShelHlVzorIP25dPOa19mjIJ3WboN7OCl7OfQZEvs3Rz/hyXjwGN6IuxPVNdGEoIu8TicurNgb7GdTeTpW+a0IHpdwX/1IbHg+cCHh+Puig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ghWWFITnauSpzGyVDd3GBATL1GzugMcQQVQ+SmjJMPk=;
 b=uagyxtfwsZbrw6pHHTbkHqIKk/6UwBAIk+KORhyhAvCPmjd+BNeeU3XQJwykfSZDxfq1gdZFNYYzGUwnS/Cff2Fp0WnP4VziW+PLXH+LkOikooQGKV/gy/YC7nLFNkuI5KoDHlww/2cI+w3OnQLLgv7fxJMGTDZoVZCm5gXDvm/a3cN3LVPMR4kFyRp4a+DTvbcniFrmCCytkmhbseaSpxPAQfgvGb356lQsRMTOTzVUTWUbBfKF7wAGHuZcDeDEa4JErUMbBphLsSXmMv/KYgmY3VaPOpPwlmTt4e0NZWxUHT2d34nGQRKKg/yiISkCe+t3FOXHeqGg2LCHn3EUnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CH3PR11MB7673.namprd11.prod.outlook.com (2603:10b6:610:126::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.31; Tue, 5 Nov
 2024 12:17:51 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 12:17:51 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <8026370f36407f12f7b12015d07d3271be26cc71.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-2-gustavo.sousa@intel.com>
 <8026370f36407f12f7b12015d07d3271be26cc71.camel@coelho.fi>
Subject: Re: [PATCH 01/13] drm/xe: Mimic i915 behavior for non-sleeping MMIO
 wait
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 09:17:45 -0300
Message-ID: <173080906573.2525.9818053656974539060@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR16CA0025.namprd16.prod.outlook.com (2603:10b6:907::38)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CH3PR11MB7673:EE_
X-MS-Office365-Filtering-Correlation-Id: 88e27b5e-f228-4967-a98e-08dcfd93de61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NisrbXIzTkVRWnpyWmVSdVFDZUk2NlVHR3JNTkd2TU1pdmRNVjQzNFRDMS9H?=
 =?utf-8?B?K056Tjc3eUh0UjJVK1RnWlBONjdFUzVIVFB2QngraEF2akRZL0EyRmJwaFp2?=
 =?utf-8?B?SXBzQXQ0Z0xMSVBKQ3VSSjhJMW1oLzdpTTcyQlY0bjAxdUFmZVBuRDFuWUF1?=
 =?utf-8?B?VDdNcVpsSjVhSGNOQjlmMnJ2TmU1MjhPaFBPVnpmNlR4OGtkRHBTVEpxRWt5?=
 =?utf-8?B?SWRxelJmMFUyR1pMczZ5dURWNDFkTVhVTVBGeVlVTGZRZC9TQTJZYW9WUlFN?=
 =?utf-8?B?RmRSeHVuVUZYa1VVbXNZTGR2SVp3M1hiWGxVdkpRY0lhUUMzUGN5K0ZlU0g4?=
 =?utf-8?B?SDBpQ3lsREdtVDBGTm5wQTg0bmgzWGpDM0sxZmorZE5zWWhab1FiV2pmMzFw?=
 =?utf-8?B?RGJuOXhnTDhlOVRTeWp4QWExTk80dmlwcjNjbXg5QzdaY3FZVDdWYUQrVGd0?=
 =?utf-8?B?TGp4TDFRRzFHNGYrUzBEandYWjdaR3kxSjdVNDV5blN0Q2tnUUhVMVQyWGRn?=
 =?utf-8?B?TXlucUt4Z2xkZVFZNkZydThZV3F4TlpiclVmM1N1SGZnRCt0dFdXOGFvN2Uy?=
 =?utf-8?B?ajNNdFpxNFJvbmMwd3VselRWeGoyZlNjdmY5MndIN1hxdlIrS2xSZ0htaW1P?=
 =?utf-8?B?NnYzYXFNN2lHMGZ3alRQcjFWL0xacHhUL3Z2aGovSzBrV1VZaGNQMXZkSDZx?=
 =?utf-8?B?L2hrY0tFdUVNMUNWYVIrMmh1SFducldlM0VaZmlNdEdwNlJ6ZGlVZ1J4QVV1?=
 =?utf-8?B?cS8vV1pQVitUam9WdGd6RGRjdENjSzdUZEQyVm5PMjl1VGJlcWtEYVVWMlFv?=
 =?utf-8?B?TXdxdy84aUt5ZWRjclp2SzhOYUJudnJ3bG1qUDRMckMzbEd4dHltMmREOU5R?=
 =?utf-8?B?OHRpbkowUTFqOStWRXF1bGt0dCtGSm5IajZzd3JLQmhsT1VuMWZjNXVlTUk4?=
 =?utf-8?B?YndOVlp2Q2crNTdjakorYmJsSDRyYnVEaHVqSTJHQ2JEQ3Uvb3VYVXJPNGFq?=
 =?utf-8?B?eXhMQkZOUndUSjY2elBQUTI4WUppR1A1U0ZaMWxNYVd0QmY5Zm51ZlNaT2wv?=
 =?utf-8?B?YTdOV0tzSTJ5bzBhZmlUOTVLR2hpK0R3bEtIREJkN1lKUW0yUmxKUTNyU0xD?=
 =?utf-8?B?TWVaeEVTTldaZnEvVmVhQkRnSU1maW9laGIwd0puVUdLeFcxdDhpZHdDZURr?=
 =?utf-8?B?bzVwZmRjeVh5L1FaeC8xZlRDYmxjVDliM1crY1BKV01CM0NSbWo4ZjdvUHlO?=
 =?utf-8?B?ZDZiVmxtK3B0UlFCWVhpL2owUk1WNmNsdHpsY3c0TVVhWnQ5UURHQjB4YmxW?=
 =?utf-8?B?Sk0wUEtMaTRYN3JzdU56NVhRZ25xV1o1ZjNUZDZSVUt2bWJGKzdlSXdkVlRq?=
 =?utf-8?B?ZkVuMVZtNjhJYnM5b1laYk11VzRlellkUzZvQnB1S2FtMHc2bDBaVkRPc1po?=
 =?utf-8?B?Q2d5enkvcUIrVDBVMGxTbFF1M0t4azRmYkhSTFF2QUNUaEFZZlhMVlArT25o?=
 =?utf-8?B?TXptcUVCeXY0TWNOcUJsa015bzhBc1VrSkE0eURYazQ5M2VXemhGc3RIVEho?=
 =?utf-8?B?aDlDZU9VdzJDaloxUVNzRGJXL29kdmxnK3NWSC9rbVRFbjAyNE4zbnRPK3hs?=
 =?utf-8?B?VUtVc0lUK1JTdXRHck9haGpUUzYzQjVSK3F6Q0h2M1VxRFg2TDZzelRxVVpo?=
 =?utf-8?B?ZUtuSjNEWElwRmFCL08vU2hsakJ3RUlCNEcrNHp3OHd4TElIeEVsTkRwTVh4?=
 =?utf-8?Q?bZt+xdhXeeyFp/9LiyUv+ZVjUQXQH/bqlgEkk98?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K254SVFyLy82SEpweGpZVHVMay80bHNRbis0KzVhYnZrVGZmaDg2QXFKSTZV?=
 =?utf-8?B?ZVZTWXpoV2sydmpPell6RVRQWXV0dmN5b2RYUEVabGZaZ2lEcGcvVlJSR2sv?=
 =?utf-8?B?N1N3eWR3Yi9ncHZwV3BmSldtSzUxallJdWZQME5wclRGNmtRNnVzZkNVUXZK?=
 =?utf-8?B?SmF6SnZTUmRoZkZDdEs2Nm1paEtqZHl2TDdhdkdhTUtUU3NFM2FUM3pJUllv?=
 =?utf-8?B?SVZlT2k2cFhCdm1BbDZ6WmUxanhGbGhTcTJ0alBDSmtVUGQ4OCt1N1RuNGhE?=
 =?utf-8?B?WldZWHVnSG5IRndsVUluMlg5cldBaFplMzhRaWNHQ3BtUHE0VlYweURBQWd4?=
 =?utf-8?B?S2FQdmFXb2FGcGM3aTR6RGpkOHhjaThnUlU3Rk9yeTdROXNHR0tnaUs5ZlBX?=
 =?utf-8?B?UVBJdFVzUWFKY1RoV2NUMkliMWV0c0xaTXRHRGpETVkvbnRhVzluMHdCajFi?=
 =?utf-8?B?U3RKZEkzK3c1K1UwQU5mdFEyT3BRMXhrODhXbHNyLzJrQmJrRVdZRzZwcnBz?=
 =?utf-8?B?RGtreWswTGhNdHBZd0Q3WjNDajdMWWtXcnlnS0JUeUtzakMyaHdlZFUrU2NO?=
 =?utf-8?B?U09hTVE3QUlhWlBVRDRGY2J5OUg0YnZmUzVqRDROQ0NpdjQ4dHBSWjlaVm52?=
 =?utf-8?B?cmZEVHVvZ2dLcEFManFCaWtEWkh0eGJCSExMc3JXVWE3d0ZnMVZCNmluWko3?=
 =?utf-8?B?Sm5vSHFuYkJiY1p4UHBDbit6RThwWGhZSGZSM0dvMUwvMk5hTWMzaytKd2Jq?=
 =?utf-8?B?bG9DMkpLbVVLNW1NQ3JkR0VGaDhkMDdmQXJXYXp6bGZ5UHIxTzFrYWl4TVdD?=
 =?utf-8?B?dWlrN1lUdmhrU2tQZEI5M2hLMEhTb0RGVllDa0lmeU5aeEg4YW4xRWx3RGZ4?=
 =?utf-8?B?MzRDdUdnSkNBb0poa3lINHRKcWJzY0xhWENxZ1UzMEdJeFBNZW1nbWJNRk1j?=
 =?utf-8?B?Z21GcG1ER0VCdXQ3cVp1YWZWeDNoNE9INnNlRVpMUFZ3cERKc2FJc29BSXhZ?=
 =?utf-8?B?a0EzQkVUSzlLWDJUbkNBcDNMM0VEeE03OCszb1FGOUJ3WGhObmRkR3BEbE5O?=
 =?utf-8?B?MkVnRWI2bGUvSTlyK00xSk55WEpWaDZrcGsrWngwdzVTb0VtSXFWSm9FRHlO?=
 =?utf-8?B?d2pYWFE0U3ZCSXgzNXBuK0Y2V0traHJSTm1TeVVBbUo5aS8zL0NNQURTUy9a?=
 =?utf-8?B?QW9OaGNOSWhPM0ZTMjJDS2NraTdFaTJINnQ0RXVDdzVGK1k4ZjBsRFpqd3RU?=
 =?utf-8?B?YXR5Q0QxbCtBazVIQTg2dk9GWWxSM0NZWHZnM3U4VkF3Nytkdi9DcTBLYjlH?=
 =?utf-8?B?T1l4VUQwU2hTcUlVUHBjNDNJb3g2dmJteVJFaStBVUJpU0hCNDZuRTZVeXQ0?=
 =?utf-8?B?QWd6ZS9PRC84NXNWeTlQYmpLdHUwdGlLUm1uWGpIcWEwNEo5NmRXdG9KQzJj?=
 =?utf-8?B?T2ExakozWjExS3VSalQvaEZsQlNMV01LeG96QVRLMUsyZFZZYVZYQmNQK245?=
 =?utf-8?B?TTRmZkdSUXJPWTd3YWNzV2tUWFZzZ0MzZjE5Q2NzRmpmMHRZRm5WR3lsSzVP?=
 =?utf-8?B?SzhsWGdteWlpZ2dHUytkQnBVdE1ZRkZTSmVOMDJ3Y1JTN3FMeHo1UmRiOGZo?=
 =?utf-8?B?Q3RWS0l4dDdPSDZ0dlhTd3o4eGdyK3JkYVhLZmcvc1ZFWGh0L3FmN0xEamxX?=
 =?utf-8?B?Wk04Q0NqK1RmZVFzSGszcXkvWnBBNHZ6Y2pGYmovNVFqb1diWDZVcjE4enVw?=
 =?utf-8?B?d3hSd0diZGJRNHhuL3JKcHhLYk11MTNlTW9rNC8rQkxrRi84bnFwVWw5ZnVm?=
 =?utf-8?B?QlB3VmR2eTRzV3NhdWxJTVZtWUZZTDlsZGhVeDRMQnhoU1FQMEdPeDFZWERH?=
 =?utf-8?B?MXNyVEoxMDh5VS9RTmE1UStDWDZtWmg2N1VxWXIreWpLUVdVbGNERTNjazhS?=
 =?utf-8?B?L1QrR1hjbGZNZmhvdlQ3ZGhKdHlLbXpvZURHQ1pFb3lYelZZVEFKc2huOEZ4?=
 =?utf-8?B?TUlCVzFQaHVBM21USzZ1eHlJdkVXUG5FQ0JtbTR2Y0ZIUnhsa2FQclphSTQ2?=
 =?utf-8?B?eFIzcHBGcG1iRGlWbVozWDVlQ2F3bUVIR3NpVytRZG1lNFMveSt3akhZUm00?=
 =?utf-8?B?UGgwUE1VbXROTHpnenBFOUR6MTNHMm8vRDJMSDBIc1lTNk92dDdkWkV3bTRS?=
 =?utf-8?B?d1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88e27b5e-f228-4967-a98e-08dcfd93de61
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 12:17:51.4126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VkvLRpQKFuFHgpnwkZJ8e/d/cNvjseu6D/MyWpTaIRp/+UA2xbQPA0z9XxHAn3I0W9EZCXAcSvZadMAhhG6/0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7673
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

Quoting Luca Coelho (2024-11-01 07:57:58-03:00)
>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> In upcoming display changes, we will modify the DMC wakelock MMIO
>> waiting code to choose a non-sleeping variant implementation, because
>> the wakelock is also taking in atomic context.
>>=20
>> While xe provides an explicit parameter (namely "atomic") to prevent
>> xe_mmio_wait32() from sleeping, i915 does not and implements that
>> behavior when slow_timeout_ms is zero.
>>=20
>> So, for now, let's mimic what i915 does to allow for display to use
>> non-sleeping MMIO wait. In the future, we should come up with a better
>> and explicit interface for this behavior in i915, at least while display
>> code is not an independent entity with proper interfaces between xe and
>> i915.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>
>Makes sense.
>
>Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

Thanks!

>
>Just one question/comment below.
>
>
>>  .../gpu/drm/xe/compat-i915-headers/intel_uncore.h   | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/dri=
vers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
>> index 0382beb4035b..5a57f76c1760 100644
>> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
>> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
>> @@ -117,10 +117,21 @@ __intel_wait_for_register(struct intel_uncore *unc=
ore, i915_reg_t i915_reg,
>>                            unsigned int slow_timeout_ms, u32 *out_value)
>>  {
>>          struct xe_reg reg =3D XE_REG(i915_mmio_reg_offset(i915_reg));
>> +        bool atomic;
>> +
>> +        /*
>> +         * FIXME: We are trying to replicate the behavior from i915 her=
e, in
>> +         * which sleep is not performed if slow_timeout_ms =3D=3D 0. Th=
is hack is
>> +         * necessary because of paths in display code that are executed=
 in
>> +         * atomic context. Setting the atomic flag based on timeout val=
ues
>> +         * doesn't feel very robust. Ideally, we should have a proper i=
nterface
>> +         * for explicitly choosing non-sleeping behavior.
>
>I think this is just a matter of semantics.  It would look nicer to
>have a more intuitive interface, but I don't think the i915
>implementation is any less robust per se.  If this behavior is
>documented properly, I don't see it as a real issue.

Ah, well... Yeah, I guess I was too hard on i915. I'll replace this
comment with a quick note only mentioning that we are replicating the
behavior then.

Thanks!

--
Gustavo Sousa
