Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6B866A1F7C
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 17:21:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D2528949C;
	Fri, 24 Feb 2023 16:21:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93D2A897D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 16:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677255660; x=1708791660;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=G5p8mk7e12Ci6VYJlfhMTSx7TDy0WOpJtGavQPNDFU8=;
 b=Kyys1zmukYcmpBc2ejj6UxQ7bYnF/udv8NmuqV+RPPKDcQvMhJKipTNm
 fq/5ikCi9VI95qz8kuiH+3Wj1nMuff0YXvFY3WElpZFMop+82mYZpsZ1S
 +NkVleAnQiCOVvgFFk/3Zn5pWjluwzZLdNDNlbHjoOItN+Ok+8dS/0iuf
 5HLLeVsE40zxP9uvanTlzJSPYoWTMBaqBSamt13StPRKheKgW6h0q3/6l
 sQAdxglIvG8bvUbBPp7SVo4/16dFSA1fZ3XHYy/kQKKL5lNcx7fvbf6el
 AX+iG4qXFKzf7f2+mGg0mQ+RX39X+SEbsv6DwviNgf2LOxXsz4VMV5wwy w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="396025079"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="396025079"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2023 08:20:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10631"; a="741711278"
X-IronPort-AV: E=Sophos;i="5.97,325,1669104000"; d="scan'208";a="741711278"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 24 Feb 2023 08:20:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:20:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 24 Feb 2023 08:20:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 24 Feb 2023 08:20:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 24 Feb 2023 08:20:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XY9SCVbGx+gFSt5mEgqm11fYe46Artmstd0u1qd2hLVgVkBSzcc7mZdUUE+/3FvjLrfBlJQy6i1hyzF7qfdXwPFEtKe0wMebNlXU2/WyAohWyizwu3Nb9YVeDMPYhc1G6s+ypim1v2shU1K7f7zPD+Nk8Rk+t7p09cXBj4Y7lX0pmlxe2ac5onr1RbGN1Ee7NPgqOxyM9/Qh6V10PF2LOZYI4ZnsAbxI+canZDWwr45UqZCKZasQK5EXZ+E0h1roDtevzBK0aWZtjfwLiEljuBJ2IeTgxKbrqOBejolse/NaVWicnPiDMpxZgKiCRo/TzpN5oevmXoPMyTt7Ebuoiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dwi6rszr9SS1pNLU9LPaEMngqOLP6f8VrncFJlQTQ6E=;
 b=dyryfUBKpjoAr2+CjJGeYhO77aJOinmCjb5Ez5+g7igeJr8uVmNMNpveJQM5vXo4eo7wy09Y7a8+SvpUno6ktLz16qROHujSZKWhJzfwH6pR/RB0JBa9xJewi4FGJ3VzhS3fx7UB0ESS+l0xEF8jyCvngA4dt59AreM9HCqFvvKJl5emolimGwwZMU0L8lIMhgyEBrNAtX8pUMW2hy0M0ZehAK5yGlRJZ9vP/nRHUmEHncetO0uQ23Df2//q1JPCCnjm3w+D3/Wg1LyTvpVw6eJWHzpkKkDxSLoxNqfHd9uEGfC/4Dbl4d/XzzziTC72SLmCdJTzx7eiP0Tc6IudiQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BL1PR11MB5446.namprd11.prod.outlook.com (2603:10b6:208:31e::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.21; Fri, 24 Feb
 2023 16:20:45 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6134.024; Fri, 24 Feb 2023
 16:20:45 +0000
Date: Fri, 24 Feb 2023 08:20:40 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y/jj2AjnRF9Whmd5@mdroper-desk1.amr.corp.intel.com>
References: <20230224153707.813953-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230224153707.813953-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BY5PR20CA0023.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::36) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BL1PR11MB5446:EE_
X-MS-Office365-Filtering-Correlation-Id: a2d7e8f1-d2d7-46a9-51c5-08db16831423
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5XEQZDEMljuEdKJOpYEsvA4JVUxTDOF6KasrGD62m9B11+o9oMwhVgDv6gtv0LtLn8xQLG5elLF1Lt8Hf7PHgU2H6lPrG7DxZjlJMnXpikb19vwroIlLIOLYCuddKnfAORyHta9fVcD0XtAAvBYPizuruRsxa2l7Era8w7Aa8AVYaI52zPkWd2RbVXfTNsje4+06/ty9shibi1uuuOB3i1Kjlm9TD8XM993OTLKBpIs92vRiL2+yyEx+7yyPEo+q8+anfxSv6Yt9hgwlJK5BKnU1v4C7rfnXZ1q6pcjkQHkOt/B5uEM7TtsQQdntVrM109JdLlTNLYauWT7Cin4mv7+TxNuRM1guDNc4FZFubsUzZWRngXh1N5Z2RqjdIfkcjZ3pxwz42GFsnDrvn8M2VzvmcMLFtq+excxCyvAuoi0UDjddAlvbnbv11td9IRkb3DhNa3kS6x1Z2zX1kkZGD54cPbda2XzeQL4py4dpgRZlHocFQkojgxcwhy14m0XI53ePUdjBSoUlV1wJJUPRIcj3KMlnHd5ALY1N4FawvZ7QcDhjUd/WbvE3ZJqaz/n5sD30Sigvc/KyGZ6GEKOIB8Ic1gWuqTIwgoQ7TrHJ04vkcKiIVd7wrDEkssWq5tDFAmvSBO0SQwzzCaigta9PUg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199018)(2906002)(6862004)(8936002)(5660300002)(41300700001)(66946007)(4326008)(83380400001)(66476007)(8676002)(66556008)(6666004)(316002)(107886003)(478600001)(6486002)(186003)(6506007)(38100700002)(6512007)(82960400001)(26005)(86362001)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?r1qnwaQX+c8Z7bsnQQY8nU8dTHlM+14uGZo4q6xF/dzNWuf34dmnKofzok9K?=
 =?us-ascii?Q?Jtcru3OQH8Qm10UN6zfmSZad6dK30ZZqqGzFAeQ0UderaHb87xtYHY7PnHXx?=
 =?us-ascii?Q?zFjrslz0UJbBghzn7c3snQHV+s1hAFGbcRxMXOU0trnicITaZi1gH05SjKXL?=
 =?us-ascii?Q?XqL+hNHmtUWqyNYDy1KSaS3prItKKGRPmqEejjJsiz0z3PndDVaxoAm9g+zT?=
 =?us-ascii?Q?G1H33sBa6ip2v6yFvJ2ZWq+D5Yw7BbU0qXF2Ac5pYQf/ckG33eRmxxEIl7UZ?=
 =?us-ascii?Q?+r5smwcMhQAylJadOVcQ8gpkuNBaBE9r5ra38txb60SstDFPqNk6ny1HEBev?=
 =?us-ascii?Q?W+qnpa0UTRPg6UrA3cxegPRLnmFiD6k2XmYw2BXl1lDZV8/0pzVd2+kvtuYv?=
 =?us-ascii?Q?+guz0L/pXqHKRhDK3H6+1HKtNzkB/lie8DdvjWni+G6D9gRhqKm6VsJW9Aab?=
 =?us-ascii?Q?rJReYlHlO6j0SK4XsjCHc0ltLj8BQl9cf7S6JZ1V6SsjmaOba71u14mQbiqu?=
 =?us-ascii?Q?e8Zl44D5E51h91hXMxai/f2her5uHopueT7pNJpIx5uqVI4qR03JrvGhIRhP?=
 =?us-ascii?Q?OfT8Ns69gvNkJgUufMGEVblsVEQQXXP0PNjwRpc7N8noMJ3YYbtaozT/RTAG?=
 =?us-ascii?Q?koidzzRvk6mu4H3c/PaFf8/OgcDh4VFfyIBbb7wVOSYsfYHvCET5ya9dq1k4?=
 =?us-ascii?Q?jipm8Lbfe/Uek9mijoklWsG+rFnFxLZiW7WL10BPXbqQkZ2nsVEIRyq9Qi/M?=
 =?us-ascii?Q?UQYuHWlVWC4gx2qnxcRHtv130h3p8ZqjwhdbTNIYZiKmq7d4IyUOQ8LBAYx9?=
 =?us-ascii?Q?DNtfaDGINAKR96cljxdvpzkyE+EFKI9+FvhWVOYw52I8fyrjEpAi7NXb1OwY?=
 =?us-ascii?Q?HsCYFtdrSDczYW4lNM5vuahPowWtAM5g0hRIW81CDLPU0DYUeKUEz2ssyCT/?=
 =?us-ascii?Q?nVvC+Ww2tVuRad3xJm88VMXApmwuNiNwJlQ87axPQkeshw+63R4VUetG0yJx?=
 =?us-ascii?Q?a/I6wTTuuU7vewMmJ6SIL3TG0Ta+1kiF+ppaqBiaY0xrHllUdPdtauzi+9RW?=
 =?us-ascii?Q?/dxGwm3mIYsFuMa3BAgA+tl6TGqWdbAQfHXTwJMtQ8la/CJHDt1XhDK8ja6w?=
 =?us-ascii?Q?C89Egdz6EicmX2yYCu1OaJ35up8VZh0OwjMpQq7VuPtif6PWjUjAPeJDBCkB?=
 =?us-ascii?Q?bEMf5A4Lc/PN0Ya+nUoYqzhsyFDh9Dz1RDfLMJldOVCtijjQty94Xv1lyD9X?=
 =?us-ascii?Q?8P7mTU0Zo3IU2+d7YOSqDQ9DDLbAM1FiGws+BeP9vT9wx1oD8oWnoEnSFH98?=
 =?us-ascii?Q?SFN+U90Gd07Y7lW1+hSLwlnmeSDY47Wu+xKL5sBOjsSZjIdm45a+1BngVO0s?=
 =?us-ascii?Q?/vHb56V2FLOYDAA2nYHrTmUq9gHpliPpN5PaQh8d84hVA1OqUPlXp8CIGMCT?=
 =?us-ascii?Q?Yx+ljzyBrxIX5/CXeFEcSs3KVK3Melbte6uJAoOQbOEueOtkVevjQpv2RkMs?=
 =?us-ascii?Q?ZMW7saWjtudckFJM20Ua00X2lPZneCiSRqSlbrr7++BBbgoMzHGzxMEBQAgz?=
 =?us-ascii?Q?Cey9vsBTG5W+N9ozcPZ9cnbayXdSzbpFNoVfYYtuqyp91YNQHLAfYSpPmL9Y?=
 =?us-ascii?Q?gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2d7e8f1-d2d7-46a9-51c5-08db16831423
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2023 16:20:44.8394 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AoHJr97hlXfWNvrh5X4uTdTaBXb/lc5ymRib6TpPzl9IMW5dPPIgRAoiFW7LjAueGniZGqkOTfaqMXDfULd+6KrAkNy0AIwS1LXhrsqRXw4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5446
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused tmp assignment.
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 24, 2023 at 10:37:07AM -0500, Rodrigo Vivi wrote:
> These are left overs from the conversion towards intel_de_rmw.
> 
> Fixes: aa80b2b12b89 ("drm/i915/display/panel: use intel_de_rmw if possible in panel related code")
> Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 11 ++++-------
>  1 file changed, 4 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index b89e96bb4150..2e8f17c04522 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -352,20 +352,19 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
>  		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
>  	}
>  
> -	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>  }
>  
>  static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
>  {
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> -	u32 tmp;
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
>  	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
>  
> -	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>  }
>  
>  static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -376,11 +375,10 @@ static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_st
>  static void i965_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
>  {
>  	struct drm_i915_private *i915 = to_i915(old_conn_state->connector->dev);
> -	u32 tmp;
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
>  }
>  
>  static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -388,11 +386,10 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	enum pipe pipe = to_intel_crtc(old_conn_state->crtc)->pipe;
> -	u32 tmp;
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
>  }
>  
>  static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> -- 
> 2.39.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
