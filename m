Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 278F98271CD
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 15:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 800FE10E241;
	Mon,  8 Jan 2024 14:49:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFD9210E241
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 14:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704725397; x=1736261397;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ihMUkb0tL+NwabXhw06csjfxejcjd0GQ6gId/+OfuIc=;
 b=ScL1PX07quhNaFiQeAS9s8PNVyELj+WbuwqBUGMtKDK2lCTfrDDY/VfT
 MBKjGYdLFNgbDvuSTj+K55f139nZUKk+dJUtwjHe/sky3ZSakAc6bYieH
 lYHXm+xraMY/GQ2BkT8Rq+k/bRe/0SONsgB/QjwFCzHComM/DofkuVTpl
 MQqtLXmrHu/5tB5zxbBDFxq9+DzEnZ+yIIqtP3yhz1X3Y31dzQuQGHXuU
 3DMT4zEYpIAantYf6LQjQbNwiTQUZwcDPjTCp8VxTiW9VwYNGoKr4jdXu
 Mt++Oelt4mX2RAV9Y8hMUO5S7+r811LBf2P5cWrKnq0MuIMk3WxgpR7uD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="396783499"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="396783499"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 06:49:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="904823609"
X-IronPort-AV: E=Sophos;i="6.04,341,1695711600"; d="scan'208";a="904823609"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 06:49:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 06:49:56 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 06:49:56 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 06:49:56 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 06:49:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n8KPPwVdkX7xIuHtiOSmI8LW1LiWu3NtVGOmzNx+6l+mhG41n4sBKBh1PVvuLB9OK9Pwwril9zSS0KAaZuXfUo4nhFY/cAl18HOqnr6k2SfY8GmL7DoZEp29kgvrDPqEIiQ5ZbdbctM+4pTkAfz45sLdttqmMV6LffJQVZmhyPj//USFGbmaK3b5/Y+B96xdOG8MESPoUSrB3mOc8X6hNwhtwNhpi4X8Ox1BhIJH5ZqN6FAssNM90sAj6X6izoKw1PJt20sP62EFUwhNmiBWExzwNlUDngSdHuJZG0VUF9MqAdECHb821oes7t0NUoo3s6ZKNg8eqH0BWFyeYYRceg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mjAmfqCR8CDvxr4FxtR+jY/kS2OBp5Fbi8NiSrCNO9A=;
 b=W4t3uYjvvn/VSLIuq/xc1z5Ef8lgy1Vm7x9Q233nSLij+9Un50k8PxkRUpvXAaq0ZP+sBOBB1QalnbmwB9BFRlkInWHFhX/IcDb3ShqU3lJhrL1vaoW1KSGhifxMAEpuCTRK6vDpEEjUgziiKGXUETxJOvI6XqcP3oOFv5k78OJ0y7wUdL1O1mUvLj9UdehJvZdWC/2ArtPDckN9UKJdMOtRN8F5hWTKRLYdntfd+Ylc5uiXOlyvFNdNaIqH4Z3IGSzfouPe1kKZXZi9eDRffMNuf3B/bLazZZeYwNtRd0Eg1W89vzQ6yDdOxnnuCRDmAwQRVgphqjYq7Zl+f4Wckg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW6PR11MB8437.namprd11.prod.outlook.com (2603:10b6:303:249::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 14:49:54 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 14:49:54 +0000
Date: Mon, 8 Jan 2024 06:49:52 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH v1 2/3] drm/i915/xelpg: Extend driver code of Xe_LPG to
 Xe_LPG+
Message-ID: <20240108144952.GD1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240108122738.14399-1-haridhar.kalvala@intel.com>
 <20240108122738.14399-3-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240108122738.14399-3-haridhar.kalvala@intel.com>
X-ClientProxiedBy: BYAPR05CA0036.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::49) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW6PR11MB8437:EE_
X-MS-Office365-Filtering-Correlation-Id: 40abbdb2-8bc3-46f5-7ce2-08dc10591375
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kQ6RU0i506cf7d5nnK42VAyMi+bqM9pToo5fhqafI+7q1u4jyBvqTgeKvzuC2AW6fgJxiVFqGV+8Pzql6TYMOM8rwvvi8N9xmKyFnK/ay/x04sX4YiXB1E2h5gZ3OuPTKiFQoLmzvu7fkg/Pv777HQvCVc6CX50AcZKiqmId2bye/bYCEh7V/J0WA8UXNJ4ffE/abOjr0mG81gBxDy+SmuiCFAmYFBU626AWsurIAap1RVUewt4T17RLkZeQ/CnHyVAjGEV1G3wMq+h1E5zT8tXw/ijk4Qr+BO+P17mw3ra2QpPViMwmjWOiCsZkTR3Ezjpezh04cmM8BoI3KMk4WO53r8OVArusSzgaUh8DmiE3gFnygml+rp2Qn9/MsO+ULrzcb/JmiDVaiLvWd2ZNVdc1PSYsfBs8N/CeMaDcRrXQSJYD5JEbgw20PFpqKiqzYnchEuCmd6upwOmMWGsD1J8RuP7Y2IHg2eXbf04IBvR6qYVxRDOSPV2hxYlwhqXHZLRrRGk/aUasWdi6UQTVno0E/cp6e0r2OhpG2MbVeclwKtpAttYZ6U5pQCs8uZOe
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(396003)(136003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(2906002)(6486002)(107886003)(26005)(1076003)(66556008)(66946007)(66476007)(41300700001)(33656002)(86362001)(82960400001)(316002)(5660300002)(4326008)(6862004)(83380400001)(6512007)(6506007)(6636002)(478600001)(8936002)(38100700002)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3DqoyTfQmNiKlzOJNw663rmPjUPvuWitKiJfa9ByzBR6PRguNiIEtj05jCDU?=
 =?us-ascii?Q?mx9Yd/2IT1W39K0pjS7kDl4DhHO+7dMw2snkbQDUxwxlu8/gwBva8AHAEA/+?=
 =?us-ascii?Q?VEhEKKC2kNyOiVcfKQaDE2EpiYxbiW+71Nkb0GwfdYVdr212BsmF062wa5N3?=
 =?us-ascii?Q?ffPo5YcuVM4GI/O2ip2cT8jSmwXDQbhb90BtjcThAP1axgvaY44uc1Z5J03r?=
 =?us-ascii?Q?bQtyZdmPaSf+OczY88KR3lieX+Jof/1jFGA5x+u2MFIN5kcwsoSgdkg2rULj?=
 =?us-ascii?Q?GBLgbsSO0Xawk8GGaoNrtb/HoRg+GYrx0rpdfMP2zo62b6GH+OHuocFGVsqW?=
 =?us-ascii?Q?Yq+R1sVU6R08Y9U2mguWJ8hNMirt3cYgqq/IitTu5iaU2EM/Ybmp1TuZAStB?=
 =?us-ascii?Q?GO/qTofkj+yrnsv1JcS6Wibaf0GowZuycqg5Nr4yySnf3+IbAkMYGKS757K5?=
 =?us-ascii?Q?QR+EW/YXOX2UZ25+poeDK3hWd1Zu34XB453pc18ayntkuNTZAUq1KmWZh9bi?=
 =?us-ascii?Q?S817vce2SyFZFrUuwi9XrWDnws7ywMUnuqPXf89K7+d2VPJ2awDiGQtU7tLX?=
 =?us-ascii?Q?mNulNHbJZryStAYfAXJaqzggFxMU0CyMg+sivTwV0ovuhApR9GPf5fk1QdxH?=
 =?us-ascii?Q?5W1Ipl21dQGO8wpSkYrVf8mXign6pVhH7ub8/TK67c8IftgemPRVh2nOMdcc?=
 =?us-ascii?Q?Vn34Wan+cjA6DshBGnmnJPhTqnhAu5Ew0tQAV7abwNuasx886Xc4O9SgBPEv?=
 =?us-ascii?Q?x6+3P6zCe7JTKs7GRBX91sLoO3EpSq1yzRiiCh4+JQG0hVyo508vvS3iS8oy?=
 =?us-ascii?Q?fGjtIQ9j9cZIf+f+xyF6UCcZAUxJJUg2UiO7C+viJec+oFXp3sZh7nK94K9z?=
 =?us-ascii?Q?/SSHFXT/vapJcj7KpMIC3DF86i7JARVTcQpFhiRuB2BX6NHFCZPMi/E6Lnbu?=
 =?us-ascii?Q?k76lHJAqCJ2lATqqGlrqJeyRSEvz5/zn80H0sO3NKtPOLKcszXZyFa6j6TY+?=
 =?us-ascii?Q?SCXEf13SJyyY9rF6OU4MuYnXrmpY1f9uWMUZUjF7019UN+p/+YcTVzmpMxv/?=
 =?us-ascii?Q?tdbNqr01de3vtJ/wFQUXep2zi1aGjUlmoLPHy7lAbJ0Vjk8zbeYBy55dZcuj?=
 =?us-ascii?Q?ASGZIeQmLeMlv90mgfVcQ+lwxrAQw7Z8lJ2hHRM8526+UTn0mjk54Bb4kXfo?=
 =?us-ascii?Q?L6CWgwRDrBH8rMvfYCepYdL3m+CtD4FEGfVF/Xkh8nIr0cTYIQz77gxAd40G?=
 =?us-ascii?Q?YVOQCCgDX/3qMNaoqvn4dkchWnmVzw/cpe8v6buS18sYXOBoJYLHTezq+zh/?=
 =?us-ascii?Q?SGZwCdsr/zfFJVFjH/EIHq6TRT3+EMACK9xCiohSY43rWaoIqYIMr4mxks8T?=
 =?us-ascii?Q?MglzxoFTIN0w4ZKssuXcLSerCgV0WS6ZWYJ/LX5F3baDBBHJZRzcF0B82Z0c?=
 =?us-ascii?Q?AmQYVUPxCq81fhGU7SrZ6CzPxigP8+NY8kZxme4ddWDDSEDX2GjNN8/ZKwkP?=
 =?us-ascii?Q?vT4mAfarJSvHGfa5Kah9xEuU7BQEo0Q/fq/g+P8UcnPpQa3nCDqCrvTOBm2N?=
 =?us-ascii?Q?sfyAaxrGPDJwR1qx2ezkRH1rZvdrWiwINLWq9FASYtXruXRkbzYTxwPh3Grq?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 40abbdb2-8bc3-46f5-7ce2-08dc10591375
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2024 14:49:54.5720 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q0Z8aPcK9s9vcG7rdM3Z8s09dOPFMYaGrNYqKlcNc31kvM/cRdQXEPmxf3u01E82S6CSjwwAy/ceva1ia6/RGf4Zk5XrWbD7XWxPSrR2dNc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8437
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 08, 2024 at 05:57:37PM +0530, Haridhar Kalvala wrote:
> From: Harish Chegondi <harish.chegondi@intel.com>
> 
> Xe_LPG+ (IP version 12.74) should take the same general code
> paths as Xe_LPG (versions 12.70 and 12.71).
> 
> Xe_LPG+'s workaround list will be handled by the next patch.
> 
> Signed-off-by: Harish Chegondi <harish.chegondi@intel.com>
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 3 ++-
>  drivers/gpu/drm/i915/gt/intel_mocs.c      | 2 +-
>  drivers/gpu/drm/i915/gt/intel_rc6.c       | 2 +-
>  drivers/gpu/drm/i915/i915_debugfs.c       | 2 +-
>  4 files changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 40687806d22a..1ade568ffbfa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1190,7 +1190,8 @@ static int intel_engine_init_tlb_invalidation(struct intel_engine_cs *engine)
>  			num = ARRAY_SIZE(xelpmp_regs);
>  		}
>  	} else {
> -		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
> +		if (GRAPHICS_VER_FULL(i915) == IP_VER(12, 74) ||
> +		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 71) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 70) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 50) ||
>  		    GRAPHICS_VER_FULL(i915) == IP_VER(12, 55)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/gt/intel_mocs.c
> index 353f93baaca0..25c1023eb5f9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -495,7 +495,7 @@ static unsigned int get_mocs_settings(struct drm_i915_private *i915,
>  	memset(table, 0, sizeof(struct drm_i915_mocs_table));
>  
>  	table->unused_entries_index = I915_MOCS_PTE;
> -	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
>  		table->size = ARRAY_SIZE(mtl_mocs_table);
>  		table->table = mtl_mocs_table;
>  		table->n_entries = MTL_NUM_MOCS_ENTRIES;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 7090e4be29cb..8f4b3c8af09c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  	 * temporary wa and should be removed after fixing real cause
>  	 * of forcewake timeouts.
>  	 */
> -	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)))
> +	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
>  		pg_enable =
>  			GEN9_MEDIA_PG_ENABLE |
>  			GEN11_MEDIA_SAMPLER_PG_ENABLE;
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index db99c2ef66db..990eaa029d9c 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -147,7 +147,7 @@ static const char *i915_cache_level_str(struct drm_i915_gem_object *obj)
>  {
>  	struct drm_i915_private *i915 = obj_to_i915(obj);
>  
> -	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 71))) {
> +	if (IS_GFX_GT_IP_RANGE(to_gt(i915), IP_VER(12, 70), IP_VER(12, 74))) {
>  		switch (obj->pat_index) {
>  		case 0: return " WB";
>  		case 1: return " WT";
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
