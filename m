Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3076DA46E70
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 23:26:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5528110E9EB;
	Wed, 26 Feb 2025 22:26:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwLvBxJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A25310E2AA;
 Wed, 26 Feb 2025 22:26:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740608809; x=1772144809;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7mYYjMse+PJCe9Bqm+ofW4TmKVOH3FLtmEa5wyJhn3I=;
 b=QwLvBxJFWnCZVyiauFX96Pv19VCi7nDbuYDTFSYZ6zvWxQTd/QC+MsCZ
 avA9Fmlt5p0ytOO0ieT3+FC2yvem937lRWdUwGan6T5on7a5vbBQKnaTs
 deaL5dGeD3ursBtfDb9m4VEOBQTD/eaCmKrQ5vyUk5/8adR3ECBMygP7p
 z37xvrycag7a+bJoWqceP+kOjZGh3jCt4Vd8fbJTtYXh9+LiY0ob25tVv
 gVnNLEn/Rl8nctBR9gr6F6AsMh9hG0cbEdRv+861qO0ZdueDVK7dsxxBc
 +J3BV8hqCLGxBcG5YGCWwbTbN0dRlgIuBcG/FoI16ye+egU2W3iT1KAm0 g==;
X-CSE-ConnectionGUID: oZ8RNNxqSBq7X9VCrdVZ6Q==
X-CSE-MsgGUID: WazFYUnOTs+xHD56hxCP5w==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52115983"
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="52115983"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 14:26:46 -0800
X-CSE-ConnectionGUID: 5xyHiYdaSb6LWXbBRtDJdQ==
X-CSE-MsgGUID: mROmykJpQ2mYUr5nKiUBEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120958190"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 14:26:46 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 14:26:45 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 14:26:45 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 14:26:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qs+Nr/jiWdLgaVtfZmeLzGp4aydx78ex2cQL6W5OBf3iQKMlIuG2sKiTUeJNVoDEfMgI/OdK1PT1iJNDsnNXtaBVHFRN6Q/a00Ty4IUvLZK4yuwnKAwOQTIOCFLTEQ942lUIMuadaSp6cc2RjNpZmjv6Dn4saKI6frMYjusThDv1YUMo2AXeHiPARCg3Dt2zJZ5ygGOTCU5hOeDTOrTLa3bFDJbCWJ2EYtpgQkangTvzEKFhPQZLd6eV6728Zp+kPeaSg3WXbsxv5IwGWbhdysRDiLnESErgCAcGbJ5+cNOjPIEZXgmqXZ9EahSQOLnhGvPFHHS7id6UNQWKkfA/XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FxkrQlDfYdBnbtt0VrI6CDymL/6NI/lBHIG31PCo1hU=;
 b=XT0t3WNVAUI3M4Y2oOcazMSPbhzzrtcldAGZX1iPXVqMyg/gI1xE3GoyWWA4NeWR5m/cf8D64nPiBo5fMhaHhC5g0OcCdCPCALpgTPCvxZzvJDmmmLUV58uSyGpTlOVHNv4ykLzRAL/GENW3BQzpZubOfPgCgYCcFnVk142M2KwbBwEDhwYzhTS2NarYafYmpgVMQORPiHwemRtKQfu7SVUusO60S2Mt3/rQDWyEMaoEd5RClqQLeJySMDfmLAJ5QXwh4hbPw9984i/LnzsPd8HTflZuww0MboWAiO4KjyhcGEtWneR1FmtTVsPk9dotadH8n72PvmLLFEuN0DHZ7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA0PR11MB8335.namprd11.prod.outlook.com (2603:10b6:208:493::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.21; Wed, 26 Feb
 2025 22:26:15 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 22:26:15 +0000
Date: Wed, 26 Feb 2025 14:26:13 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/audio: Extend Wa_14020863754 to Xe3_LPD
Message-ID: <20250226222613.GH5109@mdroper-desk1.amr.corp.intel.com>
References: <20250226-xe3lpd-wa-14020863754-v1-1-8096dfeb3c6d@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250226-xe3lpd-wa-14020863754-v1-1-8096dfeb3c6d@intel.com>
X-ClientProxiedBy: SJ0PR03CA0128.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::13) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA0PR11MB8335:EE_
X-MS-Office365-Filtering-Correlation-Id: ff9aa594-a375-4933-5264-08dd56b49540
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?asCjv8DG/zQvH2yV+Nwpi/5XTSc9GYKeJccC5PY2W8EO6af47q76p0nGqQ/m?=
 =?us-ascii?Q?lqMFoCKopjtq4Ua3/uZBZeieimluXTqXIdSfnKrLe4VkJW/yb4G65gb4IVEC?=
 =?us-ascii?Q?alTKx5I7wpaV3U/J8AxlWkx7d3Q8Nwj7nXqXSEQDAjAzkTJIsOEwlNypNLlx?=
 =?us-ascii?Q?RjY1yEH6EKe9s8OReQ6ixxZ68jIxQ46sphpK1uGxp8kaJNvyOMy/OTPkQtme?=
 =?us-ascii?Q?TgSvw/DBw8K5O+fmO5/kIIM3cVpIz1bkYLcGOWC1qm4GShYERDqqsLiSWIhD?=
 =?us-ascii?Q?yiKoEcoFT4/a1/1aP+2yhZNd5M5kVOigX7HCcFvH7Jt69jZFZZW5G4jRUgIx?=
 =?us-ascii?Q?HKS1yZTs7FQhG7aMp0E5k/3CF68Ti69jga0FYtQNfkOdvvBnbRIQKCAzdjeh?=
 =?us-ascii?Q?2MFb40tznZoPGy1nBdHp3IenKX/BeDLdIawshUq1/8JaUsDYEhVO3FK34DED?=
 =?us-ascii?Q?gqKZIuYn5/d8OfXIBTfG5QB3A+kc7laBNLrpohRVPSZCLHWOhzHD3a1t4c8Y?=
 =?us-ascii?Q?yO/Hk5hvhKy2OUxOqDLmq8RHsz0in1nW241YXAZQBL6dNKuoIDhKowesAbcL?=
 =?us-ascii?Q?eCVy4bfm5nY2VMkr5KKb+nY9kEntGKav+t2M7v4iUoSc0RV0ydEnmAxVJ4CF?=
 =?us-ascii?Q?tbqJo+KN2YmmE4Z+vMGLcl2+TtcRdeVRH4OoP7O/Ccv/+m3Ic9YSHOJCVP8u?=
 =?us-ascii?Q?fS9ODTdsAEOUQtHQPqDSa7gOkXVYuhXaJhWczMpmuzWUtisDxl81vlcsyURo?=
 =?us-ascii?Q?4oMmqtBTfpU/e4c7HwPR/mgOWZkbc7jvy8nquPPvjYaQrvjBHaIGx6mrA/0I?=
 =?us-ascii?Q?Ezd7e8TW7Y2A0zCys2o/JxSmbW2LIf/VfW5azrbu9vey7vyziawHX5Zp7AdV?=
 =?us-ascii?Q?Aw3dkPVDB0ZKTckv1FUTWOqAD3l5lTAbFNdVNQ35sIihEf2a8coUo0hCjm0z?=
 =?us-ascii?Q?iKKxxv9ixo75dBba2WLFU4Rai6gzVEa8TdZZWpgcYkkytk33q6bZNM+XDdEz?=
 =?us-ascii?Q?7z2V/sGjBVzJMX5bZTDXaMsJK13HtO65VSoPTDJEfGBVaU5TpTCU9RIX173w?=
 =?us-ascii?Q?sV75IqoOXA4tcgkCqsKYy1OE98HIpqxZgRcFWqSUlZuDzYscf33iQNW/8Xp9?=
 =?us-ascii?Q?bLg5/cgxUvYt5bLN1nPrThHe7Ui0rzss5lAosScy+aZ9M0h9oYizGfYm9tO5?=
 =?us-ascii?Q?Shc8IC5AodUtv9dCzkZLUtQV65oiJRQNatENcvOvj5kpRT1uhKFw+TYtamMl?=
 =?us-ascii?Q?xdvmc058VTPR4zcyb9A9Zqk5bZeRtMLCxCJclCg6P5XzOXzagyAqSkVtTpM2?=
 =?us-ascii?Q?Z8MhZWEFoKNRQlCYltZ4LePrQZUazlVlTS4D1piQrt2t2GvR4cD+hTx+d6Y3?=
 =?us-ascii?Q?fI3w+d2DL2Zd0UcTMaTD+/+x80Kl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qafIl/xbAau3JIPKjvK1Tf4BAz1CwmNTtEZHZcrUvPGpO7Q8sPrhGpsENh9L?=
 =?us-ascii?Q?VMQXYUeKR1z/S19NAU682h6JFNyxhBTTNqtW2ipZ7ictOilbIr797ZPfyFOF?=
 =?us-ascii?Q?qae0a5vCgYl4AJRr6bu9wbxnFzTlfzWsCkJn/etd2x7YFN4qwl6r4REaCL3U?=
 =?us-ascii?Q?184P5e6979hWe6pbFHH+tLyRAPCqA64nwqs+qsNqYt4mqyfRP+uw+zXzqjKP?=
 =?us-ascii?Q?36Lg/KB2wtBJhjr+UVLjTKZTJ0XmR8WwR1pq6bfNarv+arcmj5p++O3iKMhE?=
 =?us-ascii?Q?Hm3isl7Hm4OWr+7nhMef7ZTtSVAan9ITxmwE960X8sRNzgl4wbK+1+JLK5US?=
 =?us-ascii?Q?JD1GDhYJR8x42jtnmx+fVfk8fwG+b3lKdSTpvBiFHVzy/ky9jrH+LalFH1ei?=
 =?us-ascii?Q?o9B8iuKNC2vaRDzvLJBgBV3Xs7MoRGkaPAwKvwqz2HOyEd3XuldH1CrNq3Ma?=
 =?us-ascii?Q?qJbKwHBY3+tHnT8PTKXkufWlqIF+0GRYKDFTOYY+I+TZZN2TU1aFqAaRvLwX?=
 =?us-ascii?Q?W3ZVMClQdnPhoB29IbZPFt9BUTnTgPiGOOaUIy9W3ah3clfnSPsHO6epFWal?=
 =?us-ascii?Q?MSZkD7ryVrA4QdPKwsZdaun4k6A/7KO5us+Goed3hvHi3qXHv0DUgwIs8rrz?=
 =?us-ascii?Q?UWeX6OurB4t9ZIlIPYpyffLAvlQw4azeluvr4/gpTdLXZwIALK5Km0G5qhPp?=
 =?us-ascii?Q?DxrITAzCmTmtqNC/VLmJVb+lopzehwBsxM+TiipFaxW0spneHe7QcDtGDqIU?=
 =?us-ascii?Q?6b01wdlOFKz8mPgkIfVLxaJ+kCfKc9h7EayKXbH+kNCYbkxvOwxR671Hcw4F?=
 =?us-ascii?Q?5uizmyqLdDQWjmmKfECa6TtYAw7F1XKLvuFBtCl2na7nxHsCqhCe/0vKCScT?=
 =?us-ascii?Q?CQj2jwYlEqlGvWdupylL8Wr7wABVEyz/uMtkcEwlgh7UsZyzmzyHRICTi3WW?=
 =?us-ascii?Q?Hi/+rD5CYGPlz6sxiuw2TopVkPy7FTECGfId032McAgulviU6sV0/eEiARX7?=
 =?us-ascii?Q?04YwwrCLApBUbWI/9Kr6J/M273rnirTGBsWl56vu2ydT8CdQW0OGR3BlL6pQ?=
 =?us-ascii?Q?ziJWHCWNWPnetUfMrpELyMJYZnoM7IeErShPT4BPzfQWbzCXpFsrzhd5n5UL?=
 =?us-ascii?Q?kpdLxymj9p21nMtZrxY2dQhVxtzQUu1DaxwVTvCXhu9k/Joe0mR4RIIjlqDM?=
 =?us-ascii?Q?ZIdP1AlSUBx73pU8BOxud+QU64XDdaj3hi24psE3BcjbIukuXfmfBgnGSRrH?=
 =?us-ascii?Q?jhx6guNKzvO3FKUPbSCDhXB7mRgG/kr03yCClhye7i6amSre9LGVOCeuHM0F?=
 =?us-ascii?Q?47ywIHGM1umMzZSjvPugpBmPi7Qdl0iuUm9ByBxz/nEltY2pI6f5NDgrr+k1?=
 =?us-ascii?Q?I4tTNjDcY7oHuMrXLgMDhYWI84MhSz0NzUf7h57JOvuHazrg3xeMCKqXqXbT?=
 =?us-ascii?Q?ePr4/2Dur1a5X4PdNQ96Kmya1xyZmDYIEXZBuCTM5EZ8rybf1zvVEWnfboN2?=
 =?us-ascii?Q?ICTr6gmjh0rhT8uwQ91uqN+fBDE71LSXY0Uxop16ZjzcPVSr/HM/IGf4n45g?=
 =?us-ascii?Q?sCsP5Uu/UswIZsfemfkIANylaI0IbOZ0L8nnGsUTElCiUsOIz/jQ5rZ4mFHV?=
 =?us-ascii?Q?QA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ff9aa594-a375-4933-5264-08dd56b49540
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 22:26:15.6738 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vdRLkb2o2w1uspbOMFaMi++7LXb31lDUN4GCu4x+IAFBT6QCDmeSzMC5nVuXe0cDjOjsYhrAazgdR7lM1pGKJU6Z9OOw4FFnyJeowHYuLGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8335
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

On Wed, Feb 26, 2025 at 11:08:46AM -0300, Gustavo Sousa wrote:
> Workaround Wa_14020863754 also applies to Xe3_LPD. Update
> needs_wa_14020863754() accordingly.

It looks like this might also be needed for Xe2_HPD (version 14.01) as well?


Matt

> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index aaba438ab41e3c1c06d609593dc40dff33785d3a..67344cdbd8196fcca99af5311cf39d8e9bd810a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -190,7 +190,7 @@ static const struct hdmi_aud_ncts hdmi_aud_ncts_36bpp[] = {
>   */
>  static bool needs_wa_14020863754(struct intel_display *display)
>  {
> -	return DISPLAY_VER(display) == 20 || display->platform.battlemage;
> +	return IS_DISPLAY_VER(display, 20, 30) || display->platform.battlemage;
>  }
>  
>  /* get AUD_CONFIG_PIXEL_CLOCK_HDMI_* value for mode */
> 
> ---
> base-commit: 4a2f1c823287a84dc0bd46c5a93545dfe49967f2
> change-id: 20250226-xe3lpd-wa-14020863754-5f11f757cf20
> 
> Best regards,
> -- 
> Gustavo Sousa <gustavo.sousa@intel.com>
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
