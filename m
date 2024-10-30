Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9699B584A
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 01:10:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE46410E735;
	Wed, 30 Oct 2024 00:10:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uj7mTtmM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8608110E733
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 00:10:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730247022; x=1761783022;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=LDGjFJBHVtlON4/tZ64jhNtxBXMmEQXsVn6qoqG6sVU=;
 b=Uj7mTtmMmUj3zCdebwnmYTN376qgbAegOs2Uo2Cmk2TW94y6hrKPgg2o
 XcYgvbcbKf9K741a7diyG2CAYuXs5xMbg0wR1TODIhPuausKut2DnIVHQ
 kQU98E+0UKM9Ycc/KSTRVMN0xoVkGJJBxnf6OTEXrY9eeSV9XXq1MBGJP
 2RdGv/3WDATVXUdPt6fFoCboUnFXvB07BzJ2ANC6Cc2tL37O9UFyer8OO
 jaARV8Ly2TBvrBj1XSOJeGN3/vLei3zkurEa08xR87RnEJx5YOMs13dRN
 qp+eVCeMjrstHfNxcoU9CGrcuJZYl8ipmOaTC8Oy2Fwb/P1EzcV3f3r7Q Q==;
X-CSE-ConnectionGUID: ekQK1yXgRr+xFisuQaChxg==
X-CSE-MsgGUID: ObHnHTcNQs2uxqgUuUyJZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29771156"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29771156"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 17:10:22 -0700
X-CSE-ConnectionGUID: RKu2WUpYSLeZl/DPoiErqA==
X-CSE-MsgGUID: YklX3SK+RU6e7T6LfJ7B1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,243,1725346800"; d="scan'208";a="105452322"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 17:10:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 17:10:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 17:10:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 17:10:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JJX/yeKsWta3sW445+OsGcaIRQP4hTvwnr8/JYlKfKEglhQC7zqTOi25njZJiZiHhnMcZU/U3Z2Xj3iR/wKdia58fFNYoKqQIGsleeL/9O/AxdWyCcXpxJz88sGvZXr8k8mvRfe80mPJ5XTY/s6+89ZKd1CKFTPky1lWIa0qKn7iUgSpv+JsRCK2oQckL7iiCgbZeeLnALRX6H9bZM3I/2Eoy9l+KC+/GGUtr/oUhSF2OC/61TbuxsfiANgaEjONxKjWMZF96c9sydhDNn3l2IZ0tx40A5D48Ie/TEBs7+61KGw/CA/YqvrjHTr3Cy5108v2oUQv4rDiHyUaVTH1OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SchwVhec4fmDmqjzWeEOJ2XTpFKo4xsgBXBumWn4NbA=;
 b=bbFsGdIWZwSYPbj/FrmJvsWJa0REr/wTAAKW5XbdBS0g8gioflH77jqGSgK3qDjv1JIB8JSqo/Mav4WXsbJzFuK/GxQp6v9SLvsCCB0dPX4SnWY9cY5sRy92cG+KhYycMhuunW3qP8nfQE7fgtTBorvgvTCFZt6risuTxaTu2/TnAbLau8Cbm/VvS+efwa2oYGrDwUSwozIJ+/ax5kVWifyFqyGqw5QIEuZSWlxth5S6IzrwdHnaqIsIw63Imn9TTyB9gtLyUXW454zPcyROqCNh7yS3yvyUg3MNIZcuxzeBz/3+4+Q7QmzsFlKtbdZHHBZw9v5qvsyHTXptn0RfFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB7454.namprd11.prod.outlook.com (2603:10b6:a03:4cc::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Wed, 30 Oct
 2024 00:10:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.027; Wed, 30 Oct 2024
 00:10:14 +0000
Date: Tue, 29 Oct 2024 17:10:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Tvrtko Ursulin
 <tvrtko.ursulin@igalia.com>, Umesh Nerlige Ramappa
 <umesh.nerlige.ramappa@intel.com>
Subject: Re: [PATCH 6/8] drm/i915/pmu: Replace closed with registered
Message-ID: <20241030001012.GD4891@mdroper-desk1.amr.corp.intel.com>
References: <20241011225430.1219345-1-lucas.demarchi@intel.com>
 <20241011225430.1219345-7-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241011225430.1219345-7-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR06CA0070.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::47) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB7454:EE_
X-MS-Office365-Filtering-Correlation-Id: 4eb0b19f-a281-4c41-91a8-08dcf8773a61
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jU+SunnPzPAfYUYidut94vF84PN+r/q2dsPQqxdZpnPWu6NEAKRvUaD0dRHR?=
 =?us-ascii?Q?wCrCeG/atSGfuwTLbYVncSRXjBgIpP/7BZjvu8zwIRm3qn4cDq/ZD2FSslyn?=
 =?us-ascii?Q?ztqFG2yFpna57c2F1ItDubuycNxGjj9LqRWhyPchxcggo4zJ9PDZa/FJeH4b?=
 =?us-ascii?Q?15XVJCnWP3mjbv3v+1HvC5BLer4M5kK0p0k99dPIuRmYhcAJttcXGWUOuVjz?=
 =?us-ascii?Q?qq5BxzxyEDJijhHNUTJgcpubZd6v+gmZDBVq069LuPY7kpmg2X6+bndKP8oO?=
 =?us-ascii?Q?VC1lO7tiYo5J21rZbj08/Boj0HA+uY6mj+ldJwgCWTrDIEhVq7G9PmhRcnrb?=
 =?us-ascii?Q?7sEQ6z9mbDzoXCXeHV7Cv/mzUB9v/zYb0O5+1CI4n3Y93hum5s/vNBfDkzQM?=
 =?us-ascii?Q?wZ9uQdzdW9sJAIRtUhnv+XjZSHgRslWvPID/BPtZ6x/SALteyL/o13Ehbb95?=
 =?us-ascii?Q?O3PrTLAaW4EbVp/1Aik6TXvNwNjsT0IdMMa6ySsNCSSxigxgOkcBVOiucmM/?=
 =?us-ascii?Q?MV95ArnUYJ5jq1r5okaxIUPEWAvFgU+I/INV1v4XfL+YUQ6f+Mqf7f7FwC/Q?=
 =?us-ascii?Q?+x3xg4I7VrTtySkq9j+cGnOjylvhByeHxluqqTRUGxBTK4JGg0Jh4H3atOdN?=
 =?us-ascii?Q?wpitsdNhut0p8Y9kCotW9beHtVY7QyYO/Co8vTjqRLQUZnHzQVjUS6dzsC+R?=
 =?us-ascii?Q?KNrEuS6zU4f79c8m+r1mH2iYg06aoKSytvAdeiP8Q6fJhLQ7es/OlrQU1Zk1?=
 =?us-ascii?Q?g++cDpwWjz3GKFnS6IWSXRf48+SuRp6EtfxT9eekjo0Gp9gdcYMHLrBNcDAe?=
 =?us-ascii?Q?W1Jxky3F1jsrd8gLr2nbrYQIvHBWRP+p+d9uH2aV7nd1F0QlmGp+zJwZBcWI?=
 =?us-ascii?Q?3GWOHIfTi4YqPK1wNTzN8LRQytE0dV7lIcHqfA0Iv9jhiUFhzLQkjJii4prE?=
 =?us-ascii?Q?wotBIw9xK8hNyDXPa4iZY5WuIr4Z/Qa+d74JFOH3QLLCK/B07EOklczgUZce?=
 =?us-ascii?Q?aOI/B+/RReaFG+gclY0V82z9oTnUKi8tQCDX+7YyCayY+t8RuyQehJ5tJMX4?=
 =?us-ascii?Q?gYZzI+frF1OAa74ptOW+gcPqrZNUSsQ7kKL5+orlfafGCPCzRDWJpbloC+Ny?=
 =?us-ascii?Q?8O8KTIuXsyD1c/OLnLCvRE64NOSyhiAIuE+XhC0eFCN4yxqZHYbPbGYH9RVM?=
 =?us-ascii?Q?pjMi9fEgIdtTLPNgpmH18UKe2QMj95G+INnJysHRvHRBgEtV4qoqNuHduTgJ?=
 =?us-ascii?Q?Mpn2XkbsvLe2MZ71VeZBQMXwsEpn5C3VHuaQf2Lgagn+gGqjp6P9TDZ9G9Ly?=
 =?us-ascii?Q?k1c=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h/kPPDA0iWSnuHl4umQTwJX0Xis5qO361GxV7JgpDkK7ozUuRkKOdS/WzrZM?=
 =?us-ascii?Q?vg+USKrzXrRzdP36vX8a6uL+W2RpaGW5Cyqxgi8/2Cls93AqSmzWOL+RSnw0?=
 =?us-ascii?Q?833eCMMP917PKcEN1ehy9KjqsX4YCcEZHErZSrRDaXepShq14Y4iRvg3U+Xa?=
 =?us-ascii?Q?wvSEgWzNvnCvd0syOwyaKGQD0cVkvKuWQVy4ZUuSM5pUpZsw91JztCbL1B8Z?=
 =?us-ascii?Q?g32DBbMygCvy7bafIch5AfZ/rvmoh2E63aFH7f1CNosoFiXaPS5oKVVe6mE7?=
 =?us-ascii?Q?dc1SPLIr3/w83vtIydE1pRk/woGtj06ldJd9WK+2BKWVlRZRpNTLd/WEO1+1?=
 =?us-ascii?Q?FkniRM6Z+iHboo18Lwn6CBRTow7/k5jY4eBXkmXIErEfiqndhOY5Rka//7tP?=
 =?us-ascii?Q?zEIQ5Jfm2xF2dLFj2oi5LZBpTz8LduL6zxL6FJ849cn904to4xdY15ceJA4a?=
 =?us-ascii?Q?SibuWfvf0dfyMos92ll7HhRbTdoxjX5AsXB9YJagriTLebEbVFsdnl4rlqdJ?=
 =?us-ascii?Q?DGpSvhED5mDFux4vPTbRJnokEBwJOIipxx+TacNwLA/4U3HpBRe1jBEqkMZj?=
 =?us-ascii?Q?l0B1qdzrS8LVVq2J033N84drvamGE9Gf53ls0HI3REcRt9klgValCgoPN4/a?=
 =?us-ascii?Q?q0UOygM6nccHLAa33FCQt02EuglhR5nK1PMguYhtNR3/phKmysHq+3qcWwU2?=
 =?us-ascii?Q?DmMdDpxF+N3kCE5S1EmZaH1g1ulYBmLIAqcsOJxfI9bP3TU2wLCkuvuF8K4v?=
 =?us-ascii?Q?+V8a0Y0As2WKcNdPyDQ/w/xrO3P1FrVFPrrdmV+SLRKuOwBWkh0WNOlNda0e?=
 =?us-ascii?Q?1qHKh3mUfYWP9JTFBxFMjQuOlqtFrUwIiRNylx4Te68o7moKdHPkbNjIEPIK?=
 =?us-ascii?Q?n9XiBs31MRWLwbxP1OOw6wR3QWW+SF32yv4hSY+DofSLa6Cq/zvxDym/sKYi?=
 =?us-ascii?Q?Mw9/zTgStmsVwMsL0bR+tZx7FWtkRMuNmThh8Q6BI5bsbreqbhAc8j0/GsDD?=
 =?us-ascii?Q?6phGbHItTPZwhiYrXpOa3hU538JIsiqMOXvQR7pRBGrOVy2LKbrXyokHzmfE?=
 =?us-ascii?Q?VXmDrqUJX1pBGSPL80D09Ne/luqrB1FS/Kv/2BF1JpMQzeZ6pA5wHc2ioVGB?=
 =?us-ascii?Q?scXG53m4LPJ39aywRq2Pn5qS2MC2Qhx3UPivG1jOKEPxag6lChQvS252YL/a?=
 =?us-ascii?Q?POnKmOWtODvZWmx6KRfYw7vcz0hzSVvadzMBYtOx8q/1A51PmkWVHFmWTDoz?=
 =?us-ascii?Q?8FjW024dT8xR8jaDE2u+LV2D1iR9aKBV/yrIf005sKAlIZk9PH3DM0X0uFwz?=
 =?us-ascii?Q?5AzU8/XRC1OP7YZxi65630ZoO1uCLI2582WGRB9P3dt5VIvUfPIpVxgFTQlJ?=
 =?us-ascii?Q?KhZBaRY9LA/z/L5Q1UkAxaaaErZTYGtG6BBkpQbUqrKYyKfzaZ67E8AR2bQW?=
 =?us-ascii?Q?LZ3v+siA7BE/lyrIp/kg1ZUxw61+TlhGirmW12PX5LKnHSLeGJ4ZWr6z4Xvb?=
 =?us-ascii?Q?6GAWNvlbZEKw897KV6wLz0v5SJeX9nvzlVBLS1mWlPDwHXuSi6pqfdDlOj2+?=
 =?us-ascii?Q?50WmaCzxLDTNOmeCqhou8f+vnnP7i7HV826lNP3Op40X2gKtDJqkQ+s33yh9?=
 =?us-ascii?Q?Mw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4eb0b19f-a281-4c41-91a8-08dcf8773a61
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2024 00:10:14.5879 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yeGYZ7SozMRuZ4eBsXZwIGOmNjK7o7jtShK4DuD/wRhXnlv9rSE/WQ5fk+AbkdAb+INfH4Qd92uj7JbpYuMtvHOZfPKqXuTBjTsbuEvgXus=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7454
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

On Fri, Oct 11, 2024 at 03:54:28PM -0700, Lucas De Marchi wrote:
> Since i915 calls perf_pmu_register/perf_pmu_unregister, let's call the
> variable "registered" so we can flip the logic and rely on it being
> false by default. Looking at other drivers, it's also more common.
> Examples: arch/x86/events/intel/uncore.c and
> drivers/powercap/intel_rapl_common.c.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 25 +++++++++++++------------
>  drivers/gpu/drm/i915/i915_pmu.h |  4 ++--
>  2 files changed, 15 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 409e10d8190a8..e28c29bae2d9a 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -303,7 +303,7 @@ void i915_pmu_gt_parked(struct intel_gt *gt)
>  {
>  	struct i915_pmu *pmu = &gt->i915->pmu;
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return;
>  
>  	spin_lock_irq(&pmu->lock);
> @@ -325,7 +325,7 @@ void i915_pmu_gt_unparked(struct intel_gt *gt)
>  {
>  	struct i915_pmu *pmu = &gt->i915->pmu;
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return;
>  
>  	spin_lock_irq(&pmu->lock);
> @@ -593,7 +593,7 @@ static int i915_pmu_event_init(struct perf_event *event)
>  	struct drm_i915_private *i915 = pmu_to_i915(pmu);
>  	int ret;
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return -ENODEV;
>  
>  	if (event->attr.type != event->pmu->type)
> @@ -686,7 +686,7 @@ static void i915_pmu_event_read(struct perf_event *event)
>  	struct hw_perf_event *hwc = &event->hw;
>  	u64 prev, new;
>  
> -	if (pmu->closed) {
> +	if (!pmu->registered) {
>  		event->hw.state = PERF_HES_STOPPED;
>  		return;
>  	}
> @@ -812,7 +812,7 @@ static void i915_pmu_event_start(struct perf_event *event, int flags)
>  {
>  	struct i915_pmu *pmu = event_to_pmu(event);
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return;
>  
>  	i915_pmu_enable(event);
> @@ -823,7 +823,7 @@ static void i915_pmu_event_stop(struct perf_event *event, int flags)
>  {
>  	struct i915_pmu *pmu = event_to_pmu(event);
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		goto out;
>  
>  	if (flags & PERF_EF_UPDATE)
> @@ -839,7 +839,7 @@ static int i915_pmu_event_add(struct perf_event *event, int flags)
>  {
>  	struct i915_pmu *pmu = event_to_pmu(event);
>  
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return -ENODEV;
>  
>  	if (flags & PERF_EF_START)
> @@ -1186,7 +1186,7 @@ static int i915_pmu_cpu_offline(unsigned int cpu, struct hlist_node *node)
>  	 * Unregistering an instance generates a CPU offline event which we must
>  	 * ignore to avoid incorrectly modifying the shared i915_pmu_cpumask.
>  	 */
> -	if (pmu->closed)
> +	if (!pmu->registered)
>  		return 0;
>  
>  	if (cpumask_test_and_clear_cpu(cpu, &i915_pmu_cpumask)) {
> @@ -1256,8 +1256,6 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	};
>  	int ret = -ENOMEM;
>  
> -	pmu->closed = true;
> -
>  	if (GRAPHICS_VER(i915) <= 2) {
>  		drm_info(&i915->drm, "PMU not supported for this GPU.");
>  		return;
> @@ -1316,7 +1314,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>  	if (drmm_add_action(&i915->drm, free_pmu, pmu))
>  		goto err_unreg;
>  
> -	pmu->closed = false;
> +	pmu->registered = true;
>  
>  	return;
>  
> @@ -1337,12 +1335,15 @@ void i915_pmu_unregister(struct drm_i915_private *i915)
>  {
>  	struct i915_pmu *pmu = &i915->pmu;
>  
> +	if (!pmu->registered)
> +		return;
> +
>  	/*
>  	 * "Disconnect" the PMU callbacks - since all are atomic synchronize_rcu
>  	 * ensures all currently executing ones will have exited before we
>  	 * proceed with unregistration.
>  	 */
> -	pmu->closed = true;
> +	pmu->registered = false;
>  	synchronize_rcu();
>  
>  	hrtimer_cancel(&pmu->timer);
> diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> index 41af038c37388..3c1cf594954d9 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.h
> +++ b/drivers/gpu/drm/i915/i915_pmu.h
> @@ -68,9 +68,9 @@ struct i915_pmu {
>  	 */
>  	struct pmu base;
>  	/**
> -	 * @closed: i915 is unregistering.
> +	 * @closed: PMU is registered and not in the unregistering process.

Missing a name change in the kerneldoc here.

Otherwise,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  	 */
> -	bool closed;
> +	bool registered;
>  	/**
>  	 * @name: Name as registered with perf core.
>  	 */
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
