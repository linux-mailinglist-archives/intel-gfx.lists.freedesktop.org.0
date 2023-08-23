Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C52678613B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14C4410E0F3;
	Wed, 23 Aug 2023 20:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6943710E0DA;
 Wed, 23 Aug 2023 20:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692821438; x=1724357438;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HxCGy2oeiq4cx6FZX/lkwzA2HDdyW2mpfFMctQeeobE=;
 b=gNHvV6sYWeQ3eluBrk5hokOCuJOX0OZKn5wf1JV7/TJcxQhDHrxjok5i
 GDsLCbucu/wMfl3xH7prpXVh4bx/mb9U/jnVudHm660/G5RGTrzPy7Kho
 CfdrShRDKZYSFMpkpk+K5sq151trKdAK1FjDMQcNLlLH8rMP4P0b0ymSR
 d1X/LdJT3uDNkyvzElxRCsatgOFnPDubst+a687lDGiumTvnOY0aLVjSo
 tjbOhOU3NFTtYqXMjssSydbonsfi7D6DmexZAko5FZd1L5k2xSEYO7x7u
 wRXqfNsbXlDwjqttQoVDlD6OlNdY0xh2uMNE8Q6cDZNhkXoyRHqq3Mdzj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="354589894"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="354589894"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:10:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="736790179"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="736790179"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 23 Aug 2023 13:10:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:10:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:10:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:10:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmXcuFy2/4Dr4B5iDDvlbHeO70dQCOpkOXyiAZV/NTEwuXUmGuY0fu09jQOrsT7OBNSdqIhwD70jzNNOlUMINeq8X4jpKe0MDX1ZJiOB2Q90G/jsHTtqMaMyzMPXUSsmG4ZHxAMSgEUe2k6Miix6SPoz1zvUT0QG9g4I6B2kE3+XPFncUsVFZ9MTgaZ2mm5j2D+vkHHi/GRCj76wvtX1ZhIgdc8dUSvC4vOAMOR+i0U49clrgYmRxxS6RTsF84HWUTrl1xMUOyxItZ2JXNC7ThSe4XlPRGARo/cS2ItNNxARfQ86oEJmuQP38uUlftWX0yOZg+eHGRPBGQJ02sqsjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NghI9OKvjSrUgkCqLvnfW++1LJBYdrIgavNNdO2FhKA=;
 b=YKXoHM+RMr5HJJ254fmCdeA4sjVLlZ9H4vfdEM6ItVOJEq7GMzHsFqGtvvldQc3hwu9x56V6IsX4PonF6zjw7UokKENCx7d0p+8LUqmc7YsFS7JWuuxhV/qK8G0HpkWfe76dcJJ/8hLCaCImd5RVbWXiDhIlZwCvDKYvTfOIIQ6PsTyFySQAFNKNPzU+4nB15PWDQgFS+Mzz79pGA8a9Dl2hAyileVxmZry3TWIV9yIFECaigubFA0GKZMKMTEAGw8GMKlfvQBkMAiNdE9hUdPJHKskMLUe9IBK11EEh3o4zusgISZd0fJvO0+Df9rar7X++Qge4Svv4qBCyhm+Ndw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CO1PR11MB4884.namprd11.prod.outlook.com (2603:10b6:303:6c::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.25; Wed, 23 Aug 2023 20:10:32 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:10:32 +0000
Date: Wed, 23 Aug 2023 13:10:29 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823201029.GH1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-27-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-27-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR13CA0096.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::11) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CO1PR11MB4884:EE_
X-MS-Office365-Filtering-Correlation-Id: f3edd991-6276-49a4-7664-08dba4150137
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HuVfr7DdxNXDSIupXA/3zG95H7sqGr6eUGkfzBG65FGpDdGVI7jtr3JGG4OFaBNI1I5jVn6Wf9HD9JDGS4AdiH6P9HKaSejj4GJ+WI0jspaqZcdndMLhgitKfwAjThRwRYBeMgM/jSPrAQMPG1ihkC8n2ejjMTLYEuA4CB0ambnxnDsvPaK8nA+XZrRr3K+nmeRmrvX3Syoz8v58MEuALH7/AbuGnkjmPCQJ+DJXMRBXbl2i48YnNKR7EgE1yYRV9/EjIbmleWe5bGM5itSjcRnB9oVy2uAws5qhO1LbXCKT2r3s8zRs02j6BDrdyoXLDwsojjN/EOkrO41pQKy1ZqLxIvX1ecSPdhwnDBtzvlZUTKqsizngPc2mSsjlTYcmWBf/03vhWrtSEe8fvhvRa3zrkk33i2FHbWcQBpPsdkefcCZtMF2jf4z9wJMcCMWWEyTLcfREkDL3rvtuYHwQyaLbHcHw8EgXRLb6EC3WkkFzEaVsoElnCxM/aQHXw8DAOVaw6ud0U9qqiJ3I/wfKaT55WzhW3/eXJkcDxgZEI94HNmq+gS0uQuCgz3pgOBN0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(1076003)(6512007)(86362001)(66556008)(33656002)(5660300002)(4326008)(2906002)(38100700002)(82960400001)(450100002)(6636002)(8676002)(66946007)(8936002)(66476007)(41300700001)(6862004)(316002)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hG7eDsg+r3hNCpIiQClMSkwGx1dWeEV3cMLwO3IE62Vw4UV1hp48m4oiEJjt?=
 =?us-ascii?Q?9IpzmgLJDVL9GWbAwr+zK/PSlrm4qHzCyaW6FDn8t2qpRD7HTy/EELemKdtu?=
 =?us-ascii?Q?BCbWEF7fJwPLgDRLdPdFO7Z+xlxfle+myE7MwWrRLzdnaQx48DoJIN7UmXdd?=
 =?us-ascii?Q?S0ACn/TGbVsBOPn+WqEHYv9Wh5fwJ8r+AsXjnRDC6aRTwOCnVz820dEC5v6r?=
 =?us-ascii?Q?7rYqtZxjYinQBY9ujbhY8e0C2BJEjEWK2cosDgGvHWjeaAKBJlUUpF+bTu29?=
 =?us-ascii?Q?VT8oNQXprghyPaPHVd91sfhWZYPT110jlGyXzFiGDq61Oy49JR6Ud6WoFekF?=
 =?us-ascii?Q?KSeKxVCB9cS7tGmC6J5fyM07hCpUNA1n+QPRFwnNxmUBM4eBdFAipkysKH/8?=
 =?us-ascii?Q?H+X17wcjwViLqwm2HpCR2tV8T6ByCI5lmgD6VU+D2bGTOVCkHghFbwvrimTE?=
 =?us-ascii?Q?GYxcsfirzKPdQREv+4APV7UIPnOu2IHhuG4b2dNYhOqOcvK1/lteFxAxejuZ?=
 =?us-ascii?Q?OTID9kdK3lLmZh6OnRGCRgcf/8Kl7sMZOr4Ri75oqIxKe++QaoezkjjM/ck1?=
 =?us-ascii?Q?S/QPaagrYVyop/2lDTJNeDE15mQeWSH0jrz3yymHGEo1Y8rbHCxJyowb/Wgb?=
 =?us-ascii?Q?bGRJC+tsAh4upgj/d3dJd7b+WMk0nvYHVCsKCKOq7ZNLVZ9UkcMOhAy0r++a?=
 =?us-ascii?Q?+kmdyROdnJgzAs++Yc13cLAUnOEXFdz9Ey722nKrFAqOz0tyQrdsdQDnUu0Q?=
 =?us-ascii?Q?JjfytcVNHzl59Ri525wwo/ydiqbQ34IZGy8eqtSL1YAzJz0HdOrtRBh1oGxA?=
 =?us-ascii?Q?UlFGupxFewZ84mHaoyEBsQolh9M7qjinG8bou6eIZaVTnyMT0nAtuBJbXq2G?=
 =?us-ascii?Q?gX/okhYwOjXBDfLNiAy5lb4NhOBwkMbihGsXmzX1cc4KUMClLXQc32WTYqjA?=
 =?us-ascii?Q?fYEniz7i3G/aJoKQjWrvIHL2pT8jZkEHa8oMfYSXB0K7LkTduHCMK4kQTm4N?=
 =?us-ascii?Q?azHVaZ4HW9HHLeU80YAlSWBWVjhGk9ZzAp9AoYhUEVMXUJlx4jOriT5SBDa+?=
 =?us-ascii?Q?kUEIa3WIBvdxNzZxleON6xW88kb+BigpaCv/DljfGUCRoLBeDFCgKHg6aVx+?=
 =?us-ascii?Q?XDYDUiJ9SSc8BReBvoGkjWDy0uEHVdGvCzFJ43gu4BBmc7h284Um6Rn3JITy?=
 =?us-ascii?Q?TIMW0FUQnHNTxFYEFfiRP65J/gIbVWY/cJWDdCNbAHZqmO6174GdJv3BA1lP?=
 =?us-ascii?Q?QeBqFBS1vy48QyMSquxwaHVnJmsXOS+fF23zDnV9ZxcM022R0G0XLAxWKIUy?=
 =?us-ascii?Q?+bbn8EiikZRza3qe72FznJbv252zZl8Se96mhc5cSofXdMpbherh7S4LmYm+?=
 =?us-ascii?Q?QhryUZelJazXxpdTTJ+EpJnZNcC856jfvg1priqe2KdC6UYxfU7zrZXXfqTJ?=
 =?us-ascii?Q?MsRX3QCvmO1PbhvvRGc4SC4dC8C2gyNQyQUsD2tiwNt84tGBRg+kuaQ0oREv?=
 =?us-ascii?Q?AznnBSD/0trLETupbh2+l83oeqe6DzfaY+8UxrPfQB0KdbVXKtgOWpAtq4/B?=
 =?us-ascii?Q?7RMFUsMuvAzt2eZCunaLgDTQAw705fTtkjpk3hqtglFj2TAxDM+uKQILfVbZ?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f3edd991-6276-49a4-7664-08dba4150137
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:10:32.6829 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QiAwHMldJF0Ls3cjDIsMDze6i11BjbhfeqJmXc2YSfoWXD3BeXVloY8XeUUuamOmFdBt9npg/42EcOMiu9p/fgZ9kAtKdNJMXZlk7GNMYHI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 26/42] drm/i915/xe2lpd: Handle
 port AUX interrupts
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

On Wed, Aug 23, 2023 at 10:07:24AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Differently from previous version, Xe2_LPD groups all port AUX interrupt
> bits into PICA interrupt registers.
> 
> BSpec: 68958, 69697
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h                  | 3 +++
>  3 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 62ce55475554..bff4a76310c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -792,7 +792,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_private *dev_priv)
>  {
>  	u32 mask;
>  
> -	if (DISPLAY_VER(dev_priv) >= 14)
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		return 0;
> +	else if (DISPLAY_VER(dev_priv) >= 14)
>  		return TGL_DE_PORT_AUX_DDIA |
>  			TGL_DE_PORT_AUX_DDIB;
>  	else if (DISPLAY_VER(dev_priv) >= 13)
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index f95fa793fabb..f76b9deb64b4 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -514,6 +514,9 @@ void xelpdp_pica_irq_handler(struct drm_i915_private *i915, u32 iir)
>  	u32 trigger_aux = iir & XELPDP_AUX_TC_MASK;
>  	u32 pin_mask = 0, long_mask = 0;
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		trigger_aux |= iir & XE2LPD_AUX_DDI_MASK;
> +
>  	for (pin = HPD_PORT_TC1; pin <= HPD_PORT_TC4; pin++) {
>  		u32 val;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 84c5a76065a0..e31a985b02d5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4520,6 +4520,9 @@
>  #define  XELPDP_AUX_TC(hpd_pin)			REG_BIT(8 + _HPD_PIN_TC(hpd_pin))
>  #define  XELPDP_AUX_TC_MASK			REG_GENMASK(11, 8)
>  
> +#define  XE2LPD_AUX_DDI(hpd_pin)		REG_BIT(6 + _HPD_PIN_DDI(hpd_pin))
> +#define  XE2LPD_AUX_DDI_MASK			REG_GENMASK(7, 6)
> +

It seems like we have extra, atypical whitespace around the fields of
this register.  I'd drop the blank line here, as well as the one above
the new definitions so that things are a bit more compact.  Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

>  #define  XELPDP_TBT_HOTPLUG(hpd_pin)		REG_BIT(_HPD_PIN_TC(hpd_pin))
>  #define  XELPDP_TBT_HOTPLUG_MASK		REG_GENMASK(3, 0)
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
