Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED74F786200
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 23:14:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8AA10E0F5;
	Wed, 23 Aug 2023 21:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C407B10E0F5;
 Wed, 23 Aug 2023 21:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692825286; x=1724361286;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DufDFjrBq/fCIt4MSQsfWvBvsyzM/kwOh9Kzsbg2uHo=;
 b=kUcrZnLC9mxwMs+4Ng6Te4Haen+xZURhEzyWMRO+h+mqMUGN1lJ1xff/
 tZzES3OAesv/RIweyU17Xd0ZGG20KQTXQWb+tUAWEu8O6uG+44E3cGhWC
 7QSisOz7E0RvWP7680KC/oHyow+dqHAF7Xn9X/esr63mf5UqV3MXdvLAK
 y+NucyShOJfJgUSFT6IJSGOXpDecUAqIWpB1r+nI8K6LPQSfWgM1GAc1n
 lToVXQI924VINYWqbzLx1vDx8YyKgoNIg/4d47/bZqye3UISaC6Qoxfg5
 L3/tbfx0+PlanJzSS8D/U+yK8n2qfWs/mqFQxBqT09vJD1rAa90JENgYA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="359259512"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359259512"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 14:14:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="910666558"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="910666558"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 23 Aug 2023 14:14:46 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 14:14:45 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 14:14:45 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 14:14:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YxEu1IERS/g4EAUZ6q/SHa3a4NqfeLZTtG1FFpxovBZ2RmI4uv+MZ/9+MgojWE3fm8VxkKeHs4mq+RE8jQaxTlTIrxrQiJOCO5iGRV75/ImTymZ2T75evbQT160A5JeZHmE0WjgGj2B7yQFVhP++y78nNTjqLFL7eyxmIdwhSnxdYQefu+kKQoWFi4e1XG60rd8SWgGWfcVo2L7uTeAAMVNlHRv0vXhASLFAX07wEu91lyX35nLuX3QLoDNTRHToA21JrlUe4vFuN59kVU166EQrMATHpZm6NrV226XWjW6tA5lr3ALDuDeesPzGvVPOOstTbMw5TEG816bCQt3TRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2BzmA4uQNSLGkaTWiQX6D/bAZTW9zALjEmdTzN9WO/c=;
 b=Kt3wsJlJl8xB6ie6icW9D9PRvVqgmnlTdt6jhWqUrIarj8rfftZhdbjfv3ZuxBTE1DlxfQNXTtaN60ogk2swoUh3t+7kjpJukSkSAjmHNmKL+tK710H9lOGUT7CvQi3BRFgdYUXmFXqFH4riFzo7x9WIwQPWghvgXtDBnEbKQpWOvZOnVRwos6Z2PPQbLMBXX8eZCsFZFpKpDXfC/S18lZQVcBMd+IdRsS3hJZIteNb9H8OgV2WvSfs/PhRBythwR312C+M83zVhzLRnIbMFTDjJTujF9QyNeCD7BAJuamPqutwXi4ITrb9S+gCWQnU8kPHquenzxJ5tlIQzWRJVKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ0PR11MB5119.namprd11.prod.outlook.com (2603:10b6:a03:2d6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Wed, 23 Aug
 2023 21:14:43 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 21:14:43 +0000
Date: Wed, 23 Aug 2023 14:14:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823211439.GM1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-33-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-33-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0127.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ0PR11MB5119:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f026358-6a52-47c1-9d03-08dba41df819
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IdL1Bdylkco3cmF/klko2T8rWPfUPwM6JJ47coN8BetWbpj9MMrcMSeImfOTh1nIeNsB0lfaVX2aL6Z7QDGSdgsO+06suiamkU1XA22xvjDksFq9mr/s8X2yUR2bhk0iWDjM+lHKAzUnsGZue5VqzKQV1iqu6QHgNHYkyoXOFyHKiDWYuXEK3z6S8LQ6lGZawMdH7zAs1iOL/PdrrV8O+5gdQOhljoA7s6qdUuyczPHux7Pjtp8txYw+RhPkQT+v0J8XWx9KK4YAiKT7lhCBJSv+NyJysCi0mtMjsQ3O4QTk4+77zTR8t1QRgV3R/ZO77p5mPlyOkNDAcKNQPevDlxAeaVGgo5OCxrzJ3AdelRp5osSXXzfLOfVwAs03MjxDGDY/ummRZu+w+pyuufgXkk6JknlEFqkL/V8FSKffGM2J1u+rC9gUUD1OonKipz3Ih67RTbdSQ69ORAys0CKBnx0G5fzee8wldSxTObn755w4s//CsuOVc68kxERz9E1wRErKQhxAolOvT+6Qhxg/7ZfZheaGG/4zy/212YvEcwdre4xzcpwmgEBMzI1SuABa
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(346002)(136003)(396003)(376002)(451199024)(1800799009)(186009)(2906002)(83380400001)(6506007)(6486002)(38100700002)(5660300002)(33656002)(26005)(86362001)(450100002)(8676002)(107886003)(4326008)(6862004)(8936002)(6512007)(316002)(66556008)(66476007)(82960400001)(66946007)(6666004)(478600001)(41300700001)(6636002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/d4GmdmBjlMFCZtVSGPtwGNbByklgh0XpcLbV7Z/rgOoOa1niICqMerBWQkY?=
 =?us-ascii?Q?rxLpWVSNWQKHHKKAmvk9n9eBEf9DmeT3RRVCYEqQlGUY7HUt4Fn03tW4rvq2?=
 =?us-ascii?Q?V2NQUB/fidIMGfyqdmmBfvBRDJgIemYiZBjydWX7yMp1jrHrc4g0EqH5owp6?=
 =?us-ascii?Q?VX4fI9gAZZ9yoMcV/x9DVq/iHjyOlJrr8I71Wg8kESQ04bWbvAPtn7AeJ5uJ?=
 =?us-ascii?Q?HpWz9MvTc3BM6YgQHMUnYobQPz3x5aQnAnTSK2SYAE1T4Rh49miXpcwusyNJ?=
 =?us-ascii?Q?7PIV/L1ewimoq7FZYD8+jvHc4A/B/ucf/vAJ0IoF5J2+M5On90grZrl/rx0v?=
 =?us-ascii?Q?QZv4x1gCvsodLJPMeH69vxmMzCXdVHDE4KadFkXm8YNvkV/VJ3eQeVzYHBPD?=
 =?us-ascii?Q?h4APSLVJrb66tASybhTqR2Yi2JwqOotGTeOIoI1Zyxvgc0XTHYgMZTpOrvPk?=
 =?us-ascii?Q?9xZpGecJs15Xh67eSavBjvJ8qYyJ/0V+YsF3FRo6X5mS5nxvPtEPTGinLyiu?=
 =?us-ascii?Q?UtLnT7tEr6P6aqmkcT+PYmfkmNMpxw6Gcu0ml5eRUGAzUE1CZ4FucAviFPeT?=
 =?us-ascii?Q?+abnORuGGtByzsTZWQsafHeHOI9CdB3pcg2xNKGUmAz1AwA9Q9SFOHo3LHWw?=
 =?us-ascii?Q?yexwejEiBt0nNQKaFO6eYl68i02jraKPs2GdR/QQ03XrRIfoxHDEF8JIS0oq?=
 =?us-ascii?Q?gdxRkD3VyjgCyog4JoA7Hdd6zcx2wVdM0aFy0p2n2U+SQJ33CeDgQdhy6TZV?=
 =?us-ascii?Q?kc7vrEzFfpnimBEKfcgxm+lE8s9sZbwM8BgkkN5zOe7uH3oiqIu5MRUgW7vs?=
 =?us-ascii?Q?Egtrt6LSlSJ/a54fyACz95f9qwO+j+SyCJEyAZEaTXGIoayu2sgqCt0FyptV?=
 =?us-ascii?Q?jKbUTmUGDQlj/n1Wt9joYG7Uo6uTr/dE9+hveL0SlZUm/n/xMu6xbuqWTZI/?=
 =?us-ascii?Q?4LsMKIp4sDskVTHVuv5t1TW9e6OnHzsvTbSmuDyT9w+Lis/Ygy+B32SyrmZc?=
 =?us-ascii?Q?u0FXITiNJlbEcnqycAB9z1ST1B5DEkqSDIxUu1RhdpSC5ghrNPGhgIPjQ9fK?=
 =?us-ascii?Q?aBcIGh7z2fOfG4HzzO3nqzzH6rWpg1fWym7d8w0um6pGnbf9TGMiFLOrjKBB?=
 =?us-ascii?Q?L6aYIE0tdK1mWu/duRRkrVo0y+F5/tZV0RonKKqR89HcYJvnLNHFN4TlK2JL?=
 =?us-ascii?Q?6Z/NGzy613vmaS6hwlKkGVHdhrp3kGwHBfA6HNON811ga3WsQU8fyiQkcNP8?=
 =?us-ascii?Q?OUvl+SBUBtngZWeUT6AaVVAKkscsCazqBE/3r33NMXZi3CnP+gCoAgTobSeb?=
 =?us-ascii?Q?wS8YYaFkBGiNYHMTJuwEcTrqIQ64NBwl2c1QIeuGsGkq2Jms60dDIX7kXCuq?=
 =?us-ascii?Q?HgOIv2Y+0VM+zXqTI8m2UkXA036/HMmdOzR7QecdPK26l8aWdeJGkFOd9vVG?=
 =?us-ascii?Q?150xk+0T0qCF0BTQC+MBxP9oFO9vcl1+cRxvGIe4frD2plcmWEFWCC3R+AVO?=
 =?us-ascii?Q?JYHW8iGK665CpVuE4l1W76mO4TfOriUXXObeqWRgks9Mf/MYXkhOFX0wI5cO?=
 =?us-ascii?Q?vFx0F1zAFLJCy0XbwunfxyN2ER7rW4C5LPozdrxlReeQy6V8juwD+MYiXXJd?=
 =?us-ascii?Q?WQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f026358-6a52-47c1-9d03-08dba41df819
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 21:14:43.1963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LlSWfTq4ZMPQAYdkMImuGllNGLUrvopHVJ0ZMN52t8kJE+6psAvcrKhdIXP+G63Q0chbOIjEYwva6ix8VtPYkwUbnOPkO2BliwGshT+0V3M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5119
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 32/42] drm/i915/lnl: Introduce
 MDCLK
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

On Wed, Aug 23, 2023 at 10:07:30AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> In Lunar Lake we now separate MDCLK from CDLCK, which used to be before
> always 2 times CDCLK.  Now we might afford lower CDCLK, while having
> higher memory clock, so improving bandwidth and power consumption at the
> same time.  This is prep work required to enable that.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 30 ++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  2 +-
>  2 files changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index fdd8d04fe12c..3e566f45996d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1223,6 +1223,7 @@ static void skl_cdclk_uninit_hw(struct drm_i915_private *dev_priv)
>  
>  struct intel_cdclk_vals {
>  	u32 cdclk;
> +	u32 mdclk;
>  	u16 refclk;
>  	u16 waveform;
>  	u8 divider;	/* CD2X divider * 2 */
> @@ -1524,6 +1525,8 @@ static void bxt_de_pll_readout(struct drm_i915_private *dev_priv,
>  static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  			  struct intel_cdclk_config *cdclk_config)
>  {
> +	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
> +	int i, ratio, tbl_waveform = 0;
>  	u32 squash_ctl = 0;
>  	u32 divider;
>  	int div;
> @@ -1574,10 +1577,36 @@ static void bxt_get_cdclk(struct drm_i915_private *dev_priv,
>  
>  		cdclk_config->cdclk = DIV_ROUND_CLOSEST(hweight16(waveform) *
>  							cdclk_config->vco, size * div);
> +		tbl_waveform = squash_ctl & CDCLK_SQUASH_WAVEFORM_MASK;
>  	} else {
>  		cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_config->vco, div);
>  	}
>  
> +	ratio = cdclk_config->vco / cdclk_config->ref;
> +
> +	for (i = 0; table[i].refclk; i++) {
> +		if (table[i].refclk != cdclk_config->ref)
> +			continue;
> +
> +		if (table[i].divider != div)
> +			continue;
> +
> +		if (table[i].waveform != tbl_waveform)
> +			continue;
> +
> +		if (table[i].ratio != ratio)
> +			continue;
> +
> +		/*
> +		 * Supported from LunarLake HW onwards, however considering that
> +		 * besides this the whole procedure is the same, we keep this
> +		 * for all the platforms.
> +		 */
> +		cdclk_config->mdclk = table[i].mdclk;
> +
> +		break;
> +	}

I might be misunderstanding something, but from bspec 68861, is looks
like the mdclk frequency is always just "ratio * refclk."  Which is the
value we already have stored in cdclk_config->vco.  Do we need to do
this extra lookup or track this value separately?


Matt

> +
>   out:
>  	/*
>  	 * Can't read this out :( Let's assume it's
> @@ -2191,6 +2220,7 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
>  			       const struct intel_cdclk_config *b)
>  {
>  	return a->cdclk != b->cdclk ||
> +		a->mdclk != b->mdclk ||
>  		a->vco != b->vco ||
>  		a->ref != b->ref;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 48fd7d39e0cd..3e7eabd4d7b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -16,7 +16,7 @@ struct intel_atomic_state;
>  struct intel_crtc_state;
>  
>  struct intel_cdclk_config {
> -	unsigned int cdclk, vco, ref, bypass;
> +	unsigned int cdclk, mdclk, vco, ref, bypass;
>  	u8 voltage_level;
>  };
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
