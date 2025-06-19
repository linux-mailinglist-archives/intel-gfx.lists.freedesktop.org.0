Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13FE2AE0542
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jun 2025 14:16:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EE7A10E9FB;
	Thu, 19 Jun 2025 12:16:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fMNp1isc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C589810E9FB;
 Thu, 19 Jun 2025 12:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750335364; x=1781871364;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=+6mhN5jUdRAwBqz2y1dLHSdzNRy88Iew/okY9jK3hVo=;
 b=fMNp1iscx2d0H8Oos2IbTdb8hZkF6YpBg4y3vIaH28j73edaTj7o+GN6
 glmr4enouDrl7qsqPZewsJLrRDkGEVJCDYE7aTHhoOGMfP1UJIz8L93bm
 qeiX5z2kjYybtoetgA+3pyVLPTLlcoW4XLumMIIwdbfqxPp9MzdVZnucO
 kbMbMY3kQ3DoCqY/wsLtqbyykgliXfrCRmeSPPjUidSty4AQoip8djyo8
 +rh+Hv+x8VV/ir6ZYPtsSso0MdvRB2WbY7hyRTqkReit1rfmsNpSeoFwz
 nkhpqRT8MqowXT7Xw8cHtKiMdsVk3nTNSeDkJhWedTvwEZf6B2RP8d4qx w==;
X-CSE-ConnectionGUID: KTOXS+EMTueiQT4uAHt04g==
X-CSE-MsgGUID: KQb4y0hMRIStoaH3Eo61aw==
X-IronPort-AV: E=McAfee;i="6800,10657,11469"; a="56389014"
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="56389014"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 05:16:04 -0700
X-CSE-ConnectionGUID: zOCRFa7fTrC5DJkl4Sv+bA==
X-CSE-MsgGUID: MGDrTdiISciq8ImR9imZmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,248,1744095600"; d="scan'208";a="156444530"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2025 05:16:03 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 05:16:03 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 19 Jun 2025 05:16:03 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.88) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 19 Jun 2025 05:16:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=y8QES1RNeHpsjAokhFTUtHT052y4+pe2xNY7xrzTOYGtR0wNnhkDzQAagI3qWB07V69WBALFKVoI0DlOtYsfO+P4P2Eqf4FFOlPhTOkzlc+k54lOkGr+/Dtjv405WuJspsh52HNzIlY+LbizIymIq3ArEMlc+ncjGxASHnru81F7rXG9mCe3xH9GJIUsCY2Ny9z/MeFlnaWky9dLyIWze8gPuIWn+tThvzz/dzi9cmnz/pCenim0jYeT3FhH5+/sIJJq5HLun9B+2T8iLQFv7xM5tm7EoBvlag3Ib6SIX2i1XrxyK2v9Oqv1uTI3e+eOpEm+gQApDTuOrUKme9Tc7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vA97Qtkvfs+FH8Zi3lkg/PdNshiVxR270//n4sxj2tI=;
 b=BJqQAyVuvUiqOr+9yyDRn+m0BslVogn5Rxwg40o8qKzVEAr+fe0Kl1X0TU3aC538d3uoWtkKsNkxq0h/TtUmnwSz5E5LaqqVPhZqud6lhF/xmDpzf/Xvfr4LkB6tTaL3VLuZ8PT4W+MuIlt7944pbMe/h4wOHNMuzSWZHdFCWhfKbOfNpJTic0ZHpMjnHC4M/8zsrzr870JD2etXXmMuzO21761fdyqB4M3NNFuoBVT06K4BLy7FwySlxIsXhXmzDI65/mWwTRLoW2TQ8jLq8QNg4x5Ey2lrcwpv+9rMBJCImLNrGV1wh2hAhPe4VhfF/lPHXcgDbMQp/NnJl5A2Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV8PR11MB8606.namprd11.prod.outlook.com (2603:10b6:408:1f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.32; Thu, 19 Jun
 2025 12:15:47 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8835.027; Thu, 19 Jun 2025
 12:15:47 +0000
Date: Thu, 19 Jun 2025 15:15:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <dibin.moolakadan.subrahmanian@intel.com>, <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH v2] drm/xe/display: read PCON capability only when present
Message-ID: <aFP_bn-KyZQvkKd_@ideak-desk>
References: <20250619042629.3980244-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250619042629.3980244-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: DB8P191CA0007.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV8PR11MB8606:EE_
X-MS-Office365-Filtering-Correlation-Id: 682fd15d-0d15-450b-e178-08ddaf2b0573
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WSNcLEg6FYhHGiTAONVH/rRCm06DDKAdrZRHfYKlKhg+8+FC7tdc3fViL+cx?=
 =?us-ascii?Q?2U9Otm0XGXTrfDrESM+MXuDKHbkDLl5ucpdwPIKIBF1FignNjLswEDGL/9zD?=
 =?us-ascii?Q?OA4FMuGwnK5cIZbFZCDsESwyxEhmD19AVdPLuJOmBBtHLUkdjBh832QRm6Qw?=
 =?us-ascii?Q?M8XUVR3Zox15Az6KQtDq5EjaZO3rpIBEgyuoy6kNh6OpeXoisIKSK+zMZ5U3?=
 =?us-ascii?Q?6jAuye8Dyff9QqgI0BtQrzIoIpUUOi7eCIdZpCoFAzxkJ+n1IQ9bfIdGHYy1?=
 =?us-ascii?Q?70lWkIumPzPWP3Gy7EUFTeUTNQF6MOz2dieTtUlYU0OS67EzRcTLT6Pg8qxI?=
 =?us-ascii?Q?+3DANFZ65qTJiQxAEltkBwWkNbWOKm2neJVB92DTpHMQVTuduGebYNT98hCo?=
 =?us-ascii?Q?YnWrRxvtgBwsHTSWWWzFMevV6w/LLMGM/l4iTsx7sTRZhb/xiLvwZhrfYP96?=
 =?us-ascii?Q?zRI/geepoHk7cjrqWVuNQQOnCkr4Jon5qKgVr6h6RV6km6udz6v+4A3W42cb?=
 =?us-ascii?Q?Mr4vfvWAz4yRvymlXG2oqSLPnNgEKZ28KGs9A3lpCJv9ax/MKIzMKEtOWyzF?=
 =?us-ascii?Q?7S81SsX/Fn0JT2v3A0p99IYvpRh0mK4ym3LrMekyQiFb2rmDsTwHDDciyTWn?=
 =?us-ascii?Q?atMWkd1OuNE0rFyM3xnls5cAEVZdiXv27ndDtm0JVdJ1AnYpR96mLemrBSJa?=
 =?us-ascii?Q?Jpew0pVBo95SfbDGeMhTO1+R/yk6mXUaFvwmBJYH8aK+R3FbI2Hrm5FikW+0?=
 =?us-ascii?Q?nx8naBoA93ii/tDxVIkQunYF1+jM50EMKrMGgMixBCTe1DtV4yVPzW0jiggY?=
 =?us-ascii?Q?jvc+fIVJInPUTJu4LtFanFOdbacZHhleOfbLOKbCz18ocAf1TdyDko6YeKEr?=
 =?us-ascii?Q?bL8TD9CjCRo/zz8pPH5ZnYXbXHEY8BBhZhc3JVhymfDbKkd8nmUauEvf9SHx?=
 =?us-ascii?Q?8ta7NZDZc38PUL9Ocgrgv169Uvc+zS9cPHFHTDp28UeTqTmKbCMKCfdmGxF+?=
 =?us-ascii?Q?YX9Grtb56tOQ8h1f3B36t+sKxdQAAzXtQe1sg5JZ2QuuYoFtwJk5Fnle1ZK/?=
 =?us-ascii?Q?K3uI9tABp8zl4PtgMokFhaeUeD63/xEsBN8i4sZ9eqKC0ym21GiM45LLJllh?=
 =?us-ascii?Q?BaTyUpgahR4fdJc1Qa12W4nfG7wGqo4w7uOhCxuVrg21cnk/5SkGAqnd8uzi?=
 =?us-ascii?Q?1swl4RvJJMd+iQfbMJ7zIanogf1yxW/RgXUBM95erOpiqQsGHsKvkGglwmNY?=
 =?us-ascii?Q?7tAbpvvivsIJX3AT7azGrzPDfNQNpkcANT+QPURp2F/GrJ2gU/V1Ukicy0+G?=
 =?us-ascii?Q?/0rOxEeUHOy6SOWTwh9r4Q4rKHzZ1SuE7fdXzYFXpZWy9C6kbs1ATorP2t4V?=
 =?us-ascii?Q?ePXa3VNrhr6uJwNdk/tFyPYgcwDZAPdJ5Njsk3F+Vztu0y5GE+THlkfvDW8S?=
 =?us-ascii?Q?g78FHi3rUKA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mwmr9HYob/DLPXeu5ym+1vqg355oJ3lOxeXVP7wyyU2qiHTBpWdM+SihraPE?=
 =?us-ascii?Q?GxULHHCwsQBdi/oc0HFUhpES5tR5zupN59hmb2laBemdfn/uD7KEOb1Jj1Ws?=
 =?us-ascii?Q?kq2RU5/JsLzwtHq/phH1HPaRkaohgtqWeUWnoqixR2Bo7gUkPRx62Z/ITe7M?=
 =?us-ascii?Q?zv8Btt1tqk7BiW2Q7P2sbiRXkD9vs7gpnn4jtwFIcgIPwHBWb8adUnndKw5X?=
 =?us-ascii?Q?A45XZ9gOLqqIgVVMbg4SUEp0rnp1+uJvN056DQJY9p/FiX846taepGFEN48K?=
 =?us-ascii?Q?YX49ri8gbJOMOCJD5/eYpF/mh46HHUaNzXLtDu8N3XS5LffzPmVixA9KrFfp?=
 =?us-ascii?Q?lqh0K2/vkzYkkrbN6KigoToBgJHCJOfyuaXRqmzyXRxXzLvFdZH+p4m2Znjk?=
 =?us-ascii?Q?ocsxsg/xEfU4zUVVbCimAYs0FrvDHZCyKtesD3rsqVEFUQ5bGh0Lg58j5UnF?=
 =?us-ascii?Q?ZGx6aJ/BBH3ApIENdkUhHQIVx87K7lEOe/hjEgdM7ae2sxmdNMF/F1Ub4JiN?=
 =?us-ascii?Q?NQg1K7ZYsKebTD8lUKtOYyKyIoRw7da6Hn2ePlpcffBPv2c6xbht8jk1AepL?=
 =?us-ascii?Q?HqUprGKhXyOjQQ1k43mIA7Mw3VRFHqKa3Emya5Pakr9ttd0z6QmqaJqNK+1/?=
 =?us-ascii?Q?qehhyOpptb4twZDaOZ0fHAviu8dC6nHn5Xi6qUUUwfyXsQGx5hlQAIcvy8bJ?=
 =?us-ascii?Q?z+C524FrdH1iG9W7JVBwT1pHKR34TZapDoy7B0R23ZRwN3KTy2EKcvhsOx2V?=
 =?us-ascii?Q?/rQM4ZS6H6+3lVezFKmEQEn1V8Guip9czBTlcO/sDPjrG4HZm1iF3kUV7XGz?=
 =?us-ascii?Q?qcNRwWBLFzB2zO8S0ob5HJM3yReD8gH19QFBp4KhYBHS8ysdhn+1AEEaWppw?=
 =?us-ascii?Q?2a4clQMD3DO6JXeqSX0InhC0SSTp72JysPwBM93WPSOCe0RxE+1y+dHofyuG?=
 =?us-ascii?Q?jvpDiOcIRI8pJRQSF/c/6K/fczZyO9Ne5Ur7RQ8V781tuvFkzZmt6P2youjT?=
 =?us-ascii?Q?nJSowUgLQO1K9s8yM+YP+FyQCBUs2Y0u5oy0PU8vR6ULZNtCrwQXIate5ftl?=
 =?us-ascii?Q?vXmYAab96Vosvgtf9VlWtEspztZ4291klKodGJH89eKQ9uihcTq/vD3Llc1w?=
 =?us-ascii?Q?O9zFzZ1eSqNnvmzXldSKMLGj+Ls57fonb32HzJXMuR1IhwN3reDbv7ZrujMi?=
 =?us-ascii?Q?5lqVsSyRFF2lHpLz7Utx8/OnWzBDBFcBPwFkX0KifJUdSDWOZ5jKx7OO04VJ?=
 =?us-ascii?Q?dTZwo0A4unpYf790P4FTXkY2r604uJQi2nb53u3/PFA2wUhgcwQARrOFadQo?=
 =?us-ascii?Q?x8BKt6y9lLAmdfS5Os8SVBmUjbf8sqqL+e3k6/tppKjZFfEQ+OrsNcgb2842?=
 =?us-ascii?Q?KmQ0BtZRxDKqbnXBEb2vKU2Bqq/DtQcH3SXUTe1b2kAFP0OllDZMT3pOdmos?=
 =?us-ascii?Q?LA5j8nLhTOThoY36bqx3h2bWeAbpbUtV/rA+6UIZ6ixenfDrCljCOxfEqg1g?=
 =?us-ascii?Q?ZT1+O1PCsUUT8qm//QbXH28NX0fokUC2gzV39v+tvP1Ytqi9jS2NPc5jBlLx?=
 =?us-ascii?Q?HDF5Suv32LFjxMvUq1sL35+fDdYGuqLjovyz8wQj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 682fd15d-0d15-450b-e178-08ddaf2b0573
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2025 12:15:47.2754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wzLotDRuvGI83lWYY8/ouxpRouFuIeEihSL8U1G1qjDDXeilVP0BOsAIt0lr3kbAqPhJvePtwQSTh70Q5IP9DQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8606
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 19, 2025 at 09:56:29AM +0530, Chaitanya Kumar Borah wrote:
> Avoid reading the PCON capabilities redundantly on non-branch devices.
> 
> v2:
>  - Make commit description more accurate. (Imre)
>  - Clear intel_dp->pcon_dsc_dpcd irrespective of presense of PCON. (Imre)
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948..f48912f308df 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3726,6 +3726,9 @@ static void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
>  
>  	memset(intel_dp->pcon_dsc_dpcd, 0, sizeof(intel_dp->pcon_dsc_dpcd));
>  
> +	if (!drm_dp_is_branch(intel_dp->dpcd))
> +		return;
> +
>  	if (drm_dp_dpcd_read(&intel_dp->aux, DP_PCON_DSC_ENCODER,
>  			     intel_dp->pcon_dsc_dpcd,
>  			     sizeof(intel_dp->pcon_dsc_dpcd)) < 0)
> -- 
> 2.25.1
> 
