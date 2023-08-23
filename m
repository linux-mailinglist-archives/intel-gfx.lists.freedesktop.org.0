Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9987F7861B4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9775D10E0E9;
	Wed, 23 Aug 2023 20:45:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B778210E0E3;
 Wed, 23 Aug 2023 20:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692823507; x=1724359507;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1sP6Ef5PEyjoY9DqGhLA6HZ0sKvQ6JxjpssuGfKfWxc=;
 b=YsTRjVjQ2RBPbYYNksPj+EAeUUgyp8H/j4ku1NLDr6xy74yU42QnCaXg
 T3R9RrhQ5JIN9Cfl8rdWEU40OG8aod/ZWxejd1/hN8bGWsOVhijRCBU/I
 MHA96ho0dX7Bembvs8SEk3QPVa3/v4txXuNO5eu9ajDfDbzFwIWK9cmRY
 1NyRnOcHSzCcKzrM7K0tNWYF5mgnGfv1uq8KwNZee/vx9KEH2n6t+7mTy
 05mlnenBcr63E2oY+t3fhilcyfuPV6jhOm+/68fK6p/9kOS31vSOHOaR3
 WJqih96uY8B7ZLDBiduQVs9krowST9DRkRdHePfTLoHuWgAtIbMoeh3dF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="438195933"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="438195933"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:45:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686594384"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686594384"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 13:45:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:45:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:45:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:45:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:45:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QIqbZk889tIp8J8jBfG3n7/6HrMZWQStxk5LFezkq/1cTCIBuQu3XF1hPain4v2WRKfMVxF/6BNjUyv5DMxYm6MVR62qhnF6Qe2PIjTXPTFamURpCn2rZQrNNNJxMCAc9JGQ9T4pybbqWHatJbREYKpRGvOGoDDyQyfrmV+iPdqHz1QdCZTIuaHvK0SZtFu3nvOfRu3gw3/1ub/Dzzm90i1aK170rDb9Xt8l6p407wULSLjAIOOxXhBoPlXtfhooY9CprIQspaxdqs9OmxUs6UNdaB2SI8Ixa/cc21h2WjcyFHWzTnUNP+UOxWSzqASgCoaZyIPehwo+zqFIRlD+tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cyhDzjU7DDZIY8doWI80RJ7OmikAytaEJoq/LCMEVGU=;
 b=ktBQB4BDuwSfwQVlQj7mLildFqz/JcW9fXVJcPZMA2mixW6qpbFJVlKrnvXTFWQPklXu8KIjioJq+sb+aZATWe+sh9cJKGrqnXYGSHJ4Ro5iHskuyxrUfu3n/f8VR1yVnMsmrknqMGR4t67BOwATBeSAGIf9fxSjW88lnpIKGdwJuk0aVDugmzIpxBqAd34pCXtWvcZ7CunT2kddj+ywMdccsAansYISUWN8WB3vO0AWvfkA8dDEwUZYT0KeR9C2xrxe6uaU7tyu4ZfCB7HSr6UIPBqbkLIMiRcnCZzWgrdZYYWkPisyxIvZhTP5DrJ21GLoERPGhHDv3+5c/QOMmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Wed, 23 Aug 2023 20:45:01 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:45:01 +0000
Date: Wed, 23 Aug 2023 13:44:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823204457.GK1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-31-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-31-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY3PR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:217::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB7788:EE_
X-MS-Office365-Filtering-Correlation-Id: 8fdee6c9-1427-4b0a-9a0d-08dba419d1df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +qpMvNcCRQoFLJBgImQYrqRfStAPVGpRuhTTBPRgWP+I+u5Wt+osn1HM2rVK3S1tRd+HF9LrbDF63q+O+IexOQrJgg8WzJicVKoG9u6ok2ApSFpMM0hIhjDr57fW/imwVV6h5avvewrgXP5RXB7ldIkeUAReOvsoUfpC7ONYaFgG/ARFRL7kxd5ilzrEQ/UZZIoORnqlTlBj5XFZuYGhcu/Ata+uBPD+tK6GLxMukmRMpV19V1N7B9KglQNyZrPSMppaoZB4d5YYaxYbsAL5VET7sRntrX5MxDphSxtZ3+hH46ZDF8/nLPO/g0wpmr+tM5X7AVzatNdiF4CAVa7zWB9gA3kHMvSCBvpygZjjliU8mBE7QJcceNRDPwE1BI7DH1W4M/Ve97YNlkStPfdZGyuWM81UUbW1T7Cm+rY0emlq97Y0U+5AmVqm7sJBzwDFJii/55AkjdOqiimcOufd1rLeOtj6XaXW5PY9DkR47qged9CbqAH4hCXieCOK8izIHGcny55bT1cgpj1gz8mZ4jCZYHg2TYSpCPegW4EQDduCoI2qMiX8OA87Yk++ApS6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(376002)(346002)(366004)(39860400002)(1800799009)(186009)(451199024)(66946007)(6636002)(66556008)(6512007)(316002)(66476007)(8676002)(450100002)(8936002)(4326008)(82960400001)(6862004)(1076003)(41300700001)(478600001)(6666004)(38100700002)(6506007)(6486002)(83380400001)(2906002)(86362001)(5660300002)(26005)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Y5n8x/Z8gzipAfySxmZPXtrMxWYQj9TVC+9VRl7YMD3Kc1pSb/VJXeUpBLEA?=
 =?us-ascii?Q?4G1N+aeOoxklEIrAHR/SiqqUz5Eyp0nHZLcT2qQ46h8LOOKKGV8vgfs8Yn0c?=
 =?us-ascii?Q?ggoSx3xFXV19lstqjWFs8loeRaNx5KXYMp8vwZ/TTUHS5EPMz1IZjNnB/J2c?=
 =?us-ascii?Q?pTu2XRci6hrhrPfeLpOBZIrEmzo6/1Pb9s8px4g55+i5HuvyoGkGGPGjFr9A?=
 =?us-ascii?Q?8aM1Wx7au4pzojUOutrXBUMSHtxu6HNA9AUMJyH080UWxr4NC8HFmYQd2+Hx?=
 =?us-ascii?Q?yLyDR+8KhtwlHwAtD1Ob7+DNcp+FWo7U4LRZ+Qg7LiW2h6eU/kUuhtUDM09J?=
 =?us-ascii?Q?IPycVVI1Gt8wfHKBeH4F3qQuH8XE7TERg3Ole2EzCYnkDJUjcoCASZp6A04m?=
 =?us-ascii?Q?wCcC0w1RdVnZpa0rombpULU8HtEPRHgpikH62ZFKbm3JgK2LsrI6BldIz0Og?=
 =?us-ascii?Q?Q6R2bdOeyjlHjT2IpZ974JES8CBffXEAmQY3dyxiAsVIAFxgaQk6eUsEMBvN?=
 =?us-ascii?Q?2nhHD0MwYRLAsYFxOAGYpR/bNul4Boo8fS8SGsM/N01I5YQXFhHhv7GZ/Ffz?=
 =?us-ascii?Q?X5LKDzK//2OaKAY4qw/0S5C4AGmt0axGcSsh236nq23TQTSXOs2lk0XeAq8y?=
 =?us-ascii?Q?qE7WjOW6xeQ/IDHZ8TzvGVKDfBLeZPxvS7/OKSeZA/mmDdnCN6EWmeIvY6pz?=
 =?us-ascii?Q?479ZD0IjDmrIK4aCMqSsSQjV1R2F37AnMWs6nwYkyeQpwH9dNcEcjUpkmls3?=
 =?us-ascii?Q?UohoLcqYezz8Qh6Q61+0ZxAjCV57mC3HjLTgCWsYnx7Rk/hN9KtXNSLQhXjM?=
 =?us-ascii?Q?PV12C7V8u8l6pD0zKYyFmQnR7anPp354O78CaNM3kDKI4f93RpqeM6NS8La+?=
 =?us-ascii?Q?2voebPH0qyuEC2L2kUCBpwO85CCNDnjdzshkIW4o8Qr/7RLN5OVvrNzR4vqg?=
 =?us-ascii?Q?cxu+Hr0n2kBZnHWV4tSzXjLdxJwYmST+W8RkItR209SMSeenDKw6H/y4Yjxd?=
 =?us-ascii?Q?SP52GLiuSSQwpBjQnQ0jUxXcFPrhO7ZfYfLGRYSDQsnhhc8pdaHhI6cwBykl?=
 =?us-ascii?Q?JRfww3oTm6sgA2SvXwqMqL5JC5ndu3ByQ3iyNT1hdFM1E1eGmVzYnNRq9xbl?=
 =?us-ascii?Q?6vUWbMJZ9RhuHwVS+5lbJwXWvowuQouaFB/6+ZeO/lGU+nSrqlhPYazyxJdW?=
 =?us-ascii?Q?6uQ6IwvLBllu7HiveLmIXNansNa4mh5uqPddwr7ODwfJKp6FvU1JPX01LOLq?=
 =?us-ascii?Q?VAA8yuueK2mfhMx5i2otcPMUQXSMasFYQvCDY6BkoThdOL6jQDhcnKWd1Wab?=
 =?us-ascii?Q?YhzMLyZyHU5e+vCEz6aknxCgaoFsxRfcsIgJzfXXOpdWwBZG+TqnaID5C3CH?=
 =?us-ascii?Q?Peo6ZMsGP+gf6iNIuqiBE4MQO0IoFSEmVhmrSgimfQ3fJKuk/NFxTvp72FPA?=
 =?us-ascii?Q?49IqbNppkELv9Exl+QI+YWQLviEmS1s/jOEYA7CaOCLMbq9uDK8XkWUXHSYA?=
 =?us-ascii?Q?4A0XLePPDbALjh0TG7EvuMv1Y9tfIR9GL9akkmfv6UGbCHxavi+d6cQ7UM/+?=
 =?us-ascii?Q?+PvbytvJzTJ86s5tP1k+UMKpo8p5SC8vqt25aAh80CTY5p0ni0MHtNd0+nGK?=
 =?us-ascii?Q?sw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8fdee6c9-1427-4b0a-9a0d-08dba419d1df
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:45:01.1188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ntk1QC/cQObMkPKytg+ISnpoQ+7XNFsxSeY2xzbjiGGSmxzpv6i+xG5erYjC3WJBVxBffSKuOw8QT6CBmOP+V3ovjpR4xDwModMHeTNYJbo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 30/42] drm/i915/xe2lpd: Extend
 Wa_15010685871
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

On Wed, Aug 23, 2023 at 10:07:28AM -0700, Lucas De Marchi wrote:
> Xe2_LPD also needs workaround 15010685871.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 4207863b7b2a..fdd8d04fe12c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1839,9 +1839,9 @@ static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i91
>  
>  static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
>  {
> -	return ((IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv)) &&
> -		dev_priv->display.cdclk.hw.vco > 0 &&
> -		HAS_CDCLK_SQUASH(dev_priv));
> +	return (IS_DG2(dev_priv) || IS_METEORLAKE(dev_priv) ||
> +		DISPLAY_VER(dev_priv) == 20) &&

We may have future 20.xx platforms for which this doesn't hold true.
This should probably be a "DISPLAY_VER_FULL(dev_priv) == IP_VER(20, 0)"
to exactly match Xe2_LPD and nothing else.

Note that the drm-intel version of the code has already replaced the MTL
check with an Xe_LPD+ version check, but that hasn't propagated to
drm-xe-next yet.

While we're here, we can probably re-order this too (newest platform
first).


Matt

> +		dev_priv->display.cdclk.hw.vco > 0 && HAS_CDCLK_SQUASH(dev_priv);
>  }
>  
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
