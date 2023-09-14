Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B507A0418
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Sep 2023 14:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFA1F10E56F;
	Thu, 14 Sep 2023 12:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1758310E570
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Sep 2023 12:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694695272; x=1726231272;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OY+Eat+UuK7YzQ5WBBqBrKidlCyW02hlukskqMHEPwY=;
 b=hbtB5YTNG4ttO/25I0L4D9TQ6IvXWrozzras4zxQivxlS1T5u855SvsU
 NttwKGrDg9GCbz6+UrnbcFyNvz51tv8XtXq5h3CZGKKpxIJQKPEUuT7TC
 l8rlyw8uP2XSxJJZDDg+/QH77ZB0Sk6uKL9U/JD7ZrhY2WN/2YTjLzOuK
 PTBJVvZUrKxaUEFy89LYC2hX/sWkSXneDki8ZtMGFsgLMjGTTQGdbnFn4
 2OKejr8T2gOzCkDH/lCe4vMDsCTc4PZN8VOPLBJyJgxG1B+MkAJSBXoI7
 b8D3o1kQdKlozgh51CU91CXFt4yoCsxyZcRXp90HixptjmjMqM7n6x2Jl w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="442967810"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="442967810"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2023 05:41:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10833"; a="918233292"
X-IronPort-AV: E=Sophos;i="6.02,146,1688454000"; d="scan'208";a="918233292"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Sep 2023 05:41:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 14 Sep 2023 05:41:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 14 Sep 2023 05:41:08 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 14 Sep 2023 05:41:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9LrfhBPXIOeziJh9zOFSuSddxl//qzHulbAQXNd2RBQRsf/JUByelXdAmrjJRL9RfmhDiZKhFYtHTrtJuS/oTAZzZPV9K40zDIpjQOgxIFdCpGJOQ0X//ORqavpJt6FfnltER+dOV5p1QJBitZr18ONCf0kMZgpOJtRFhe7G+ZOjlZPYX7zy9C9ufwfCUHnP0VdURsPdG6nfmE/V6ww827urwRwB+wvbv3az/tycRSebfkUr7aw/PRNYNlm3xM07UvUm2Bpl2/p4AoGHblkL27GKhkwutM2R0TG+NArRGLpil2glPmq/ZV7nbnZJt8oxNET5SDe7N/0uznaxB0yuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G8kITkjPh0NME4o69C6l8Ch2cg07D2Con/hpiEtchuk=;
 b=X8wh8ZG/vAZYAVa/41GOg27+BLB9SmHXCnMT9KavpAEqdbUDA+InFJHJPeEfGmnOdfM68irkdlY93ZP76gFKCWQD6z+jd2QDkxfT4e0BFNKNytmydzmpIFfkm+x+1UtqfyeKhuS7ewNGyFi7NGJ8jhkG3uYB6EsPrtR5CGipdL1CRvoGrr2XpDEAmz/Im0jLTn/oZr7njsfLdTtcRmqK9+hsNfYmxfvZqPErG00EHOabJYr5wqrZCC7xIalOOQVDdTdOVkjyJdvNYkFUiDq+6S56KxTTRNadwAYJKDpUHQQJVvxid8rTVfTyeQtXs6IOBUGVNuBtMzkyZQw3cM11zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SJ0PR11MB4992.namprd11.prod.outlook.com (2603:10b6:a03:2d4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.20; Thu, 14 Sep
 2023 12:41:06 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6745.034; Thu, 14 Sep 2023
 12:41:06 +0000
Date: Thu, 14 Sep 2023 08:41:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZQL/XTW/m8bjndIE@intel.com>
References: <cover.1694684044.git.jani.nikula@intel.com>
 <593285450602c259b6985972d68511190c754bf5.1694684044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <593285450602c259b6985972d68511190c754bf5.1694684044.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR20CA0028.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::41) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SJ0PR11MB4992:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c5ac41d-b376-45e1-2e44-08dbb51fdce3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dixXvuWdD9A6Vy7IGNosHY/vfsjxMk+MnmoHlZoLdeLuDk99Oaf0qtkbqCnArG7Vza0ews3gZ9oUcYQ2WqEOhaW1MqIre6gYZZELiGaHVlZ+mHx/LbiPsI6A68H/KSLAvstrvQfZI8uRS384YKpU7Zuj4+NENVd7qqHzXDUW9fTM3jdyPtT5Ufnd/en0f9JwQmQnWNEgr7ydw5y0TGADsDytJBsg3zBB3FtSErJoLFe1hgLeNbh8CLGw/DiDO0Zh/Cpv0PSvZIovV9S6+oY6C/SekN7P4CrxOSWXAF8Z3SCnxvsrs6iCaHsx9hE8XlNqjP03EEE807eJWVsi6MTAraClLMBKzrWgi+5ACzdYq0/msMHKy50EioLUONy+tD0MxHUcasSQs3FBqDdkY4kyRKfSGVShKl0Pf3DXl68Kq0mYiSkC7BD9J/myc8KbdL/TcZv0GdK3BhJ72h/R5Ln7dy36ukyARquUMgmMshsyXum2OiiZz8ivbMYk9NYwZVrRCsc4cTsQKPJwU7dMpMDw9CngmolWPFOkmKKoo3SRKQyJyB93g2UzLlnYCOareljo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(366004)(346002)(396003)(1800799009)(186009)(451199024)(2906002)(36756003)(86362001)(26005)(6512007)(2616005)(6666004)(6506007)(6486002)(478600001)(38100700002)(83380400001)(82960400001)(41300700001)(8936002)(8676002)(4326008)(6862004)(6636002)(5660300002)(37006003)(4744005)(316002)(66556008)(66946007)(66476007)(44832011);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zFnTOvCu0KgsXiUQNcVm4ImsQ+AClv/ZWbqLqtm73P/uwGngK37sgFdAa0Ki?=
 =?us-ascii?Q?65OTmLTBPpxY2Wx/s06K4ibWlb9csyxJeP4r5zsWyJgdmfcZ3tafVzbU5ptn?=
 =?us-ascii?Q?mqhXH1h1OsZ42pAC+Am82WPJW5PmsvS++r0WqieKcYMaNh7elA2zMhjhxkH2?=
 =?us-ascii?Q?dmzjsB8M9povfe/9Ckyw80VBKojWEg6DmQBs72+gTv5jOpGj1KqXKMketiZD?=
 =?us-ascii?Q?SVJdLi5FTY/CqZwNPlQxanJwz5fNMctNwJL3QtGXzWawE8J/MlMP6Kgxbek1?=
 =?us-ascii?Q?c8tOhbsjsKXkdafXqOEdX57gd+Ii+iLcplUiaSZBDroTmxgTWeoIgGnDvRab?=
 =?us-ascii?Q?Df4Iyec3EaR6QmjZQFpJgeSbFaZmwLyV8X80PodemG4xLgUd16hgaw37BqWO?=
 =?us-ascii?Q?BFfR/uv3vrGAWO0e5WHyYRppS8uzLuArHips677UCLpBLmFqerrvoqAbMm9s?=
 =?us-ascii?Q?SXBGLixDj/d9cgS6AmQtlwuwO9lKX8noAa5yw+eU3CRkdbgkmMkwTg0UjsLn?=
 =?us-ascii?Q?VFPiF1RerK5q/vaIIAqhFaPjdwv1tMh6cnalpDogNmTq0jTT1qvsWjFhxrMa?=
 =?us-ascii?Q?t0V9+QPXTqJD6/cLbjVpXHsPPUPBxdE9ppw8FSVYAdNFCcnxLHs2dPndohiw?=
 =?us-ascii?Q?EA7sob99Pb1YQ0XQHR7smeZQojxwd1RSrN69SUAn4N3ynhBnoteaXuz51ORG?=
 =?us-ascii?Q?l0KpKgUN8+T35K4UGtgm2EhgGf+iqlI7+iXjERjFayu9/JcU+Av/yQo+4kQC?=
 =?us-ascii?Q?fiN00IbOtorysOMNpX1hWoC5xyyesTgaR8Jb9rkc53UO0kj8s6MW3tUhSMp/?=
 =?us-ascii?Q?n97YHIVEffWo9sMmX08dIW9MouPaCVA2gDI/YFzI7lm5y0pIdokdfBLTL3ro?=
 =?us-ascii?Q?pWgwc80J0bOOm04RFhl9pk5nYFU+mxX2F0TY9j0SVFqjFAOakPlbXusUM1BE?=
 =?us-ascii?Q?d+0UcM3OuMshUO4NnhdZjukyYVC/xdlueyVsAdItm3IbZ901yon5UVrHNTFk?=
 =?us-ascii?Q?5NVUaxYOMaoCimy29Kfcbe9TKt5WE5eVufuW1m2+xl2to4CNf/fLNXzFeDhF?=
 =?us-ascii?Q?Nxm1xMFuS1qc3ID1okyShXu3yyb604995xcRLO0EK1rdjNpspA9MztsTd3Oi?=
 =?us-ascii?Q?vqANcLDYDTIZWHqSK7Y244zczi4RgxTRSRiLbF8+dEa/pZhaKEHenLPTd+JR?=
 =?us-ascii?Q?C2tEFK4N5tPzsG7sEue+FWiUwp52SCAg0eJehdwW9A1uORIUXC3t0utxV9Zj?=
 =?us-ascii?Q?RMhOClAbKcP9dayLYeF2X6ulhxdPL6jvxXZ2tKathIfJDqJ1qdKeJKgIu/5S?=
 =?us-ascii?Q?02qZ1CY95COaaR64QPfBCkreO9D4F+3QoceeimwpV7iZ82+AkoikgTqeIBzP?=
 =?us-ascii?Q?HUMyw1sEAvty4HqNlP2bVS2BntxaLhQ8lwRB01T7CZPfoSVwalcDYSVQ2ztn?=
 =?us-ascii?Q?8CJkUR4/3KFNDXsidtBQC1lqG5ViV4OwCjmtpkJuNTUl0A8VmCnLy8bg6ktW?=
 =?us-ascii?Q?NUhhccK5fZtESaLGXmZ0OxBbQM6ngB2Kaql+6Xz7A0WCm4Kx8QFyQZpigeHm?=
 =?us-ascii?Q?4bHPz4XBLbCLhFrUDa2tUdBmrd39Qs3zXtNu6Vqe?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c5ac41d-b376-45e1-2e44-08dbb51fdce3
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2023 12:41:06.0311 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y6h7eaaNZ7PU1wEE/uwSIsySMkTxQ/zDLaup7r5vGFeeHZ6ifScXHFXLAEF+X2xWZH4NyehTLSvCAUTwqB7PGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4992
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/fb: replace GEM_WARN_ON() with
 drm_WARN_ON()
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

On Thu, Sep 14, 2023 at 12:34:58PM +0300, Jani Nikula wrote:
> Avoid using GEM_WARN_ON() in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index fffd568070d4..7b42aef37d2f 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -35,7 +35,8 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>  	 * We are not syncing against the binding (and potential migrations)
>  	 * below, so this vm must never be async.
>  	 */
> -	GEM_WARN_ON(vm->bind_async_flags);
> +	if (drm_WARN_ON(&dev_priv->drm, vm->bind_async_flags))
> +		return ERR_PTR(-EINVAL);
>  
>  	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>  		return ERR_PTR(-EINVAL);
> -- 
> 2.39.2
> 
