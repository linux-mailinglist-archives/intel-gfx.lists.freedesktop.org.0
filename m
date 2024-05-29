Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79288D405C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 23:40:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D933811A66B;
	Wed, 29 May 2024 21:40:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IO/g8xhs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFB1D113F48;
 Wed, 29 May 2024 21:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717018801; x=1748554801;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0brhpTwCb6kfRYPvcsGfc/zpvE5XcOaqybPFgEIX7FE=;
 b=IO/g8xhsJL8NejFO5rVjK0NKNArj/GyxtzdRQAEuPnNTgN0pmR1xZAFm
 CY4OGjuGTF3lWcARZleNL+Hfml2mhQ4Uyu4a10rgcbdU4h5FNmNyraZJo
 wGhXb/hVdMHAKi9C2+Psx+Ohaid398OyUEGK2lWm479SuOuYxxXOnEFLq
 tzIvRHgrWC2HNovHrzy+G8H7XfKsHKVL3SVeyv5LTK2vAjQfXe4kwRx3h
 31736co8j47UwRMqXCmeB9QWHSiGRh3TWs3o59PSbEUCAGPOcOeFZJjMS
 Qk8RhaIR57EPfC1yEeqZEGpwTRw+5e+Z6y2CAw81DTdV7hQgXNTN2PoUm g==;
X-CSE-ConnectionGUID: LhM/xHpxReqoUdiVSkaj0Q==
X-CSE-MsgGUID: imVCCNE3QzyhAnRa6Un9Jg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13276020"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13276020"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 14:40:00 -0700
X-CSE-ConnectionGUID: HeA3qgIGSoqrUa8Sy+hv7A==
X-CSE-MsgGUID: YL/x3sB2Tmmc8apOneqqSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66444693"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 14:40:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 14:39:59 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 14:39:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 14:39:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S+joDp9mXHVcgNcVtt86CKuJmVXGkPeIPiXTHBq2Gp8mEHJ4XtZHUHCQMue1auqVqrzEsohXFbxRJgzWs6x9Nm+frxwENKX1/lnEGjfOJTnzjIHiw4O694gOpSdDeuVm504Iei12uvbFZPtNiiB84uUBwFX9VWYEydGlI2CIcwkuFqjk+uxDJyWgbGktPMofAk8WX28mCrnGDPJINwoEZ36Fe8yP7+80nzzVUTKAEwUa6Eah/acXfU8sCUGxi0wB1RGTX/tYYH6sT1ToxAfu+k7c3AhQ41c5KBT+CA3m+OnNWZY4h1L8vyATn27F2Qk3vESA4/f/qb5VJUn1mH8lww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bWW/FYgYl29sU8jr+D2jA/U4795Xgn2ZLkYyzuzYEoI=;
 b=FX0mxREmUFa9cJLfkFhkh77BNOt3cRUTt1K+mau9/ipA7svblbRiKb8y+VbzvH5hIKgTq3f0xRIb3tAIhRccN9DMSXZSd6YK6OhTMPi01F7FsSJBovSZBpg7h6eC1PMB2094uDJqe3sauRbthUXuhhwlUEQtcz7N4iB0ZGhojet0MMUGWaPD8ZQNszEmDocjaYYU6p3mFnhks6g8Y5sryAtx5dUOU8f9L5mSQ3CRDkBVSuuHG51Mm8WqWj3O0foz5oI0s/Pcgg6ZYRgnWQ6KCyd0CLYLQnzHaNREgNIhm5SnbzUUSvdf7HmHQ5FTz3fX2FIvfGHzYAVCnem2f/kYGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYXPR11MB8689.namprd11.prod.outlook.com (2603:10b6:930:d8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Wed, 29 May
 2024 21:39:57 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 21:39:57 +0000
Date: Wed, 29 May 2024 14:39:55 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 07/12] drm/i915: extend the fsb_freq initialization to
 more platforms
Message-ID: <20240529213955.GV4990@mdroper-desk1.amr.corp.intel.com>
References: <cover.1716906179.git.jani.nikula@intel.com>
 <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <31252aa5da27d111b9156904ab4f97325431303d.1716906179.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0045.namprd05.prod.outlook.com
 (2603:10b6:a03:74::22) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYXPR11MB8689:EE_
X-MS-Office365-Filtering-Correlation-Id: 27d01105-f92c-4277-b773-08dc8027e29a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eb0Ozsd8W0fh6LuiftyRO5h+U23q225l50ZwwN761UJRVmFCZbB5Et4SnT4f?=
 =?us-ascii?Q?GFytrxsbve4i2iFk6W7jSJkIYSTHLdS5b0IXAyeWRXp9AmkZX+8Jp3y2Z64Z?=
 =?us-ascii?Q?Nu7R28QiODDuTEFIcVxEyE4iUFjHdv/nVohnu2HGtBlljqH2J2JOtkhmbATn?=
 =?us-ascii?Q?4FqYh4eJ7FRGYYCBOu/6f0QcOWI88KTTJciOqwCcMsMPZ+LzSZ2IytBdMoWM?=
 =?us-ascii?Q?TZZPy3uNWxL7+kizMabwdApRoD9Uej3gYQyfWJ37Q82oGx3KCvH45QRZ12x6?=
 =?us-ascii?Q?VSegF1Ma1b7N0L9axXN1fExJ6vRzMJwczIrOur5tBjlCMnt9tn5BYuOPiUxE?=
 =?us-ascii?Q?vKyepRSm6SuDyupzg0TTzB91ZGmtsmXWcciJS0SFcmTiY3nUxVh7r7orb0sE?=
 =?us-ascii?Q?CnLTYgWyInajNWsuhamLS0plwdWHCVM58ycY3K/V6DBziwq4CdpFO0BgbXPV?=
 =?us-ascii?Q?BUnAN5zTKvNCmTenBv4VCKgXiM3FrippnP1FQkmPIr97jMwTU/lLz9ammbGJ?=
 =?us-ascii?Q?evODhOHXv2RZ636obM46CbtQZRr6/iPRDhHKnvi8mSEAOJ1/GaGeVUCfLZF8?=
 =?us-ascii?Q?K5cMNLKKUYasrWNsgyYdQHQ0w0s5iSRKS5p1f4g8SEein/sb8TNxx0qMj2YW?=
 =?us-ascii?Q?W9eVrLLhRYzr0ERwSX8SN5AEhCy/VZ36lapya+m4mvcQExI93nD3WkklwIx1?=
 =?us-ascii?Q?uuGq1rPE9PdzPZn1cIuJZmD5hxywaUyweUYjcl4kZXk5Kd+YXed+P77OjxtT?=
 =?us-ascii?Q?N389b1Ybs8yG4hrrQbgTUPxCRtSN/Vcne5dPMciM3Q2HE+xJgXc7uyUsadbj?=
 =?us-ascii?Q?4N7f5rM4t8D2MLCAH5Zlkstir29XDFTQupd6EaEAJ0BFH+Nmr7Pn1WymlXch?=
 =?us-ascii?Q?9i+KXFX/JFhxKMaqMZg46zikVdKyaeWQDo+7f3VsSoPn9MXC7e/z8IquJpr9?=
 =?us-ascii?Q?TVacz2db1pDiiM/XdWImo3w7bvSA2wcDqjeM+A9O+Zku0L6IWN2h1PUnCDFG?=
 =?us-ascii?Q?I85xPb4BfQ6exQD+VDwSepIdi1ZriUh7y+tnWVgpUzSZWLJf2MhDqK04EuOb?=
 =?us-ascii?Q?sAgxztG26zLnvv6m29tdnDSPSFf4h7UbVtwUjua/cGjNeW1ULoiadyWqCk9X?=
 =?us-ascii?Q?6z2rELDDeyXW0OajKvuwrLvMRA86XU2+bvawf6wuuCv/2yKaajy7jd9gS6Bw?=
 =?us-ascii?Q?aCsYdYss38dJR7qwkCkMvlvMD2RQrg3w7iUCM+xsIGLl1Y9tq48daWAVQs0?=
 =?us-ascii?Q?=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K+x/rpmTP0rgieOL7V8fImUpcvVRYka5t813UwwnRQYSN3DK7fNkRA6G5z+U?=
 =?us-ascii?Q?D72MEah34mwksU6xCwAOae4OLjRT1+bzsfoZuc9Nz9r2xlFPtSb4veWKlTdM?=
 =?us-ascii?Q?nOK86agnRcrwTBl+BLeNlmnZ+9NMxwbfiwcNnsPK2VA0T93bOvC2y07/Hfuo?=
 =?us-ascii?Q?+h0nDO7JQz5nkx1GQM4vvb60+2SdjrY9Bd4S9PsKbS2hPAm8pwhvNsFVfLD0?=
 =?us-ascii?Q?qoBgg60dhfpS9kaP3FhEmJKCL75kbEcDHYE9sPXJqFbf30L6g8Ygvh48A9ou?=
 =?us-ascii?Q?xkrL7wdqoPJmC9ZIHnNK5wZq9YblGH8LcIb2G4HxbANzBaio8PqTvWaUh75x?=
 =?us-ascii?Q?S+6RJFEd1aauUtNv9VQNowN4fhkO1290Vivkl0wAY7u39Oa0LsV7+mRkyPy4?=
 =?us-ascii?Q?rwPARoenYERov++S1xq73Lo8vcIbzEUETBuSqyLm+x82d9UMSwUTksjg6z4x?=
 =?us-ascii?Q?qksbRaHPGNhvU+WXq6m7Lf8uTMjcR8vf2ZFN4javrWGcJJTixPt9GFtnjJxD?=
 =?us-ascii?Q?x9aWghbSSWCAIEYDZgJSIEmyNY5pqcbH0/M2ctdfG3afQ5fxzTdobgCjsQCe?=
 =?us-ascii?Q?kBES0T6g6UYYwDJ3ASeSOBt4/XDS4nUabLa7H4qmDrq8YB94/Lq7CXAwdsMR?=
 =?us-ascii?Q?dCLg3HmCebnvPN0h1UwK3yrkHd8iCFk0rINB1C4v9J+yi5+Udr8PEKUk3ons?=
 =?us-ascii?Q?ljH5PQbiPeBjyIhK9q5YAWaJPTBRLCE3G1h8nIW5lomEoBntYGnj2dyNtw8h?=
 =?us-ascii?Q?yXnmbc2OCfrrwjnTZ7ldXvtU+YHNSi/iJmpecxoX3bUm8UzDi40Rkz6iWJF0?=
 =?us-ascii?Q?C+jsULqa/S0ZM0W7N54bnkZmDGN1QwJDl99SVwIy1rMYqstIi0fMx7ROZ9m2?=
 =?us-ascii?Q?M0RmhUOZgRNfDH+gHMEL0ej7yZY+RNO8P7gY2bZUdKbsQ9Zxi9Pt8R3b3/c1?=
 =?us-ascii?Q?HG1FoktVjOcHHy0LGAz4yL3ar7YttxxHaWzepJRCjVFaod8m6EtrPIkLiuWn?=
 =?us-ascii?Q?Duj4AvFlAr8BXrUsnhdwCN8BGRmemjkuB7NBl8WM1bgvUJf+wHeUUEshDrTt?=
 =?us-ascii?Q?rM+6n8BFJttl6TURJzoSfueBWo3295CibAYjqqU04vmVR0pWZ2poxwHm4sLr?=
 =?us-ascii?Q?A92sghqmHS79duCsGqTaGvXiCWYvOfcknubFdmTGr0dNOXw/zZtY5noowDpY?=
 =?us-ascii?Q?YiouGwrFhn2N+GmwqSUoxe/6CNDkR03iizt4+gjodgX4JN4K+DZiueOCaSl5?=
 =?us-ascii?Q?WCCH1UtoIuMdvzeFBVs3hf10AHHz3/x3q9XuLifXhCm3+RtcfKyRCK/kWRvO?=
 =?us-ascii?Q?Kiixz09YJ6E29Byb7qNOudE2EiPDFUPVPCf/qjhXVJp/ZJ0rZRnc1La+Bcs2?=
 =?us-ascii?Q?Ol/yUb14u7BbzZRieC5DElnCziVFAy6LQtk6dFoMkZYBcfiH7glkWGm9CNHF?=
 =?us-ascii?Q?76rrBhNvd3PlJipogXo3hVJ1J8lZThkybTWM9ce7CuJ2R6InVdc5NHKeuL+X?=
 =?us-ascii?Q?jXpgBWIYvOHhBnS7cW/RTNat1IA3SsLo5UuR1tr2mJtQBx4M/HbA31ZAUeLC?=
 =?us-ascii?Q?qU7xpk2giCKFG7Xvp+5E60+GDeQGrGrUiOjqMsdVmD8U0sM8ehc4kEvGwY8T?=
 =?us-ascii?Q?XQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d01105-f92c-4277-b773-08dc8027e29a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 21:39:57.4613 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eEwLHPHnybp3w6No+hfinNSXWyHbv7e9jkGqXfg5zOqFt4TmkrNOVPFw/02OnC6pRaj27jCUZ6LCX7m+5qK/Zrr2CrGTaZGubu8ysd6ZnBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8689
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

On Tue, May 28, 2024 at 05:24:56PM +0300, Jani Nikula wrote:
> Initialize fsb frequency for more platforms to be able to use it for GT
> clock and rawclk frequency initialization.
> 
> Note: There's a discrepancy between existing pnv_fsb_freq() and
> i9xx_hrawclk() regarding CLKCFG interpretation. Presume all PNV is
> mobile.

Do you just mean we assume PNV always treats CLKCFG the same way mobile
platforms do?  Because we have both mobile and non-mobile platforms
defined in the driver (pnv_m_info vs pnv_g_info) and that matches
https://ark.intel.com/content/www/us/en/ark/products/codename/32201/products-formerly-pineview.html
that lists both desktop and mobile.


Matt

> 
> FIXME: What should the default or failure mode be when the value is
> unknown?
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/soc/intel_dram.c | 54 ++++++++++++++++++++-------
>  1 file changed, 40 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index ace9372244a4..74b5b70e91f9 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -142,24 +142,50 @@ static void detect_mem_freq(struct drm_i915_private *i915)
>  		drm_dbg(&i915->drm, "DDR speed: %d kHz\n", i915->mem_freq);
>  }
>  
> -static unsigned int pnv_fsb_freq(struct drm_i915_private *i915)
> +static unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
>  {
>  	u32 fsb;
>  
>  	fsb = intel_uncore_read(&i915->uncore, CLKCFG) & CLKCFG_FSB_MASK;
>  
> -	switch (fsb) {
> -	case CLKCFG_FSB_400:
> -		return 400000;
> -	case CLKCFG_FSB_533:
> -		return 533333;
> -	case CLKCFG_FSB_667:
> -		return 666667;
> -	case CLKCFG_FSB_800:
> -		return 800000;
> +	if (IS_PINEVIEW(i915) || IS_MOBILE(i915)) {
> +		switch (fsb) {
> +		case CLKCFG_FSB_400:
> +			return 400000;
> +		case CLKCFG_FSB_533:
> +			return 533333;
> +		case CLKCFG_FSB_667:
> +			return 666667;
> +		case CLKCFG_FSB_800:
> +			return 800000;
> +		case CLKCFG_FSB_1067:
> +			return 1066667;
> +		case CLKCFG_FSB_1333:
> +			return 1333333;
> +		default:
> +			MISSING_CASE(fsb);
> +			return 1333333;
> +		}
> +	} else {
> +		switch (fsb) {
> +		case CLKCFG_FSB_400_ALT:
> +			return 400000;
> +		case CLKCFG_FSB_533:
> +			return 533333;
> +		case CLKCFG_FSB_667:
> +			return 666667;
> +		case CLKCFG_FSB_800:
> +			return 800000;
> +		case CLKCFG_FSB_1067_ALT:
> +			return 1066667;
> +		case CLKCFG_FSB_1333_ALT:
> +			return 1333333;
> +		case CLKCFG_FSB_1600_ALT:
> +			return 1600000;
> +		default:
> +			return 533333;
> +		}
>  	}
> -
> -	return 0;
>  }
>  
>  static unsigned int ilk_fsb_freq(struct drm_i915_private *dev_priv)
> @@ -193,8 +219,8 @@ static void detect_fsb_freq(struct drm_i915_private *i915)
>  {
>  	if (GRAPHICS_VER(i915) == 5)
>  		i915->fsb_freq = ilk_fsb_freq(i915);
> -	else if (IS_PINEVIEW(i915))
> -		i915->fsb_freq = pnv_fsb_freq(i915);
> +	else if (GRAPHICS_VER(i915) == 3 || GRAPHICS_VER(i915) == 4)
> +		i915->fsb_freq = i9xx_fsb_freq(i915);
>  
>  	if (i915->fsb_freq)
>  		drm_dbg(&i915->drm, "FSB frequency: %d kHz\n", i915->fsb_freq);
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
