Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AC6663033
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Jan 2023 20:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D7210E07F;
	Mon,  9 Jan 2023 19:22:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4660D10E07F
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Jan 2023 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673292142; x=1704828142;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=I5KIzw/66z+cXAkvEnlGECDYxxtDpnesWtO3kNyQxN4=;
 b=XaP+PNzg7DBixp8HHofJ0SGSEkrAMML+oWwXi0yWtZUbNyZG6xwTuITS
 eavPpND1O8Rl+xURH/fApsvVhRkdv8qBbEhbt8L9J/amB00WMTKM4jQ+l
 vqB1fW1dVEHi+hxAcBZKYyK/f9NsaIruQ2u7nBsmBskSySTKWfiMQc83f
 ENGLqc8d1SbHC3ba5Vth4DhZ16SrL6Kr7rBQxh7TtNUhHV82FAM6m+XDS
 +1AbS/22jk6KohiRD6Sv8JSGWYJMuJG5ys7pxJHaI1vw2JXVfJp+vZKrG
 AO5vmkkm0onrzj05PCEQiAipdz3FG+Q6CSOYy485C7/BIBB0hMSKpUZel Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="320658400"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="320658400"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 11:22:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="689139302"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="689139302"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 09 Jan 2023 11:22:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 11:22:19 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 11:22:19 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 11:22:19 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 11:22:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jQQV14/b1TXw3Iu7RRIn1QHqBKJFQabuH5IVqRKzpCKdB8ewT5iAXZixmFUVnycf/ZUf+lXkpDQtRj1LLTwVUUKhCJge/c2jZ9Oa15r5fL/CkeNDb+qY0r2zyX8qhVfSX9F/A2Oy2Hxpj6uXjSWEXCAIde6zrdpVFrRhClSRaCpOQ4DCMv4msYLDuUxGcE+nloBwRYQOjSM7mUHF+q23ZYl7A1tsHD5zMlUPwqzbgdOkYFCmsgdLqQNPOcjXBLFvCUlIGsFCg5dg3SjcOzPa3Z/cND149a4e1fb7nz9lJJ46wcZglVxWrQawwzmuW/rD2A4BU3ivB4NtTNfybXOiNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P5yX5preNa2M36l1zk1+PK96+vkVp9TJ9b+6guvVYCo=;
 b=TF+8khkcKcEryu6R+Hblj811MlGSAKxe3arEJltZU12VCQ/V36PZ48pBhIFBe85K+KwtDxtL1t+YnvL+YTNrlE26hJQ5DHGGF10RGGm5i9OXkf2sbTtZcr9SCnmJrmxwardAE/i3gxwX7ci74yJP5IUq7ApwRztp9U1Ch4x3GGKRuu0OfP6+2OhYL0mJF7LifOIAPexS+MXFx3/fkeht0K+tQxefd48qlxWTa30PmUiK66yCuvrCeS88p2OWYr0arVslAHdESQy5wWAqI8SLD3jVT85WWLZ9MONTaokbbbImZzIBNGvChE8vOYX5NX56178joaQb7AsEw/35CYblsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB5426.namprd11.prod.outlook.com (2603:10b6:610:d1::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Mon, 9 Jan
 2023 19:22:17 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Mon, 9 Jan 2023
 19:22:16 +0000
Date: Mon, 9 Jan 2023 14:22:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7xpZOkbqzaLzExo@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-7-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-7-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR07CA0045.namprd07.prod.outlook.com
 (2603:10b6:a03:60::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB5426:EE_
X-MS-Office365-Filtering-Correlation-Id: a701070d-55d5-489f-70d2-08daf276d1ae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0nPRW20ai3DiAXWHbRq7ipSyuaNDxZyNx+QaAMYCIkpQgyPDggaW+L2HRzbr4bwcCPF+TNGpA2yMrfgsP735dlVngsBE5MtwVuZkhcSmaM51hiKrKQMtery1HhaA5yhCOm+JAyv6vEdqwk5C5Spdbqv5l5QW74aPyidPm8lSdcbU35DRIJRmrtZIzWgvZr7yhQwbMrsieiGPU+6HL2w3pscNqhcC+Kt/LuI39HayjjcF8TVv7Ditco+gb0RNbxQ1w1gqEcGYpKeVyo5UMCVFRnXhJRdpAoznl538xucLTgzTRDh5SqH7bvMx6i/32gA+QFOrgMj/TJ7agylUwQ3FTQUypr376qEzkWY/qqdl2asnQ9eL0vSr8Bm6pZ8dWVuV8IfXYmA67eiHltZ97lcTgx0Hgu9pJ+G2MfbHxkmNaXWsEWzzR89n7dYFoG9hEFTlbsJE8oTveooiUPR4aMrAxYPG5WwTmNSv9fi+WKSxP02Mp3EC64tJl/tp9Aoyl5i7lDRnxHBqv37D9vIxQmxqBxHB6q3Tymlu99AC+OYQaSm/V+O1/ggiCkRJv3GUgROQFRegvcAeUjTSHFa6ERqM4s+U+T8qPXSZYdSztoFav7Ap/nQ0+0RGZAo3LKcxyAYR
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(366004)(376002)(396003)(136003)(451199015)(83380400001)(82960400001)(2906002)(30864003)(41300700001)(44832011)(8936002)(6862004)(5660300002)(38100700002)(186003)(6666004)(6506007)(478600001)(2616005)(6512007)(4326008)(26005)(6486002)(66476007)(8676002)(37006003)(316002)(6636002)(54906003)(66946007)(86362001)(66556008)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oYdKDm1cYUV3NQ6LZDuvYI0myY4QhF1qff4soi41nd1Hi53ZmsBil9cPCw6J?=
 =?us-ascii?Q?9xQUmQ/2mlezSLqbV0aHiFf5KFIk5nByKkUyK0Efc8sA050g3UpCze5OSjwf?=
 =?us-ascii?Q?IoNIXBebzxNO0NICqn/JwbgG5noJtrz/yeD4lxF01PpO6le2n+Ay3VkC9uu4?=
 =?us-ascii?Q?1G8wrbmR+Q73ks9ykTpOwgsqpY5eDmIhEhsRsr29ScGLQ7DPZ4FfUgfKM/g6?=
 =?us-ascii?Q?AnqnCr5ARV71LzKtcF2CGwBrlyhRlDC35UC8/K1E6cssIvnoAiFP8xhc/vgz?=
 =?us-ascii?Q?XlUSXS4zKPsFR7chGC4KsQ6Ki6Vym2YgFVxP6vVRthobd/Rf8yXy1LguKXeP?=
 =?us-ascii?Q?nUYdlpAI9jS7lChB8OyHfu37ssO51ixlxIn1ZXuNkRrhFFHX+fQLWe5EuNqT?=
 =?us-ascii?Q?G3c9LvTPEfMRs+5ocDGBA9ig8LyN57BzGfdau2T1OAaBgTg2O1vZc3QAOWL2?=
 =?us-ascii?Q?aiSR6zfvxdkQJr4QwJypTfNi30nQ/BytIK0aebtB0DQ2LC+vTgglYnk7cGvN?=
 =?us-ascii?Q?ag/yqaOPX6PsGlwGGsFZBxbvHpZinuG+f8jf7k6SRlUPAbJG2rTgf7CYTS50?=
 =?us-ascii?Q?u4SSjQnYXCzswByIRI50HPCSWycjhXNY3WT5xFeOLTyils2vkCX5/ekVF+t9?=
 =?us-ascii?Q?O7v19foDETEcmGTOn1K/DY5zrvtYaTuury1pHTGpdvtV6Eh/OnesOxnR/gyg?=
 =?us-ascii?Q?Dt/yNz4j0M0kTvgd5hxpgJLWMKNgPQTcNMDylGoj5IbXbWOEGTNL6u+xJaQp?=
 =?us-ascii?Q?nDIPT4Skw6ynqhi9SDu3atw4yWQPHBLxAbTDVB2k8BDZ/PjCsVNZsjvs0r32?=
 =?us-ascii?Q?dZAPZ0nS/YiPRQhuYAzYHW6qd8Yp3wI4UPcD4NxAPe8pwatcxcUHkk+DUSoy?=
 =?us-ascii?Q?b37ec7CbzV4T0fmOYT7DzEWpyfC2WhA+pQAhuyonrfnsPC13+CTa2OzI1wiO?=
 =?us-ascii?Q?6WERvVHZufeRJXPktiIgXagTyLl/7BkOkehlUC0/MqsKsoAZ54kG0b2x8Kmb?=
 =?us-ascii?Q?8BZB74Cseg0moTbwvbVlzs7GFyCbZHL9JQ3vDi2Z7wDM13pIl151roUsaIBY?=
 =?us-ascii?Q?kHmIUJI/qIn9U6piMe3U0ZpJ5wkUyXKrEBRw5cGEotUYfTNe7xLbdtPInZHA?=
 =?us-ascii?Q?xWAcjMuFO+R+Q9PFZ/oXQ18cLHctUydZ6+IvfrodOujBsanyRk9iHYSXKrDc?=
 =?us-ascii?Q?o7uw3l4ljCCbMepPxi+J8Wjd2oeDlV5ha5+yWOdSJw9KojEzEkz9s5zO8Luc?=
 =?us-ascii?Q?nvl9OlsErGWzZaMUyRR9czRTzH+rdb9hCeE+t3YWVcjhxG+Efazq2oo8LO22?=
 =?us-ascii?Q?LxWhSgFyvT3obUFoCFjdb1qA+MpYP9NGx9zSU35592fOblN0GVm+PxSl+fcT?=
 =?us-ascii?Q?+dCAzN5OTyHpzq9YnWrvIFVy5KBSxf4MJ1WpkGutkxaa3638I+RxAv0goY7o?=
 =?us-ascii?Q?2tFlHlTGGegauV4N/msSgmKZXWkkft8Ci66dZUIrdjZSKeeatbpOxDdkUUda?=
 =?us-ascii?Q?ZaAqE+CEV7dcV7FwvkyUBNYF1HBYlT9IqPwQvKj1b8eHVmtiNTfuxjgM2gHd?=
 =?us-ascii?Q?JT7HoMY9Xlx44C4sNpuWvJiPQA4dENOHu/UqUzsLGPhOZxXSQCSnZcIiGCaQ?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a701070d-55d5-489f-70d2-08daf276d1ae
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2023 19:22:16.7885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EwVSS1WYAUYAnbIBGvTuZoiQZ94BTw5McV5cWVDQPO4nT3ObTw+7WNbsyFJnHSRrOYlulwAOehhFT/d+vxkiRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/display/panel: use
 intel_de_rmw if possible in panel related code
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

On Thu, Jan 05, 2023 at 02:10:44PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 59 +++++++------------
>  drivers/gpu/drm/i915/display/intel_pps.c      | 14 ++---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 40 ++++---------
>  3 files changed, 37 insertions(+), 76 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 5b7da72c95b8c5..b088921c543eaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -349,8 +349,7 @@ static void lpt_disable_backlight(const struct drm_connector_state *old_conn_sta
>  		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
>  	}
>  
> -	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
> +	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>  }
>  
>  static void pch_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -361,11 +360,9 @@ static void pch_disable_backlight(const struct drm_connector_state *old_conn_sta
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_read(i915, BLC_PWM_CPU_CTL2);
> -	intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp & ~BLM_PWM_ENABLE);
> +	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
>  
> -	tmp = intel_de_read(i915, BLC_PWM_PCH_CTL1);
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, tmp & ~BLM_PCH_PWM_ENABLE);
> +	tmp = intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE, 0);
>  }
>  
>  static void i9xx_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -380,8 +377,7 @@ static void i965_disable_backlight(const struct drm_connector_state *old_conn_st
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_read(i915, BLC_PWM_CTL2);
> -	intel_de_write(i915, BLC_PWM_CTL2, tmp & ~BLM_PWM_ENABLE);
> +	tmp = intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
>  }
>  
>  static void vlv_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -393,8 +389,7 @@ static void vlv_disable_backlight(const struct drm_connector_state *old_conn_sta
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
> -	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), tmp & ~BLM_PWM_ENABLE);
> +	tmp = intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE, 0);
>  }
>  
>  static void bxt_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -402,19 +397,14 @@ static void bxt_disable_backlight(const struct drm_connector_state *old_conn_sta
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> -	u32 tmp;
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> -		       tmp & ~BXT_BLC_PWM_ENABLE);
> +	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +		     BXT_BLC_PWM_ENABLE, 0);
>  
> -	if (panel->backlight.controller == 1) {
> -		val = intel_de_read(i915, UTIL_PIN_CTL);
> -		val &= ~UTIL_PIN_ENABLE;
> -		intel_de_write(i915, UTIL_PIN_CTL, val);
> -	}
> +	if (panel->backlight.controller == 1)
> +		intel_de_rmw(i915, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
>  }
>  
>  static void cnp_disable_backlight(const struct drm_connector_state *old_conn_state, u32 val)
> @@ -422,13 +412,11 @@ static void cnp_disable_backlight(const struct drm_connector_state *old_conn_sta
>  	struct intel_connector *connector = to_intel_connector(old_conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> -	u32 tmp;
>  
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>  
> -	tmp = intel_de_read(i915, BXT_BLC_PWM_CTL(panel->backlight.controller));
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> -		       tmp & ~BXT_BLC_PWM_ENABLE);
> +	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +		     BXT_BLC_PWM_ENABLE, 0);
>  }
>  
>  static void ext_pwm_disable_backlight(const struct drm_connector_state *old_conn_state, u32 level)
> @@ -478,7 +466,7 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  	struct intel_panel *panel = &connector->panel;
> -	u32 pch_ctl1, pch_ctl2, schicken;
> +	u32 pch_ctl1, pch_ctl2;
>  
>  	pch_ctl1 = intel_de_read(i915, BLC_PWM_PCH_CTL1);
>  	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
> @@ -487,21 +475,14 @@ static void lpt_enable_backlight(const struct intel_crtc_state *crtc_state,
>  		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
>  
> -	if (HAS_PCH_LPT(i915)) {
> -		schicken = intel_de_read(i915, SOUTH_CHICKEN2);
> -		if (panel->backlight.alternate_pwm_increment)
> -			schicken |= LPT_PWM_GRANULARITY;
> -		else
> -			schicken &= ~LPT_PWM_GRANULARITY;
> -		intel_de_write(i915, SOUTH_CHICKEN2, schicken);
> -	} else {
> -		schicken = intel_de_read(i915, SOUTH_CHICKEN1);
> -		if (panel->backlight.alternate_pwm_increment)
> -			schicken |= SPT_PWM_GRANULARITY;
> -		else
> -			schicken &= ~SPT_PWM_GRANULARITY;
> -		intel_de_write(i915, SOUTH_CHICKEN1, schicken);
> -	}
> +	if (HAS_PCH_LPT(i915))
> +		intel_de_rmw(i915, SOUTH_CHICKEN2, LPT_PWM_GRANULARITY,
> +			     panel->backlight.alternate_pwm_increment ?
> +			     LPT_PWM_GRANULARITY : 0);
> +	else
> +		intel_de_rmw(i915, SOUTH_CHICKEN1, SPT_PWM_GRANULARITY,
> +			     panel->backlight.alternate_pwm_increment ?
> +			     SPT_PWM_GRANULARITY : 0);

this chunck has a risk of behavior change, but this looks the
right thing to do.


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

(we do need to get the CI in this series)

>  
>  	pch_ctl2 = panel->backlight.pwm_level_max << 16;
>  	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 7b21438edd9bc5..a4e00cab5f0ed8 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -1534,17 +1534,13 @@ static void pps_init_registers(struct intel_dp *intel_dp, bool force_disable_vdd
>  	/*
>  	 * Compute the divisor for the pp clock, simply match the Bspec formula.
>  	 */
> -	if (i915_mmio_reg_valid(regs.pp_div)) {
> +	if (i915_mmio_reg_valid(regs.pp_div))
>  		intel_de_write(dev_priv, regs.pp_div,
>  			       REG_FIELD_PREP(PP_REFERENCE_DIVIDER_MASK, (100 * div) / 2 - 1) | REG_FIELD_PREP(PANEL_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000)));
> -	} else {
> -		u32 pp_ctl;
> -
> -		pp_ctl = intel_de_read(dev_priv, regs.pp_ctrl);
> -		pp_ctl &= ~BXT_POWER_CYCLE_DELAY_MASK;
> -		pp_ctl |= REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK, DIV_ROUND_UP(seq->t11_t12, 1000));
> -		intel_de_write(dev_priv, regs.pp_ctrl, pp_ctl);
> -	}
> +	else
> +		intel_de_rmw(dev_priv, regs.pp_ctrl, BXT_POWER_CYCLE_DELAY_MASK,
> +			     REG_FIELD_PREP(BXT_POWER_CYCLE_DELAY_MASK,
> +					    DIV_ROUND_UP(seq->t11_t12, 1000)));
>  
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "panel power sequencer register settings: PP_ON %#x, PP_OFF %#x, PP_DIV %#x\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index d0d774219cc5ea..a0518c2f2668ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -153,7 +153,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
>  	i915_reg_t imr_reg;
> -	u32 mask, val;
> +	u32 mask;
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
>  		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
> @@ -165,10 +165,7 @@ static void psr_irq_control(struct intel_dp *intel_dp)
>  		mask |= psr_irq_post_exit_bit_get(intel_dp) |
>  			psr_irq_pre_entry_bit_get(intel_dp);
>  
> -	val = intel_de_read(dev_priv, imr_reg);
> -	val &= ~psr_irq_mask_get(intel_dp);
> -	val |= ~mask;
> -	intel_de_write(dev_priv, imr_reg, val);
> +	intel_de_rmw(dev_priv, imr_reg, psr_irq_mask_get(intel_dp), ~mask);
>  }
>  
>  static void psr_event_print(struct drm_i915_private *i915,
> @@ -246,8 +243,6 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
>  	}
>  
>  	if (psr_iir & psr_irq_psr_error_bit_get(intel_dp)) {
> -		u32 val;
> -
>  		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
>  			 transcoder_name(cpu_transcoder));
>  
> @@ -261,9 +256,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
>  		 * again so we don't care about unmask the interruption
>  		 * or unset irq_aux_error.
>  		 */
> -		val = intel_de_read(dev_priv, imr_reg);
> -		val |= psr_irq_psr_error_bit_get(intel_dp);
> -		intel_de_write(dev_priv, imr_reg, val);
> +		intel_de_rmw(dev_priv, imr_reg, 0, psr_irq_psr_error_bit_get(intel_dp));
>  
>  		schedule_work(&intel_dp->psr.work);
>  	}
> @@ -638,13 +631,10 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
>  				     u32 idle_frames)
>  {
>  	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> -	u32 val;
>  
>  	idle_frames <<=  EDP_PSR2_IDLE_FRAME_SHIFT;
> -	val = intel_de_read(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder));
> -	val &= ~EDP_PSR2_IDLE_FRAME_MASK;
> -	val |= idle_frames;
> -	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
> +	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
> +		     EDP_PSR2_IDLE_FRAME_MASK, idle_frames);
>  }
>  
>  static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
> @@ -1144,19 +1134,13 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  
>  	psr_irq_control(intel_dp);
>  
> -	if (intel_dp->psr.dc3co_exitline) {
> -		u32 val;
> -
> -		/*
> -		 * TODO: if future platforms supports DC3CO in more than one
> -		 * transcoder, EXITLINE will need to be unset when disabling PSR
> -		 */
> -		val = intel_de_read(dev_priv, EXITLINE(cpu_transcoder));
> -		val &= ~EXITLINE_MASK;
> -		val |= intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT;
> -		val |= EXITLINE_ENABLE;
> -		intel_de_write(dev_priv, EXITLINE(cpu_transcoder), val);
> -	}
> +	/*
> +	 * TODO: if future platforms supports DC3CO in more than one
> +	 * transcoder, EXITLINE will need to be unset when disabling PSR
> +	 */
> +	if (intel_dp->psr.dc3co_exitline)
> +		intel_de_rmw(dev_priv, EXITLINE(cpu_transcoder), EXITLINE_MASK,
> +			     intel_dp->psr.dc3co_exitline << EXITLINE_SHIFT | EXITLINE_ENABLE);
>  
>  	if (HAS_PSR_HW_TRACKING(dev_priv) && HAS_PSR2_SEL_FETCH(dev_priv))
>  		intel_de_rmw(dev_priv, CHICKEN_PAR1_1, IGNORE_PSR2_HW_TRACKING,
> -- 
> 2.34.1
> 
