Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFF882B888
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 01:15:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A33310E9C5;
	Fri, 12 Jan 2024 00:15:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4240F10E998
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 00:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705018538; x=1736554538;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Pxpz2NC+yKzp4zTYEj2FoONXHfV0SgkWMopav8K/gys=;
 b=J0mlWUXkTLaXfSsc6HmqKepGBqky4gj1TChYUlgjFqa/xwjy19HrFHk5
 VZheO9Y31YR2X0VvurwGVyBZmnpXfG5AxbwcY9tc7hsUuCvAeu6iz8BG/
 WIpZVLcDvWj8NJnu0m39p0cS5w3ulWeGMBozwkcaNHryECnIMKC8WS/0R
 /S1LuqkEaRt2LkZcG3JgWD0Ni0ZUYLyvs1PJ8sB3tcWgfapUw1CR3x1v5
 At+pPvs3TeffXsIGNV1kpn2gQwy8RY3bXwiH4b0r6zf2BwW3Eta1Uangy
 i7qZmcDK8ImPgcoUtZF6QhQ6xl3J4S3yLmJmh1NrRMGrXiF72yQc85Zh8 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="402806973"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="402806973"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 16:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="732407589"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="732407589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 16:15:10 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 16:15:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 16:15:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 16:15:09 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 16:15:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aMXbxZMTjd2Xu2hAImkOOe53KozVZgPwcSQeD/U9T29GyO5lVb0YJt1Im+E1syLqG9OIuyA5ULJxQsQrG88nPVwKERnXaJ1j5HYUZdBkSKaNyQDpCBMe+NixP4YO5Oojq0/6vuqKykZ9Vqz0JQ5Q6bGTRpNmg/HvlG720mJ5+raqnRkdeSl92o06RtApkYM2e7Aqaqj6XXXX90LttUU7pkdd18MOK0vJLw/Z2MabWYAYu2ycoUgtjnx96CAQJspiAfOpQYABueYJqytUcO9nkadZN75KO0cUQfsew4gnlOVo3C2Kgp5fNXaui83kgiIsoQMYJ5203ta2Kg/TcbynqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rSmOoi5YycO+BeQ/b+Saut0RRmbMwqa+eluzHSwO/m8=;
 b=F91ID5EjXtzfaks2uPIp/zX3nevc3EAWUu1rdjmLnMH4Ng01uHi4HVuG2OHqv5tuTz8IaPvKjDLa4qu8hy56C6sS0swYV4RabuEgP/ymvIpDj6+r0qeY+MRjz5DNML/Ejsao9ErphAox++qQGoo3IOY+JwrSJp+5JjgRNZp4SU6dx5wIgpM9bNbCywyv9AyZFzFNFb3zpiRNhL2RgOus+lUrauO7xwx4YqMF93pdS9ZuJBB5VigY/v/50XR1BJqLAUYV7AAdC7EYxxNDjS0tTwRcTuRREgWEbJpAbclkrb26J0Jowi2zsdQLY4Ubqj9D88xOECF8BMlsFXXQTGQZEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 CH0PR11MB8142.namprd11.prod.outlook.com (2603:10b6:610:18c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.27; Fri, 12 Jan
 2024 00:15:07 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 00:15:07 +0000
Date: Thu, 11 Jan 2024 16:13:42 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 6/6] drm/i915/opregion: make struct intel_opregion opaque
Message-ID: <ZaCENhzNGDuZNF3H@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3b68d7ff4b2930eaf15d9657618a738b9065f64b.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0197.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::22) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|CH0PR11MB8142:EE_
X-MS-Office365-Filtering-Correlation-Id: e86d6b09-8c51-44c2-8a13-08dc13038838
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9kcaiINqB50X2opP0rUvF+703hDMhJzs80lmx6o9NMWWU/bxxYVxdJvtkQxTANvxvSKZrmlZ2RnEctisO6T9fN+N9v+nQj7AkoDuTfZZmDP4hm68n8gvYwBVT+g71ByhIuTkWvNWo7Qt9pICB4iuoLyA4Wfz4kHfXHSghkmhNPs/nGrqcK95X9avq1YoMm8acbbGBMTaI1DG5Ezj3ZhXKEFjtsiMvQiOmjTxHy6T3VdzYhgH3T10jOszBxcPqkr6Nh1g0zGCWjrN/bQJ303O6YCKGY84iPZqBI4gfpnihSrN+VndevEbmf4yI1TBaB8TytVWRLRtLR/awFLghX8y75LjnExwjwJIyU5eVxhaZ5y6E7cV2Nr+duxZiIzw08CwVaeI/dvmkP6UNeSEZc4NKl7PsHVwpLG2NO1d/kLLkHKqzp4gtA/JCT0M4Ms8tiEXR7T1P/q4b2P033641gReEjEZd8t/6E9kcQ8TUcTsRCdlESCfvD39ujNhV+5Jh+fJmB0uBVGgWYonbrTWW08a7gW/UWk7uTiIvPsKiD4kQLz45gZJiBTABbNS03o7Xozm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(346002)(39860400002)(366004)(396003)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(30864003)(6512007)(26005)(83380400001)(6862004)(8676002)(38100700002)(4326008)(33716001)(41300700001)(2906002)(8936002)(44832011)(5660300002)(66946007)(6506007)(9686003)(6666004)(66556008)(316002)(6636002)(478600001)(6486002)(66476007)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A2s/tJsvr4F2BLLa18eabNzdf9+a+GVI75QB0pfNqGDzLa5Kp8OgtgljlTBF?=
 =?us-ascii?Q?c0+DBLgJiAXgroyFnmNRcZqN3CCBjQpIxojN6NpJE0xSiTIkyJdFbcHjBJXI?=
 =?us-ascii?Q?JWNf7EIkKHCuPj9OVjngrRMvPjFg97agZB6Et2gsAu3hzJoFwywcst5ghh0B?=
 =?us-ascii?Q?4LJ+0J6OFxygpkxdTkMMZUl7vx0wJ6WYLsKHjdgFxfam896ue27Rj8STZg7I?=
 =?us-ascii?Q?AhirVcI3EDt9Ey5m5wtyws1atboge1AXjgcFTvvpyYbGFfNHbO7zO5PW9Zu1?=
 =?us-ascii?Q?g9Q7or0lXEQpwJ/AZHl4UksnMgtYH6Ebk7/QZHwP44dQsqiJik1hRVneGHA2?=
 =?us-ascii?Q?nTw8H5btmVjGdkInY2C3NzJ3jy4QkWAwmNvyCieNa5kqIBy1jCrrtM0mzpWD?=
 =?us-ascii?Q?o8ncAsjpwahwxnM9gv5d1ftaMWVxT9S8VOeX9E8VVYfePfcgl0JKslqF37Jy?=
 =?us-ascii?Q?aolc7++2gn4TyvFhG8lLC06Yd2sJnrNg5HlXSVcwXn9pk7YZthLR/z+/pmUj?=
 =?us-ascii?Q?/HeMo8xqbPLLOjuZf76+pPjYFDxep1WFuLsxdZeVly09wJNE7lJ4sQwEgVNu?=
 =?us-ascii?Q?7x6mgmUB1rzi7NIz983fR8TtEKgNxfhhGkWGaORPmgv9rhEN0GBB7uxnOXNU?=
 =?us-ascii?Q?7PSP98TAc3U5a6vVOHHpj/EqcqlsWlYRaRgI5Iz/SPKFdwlx7dr9T16wgZ7f?=
 =?us-ascii?Q?4O3CdcFzmtPwu65/t4Wajfe8xqIO0RS7LqnFNKhqQMxwaLYuhL5k3V9V2nnv?=
 =?us-ascii?Q?3MTKts2HJ45BXdmCZ4n0d2RTEHs9BGftBKiHM65uQRyjy2mjO1cCFpiBHuVo?=
 =?us-ascii?Q?VRD9XifXGTBDsoUzzqSOaQvhpAfJ0I4LNkewnUPrtzfkBMDXbk60nXOmReXO?=
 =?us-ascii?Q?n71TybAk/C3aV40MUVFsZv2ZLdd3lAG3kKh3kZvbdVxIZYKzfvHvZEHkwXU0?=
 =?us-ascii?Q?TXQFGkgJJycPFPtav+qjRyxF4GTRT2sovqkP4PFfkSgevIJmR/RotkQV+hlg?=
 =?us-ascii?Q?D82BC0eynSLHku1hM7i8UXGprv1DYLz9Eo/kXOp7ShyV1Eheaiwi1mZe+flb?=
 =?us-ascii?Q?V1AkImnJpD9Yn9/lTcHzHnJRH6tdgV6I4BmBGqDRSf7Ecmt48dF07x6GCPql?=
 =?us-ascii?Q?6fO/Vz0qRSK6ri8QAeZw95ZfNqAB+hZWsbPbGPO2ltpCgZVdrfo+2O57hvUY?=
 =?us-ascii?Q?cOm6Zx3CRACLapfg/ADBah9pY2NkajLlAAyse9DevWkTGY4eueUhZoOLbz9i?=
 =?us-ascii?Q?tJfW//+HZ8Vo4/q1MzeKsvaoMQQNtxC8GnG+5yDvsBPQbHMO56tKjMmvLFpU?=
 =?us-ascii?Q?331Y324ie6oB34mshWShYYCqpVEZLL6MLFCpqfsi4Z6B5iIXcpkyB/iXRXC0?=
 =?us-ascii?Q?NBhaqPSHeRAypKr5wG5GkPWGRRoYgWfw0OERrVTfMzuQ53Pwc4DdEQXLiZ6j?=
 =?us-ascii?Q?NwY77Gnvi9C+TQwW1ZlDoM42SwtBLDjj3UvKhk5TQ9m+IkHhPPvgq3f0Xjsu?=
 =?us-ascii?Q?iNji4Z8zbrZHzLADglEZXAei1DrfD1233datbyefp7JeoVM/EFrDW0KfowQ0?=
 =?us-ascii?Q?49bCUUtj0sGyskOdOC6CqRQ2/eoLGgTVtMRe2a7jf7KVoRkYxpOjTzRhopuG?=
 =?us-ascii?Q?IhbEi+Ie5jcUve27tP2BAJw=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e86d6b09-8c51-44c2-8a13-08dc13038838
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 00:15:07.2438 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLuVry8WqmPD3koFju9fiTseMOlM54OodCoYZKW8by6Qh2cAEKBO651+fPBLrxiaDxw8N/m/x5Akm88PotrBEf4iEqR9jZlBgu7OB4VHKA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8142
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

On Thu, Jan 11, 2024 at 07:21:19PM +0200, Jani Nikula wrote:
> With the recent cleanups, only intel_opregion.c needs to know the
> definition of struct intel_opregion. Allocate it dynamically and make it
> opaque.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |   3 +-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 147 +++++++++++-------
>  drivers/gpu/drm/i915/display/intel_opregion.h |  27 +---
>  3 files changed, 94 insertions(+), 83 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 8853a05dc331..a90f1aa201be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -49,6 +49,7 @@ struct intel_fbdev;
>  struct intel_fdi_funcs;
>  struct intel_hotplug_funcs;
>  struct intel_initial_plane_config;
> +struct intel_opregion;
>  struct intel_overlay;
>  
>  /* Amount of SAGV/QGV points, BSpec precisely defines this */
> @@ -526,7 +527,7 @@ struct intel_display {
>  	struct intel_fbc *fbc[I915_MAX_FBCS];
>  	struct intel_frontbuffer_tracking fb_tracking;
>  	struct intel_hotplug hotplug;
> -	struct intel_opregion opregion;
> +	struct intel_opregion *opregion;
>  	struct intel_overlay *overlay;
>  	struct intel_display_params params;
>  	struct intel_vbt_data vbt;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 26aacb01f9ec..3f5a20f9153e 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -250,11 +250,37 @@ struct opregion_asle_ext {
>  
>  #define MAX_DSLP	1500
>  
> +#define OPREGION_SIZE	(8 * 1024)
> +
> +struct intel_opregion {
> +	struct drm_i915_private *i915;
> +
> +	struct opregion_header *header;
> +	struct opregion_acpi *acpi;
> +	struct opregion_swsci *swsci;
> +	u32 swsci_gbda_sub_functions;
> +	u32 swsci_sbcb_sub_functions;
> +	struct opregion_asle *asle;
> +	struct opregion_asle_ext *asle_ext;
> +	void *rvda;
> +	void *vbt_firmware;
> +	const void *vbt;
> +	u32 vbt_size;
> +	u32 *lid_state;
> +	struct work_struct asle_work;
> +	struct notifier_block acpi_notifier;
> +};
> +
>  static int check_swsci_function(struct drm_i915_private *i915, u32 function)
>  {
> -	struct opregion_swsci *swsci = i915->display.opregion.swsci;
> +	struct intel_opregion *opregion = i915->display.opregion;
> +	struct opregion_swsci *swsci;
>  	u32 main_function, sub_function;
>  
> +	if (!opregion)
> +		return -ENODEV;
> +
> +	swsci = opregion->swsci;
>  	if (!swsci)
>  		return -ENODEV;
>  
> @@ -265,11 +291,11 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
>  
>  	/* Check if we can call the function. See swsci_setup for details. */
>  	if (main_function == SWSCI_SBCB) {
> -		if ((i915->display.opregion.swsci_sbcb_sub_functions &
> +		if ((opregion->swsci_sbcb_sub_functions &
>  		     (1 << sub_function)) == 0)
>  			return -EINVAL;
>  	} else if (main_function == SWSCI_GBDA) {
> -		if ((i915->display.opregion.swsci_gbda_sub_functions &
> +		if ((opregion->swsci_gbda_sub_functions &
>  		     (1 << sub_function)) == 0)
>  			return -EINVAL;
>  	}
> @@ -280,7 +306,7 @@ static int check_swsci_function(struct drm_i915_private *i915, u32 function)
>  static int swsci(struct drm_i915_private *dev_priv,
>  		 u32 function, u32 parm, u32 *parm_out)
>  {
> -	struct opregion_swsci *swsci = dev_priv->display.opregion.swsci;
> +	struct opregion_swsci *swsci;
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	u32 scic, dslp;
>  	u16 swsci_val;
> @@ -290,6 +316,8 @@ static int swsci(struct drm_i915_private *dev_priv,
>  	if (ret)
>  		return ret;
>  
> +	swsci = dev_priv->display.opregion->swsci;
> +
>  	/* Driver sleep timeout in ms. */
>  	dslp = swsci->dslp;
>  	if (!dslp) {
> @@ -462,7 +490,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>  {
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
> -	struct opregion_asle *asle = dev_priv->display.opregion.asle;
> +	struct opregion_asle *asle = dev_priv->display.opregion->asle;
>  
>  	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
>  
> @@ -584,9 +612,8 @@ static void asle_work(struct work_struct *work)
>  {
>  	struct intel_opregion *opregion =
>  		container_of(work, struct intel_opregion, asle_work);
> -	struct drm_i915_private *dev_priv =
> -		container_of(opregion, struct drm_i915_private, display.opregion);
> -	struct opregion_asle *asle = dev_priv->display.opregion.asle;
> +	struct drm_i915_private *dev_priv = opregion->i915;
> +	struct opregion_asle *asle = opregion->asle;
>  	u32 aslc_stat = 0;
>  	u32 aslc_req;
>  
> @@ -634,14 +661,15 @@ static void asle_work(struct work_struct *work)
>  
>  bool intel_opregion_asle_present(struct drm_i915_private *i915)
>  {
> -	return i915->display.opregion.asle;
> +	return i915->display.opregion && i915->display.opregion->asle;
>  }
>  
> -void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
> +void intel_opregion_asle_intr(struct drm_i915_private *i915)
>  {
> -	if (dev_priv->display.opregion.asle)
> -		queue_work(dev_priv->unordered_wq,
> -			   &dev_priv->display.opregion.asle_work);
> +	struct intel_opregion *opregion = i915->display.opregion;
> +
> +	if (opregion && opregion->asle)
> +		queue_work(i915->unordered_wq, &opregion->asle_work);
>  }
>  
>  #define ACPI_EV_DISPLAY_SWITCH (1<<0)
> @@ -697,7 +725,7 @@ static void set_did(struct intel_opregion *opregion, int i, u32 val)
>  
>  static void intel_didl_outputs(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = &dev_priv->display.opregion;
> +	struct intel_opregion *opregion = dev_priv->display.opregion;
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>  	int i = 0, max_outputs;
> @@ -736,7 +764,7 @@ static void intel_didl_outputs(struct drm_i915_private *dev_priv)
>  
>  static void intel_setup_cadls(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = &dev_priv->display.opregion;
> +	struct intel_opregion *opregion = dev_priv->display.opregion;
>  	struct intel_connector *connector;
>  	struct drm_connector_list_iter conn_iter;
>  	int i = 0;
> @@ -766,7 +794,7 @@ static void intel_setup_cadls(struct drm_i915_private *dev_priv)
>  
>  static void swsci_setup(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = &dev_priv->display.opregion;
> +	struct intel_opregion *opregion = dev_priv->display.opregion;
>  	bool requested_callbacks = false;
>  	u32 tmp;
>  
> @@ -844,7 +872,7 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
>  
>  static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = &dev_priv->display.opregion;
> +	struct intel_opregion *opregion = dev_priv->display.opregion;
>  	const struct firmware *fw = NULL;
>  	const char *name = dev_priv->display.params.vbt_firmware;
>  	int ret;
> @@ -884,7 +912,7 @@ static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
>  
>  int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  {
> -	struct intel_opregion *opregion = &dev_priv->display.opregion;
> +	struct intel_opregion *opregion;
>  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
>  	u32 asls, mboxes;
>  	char buf[sizeof(OPREGION_SIGNATURE)];
> @@ -907,11 +935,20 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  		return -ENOTSUPP;
>  	}
>  
> +	opregion = kzalloc(sizeof(*opregion), GFP_KERNEL);
> +	if (!opregion)
> +		return -ENOMEM;
> +
> +	opregion->i915 = dev_priv;
> +	dev_priv->display.opregion = opregion;
> +
>  	INIT_WORK(&opregion->asle_work, asle_work);
>  
>  	base = memremap(asls, OPREGION_SIZE, MEMREMAP_WB);
> -	if (!base)
> -		return -ENOMEM;
> +	if (!base) {
> +		err = -ENOMEM;
> +		goto err_memremap;
> +	}
>  
>  	memcpy(buf, base, sizeof(buf));
>  
> @@ -1039,6 +1076,10 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  
>  err_out:
>  	memunmap(base);
> +err_memremap:
> +	kfree(opregion);
> +	dev_priv->display.opregion = NULL;
> +
>  	return err;
>  }
>  
> @@ -1111,12 +1152,12 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
>  {
>  	struct drm_connector *connector = &intel_connector->base;
>  	struct drm_i915_private *i915 = to_i915(connector->dev);
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  	const struct drm_edid *drm_edid;
>  	const void *edid;
>  	int len;
>  
> -	if (!opregion->asle_ext)
> +	if (!opregion || !opregion->asle_ext)
>  		return NULL;
>  
>  	edid = opregion->asle_ext->bddc;
> @@ -1139,9 +1180,9 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *intel_con
>  
>  const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (!opregion->vbt)
> +	if (!opregion || !opregion->vbt)
>  		return NULL;
>  
>  	if (size)
> @@ -1152,8 +1193,13 @@ const void *intel_opregion_get_vbt(struct drm_i915_private *i915, size_t *size)
>  
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> -	struct opregion_header *header = opregion->header;
> +	struct intel_opregion *opregion = i915->display.opregion;
> +	struct opregion_header *header;
> +
> +	if (!opregion)
> +		return false;
> +
> +	header = opregion->header;
>  
>  	if (!header || header->over.major < 2 ||
>  	    (header->over.major == 2 && header->over.minor < 3))
> @@ -1164,9 +1210,9 @@ bool intel_opregion_headless_sku(struct drm_i915_private *i915)
>  
>  void intel_opregion_register(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (!opregion->header)
> +	if (!opregion)
>  		return;
>  
>  	if (opregion->acpi) {
> @@ -1180,7 +1226,7 @@ void intel_opregion_register(struct drm_i915_private *i915)
>  
>  static void intel_opregion_resume_display(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
>  	if (opregion->acpi) {
>  		intel_didl_outputs(i915);
> @@ -1206,9 +1252,9 @@ static void intel_opregion_resume_display(struct drm_i915_private *i915)
>  
>  void intel_opregion_resume(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (!opregion->header)
> +	if (!opregion)
>  		return;
>  
>  	if (HAS_DISPLAY(i915))
> @@ -1219,12 +1265,12 @@ void intel_opregion_resume(struct drm_i915_private *i915)
>  
>  static void intel_opregion_suspend_display(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
>  	if (opregion->asle)
>  		opregion->asle->ardy = ASLE_ARDY_NOT_READY;
>  
> -	cancel_work_sync(&i915->display.opregion.asle_work);
> +	cancel_work_sync(&opregion->asle_work);
>  
>  	if (opregion->acpi)
>  		opregion->acpi->drdy = 0;
> @@ -1232,9 +1278,9 @@ static void intel_opregion_suspend_display(struct drm_i915_private *i915)
>  
>  void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (!opregion->header)
> +	if (!opregion)
>  		return;
>  
>  	intel_opregion_notify_adapter(i915, state);
> @@ -1245,11 +1291,11 @@ void intel_opregion_suspend(struct drm_i915_private *i915, pci_power_t state)
>  
>  void intel_opregion_unregister(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
>  	intel_opregion_suspend(i915, PCI_D1);
>  
> -	if (!opregion->header)
> +	if (!opregion)
>  		return;
>  
>  	if (opregion->acpi_notifier.notifier_call) {
> @@ -1260,36 +1306,25 @@ void intel_opregion_unregister(struct drm_i915_private *i915)
>  
>  void intel_opregion_cleanup(struct drm_i915_private *i915)
>  {
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (!opregion->header)
> +	if (!opregion)
>  		return;
>  
> -	/* just clear all opregion memory pointers now */
>  	memunmap(opregion->header);
> -	if (opregion->rvda) {
> +	if (opregion->rvda)
>  		memunmap(opregion->rvda);
> -		opregion->rvda = NULL;
> -	}
> -	if (opregion->vbt_firmware) {
> -		kfree(opregion->vbt_firmware);
> -		opregion->vbt_firmware = NULL;
> -	}
> -	opregion->header = NULL;
> -	opregion->acpi = NULL;
> -	opregion->swsci = NULL;
> -	opregion->asle = NULL;
> -	opregion->asle_ext = NULL;
> -	opregion->vbt = NULL;
> -	opregion->lid_state = NULL;
> +	kfree(opregion->vbt_firmware);
> +	kfree(opregion);
> +	i915->display.opregion = NULL;
>  }
>  
>  static int intel_opregion_show(struct seq_file *m, void *unused)
>  {
>  	struct drm_i915_private *i915 = m->private;
> -	struct intel_opregion *opregion = &i915->display.opregion;
> +	struct intel_opregion *opregion = i915->display.opregion;
>  
> -	if (opregion->header)
> +	if (opregion)
>  		seq_write(m, opregion->header, OPREGION_SIZE);
>  
>  	return 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index d084b30e8703..0bec224f711f 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -25,38 +25,13 @@
>  #ifndef _INTEL_OPREGION_H_
>  #define _INTEL_OPREGION_H_
>  
> -#include <linux/workqueue.h>
>  #include <linux/pci.h>
> +#include <linux/types.h>
>  
>  struct drm_i915_private;
>  struct intel_connector;
>  struct intel_encoder;
>  
> -struct opregion_header;
> -struct opregion_acpi;
> -struct opregion_swsci;
> -struct opregion_asle;
> -struct opregion_asle_ext;
> -
> -struct intel_opregion {
> -	struct opregion_header *header;
> -	struct opregion_acpi *acpi;
> -	struct opregion_swsci *swsci;
> -	u32 swsci_gbda_sub_functions;
> -	u32 swsci_sbcb_sub_functions;
> -	struct opregion_asle *asle;
> -	struct opregion_asle_ext *asle_ext;
> -	void *rvda;
> -	void *vbt_firmware;
> -	const void *vbt;
> -	u32 vbt_size;
> -	u32 *lid_state;
> -	struct work_struct asle_work;
> -	struct notifier_block acpi_notifier;
> -};
> -
> -#define OPREGION_SIZE            (8 * 1024)
> -
>  #ifdef CONFIG_ACPI
>  
>  int intel_opregion_setup(struct drm_i915_private *dev_priv);
> -- 
> 2.39.2
> 
