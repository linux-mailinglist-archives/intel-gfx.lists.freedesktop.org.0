Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99DE298FD62
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FCB10E81A;
	Fri,  4 Oct 2024 06:33:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUw+rKrJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2164410E798;
 Fri,  4 Oct 2024 06:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728023607; x=1759559607;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=32YdTtbkzRiB139unZ2vwY3ELnb3FnoUxPrZEAyRpNE=;
 b=hUw+rKrJ8RCadaGqJTV1xuPyMHbY1vKzXAvwWgq7XJF4BxlkMXw+WOHi
 CaYivYYHO0dqT0vFcQv95YAmKSfNFWUzvKhZD4JqPCyMnMT9STJA/O91/
 GaP1tNe/R4DPbzXBBoEtVptNYFU26dGixOGLYjADpP4fW0xotGYFurZ6J
 th1o1bvdSL118h91EqNdf5ayTaelDDeG6PBEuR9nz366KyVlUHDyOnVVX
 vS6BKsxyWZpqVczKnj/sLYsAy3A1erBkdyTazqqQHY2DX3UXsRv0a8ukb
 El7coKe4Qtvw7Aro6/I4nZeGSzDOqAoo7O1/9J+q4a6uOG/2HgXeSSLWS w==;
X-CSE-ConnectionGUID: bnf1r9zvQK6pQAmSrRiyow==
X-CSE-MsgGUID: f63UYtW3Q9Sf1pt726vufQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27387184"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="27387184"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:33:27 -0700
X-CSE-ConnectionGUID: 6COeYjYcSAm9jD9b1zoRwg==
X-CSE-MsgGUID: cbVEROn9Qmml7yaGqdY97w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="74717665"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:33:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:33:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:33:26 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:33:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LTZrGFuPH47ZTwv+I47Uzc/CjA/2RYn9Glf/RFKcUmnoswJm6haQxCUOCWnxUk/8svRxFyh0FEG4j20K+C1iW3UUEG7qa8oKMx9hJSIV/24Sn1/QNlyrmZaCOuciCWhRbBEG94PU4rA4C5uW1/I8FXpiM1eW08y7A3+3V3qIIUSVErMCwLKIrFBi077i4FzPgWB4rWKu58i31kj7kj4b5yo77rSAtIKwtRubJZQlcViN/dvPMoeCI7oh0lfkyb25Q+w5M/6Nwb+V1om9PNAWmkAv50PJGj5HRBkiz241d2UsL/RNZBg7Ftr2lp8KjarSJBESLMkKJ/Ex6J0qGcW6JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lzMRTmTiWRqWMILM8WfhRb/EwuHmhzXwrLteUY+5IDY=;
 b=uBsHBQI9R0mFozgeCVyfsXaCJU5OlsdkDtU0yYzBUSWJeyeRz4ejG5LSFy055AcTFCavRtapghsSFxXTiQGIo/gKPEg7TG9B6CiBNeYm8H4x7uhhqfDGBC2pKlDtSfnTW/beL9z27BnH6FeqQGUczei0FMShBdTdHMKYqh9aieCzlLbJCyRwYlTMfGQ3m8wRY0RKWefmC5YvEjDIG4lNvQ0Anjnq4DyjRw15Xsl0LtP7MdhI8Msepe+CA9bQ9rjlcfSBH9Wxv8qO8Nh0WAkNqcHMsnhbBv8foyvCXtW34iL5JWaNop76rWLMXxCMwD07NRYUky4NOSEVHItINsbozg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH7PR11MB6475.namprd11.prod.outlook.com (2603:10b6:510:1f1::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:33:19 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:33:19 +0000
Date: Fri, 4 Oct 2024 06:33:09 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 08/12] drm/xe: Add xe_ggtt_alloc
Message-ID: <Zv+MJVO1fzSh1LHK@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-9-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-9-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ0PR03CA0165.namprd03.prod.outlook.com
 (2603:10b6:a03:338::20) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH7PR11MB6475:EE_
X-MS-Office365-Filtering-Correlation-Id: 9d3685e7-6e00-4ad6-d68e-08dce43e6fb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PnJs/aA7E0z4hnyuZZogiboslwnokQqoVZjr2NRWG14f9BLLjlGYceKr5/Aj?=
 =?us-ascii?Q?h4KrF1jDNigbej9Eukul1jPBbHeyE55FUqunBRxlrcxswUjeCMwp42RbJOM3?=
 =?us-ascii?Q?KmveobI9mGlUIC5XLHzXC6ijAVyC/8wNvuaCIIGwAxTUMzsnA+ZO4IZe+RID?=
 =?us-ascii?Q?6Dn9ZD1YysJwCXv1M3zRrFw4WK+hFqkqlrWEtIyhVz/H0r0Pd3n1MGAg/UBK?=
 =?us-ascii?Q?DvHttejruMZhLygKMAn5mci/tFBI0Vfx4wmSJxajx6k9gXilZsGTfPNZU+bH?=
 =?us-ascii?Q?5rVNiZcoyZfbHWvN84vrnh5htoaLNjWW1hjvy3/uJ+Ky3wX5wdwyqHY0tSE7?=
 =?us-ascii?Q?lE7iQRqGJBxK4qzYjVoUzF6f6qDLSExO1s96d3olxCgU/uJj0FiSNMFYmV+o?=
 =?us-ascii?Q?VN20IrBl5IrsmWc7G1QV/PcFbc3DwhJDocSZq97j6ENAB8pcrhiegZ8NBUjh?=
 =?us-ascii?Q?uONywVACDiSutJm8U+XplRlleEGzQsp6tsvE0SHUtceV9wDLCYkxSPDEDTOP?=
 =?us-ascii?Q?aoAaLsg06hMK/rKgDxaQ0grvI88x0Bq/8cIN1BD0aMupvuD6SiXr1cQOVpy9?=
 =?us-ascii?Q?3sSCJ/ecs58iZwk41UBe7uRah/KsNlaa06QYSgicOlqNoVPaocftxqRnE587?=
 =?us-ascii?Q?WVRbTrzkv5UKUcX2j+U4AvgQJ7xYVZ4f0mdzti8OPAvYgrNmBFtO/CMtrgNH?=
 =?us-ascii?Q?PZFg2H4Wn9f6utYN7uLTnwwM535Yebx/QF2Ky/X2487Icjb8beccgBa+W2rs?=
 =?us-ascii?Q?KPS/QN5YQE2LxuusMuoAjBkPM2sBAW2mT1d4F1Eg9a4Qwz5QyWSJcri0CoCT?=
 =?us-ascii?Q?WjLX7XxcvIdisiTKaRrVXwLATRWtsLJnKUS3JZhV0nec3eVBHGLqWDLVE5pE?=
 =?us-ascii?Q?M9JSCDfgDi0CaP8uIJu5eYSneclhgJhH57ZZwhpoCx3g11x4M2fA7coegbbv?=
 =?us-ascii?Q?vyxfg1P5wzOde5wEPvX4iWXN8vUQxY2bnapUY5ymdODViXGs7fvsf7rsWF6p?=
 =?us-ascii?Q?7fAPf3C2nOs9+yf0CCHJVhk2hPdqj+xho1mkb0SoG/b/XiPr8RWzDd31BKcK?=
 =?us-ascii?Q?1hNwyQ0O3uMbkWiOlMO95vQHXYK/ishjhKr61qSEYT6IO3iB/aNFOD1XZibt?=
 =?us-ascii?Q?UEuVcQlntWDSscrLo/MttNLkgipYyFFYans4eLX7YfNPtKimWFUofEq4lLqD?=
 =?us-ascii?Q?i0KTB6jkRDQBCvbR86oGa1EK1F4cgy2CEz7y/5bzztb9b0rJfZaKEOQhwn6U?=
 =?us-ascii?Q?VMYRhT7yqCmf31fa47cVRvWf/n13F1JKCQSPeWC5zQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Z09UiUi+5NyWxmwdzWiGs628KJKoWbI2/yq4PWYLzMLXtNpvV+YFt3QMuBaa?=
 =?us-ascii?Q?GEzf2ICFwjn6EpYMmPfIuenyeW5KC13OEfUzs//xIX/X8JEcPH3pptfkxfS8?=
 =?us-ascii?Q?lizcE+f+ZPd6uqviP/rnlBdmtoArDeWYxgQ14pBr+1/QWzkFysaGoRiedFI7?=
 =?us-ascii?Q?jb2OZccT7aoNpuwmOPgTkdpAKiWskW/Cf9Cp83RIJYS/41OunwLRi6DWeqv6?=
 =?us-ascii?Q?tzqUsEgi9iX12rrzhrlh2vQXb6cKopcPZVykQSQvS6xL9imv3Qct6Gm6FQw3?=
 =?us-ascii?Q?Vx5OMVD7tJRLzQpvb2dE7+1IvSy72I7DzV28Bjxuhoh2pIyjGDsN6U/8mxvH?=
 =?us-ascii?Q?lMtQb9QjWmPsx1snEDrjfjHEBFVj43jI3gWyXLi8PLX2GAyizwCd1rfl48Ma?=
 =?us-ascii?Q?DPsG1+JdMZcaSGBZM8H1DrjPkLqPLmHrqgBJpD4O+Meob66ONuHIWqdLxRPK?=
 =?us-ascii?Q?9e6FZxXXCn1pErPiBxu5Ufe4Nqpj8k3NeboMr0xpn6hdJ9ms/+a9/VqStEgZ?=
 =?us-ascii?Q?YAfusLDxKlhSMX3jDXb5q4zdmql+0Wdt5YJUGHSO+RreuMCeh6alTVl6kVk2?=
 =?us-ascii?Q?Ck3ce0a7OjzyCV7rZPyDq+D76h5E13VWcVtxnfl5jI4/DbfzbDemCR8iGs9t?=
 =?us-ascii?Q?X/rRTkIXPyx9/6sc4GRnlb7Eh9o/H0kXvy4RF+m1FI/li9AagolA2otQ+iDV?=
 =?us-ascii?Q?bSdRif893VEbLcpM8wt8YYP/TjvRHk7z+D5fgInTf/8uT2Tyg7lY2vbDj2U0?=
 =?us-ascii?Q?DrG2FK3f0kRKIzndGrVA7JG/2N9kZLx+fIeB0ChNVr2JyTPzVB9aqSo+M6Ed?=
 =?us-ascii?Q?LYH1x39XrM9yv+cO8F/wWLyCEugleEE9iBZNaSBzRLuL7mYxH4KtrcQZ1fHv?=
 =?us-ascii?Q?AuZAQk7jNSEk5Fl6ySvddwt+xyXcBs7t3b3EptKurVjLtV2JBzE9ym90eYEE?=
 =?us-ascii?Q?PzLiTD8/2q46qZZGF01Wj+5Sw3qKdSd/pkUu7xvkPu0SeVtlsjN5JmSXLe3I?=
 =?us-ascii?Q?WuYMBKKmAqITKX5j2TwH8S3YyIospxlidpder4gTPr9a5SC+ytwVHNQLp0QI?=
 =?us-ascii?Q?xWHmYwutoIQX/Lvz9jZ4YM3bl2vj3qXTqWHx2XZqSgcCG5feMTZerVB334p8?=
 =?us-ascii?Q?phaGGm+HCYmhiEpxQQjH2VlNqFl/d24zLlZwW8crZ6kqzIptRlbH6kJ1DKOY?=
 =?us-ascii?Q?pja9ZoDPSACEXW+XQyCVKq3EkBwEwBvWyaPn3/luBxfqh8J5srUDeaCguEDr?=
 =?us-ascii?Q?RxEwuvlYBF2SedXLK/28iFyC/fB2FCvxWWRb7sZg8sY+/22kSAzfWnlfFxLT?=
 =?us-ascii?Q?1ZJRwgL5IpsLzWXWhiDPcn4rn7f/Pj7dfAtuzhUwZNqOu4rZDjFpOVi70WFo?=
 =?us-ascii?Q?AdS5rtXcEFr5JFmCK1vFWHTtaLwsaDbj4DPp1YCOt6+f3JZ9A+Vrwbf3dVjs?=
 =?us-ascii?Q?9jJJpjDT47vGOn3BHQKgUuLbWlg+F51iVub8nfst66OPJwKIimHnll4L8Teh?=
 =?us-ascii?Q?grYC238c4SLG4MHx+noCPyLFnf/RlkY7+5ZTlL/Gea3MMw7Pyk1oTiCvTkPR?=
 =?us-ascii?Q?wlpZd8YOThMQmr6Lw/iZ1GjEebegbcRpZ2jXhTPf/cOO5WOSKqYlIFPTnPrg?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d3685e7-6e00-4ad6-d68e-08dce43e6fb9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:33:19.4163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MHaCv5tZGZZaqusmcQWtPP/VonlioLol+QUD8EGfohTXwU6ccEHURTpQROrH+dyzlm7306V6wmvmUlldukpWKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6475
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

On Thu, Oct 03, 2024 at 05:44:17PM +0200, Maarten Lankhorst wrote:
> Instead of allocating inside xe_tile, create a new function that returns
> an allocated struct xe_ggtt from xe_ggtt.c
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  drivers/gpu/drm/xe/xe_ggtt.c | 8 ++++++++
>  drivers/gpu/drm/xe/xe_ggtt.h | 2 ++
>  drivers/gpu/drm/xe/xe_tile.c | 4 +---
>  3 files changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 7e5a793651583..4866e9b252ad9 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -159,6 +159,14 @@ static void xe_ggtt_clear(struct xe_ggtt *ggtt, u64 start, u64 size)
>  	}
>  }
>  

Probably kernel doc as we shouldn't add more undocumented public
functions.

With kernel doc:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> +struct xe_ggtt *xe_ggtt_alloc(struct xe_tile *tile)
> +{
> +	struct xe_ggtt *ggtt = drmm_kzalloc(&tile_to_xe(tile)->drm, sizeof(*ggtt), GFP_KERNEL);
> +	if (ggtt)
> +		ggtt->tile = tile;
> +	return ggtt;
> +}
> +
>  static void ggtt_fini_early(struct drm_device *drm, void *arg)
>  {
>  	struct xe_ggtt *ggtt = arg;
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index 62c8ce636939a..0bab1fd7cc817 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -9,7 +9,9 @@
>  #include "xe_ggtt_types.h"
>  
>  struct drm_printer;
> +struct xe_tile;
>  
> +struct xe_ggtt *xe_ggtt_alloc(struct xe_tile *tile);
>  int xe_ggtt_init_early(struct xe_ggtt *ggtt);
>  int xe_ggtt_init(struct xe_ggtt *ggtt);
>  
> diff --git a/drivers/gpu/drm/xe/xe_tile.c b/drivers/gpu/drm/xe/xe_tile.c
> index 164751bd9af22..1cd4450305a6a 100644
> --- a/drivers/gpu/drm/xe/xe_tile.c
> +++ b/drivers/gpu/drm/xe/xe_tile.c
> @@ -86,11 +86,9 @@ static int xe_tile_alloc(struct xe_tile *tile)
>  {
>  	struct drm_device *drm = &tile_to_xe(tile)->drm;
>  
> -	tile->mem.ggtt = drmm_kzalloc(drm, sizeof(*tile->mem.ggtt),
> -				      GFP_KERNEL);
> +	tile->mem.ggtt = xe_ggtt_alloc(tile);
>  	if (!tile->mem.ggtt)
>  		return -ENOMEM;
> -	tile->mem.ggtt->tile = tile;
>  
>  	tile->mem.vram_mgr = drmm_kzalloc(drm, sizeof(*tile->mem.vram_mgr), GFP_KERNEL);
>  	if (!tile->mem.vram_mgr)
> -- 
> 2.45.2
> 
