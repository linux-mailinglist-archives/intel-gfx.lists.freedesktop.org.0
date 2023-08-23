Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC82785F3A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 20:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B262310E0A3;
	Wed, 23 Aug 2023 18:08:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FA8B10E0A3;
 Wed, 23 Aug 2023 18:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692814122; x=1724350122;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cCrKJQ+DZA3hJaoASfataYVvPE2bDoCtm7EKOEuF+AQ=;
 b=F+wD9GcKiFQ3rbRC4g/Ct64qAfk3nxIfj3Yw8Dm/1K9DJZwpP1olaiVY
 DbmSKbfTkbWQvLAlX4/IQK06vE6iMr6U+huhN0SDHZYygbW4Cb9mSUpUa
 oGjwyIfJTaoGdBFStzK6hQg9GQ05sR8hdM7hXMrwu80vRII5SE0KBZdw0
 QPqztwFyEoarVnSe+1FeGX6JUgJIc5wuvSFhNC60WoBjcGHI9lTmyT1b6
 f5/QuVQocKWyFMgkCHo5Midl3APYe92Qs0jhWPJzNhsgnQc75opX8klmj
 tyxEe9GmWLI7jJC3PDLWdb9N/1YSgKhTX9Tg8/HLqmBAWJIXF8xBeXWnb w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354565833"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354565833"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 11:08:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="771812783"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="771812783"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2023 11:08:29 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 11:08:28 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 11:08:28 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 11:08:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nvpyoSAX0OTHloz9Nu7mqBfY7VsjHjJnzc+B4y3iT+VRAGUR0FeQ1rYqhcB0Rhkzmt+eW46t8f1NcS4bhStJTpo6/4ZyNS7lhwsUJx8cu6Iw6aQn15zWl3fCBbXlMJ/UFemhcvnYtDrFXAUkO32gOZ1E2io6u1ojAKBIvRSY2alJsxDy+vH+P0ZhaGbsMD5BT72mDABi6OTbm3zxcFLzJuhryQGgbK/TzuzyLs5gzLfm1ZzllvUe9ZmLq9IVDWTW49yjWWDRF5dC/dCsekTPbjxpUFavetkDivD34YBdefMoAdS/2jsr7zD0StJowaWD9BKRkWbw8G6ew5fptndoxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZkLmpwOWY68I9lom77Rh2I4tvgfWgkVKsZrksNEsio4=;
 b=Rn4A2p3Lpax8K0H/PHZhe+Z6vWJKVXerbzJqhJTelV/x+ChEg03GHIWSQ0mb3kU7bc7UfUs8ne+8bm00kYPyLeKnna1MVYZwRmd/oAqql0y169FnSZf+rKCM/x7qjC0K1m6Cdnqzg4TeKf8XWm3IOGxMddzG4GPfLycwbbZIgbHmWZdlQRLF17CqWPoqGjHjmtH2RSPA/9MCoSwR+rm7dZ1xIKhGlxqYAF9AnKYUnDFiHrOnWgAE/DMOPnQQJZmxwKJe+sh+rh/nsDFwCqmHS2iLJ1H3IyjzoANdu06Zq2CJB7d4O/yc+8StCU9GCakGFDBbFGZJ/YsA5AfED8CZyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA1PR11MB6686.namprd11.prod.outlook.com (2603:10b6:806:259::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 18:08:26 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 18:08:26 +0000
Date: Wed, 23 Aug 2023 11:08:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823180822.GJ6080@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-16-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-16-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0024.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::29) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA1PR11MB6686:EE_
X-MS-Office365-Filtering-Correlation-Id: ef1b5a61-2048-49fc-f756-08dba403f230
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XuWKooKsMoRm8BvqdErcEy6cU9se88kJUuhxqoW355uhLbfZpCLEnEmTh7h6IkH6HIXjVg9aE7ygN0GWVo0AtLt2RWS18LQ2diXZdp8MeuRFf0iaTIsYcwNunpCAMl7cvWToHlgrW/svWmm+9E/9RpW3EMhr6ebIDsoxDhQSwhHt0FO/n2CvyWVhlitjy8XF41o9b5VVoAdYcnUKGbdmfmR0GJpFXE4j6yKhdCyXEoBg1PBj75CJtN6/YGskw0xuVJztnPNvtk82qh2LkFcJ3t0GFIJdDaLU+uSgsqVByu38VGX2mF9PpGNJyrsnMiU/WjLlLtEqFt4TeAXs5FFiFpB0phPEoyM0zoKifDc1q/pCYsGjQ6vuSzoLp7U88jGVTKgxkfynhjf07c9/eBGcMlraFfNvMRzGaLODi1HP2PTOrIOFl+6w91mRYYGumiiVWKEBbCu8CLVl6h9cDKs6vhYH1QUzjlWEowLosvkrTJZor3bmf42ucpyxl87OzH5pslHdN8HA0ATLzxHpySot0CnvxWD7EdeI3cprGAUDN43ez0cIFDCtfOBPZiEXl9YT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(136003)(39860400002)(396003)(376002)(451199024)(186009)(1800799009)(450100002)(33656002)(86362001)(478600001)(5660300002)(8936002)(6862004)(107886003)(8676002)(4326008)(1076003)(26005)(38100700002)(83380400001)(2906002)(6512007)(82960400001)(6666004)(6506007)(316002)(6636002)(66476007)(6486002)(41300700001)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?U33gsMTrzIo+yCpU4kZqkrEO1glSw0BEttgSRIJtah0WopMEkgfC+B4ZxYpr?=
 =?us-ascii?Q?PXf5bXTQJcF5f2765QkrMf4yYv95l0RKt6Ut3Vp7SCuxmOily96JYWkdVUHJ?=
 =?us-ascii?Q?O2iurEEm+kYOEbw14fqGICsLVUz84WdyNKTuhadnMHbdThFPTJLvFJJhsK0R?=
 =?us-ascii?Q?MfztqcYgT9GqiHWrB1qe1oBUbhFbZB/ywkHnTQ14eYzI6ogsTLBEvrhnawV6?=
 =?us-ascii?Q?CIT3BQwpwCyDENStZJki/DWBA5T7wG5M2jthj6W4YmytBeIXxSxiQ5Vq8Bwt?=
 =?us-ascii?Q?/EdW1T0IpGh9r+xiOmFIpXD/8Yy8GnmiAvH1SbPm4sARzsZYzlbEvAIV/YI2?=
 =?us-ascii?Q?exgKqGq4ygzoMAt2ByNbWfSgTN8murwdYyRzPdBNTVWPSR7b8VvqLfUANw8E?=
 =?us-ascii?Q?RssRxuIFVK7TSdpm3jspF7DW2svq/HVHmTCxkGs0QrNrQ8twGtg8GDfbWNJp?=
 =?us-ascii?Q?GFywcp2pGyLQxNVKLCh3KArUl4c0u7mlhaY+bR5xlgK5pZSVFkgphXeWNMIy?=
 =?us-ascii?Q?J7eOoW9L7o87rQqBmadp4l85as9diSbMc6ppkeGsAktOw9S6NqWfMmVA+C16?=
 =?us-ascii?Q?eLR4tOu8VMVewv9zIU4zlIZ3fL2nIBR9tfNWOuGdGGM8wgbQWBmf0bpeDz6x?=
 =?us-ascii?Q?rzTSgTkHllGjUiAT3kjRhsakBHfJ7utyBzJNSi7QkH+q3Uw6P5+MZxt/Bm/V?=
 =?us-ascii?Q?VNZbdBiSKJaJ2IdHxX+kdKUHi10U6M2/2F1JTy5tnU3t7XbIyPt7xjEW3WkC?=
 =?us-ascii?Q?/DEpDIwnWZ1GI3+CjT0t8yP4aJgJOgP5ZjmdroGACu1KpjZ8SXsEEoLUjVYu?=
 =?us-ascii?Q?RVSW/TPMtuTP6vsMV3hUcQqgxbYTCIRPq9EStuYAESB7hAY8Fa5DDHAjGGH3?=
 =?us-ascii?Q?rcU9IJ6Z8NfsL5lvGZHz6A+ehsUU8ltYVrmHmCgYmZsd5TzGVD+xDddRASzM?=
 =?us-ascii?Q?k+nbHmfN+dhqNtoUWhkSp/Qxm9m2mTEtqG8EtspCAJDTkZGhrmCD2zFSm1vX?=
 =?us-ascii?Q?0AeMexxLh68gSRp8bM2ukNOUz0x+D7VPSm0wxQd2KflCBE2tAkKKnXUDaZze?=
 =?us-ascii?Q?Zp7dlasg159enQIVAQyIU2Fjfb7BQUXw4lx3mDugxqnjdOyj/r3J/B6fFuwK?=
 =?us-ascii?Q?O3VMJxFTT7gJZsR6XXZYwMcbQSW6Ua8PFheIofMaGt9+meAEvs/ZCVT8NvIr?=
 =?us-ascii?Q?75YYlz9/jz8HLqrEbhaR175bdmhtTDC0NbZMQkxBHlTC4gwcBocnRr8HDRQL?=
 =?us-ascii?Q?Gb2MZ6yGpB/onXIk+ZFRo8K7/+vtIxIF0p6wjvW1JjtjJ+F3i8VyHinWgg8b?=
 =?us-ascii?Q?poJiBP4PjKIYZpp6tPOG+jDf+ZTysReqziDlOY+LEuzmwuYZt3urU37Wc4po?=
 =?us-ascii?Q?MHSpuO7NB8tiWnDH5F006HMHU8MDV9GL9AZcowCIAFX/aPuIFhEZI/owcYPP?=
 =?us-ascii?Q?5fwjNdgD5xWnTzQ60VwgiyPqnyiQ71Q2J//S7akCm4ic/eImh6MNxpYgnE6d?=
 =?us-ascii?Q?sHolUpOdT2TPrddNjEy8fDIzb+Ru8Y87tr/8+0sGqUu2/hcrUMNTkKihavmZ?=
 =?us-ascii?Q?b9TMNUDe1p19dQZcAwlh5yOaolGAYGOlzub0vxvkSYLgSiD0zVsmsEQ11LZI?=
 =?us-ascii?Q?iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef1b5a61-2048-49fc-f756-08dba403f230
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 18:08:25.9708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PHV0ivuknG/fz93GAxO+QlGbVZXiedEBf/7EiZnbVjfWCg3jqKWdNu432D9JH5/Zsa7AwySPfU5xX+idXXZVAeDSsleuE25HuHlpCsIJTGU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6686
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 15/42] drm/i915/xe2lpd: Treat
 cursor plane as regular plane for DDB allocation
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:13AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> We now start calculating relative plane data rate for sursor plane as

s/sursor/cursor/

> well, as instructed by BSpec and also treat cursor plane same way as
> other planes, when doing allocation, i.e not using fixed allocation for
> cursor anymore.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Bspec: 68907
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c    |  6 +++---
>  drivers/gpu/drm/i915/display/skl_watermark.c     | 16 +++++++++-------
>  2 files changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index cb60165bc415..fb13f0bb8c52 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -219,9 +219,6 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  	int width, height;
>  	unsigned int rel_data_rate;
>  
> -	if (plane->id == PLANE_CURSOR)
> -		return 0;
> -
>  	if (!plane_state->uapi.visible)
>  		return 0;
>  
> @@ -249,6 +246,9 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>  
>  	rel_data_rate = width * height * fb->format->cpp[color_plane];
>  
> +	if (plane->id == PLANE_CURSOR)
> +		return rel_data_rate;
> +
>  	return intel_adjusted_rate(&plane_state->uapi.src,
>  				   &plane_state->uapi.dst,
>  				   rel_data_rate);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 063929a42a42..64a122d3c9c0 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1367,7 +1367,7 @@ skl_total_relative_data_rate(const struct intel_crtc_state *crtc_state)
>  	u64 data_rate = 0;
>  
>  	for_each_plane_id_on_crtc(crtc, plane_id) {
> -		if (plane_id == PLANE_CURSOR)
> +		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
>  			continue;
>  
>  		data_rate += crtc_state->rel_data_rate[plane_id];
> @@ -1514,10 +1514,12 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		return 0;
>  
>  	/* Allocate fixed number of blocks for cursor. */
> -	cursor_size = skl_cursor_allocation(crtc_state, num_active);
> -	iter.size -= cursor_size;
> -	skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> -			   alloc->end - cursor_size, alloc->end);
> +	if (DISPLAY_VER(i915) < 20) {
> +		cursor_size = skl_cursor_allocation(crtc_state, num_active);
> +		iter.size -= cursor_size;
> +		skl_ddb_entry_init(&crtc_state->wm.skl.plane_ddb[PLANE_CURSOR],
> +				   alloc->end - cursor_size, alloc->end);
> +	}
>  
>  	iter.data_rate = skl_total_relative_data_rate(crtc_state);
>  
> @@ -1531,7 +1533,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  			const struct skl_plane_wm *wm =
>  				&crtc_state->wm.skl.optimal.planes[plane_id];
>  
> -			if (plane_id == PLANE_CURSOR) {
> +			if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20) {
>  				const struct skl_ddb_entry *ddb =
>  					&crtc_state->wm.skl.plane_ddb[plane_id];
>  
> @@ -1579,7 +1581,7 @@ skl_crtc_allocate_plane_ddb(struct intel_atomic_state *state,
>  		const struct skl_plane_wm *wm =
>  			&crtc_state->wm.skl.optimal.planes[plane_id];
>  
> -		if (plane_id == PLANE_CURSOR)
> +		if (plane_id == PLANE_CURSOR && DISPLAY_VER(i915) < 20)
>  			continue;
>  
>  		if (DISPLAY_VER(i915) < 11 &&
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
