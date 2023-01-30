Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3B681774
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:20:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36E4010E0A2;
	Mon, 30 Jan 2023 17:20:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A39810E0A2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675099212; x=1706635212;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1nnuMKnmdQiiv4Y4ox27oZcoXetJY+oS0F4wlivjgY8=;
 b=BH7EaKhWHx11uqrspKNJf+2vpOuuxilT3ySmhTrhop1ijHBxvVC31gnF
 1YGVXqrVrWSxIeAYtJBIaTSv0xpI/a8ohXctkaktEfoWUvUuQHVHGMQMX
 rG6bPwhVXV1kVLRQkqoi/jBNxowaJ+V2Rjm8Q9Xr9Hq4aBwkQzOD9WeEG
 rtULArkLZrbBGv1ZnhtlbOsiYmOfRkd0EYLwn8fvhxxtjuJtRwBB/h6QU
 pIV6UA6RuynjZK9NUNaG/yVvWFVFmkyTQRUSp73KYN4eiTj22y2Phi4tL
 ogim7ztiW9l5NRQIQPfAEXx1/F1XCRHVWmZd6tAd3QdEsTryUsqIs4O18 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="311240836"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="311240836"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:20:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="614117045"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="614117045"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 30 Jan 2023 09:20:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:20:11 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:20:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:20:10 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:20:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2/eijgZxIR4OPlt7obiHtxV3D64kVbYmCvYLrll3LdHT9LrPKnFRv13nw3QzsKFo1N0HCVi96XcnU6y5OJusQfQWVq9Xb5f9oe3R2ML1SBp/BOf7k7TDb1Rrwr6bb/ARSTlSiET4YWSDehhOjfgxodnWFBHbC1W8GKdQa7RO2my0IiwDUhNm6r1Ph8dI7H/G7l/uqBUxMWPoMLBp9KfyA4jsJUn16jGyoeeh8pyjREUTsSOg8cwdOMftHIvOT0TMseJUg4RSdfjaSn8eRGRhDRc44KtmpP3MJREuyiCcVQ+MZb41Yj9lB9bYkpK80ivH82qYn7dh5FZNMlnRtp4nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zx9ntvyNyTZ0QtnYT/1WhkmWVmu7VnczkFx6OzQIwbU=;
 b=iJRV2sd+d8HhwevRjdk7mFbuU2F4TG0UYQaVLEjs9LPjXe/0hVAB2mURwHw8jFsn0LRHQpS7o5OiUDhbynk1feBwwAgQgE4yuvfW/LcjVJDfWnowTNFjxJ+kNcC4FtbzPZ1TV3iwMwa302AftSooZx0frXsQPf9zblH05v1U75S55ZWjVp/4C2e+dfJu/wJWSfMLAjBWE+hA9JhPrt+p6E9+bsi9BPyUSUTseHDMF196HFFCDpuTOwNKk6RK2RZcm4j3R1iFF7S1CcA3pqvYZGhJ4kU53o6iq8xBvsaU8wRIDjaI0ORcXSpRxtDKut3MvWIZ+c/Cg4fVG1hddb+qMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB8160.namprd11.prod.outlook.com (2603:10b6:8:189::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:20:09 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 17:20:09 +0000
Date: Mon, 30 Jan 2023 12:20:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9f8RQJ3FAM7DSKV@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-4-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230127224313.4042331-4-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR05CA0128.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB8160:EE_
X-MS-Office365-Filtering-Correlation-Id: 6cd72de2-acd7-4dcf-37b3-08db02e63cd2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YpzZPzw9Ho4JsfihXefVfVhPHSJ7bXmTzooR0d1MQbQ4pwn6lbNI8k5H63xn3epF3+z/tamcFJUvB879eQwsb6YZqm+jsb5R/VUVPL49G1PLA4g7JSFquxpsF0sGZvuoXTpEPw2GOpla8ohRQInrdoXOlrQA4TeNnDSFYrv9P9d4loG77t7tWx8xnKLu2alISejMTxBAMaUETzt00aY2nkqccaoQyNrW4bDydkO7anwODAzXx3X2Kg0r2YVwaz67fIFKUGB4+uT5kHOhD6jW7bXB1tWN+q6YAPo2BLzRLtCodtvxX7utgSC+o46Bl9Iw2U6ANLQ/sE4gNgfGeq866CoKUY5DcKrOa4EUMZ4IXKGDB2g0ynlP1fzXGCZg60xlKu84fwkYuu+MfH+Glyq6Fy2oh5/d8Wzx3gzijLej8ORd710lUdnoXYyrAp7ggbCYzJ5xMUOA81xGk95Rzf4yftaY7IP+R48s9648+AarsVlxaUvL8cmczOrPWBD7RP4AqWHAP0xkBz/LBeYETObcnvP+wPx6l0Yh04FBuecj4Tm7l+qgFgU2ApTJ2Z0iFzTsgPA3IuItTrKu4ZylbUcAp6slgZMmLRW6wNwgLbnY9xaTE1GvR/C/7mefXvlDtg/pxbYufgP7yHlHGQ229ik2fA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(376002)(346002)(366004)(396003)(39860400002)(451199018)(36756003)(2906002)(478600001)(6666004)(41300700001)(37006003)(6486002)(6636002)(38100700002)(86362001)(82960400001)(2616005)(6506007)(316002)(8676002)(4326008)(66946007)(8936002)(6862004)(26005)(44832011)(5660300002)(66476007)(6512007)(66556008)(186003)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XjXDoiH5tKJLRzS4epHFiG9xvcYej3u/uSe+hSEMb8knAb2WjZ+UjF82dpth?=
 =?us-ascii?Q?aJ5dNA2fuJ+3AZ0a4S5wYQtQ/4aJ7D35I1Pc+X2ypcGMH5h3BI711poM7Gni?=
 =?us-ascii?Q?M961YExQ5vc1wyLbn5+4cH69Q4UVZZC74eFylB424e5Nzev0REaQsFyIs9Vt?=
 =?us-ascii?Q?jw6yNKycQIPMQgpfryH3yt0JPxmSP3E9h4ndjpUB8WFV6z6vQAw5Vo81HbS9?=
 =?us-ascii?Q?/hLGnub4X1l7FHPRDhtpRs8zqQnn0jiWexzYBsXS5QdjQNa8XhiadOGwnUcP?=
 =?us-ascii?Q?JDXtefN64H6H3UFMghmP6zaVSpne5iZoTMqFgd8TcrZj5dLvXyCu/D9AyqlG?=
 =?us-ascii?Q?kJweSFf+YqqUIuMIBEFBSK5jh/FbBRcEac1hm7Zvntk1ouG3uNuBJcICaLX0?=
 =?us-ascii?Q?wtzkqaixuxqReNZM2tzluVJ0nq0W4+Y94gxe2J1aspP4eQStyI0LpcwRF3E7?=
 =?us-ascii?Q?nv3ZvAiOW/OjtAn/DuTTMoK1z+DP8nITLDlDG5FNZqn+5GV4y1YATfZiX9Dh?=
 =?us-ascii?Q?fvhWKY/Zr/sbdQ8xkZQ8clt9QSZuqKlL2tvKm7/SvH/ktbZIK9s6ccHzW75d?=
 =?us-ascii?Q?/YKezBbSlUMXwtm21RbE4ast07+G6fyWdPTmDBhcoLTIu8mcrXA1MqHZJPms?=
 =?us-ascii?Q?B93zNJYG+0WsOkGGiTt34MyxXVeTuBfqjedz8WqVd0mZGUuMkOBaO1NaS4Wv?=
 =?us-ascii?Q?eZ9ot6x9FE/dAapB02Mcr0L82rDYsU8tH/ab5vuboX3998pcJxPL0CFIsJFY?=
 =?us-ascii?Q?5ExCoHliJNcxHe0INC+R+8nldbKlwUe4jjeUTNMadlWJ6BAe0onvZGi7uukR?=
 =?us-ascii?Q?UWKc98r2q0+dNRfDQ5rEd94HeoA6khCvfeLZtse8uFNQWrcB4jBZ+DZHgCeS?=
 =?us-ascii?Q?sIGjT8Glmzc1sTd2xTkL6MBpjbs6R9wcLuDQevEY+BPPlCP+OgPRODX0I9EC?=
 =?us-ascii?Q?1DMD679Lrj8ZKPk0jvYYApYAP6WoUgZutEaghw1MwZNBTrz4YbFuUYT6VUyd?=
 =?us-ascii?Q?A6GNcECb9Z7MKx6fL/oV8WHl6bkZ6wmJffltvRV27DKHG3lehVrj7yasfzQ5?=
 =?us-ascii?Q?GFxIfcVhf7Wa6S5ExtU2VgDsobDCYee+c3b+7BZ0LOI3gxXt4kA81e8czAeJ?=
 =?us-ascii?Q?+3nk7PYvcHPXQGW1o6WxOJ8w8YFAux4FWOer+2oPL7KVSpaTyvCwE8JQb8tN?=
 =?us-ascii?Q?St1rOaWulMsitUQxu3ZlraV2HA7J9Y37fDmC1URQbQE8e2ua40a1+pKYZ9sA?=
 =?us-ascii?Q?jb+4y2oHeYuK7N0iwvMwOnmrjP74ytZVd8Ul4aTylgpqmYntCwD68ofUMMr1?=
 =?us-ascii?Q?txzOG69vLU4yKXTZW7Fbpxp+GgAHnDj6iPjaSfKT3f5ZLF3PzHoFUf3HBgvN?=
 =?us-ascii?Q?mgK1UJrdao8Ih93USFETyRQ/qPeG4wkKzqw/WM1ERxwd1QwtuPwZ3PmW9b5f?=
 =?us-ascii?Q?CXXkH6Hm64Eem41CN9O/UU4bDwrsczjh0K4NO9vhriiLaAmU8n5U4s6UE+Aj?=
 =?us-ascii?Q?ZnEG/oN/O5q9Zr6+o8Wf33HjwyB71yx80ApZC+7muJo7P/g93kSTLaDB1COE?=
 =?us-ascii?Q?tuLzx5FHm23GU0hC2m7IPunX6V1dVdcq18gdF7t5C8Kb4yyKLo/jiARnSqyi?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cd72de2-acd7-4dcf-37b3-08db02e63cd2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:20:09.1387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p5TEshywQ23WX5NnDiJqXLWcwEvhcHeqZbpO/AgG619LIjwQhc73684vl+SMDF2SiMe1dOE24cOeXlNz2FmzdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8160
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/dg1: Drop final use of
 IS_DG1_GRAPHICS_STEP
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

On Fri, Jan 27, 2023 at 02:43:13PM -0800, Matt Roper wrote:
> All production DG1 hardware has graphics stepping B0; there is no such
> thing as C0.  As such, we can simplify
> 
>         IS_DG1_GRAPHICS_STEP(uncore->i915, STEP_A0, STEP_C0)
> 
> to just match DG1 in general.
> 
> Bspec: 44463
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
>  drivers/gpu/drm/i915/i915_drv.h             | 3 ---
>  2 files changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index f3ad93db0b21..89fdfc67f8d1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -158,7 +158,7 @@ static const struct intel_memory_region_ops intel_region_lmem_ops = {
>  static bool get_legacy_lowmem_region(struct intel_uncore *uncore,
>  				     u64 *start, u32 *size)
>  {
> -	if (!IS_DG1_GRAPHICS_STEP(uncore->i915, STEP_A0, STEP_C0))
> +	if (!IS_DG1(uncore->i915))
>  		return false;
>  
>  	*start = 0;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 57b84dbca084..495788e18b77 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -656,9 +656,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define IS_RKL_DISPLAY_STEP(p, since, until) \
>  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
>  
> -#define IS_DG1_GRAPHICS_STEP(p, since, until) \
> -	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
> -
>  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
> -- 
> 2.39.1
> 
