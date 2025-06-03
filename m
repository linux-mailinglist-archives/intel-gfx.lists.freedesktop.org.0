Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF90ACC17F
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Jun 2025 09:54:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28CF210E0E9;
	Tue,  3 Jun 2025 07:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZFpqfxtw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6750610E0DC;
 Tue,  3 Jun 2025 07:53:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748937232; x=1780473232;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BSF74YpH9J+dUw4FdLvjt9PTq5subbOdh3dZUxVhLKI=;
 b=ZFpqfxtwsX5RMrcgMo40Abs6/o7OFa90r7KOn1LabkgkkmUCFg2m1/yW
 x57TTOYLgAGz8e3AmW/UpZbAwSIjLXmgwV0Qfyz4W2qES5B7gimCepHA7
 kQ1YyzLHuLynDie6myM8k2YKb4QxNBSA6LCiYPg4iczZs8BeOnKWV4Yyu
 DyHps9MyX2Z3AGJHUk+rXy0/6eRgu+f85hlt+mZ/keX3o+MyGaI608kA1
 q5422GPosSiP8bJt3lFUp/3VZ3ERn1422N6tBsM1czcjU9Ep7w29w0syD
 imbRnZDUCRG2MTDsebhNNFEGFYa0VgEL4qiPwF4PAcR2aNwkjPLV4stxD A==;
X-CSE-ConnectionGUID: Q4S8VypsQQKddCIn8VsmGg==
X-CSE-MsgGUID: uhRCPhDuQzeBbapFrJ+Ypg==
X-IronPort-AV: E=McAfee;i="6700,10204,11451"; a="51032993"
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="51032993"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 00:53:52 -0700
X-CSE-ConnectionGUID: b7m/1b9uTgy+WuCpEa++YQ==
X-CSE-MsgGUID: VcEs+9LhScq93/XKf940yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,205,1744095600"; d="scan'208";a="175736567"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2025 00:53:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 3 Jun 2025 00:53:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 3 Jun 2025 00:53:51 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.68) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 3 Jun 2025 00:53:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LeDkcnnmodDbQpwB7Bv6z9qxiXxNScRnp7FblSJn59TwiNwlKxiViyjELh9Juz3xdTAO8Gh6OJDzGu7uaVDRI6+nacA0l7cryU4ZxV8uu0q2Ruu6ypJC5o/D5V94IIjyfNSL74cbAKaJfD3iW0nmlEE2ElxE4+Gsfky2RdISDYcNYOmZdoa4Z+TZxsxkfrcDsModviVwgtTvWQk8ZURjIo7j1KIZx72HnvUn+Ry06JLGZflcVf0DJx4+oltaCqN4fYoaaPpBuND0r4no+ZpCP4PQfWoMfQVJVlaG68EcNZUkYb6IQf00ajIJDp/1OkTsuF3zYT1heejN3DOXfVCl8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mBSPaePk0vYPthgn6gMiopJPqDhEyq2eW3XuaiPFpf4=;
 b=iwwuQeV4imorSaBfvTHnZNWqTig/KegpZc9AgNM1ELOZBAYf5gjaNutpnJTYm1pcwLOEmP6GupJ/SLcdupYULq1ZN15uhqnYGXTTKaDOiHl3XixFDKne84g4IyRiXu7WOzXy4h/LfjxGjoOTZya6Jdagc1RO+Ki0ZAYn8xgJln3SZvcjMTUsdEqBRnjJHh1+pWIxw2zFfJdI2kIYFE3uxl0zkKsa5wXVm8xLk841vWbwKqnUO/VbO97hdPnHR5oetbl0zRYQTmJnfseZ1obe9y8MgN2kKX6/bqwCi4tyyizcyp5TvSmWS9YRBmNTVBuxG5GjI95Dcrt08+FNDB+JbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPF55C5E51F2.namprd11.prod.outlook.com (2603:10b6:518:1::d20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Tue, 3 Jun
 2025 07:53:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.8769.033; Tue, 3 Jun 2025
 07:53:44 +0000
Message-ID: <89b48bee-1a94-4bf6-8a7b-33d2d3e57de1@intel.com>
Date: Tue, 3 Jun 2025 13:23:36 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Fix u32 overflow in SNPS PHY HDMI PLL
 setup
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250528064557.4172149-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250528064557.4172149-1-dibin.moolakadan.subrahmanian@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0015.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPF55C5E51F2:EE_
X-MS-Office365-Filtering-Correlation-Id: aa02ea1f-34fa-4bb6-b2d5-08dda273c37c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MXd6eFU0OG02UFRWUGhsb3g3MEJtczFjdlZNK1Evd21YUy9iVGd0OW9jRHFt?=
 =?utf-8?B?ZHZhTmJycnRYemdIU3cySTMzdzFjWlAxTXlqVmRYUUlOWWdIaVg0a2RYTmoz?=
 =?utf-8?B?TEc2bktvNHM4RjVFZXQ0M3kxTjBmU0ZWQ0swQlk3SkZUTnh4dnJUdXFxKzlj?=
 =?utf-8?B?TGFFMTUxMG9XUHR0bWFuSUZsWGJlbnVYdGZJRXFKR2N0K1Jxd2dCL1A0OStG?=
 =?utf-8?B?VEdTNzF2bmlvdEV3Um9PNXFhT2UwcFdQeHFldEFlQzBZanpoRnJ2TFBzVjNo?=
 =?utf-8?B?RURlYjdZd0xvQ21ZdGRUYStQeHcrSDd5RGdyRDJ1NCtWQ0U1RFgrbFVxTG9u?=
 =?utf-8?B?MElOYm83V0dNa3JGODQ2emszVjlEelhDSVBZcVhGRFdMeHdnTjhtM092eXE1?=
 =?utf-8?B?TkRIb2dOL09xRWpoWFZ2MnZmUGw4d25QOUN1bVhwSDVSM253UURGZU45RGFI?=
 =?utf-8?B?YzBGR2FteUZPTldSelIvaHpndDlzdndJNHFvSGNhc25rbForMUF1MFovWmcr?=
 =?utf-8?B?NzJoczE2ellxOUtZQ1FaWFdXM1Y5UjNLaWNBbExlTmU4VHpDTzR0aVJjMzRu?=
 =?utf-8?B?M2tMV2NqT3FUa0lXVEJ5TVJSV1RKRHp2c0FEYkdabUxHQVk5bGpuL0JqTENI?=
 =?utf-8?B?SlF2eVdRZE9TdWVCVUxueWdLVi81K1VlM0xycTRuVW5RVmNocjlUZ0t4WmhR?=
 =?utf-8?B?bWlUcWJQbHhnQ0NzM2VUTTB3bDVTTEl6aGN5K1lna2FLRmFZY1BFUnVrYTVT?=
 =?utf-8?B?L1YzMWhmTjJURjVwUkxlQnRQK3hGQU9vN0xINkJGalJKcHdJTkRQSEZVeXJv?=
 =?utf-8?B?ZUtUVUQvdDhGZzJESHgrMGNkYTVxZ05JR2ZKdEVtQllVelExSG93c1pwK3FO?=
 =?utf-8?B?ZmxEM1hYczgrTUhxTVBiZEhHTHhqV3ZzWjd1N0pyeEJTb2xsRVNLbTI2TGNU?=
 =?utf-8?B?L0cxL1FQOWlOY3pYWVcyUHZpSkkwQWd1L1Z4aUltNWpUcmdMSkgxMTJ6blJM?=
 =?utf-8?B?UHZMamp5cW9kcFRaK3U3VjRlTFVSRDNYalVwVWlMTmJZVUl0UGlYbWRlVnB3?=
 =?utf-8?B?NVgxU2g2c1Axd0svM2pQcHdnYjVzVVhtK3FYV3dvU0lVa3Qvdnl3cEt2NnRI?=
 =?utf-8?B?U0k5aXo2ZHFzYmdZUWx5dFhEeVEyT25DNjhQUkVSeDlCNWRwa0c2QWtDRVJJ?=
 =?utf-8?B?MTNub2wvcDJSMjY2Y2VLM2NxWTVzdFZsZmlHV1BUaUF1SG1ML2lURUovRmo5?=
 =?utf-8?B?WjNoUi9hOEpRM1BvMWZUckFPeEZxVkNVUmdna2NyL0dKUVJtcGk3Tk1vQUpw?=
 =?utf-8?B?eG9FTW1nbmZIckRzSkgzcVBTVzNlVmZYS2RqUHEyWHlEUXlHaGhWQW5jUGdZ?=
 =?utf-8?B?d2EybHFDRFlRZHJFQjVGbmRNY3lXNGx2dis3NTlrYnFvNDI5TkluRjgzM1po?=
 =?utf-8?B?QkN1K1RGRStQd0RZUDROK2lKeGNKZ2tvWEVRNXZnd0ZQa21TU2ltWGtIZ3hI?=
 =?utf-8?B?WkN2TG8rcUY0QktiZlZzK3RmTUxSczhsTmJMWlRpZzlCUnpBL1NSQTdKTXN0?=
 =?utf-8?B?dm13VzBtQnpZcXdLbmQvRjM2aEIzUXVaR3V6d1FXcTZmQi8yR0VxVXp5Q1pZ?=
 =?utf-8?B?Q3hBajNYQSsxbzBPQThPTnlrdkFjakUrWWttYko4aFo2dXBZcGNqb3RsTDBt?=
 =?utf-8?B?dEJ5bHVVOGc5YlZ3em1wd0dTY1hWN29UMFVlb09mdjZQUWRDQ3dEWjcwWG4w?=
 =?utf-8?B?Q3BWOEZLY0RjSjdlRTN0eGl2bDlYanNpNVR1cXpkV0hOaVlDRUZRNUxlTnV6?=
 =?utf-8?B?Tm9UYlpMTTdWMURQYUVsSlVhRW8vZ21NN0xnWHB5ZVlFdVpmNUdzbWp1eWxr?=
 =?utf-8?B?Q21LRzUyYlQ1MnBHTCt0WHVWbW9zYXd0MVlWSHdDOTB1RnZWVW9ySXdJOUlJ?=
 =?utf-8?Q?kPskrgD3JrY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dnVDQVVIZlZ0SDd3VjM5cWhEUHhnQWlXa1pyTGJydWFidGFHMm0rVHZGOW9M?=
 =?utf-8?B?UEozdmVydlBOUjhuNFdaVEdZcDFhVUVramEwb3YyVEdUa0c1QitFYnlxcDdB?=
 =?utf-8?B?QWtzWDFDck9hVFpraGxZMzFHclZaL0s4ekdCdzI1SW5jNktId2MwQnpybkVC?=
 =?utf-8?B?QkcrQnZibDhNL0ZZSXk1bmlxQ00xUVJ3SnZJdkJJNlVWUUR5T0tRRXpiSUJR?=
 =?utf-8?B?NEpDODYwbE4yRzZCTzRONFovWEo1S1RFdUFpQWZISCtmcEh4YUpRSDNhVUxP?=
 =?utf-8?B?NVBhdklJOVI0NHovSEJ6TTRFdnRIcDRYcVVzT3Nic29ReE80NVRXdlVUNklM?=
 =?utf-8?B?eUtsQ2prSkViTjZBdVZXNVNrTEJmTTNUZmovc3lNL0FvZFdpOG1zTmM3eWpR?=
 =?utf-8?B?K2hydWdTOVMwVlZrYWU4S1VVaGZNdW5sZDZRUllIUnJ2OFFxYnhoSW9WM1N6?=
 =?utf-8?B?WnB5MDVBdjhDOUx3ek4rbFpyRGs0ZlVpOVhKSm41bDEzNCsxcGZ4Wmt5Z0Ev?=
 =?utf-8?B?S2VJTU9Yd0xhcERlL0x6d3lsNFVHY2VvbWlWc1BicTcyRkh2ZnlITXZ1KzRP?=
 =?utf-8?B?Sm5DMFJzOXRZSHMrOUxlK1p2YmE0am53a1NEL0NaS0RCYkZJTWMyOTVMb0FT?=
 =?utf-8?B?bDM0SGZtZURqQzc4aElCL1AzR3NrRmVjb2hnNVA4Z2FCdmpRZ1NsS1NQTmtU?=
 =?utf-8?B?b09HQmtpYStKZ3kxY0Z4TktLNERLY3lTbVNMenBaTDJoZTNhU3oraWY5Q3JJ?=
 =?utf-8?B?Q1RMb2Q4RkxHcUhXbnlqOEFLaGxlNXFYM21FdVowSVZwRndHM0ZQR2hmSFhn?=
 =?utf-8?B?U0hDekxpaHdnNjlPRG9CMm05bk5pK3JEc0ZIN2g2ai9hT0xoOEs3blRSaVgx?=
 =?utf-8?B?MGhNY0JucEJ5anRVN1plT1k2ajh2c3VzZTVGQVJYK0ppeUpUWTBoVG5KelFm?=
 =?utf-8?B?YlVSQzJQYllwcGVxR3Ztc3VBZ2d5c2w5N2RjVnJSU0h0TVBSUVB3ZnpUeERW?=
 =?utf-8?B?cDFuZEZEbE95V3dpRnNxS2c1QUNLWE8xYlZCVjdhY2k2OTJTUGJzdkRUbGx6?=
 =?utf-8?B?TEJ2b3dsUjhRNElKL1VqTWNIYUROdUVRZjI5ZktJUXcxYXp0QWhHclBzeURX?=
 =?utf-8?B?cG45OVg1RWpkVTVvWnNZSFVreU5YS2d6QUlGa1NrMUtaWDU2RE90SmEyUFd1?=
 =?utf-8?B?eUtjV0p2cm1JdllTUFgvUVpsb2dYU3FUVUgreGgvb2JZRmUvSDRQVGduYS95?=
 =?utf-8?B?NE1ibjlSRWc4UFhqYjQ3Q1E5RVBJNjRHZTNyQTBpVG1mVnRUbzd1OGhTZjZT?=
 =?utf-8?B?cGc1VjhQWlBtQkhVSEhRYTlsMDF2cDk3NVNzMWtUbWpHYUNrNndLeEdIazBo?=
 =?utf-8?B?KzZjc1piL29LSVZCQzVsZ3ptZlFtOE14Sk9WY1BEREJpTHF2bkNSR3lobkN6?=
 =?utf-8?B?R0MwUDI3eFg5dVlHTTFCWCtnVXF6aWsrOFVENG12WCtOazRRL1NGb0pxS05P?=
 =?utf-8?B?TmhucTdQYW5xNjU3Njl4Um5RWkZCazA1WWNQTWxtcUVKN2RwM2NzRWFvV3VQ?=
 =?utf-8?B?cjlJVmhtSDFnT3pJYXZyV2Ftb012YlFrVEEwTTd5eFVjQU9wNmh4MU1XdmVu?=
 =?utf-8?B?SDUwbk5BblJ6eTlkWjRsckFpTXc4WGtUSHZUcng1MHFzVzVpSWpURmdDMlBL?=
 =?utf-8?B?T3luQ3NHSWRMaWp6SlJXMmRYMVFibW9vclFjNDVTbC9tM1BuUzhjS2xocVZu?=
 =?utf-8?B?eC9sVmk1eEMrZ01xVFk5eXpDaHc1ZmVuUDVNNzl2alRxTkE4eFNmcEw4cHA3?=
 =?utf-8?B?bWN0bU5TbEtrZ1Y3WkFVeFVkQURWUW9DVHpOYXcxRFRFaVhtZDExcWtSbktB?=
 =?utf-8?B?MlNjem9naE1saVV5L3lMd05ZdWNUN2FSNE5tZ1JpT21HVzJ0dXlZMlFkelRu?=
 =?utf-8?B?bWJ6Z1d1VkJtZC9RMC95YjN5SHNrKy90SHF4NGxlWWVBY0JHOXlxL3kzRGtO?=
 =?utf-8?B?cTNGTFJvVFIwNEVvUlZOZEhQZnlENk1rOXQrejNzLytLWURFTWFjb09wbDlr?=
 =?utf-8?B?Znp3YWp6OXBmZndxUWY1VmplSXVmazlDZTY3VFF1bVBkQjV0OHJreHVFZUpX?=
 =?utf-8?B?L0RuV2xWdFBXUHBSMU52L2M3bEE5UElpNEpsaTFyVFU0aVZFSUxsMHk2VGdi?=
 =?utf-8?B?YXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aa02ea1f-34fa-4bb6-b2d5-08dda273c37c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2025 07:53:44.2695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsGMsRwPiyCDgFIA/dl9LzudHW7VcqtXKD21R9Cvxeq5ef8+wykJjWEptDMFo8EpEf8ZWeyks0uWZHryZgRPh6gD3/9SlUtju8AdDIeAn/g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF55C5E51F2
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


On 5/28/2025 12:15 PM, Dibin Moolakadan Subrahmanian wrote:
> When configuring the HDMI PLL, calculations use DIV_ROUND_UP_ULL and
> DIV_ROUND_DOWN_ULL macros, which internally rely on do_div. However, do_div
> expects a 32-bit (u32) divisor, and at higher data rates, the divisor can
> exceed this limit. This leads to incorrect division results and
> ultimately misconfigured PLL values.
> This fix replaces do_div calls with  div64_base64 calls where diviser
> can exceed u32 limit.
>
> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Fixes: 5947642004bf ("drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2")

Need to have fixes tag in the beginning of the trailer. Can be fixed 
while merging though.


Regards,

Ankit


> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/display/intel_snps_hdmi_pll.c   | 16 ++++++++--------
>   1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index c6321dafef4f..74bb3bedf30f 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -41,12 +41,12 @@ static s64 interp(s64 x, s64 x1, s64 x2, s64 y1, s64 y2)
>   {
>   	s64 dydx;
>   
> -	dydx = DIV_ROUND_UP_ULL((y2 - y1) * 100000, (x2 - x1));
> +	dydx = DIV64_U64_ROUND_UP((y2 - y1) * 100000, (x2 - x1));
>   
> -	return (y1 + DIV_ROUND_UP_ULL(dydx * (x - x1), 100000));
> +	return (y1 + DIV64_U64_ROUND_UP(dydx * (x - x1), 100000));
>   }
>   
> -static void get_ana_cp_int_prop(u32 vco_clk,
> +static void get_ana_cp_int_prop(u64 vco_clk,
>   				u32 refclk_postscalar,
>   				int mpll_ana_v2i,
>   				int c, int a,
> @@ -115,16 +115,16 @@ static void get_ana_cp_int_prop(u32 vco_clk,
>   								      CURVE0_MULTIPLIER));
>   
>   	scaled_interpolated_sqrt =
> -			int_sqrt(DIV_ROUND_UP_ULL(interpolated_product, vco_div_refclk_float) *
> +			int_sqrt(DIV64_U64_ROUND_UP(interpolated_product, vco_div_refclk_float) *
>   			DIV_ROUND_DOWN_ULL(1000000000000ULL, 55));
>   
>   	/* Scale vco_div_refclk for ana_cp_int */
>   	scaled_vco_div_refclk2 = DIV_ROUND_UP_ULL(vco_div_refclk_float, 1000000);
> -	adjusted_vco_clk2 = 1460281 * DIV_ROUND_UP_ULL(scaled_interpolated_sqrt *
> +	adjusted_vco_clk2 = 1460281 * DIV64_U64_ROUND_UP(scaled_interpolated_sqrt *
>   						       scaled_vco_div_refclk2,
>   						       curve_1_interpolated);
>   
> -	*ana_cp_prop = DIV_ROUND_UP_ULL(adjusted_vco_clk2, curve_2_scaled2);
> +	*ana_cp_prop = DIV64_U64_ROUND_UP(adjusted_vco_clk2, curve_2_scaled2);
>   	*ana_cp_prop = max(1, min(*ana_cp_prop, 127));
>   }
>   
> @@ -165,10 +165,10 @@ static void compute_hdmi_tmds_pll(u64 pixel_clock, u32 refclk,
>   	/* Select appropriate v2i point */
>   	if (datarate <= INTEL_SNPS_PHY_HDMI_9999MHZ) {
>   		mpll_ana_v2i = 2;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_9999MHZ, datarate));
>   	} else {
>   		mpll_ana_v2i = 3;
> -		tx_clk_div = ilog2(DIV_ROUND_DOWN_ULL(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
> +		tx_clk_div = ilog2(div64_u64(INTEL_SNPS_PHY_HDMI_16GHZ, datarate));
>   	}
>   	vco_clk = (datarate << tx_clk_div) >> 1;
>   
