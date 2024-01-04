Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B75824BC8
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jan 2024 00:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A6EE10E547;
	Thu,  4 Jan 2024 23:22:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB40010E547
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 23:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704410540; x=1735946540;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=s8/W38gVbj2TRuGoBg2X/AxSstdS057ywXHCYg1nnww=;
 b=EfbaqCHr5qAeNe+msBk/CMJBSjKcgkLvcs4MW+B5q2Kwm519gcW1c8Xh
 havJUC+fObARTIfSO43XpiyEHcop5fyaHZgBwwjIVQz2hvKOfAuOP5XC2
 /gj5CY2hf5UHWCvrIIIZFMg3w1P67ZeVTfjvmTKZbhrW5heI37ZDx+iiu
 83a9AvBWmH8OATDphbWgyjv+kzPYLC0Yief68HOxDEb6uymTToj4GGGmh
 /EC9sHGIcIhiToFOpxu86o/ZYb9IXoasrKhU9eebbcY61yTkZtegQnQ8j
 YIKgfD+x/zxM5KOUwaG1EJ/D15D0HTvtwqdleqOL4SFJYi5jKcV2dTIMu Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="376870023"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="376870023"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 15:21:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="773679622"
X-IronPort-AV: E=Sophos;i="6.04,332,1695711600"; d="scan'208";a="773679622"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 15:21:01 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:21:00 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 15:21:00 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 15:21:00 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 15:21:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fXDv99fZBCjzKEP3j1R2u+NkLRKdLkPyHNDcE/j2gkXugyhbBCsSmmS7UigaEm1G3j19hMMJJhEvucmH8RNNoipLIbEOFT82/v/nxGviMQvEEdFAODSNMrkpDpMEw2APS0xHgQkJ2TjVCGtSTk/nd84Wa6Ekqy7Vm6qHu3FOfRqbvJ07y+qJDYMkL8aRMxk7Y8j+SBfIgUHtQuF0HIhlQl8vc7c5Tn0HxnhBX4SH9xLUDrq2CktTYNztksUJWFD79sCxwP2JFl8y/CvUNO1BWdtiaVEy3vKpL++14daQGSByYvkvR6jXNXcHhf8ALpCxaxGWWbQZazBrZEuU32b+Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ec8GTVe90qoIFEJxAxcRs+sTKwNaEg2ujf/ZmodRTUw=;
 b=hirp6txntayrd6mgynLr4F410/+86xIrS6RWganhrzyyLegb+ENSfGmtCFjVZPCYJN3vh8zc2bzGuNcYZeOuvEokV+XprfM73ePfPbVnTqUM2mML1fxeAoWKqKrpHi5gw2umPIHALhtYJ6f8I2whiJHCfkE51WIRnkz04BdDGX9kuJoQELFGZoIKSFLmTKXQlUtEH+kg/mu/Dp91bslu/Dxph0YvCE4y8qKQFzQqd49ig2vFfQIjBiwb81jJaFrl3M2lfBlBbTfQuVAq5eQ11PiSBcycuh/byy8iVLtmdy7CJstGw3w2iQrrMZHBD8UMYPDxnLBhqulzWR3LbpWktg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8546.namprd11.prod.outlook.com (2603:10b6:610:1ae::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.26; Thu, 4 Jan
 2024 23:20:58 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7135.023; Thu, 4 Jan 2024
 23:20:58 +0000
Date: Thu, 4 Jan 2024 15:20:56 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH 2/4] drm/i915/cdclk: Extract bxt_cdclk_ctl()
Message-ID: <20240104232056.GX1327160@mdroper-desk1.amr.corp.intel.com>
References: <20240104032150.118954-1-gustavo.sousa@intel.com>
 <20240104032150.118954-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240104032150.118954-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR03CA0246.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::11) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8546:EE_
X-MS-Office365-Filtering-Correlation-Id: 90c030f7-5d09-4f77-62da-08dc0d7bcef5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xpuie6FjBXWRxbyUwfY7hzTCUw6kQ2r4pzHZ979A49Z2gyDG8G9P1Ny9O8PRbFAZwDwPOjVBwkEoiocEd99I8dkVGWpzRHUfFHbt8Um2Psn/hVYrWu6i3rgC7HupScbOlQXat31ZjrKvgnzBaKrwV+eCQmDOuSGVzpP1vcyXSzSILRC4z5o3DouG20qAt/dx0OOT/KGszlRl0sDDKVsZamYzbf1DePsLBwHHfo18iHOSciwO581K6iadyA7CWdyZiOZe7nBHvfiCwM15MpqbMxeD24Dm2s5IeHOLX/EDbdP6D1Hb5b5cC9WDngWp8gNUJQKUB3Wwba8esFfXEqNt0gULFAiqoosVPMB1dfWqVVAr//wwLTJr3xU7s3ekhSDpwpCeQGJxcP01DH4NmbLaC9mOlJDS2PNzKC5vn4RsZxkhm9cY3YzEFHs3BBODZpO3xt0kCnisAXprUJ1IVOPvl1ykHWSOvIbkczxmwUAen5qoHvka+xw59kb4WqNHXnsWi+K5sBK3Lc1+3k1f4aTo1AyQ1/3T8tismbZUwcYSgQ/LwpbhuDrlojHtCfDEWCEH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(346002)(366004)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(66946007)(83380400001)(26005)(1076003)(41300700001)(82960400001)(38100700002)(316002)(8936002)(5660300002)(6862004)(478600001)(2906002)(8676002)(6636002)(4326008)(6486002)(6512007)(66556008)(66476007)(6506007)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2/AFNYL7Oq32JYsScJaqN7kvTw8aCXdkQnLbFpVaGCseM7sVxnnn8FAyjp/H?=
 =?us-ascii?Q?mw+RBdpjAcLvyIT2eO544OKp1PTKsGio7X8Or7W6Rk9a2cvLFyTV9QjA63DI?=
 =?us-ascii?Q?HVj0lJejZJCXSebdmWqe76n4AOxMrYc/oAnbYStE7KNSd0g6crMAXOY3OSZp?=
 =?us-ascii?Q?iuvibVd5wbqaKbDNuwqck6bKw8dwjKmDFfqbWSWknIWsw834cDPkq1Lpeh2V?=
 =?us-ascii?Q?AuaOcs6RZ8a2Q5g3GibRarryDETEMjYxOGti8tG49ZNpOElveVQg5Na4xt+u?=
 =?us-ascii?Q?OFkRZG2N4mSFUyHDnCA3mi86V9CnhIEG6T0jRzuIbdtRkLj5BHT4GAdZTV7o?=
 =?us-ascii?Q?NRS10lRqs4LcA8RHoVsSqg2hgkyPUNdTj6ofENTH6sw/xqMRx48DANULoIUU?=
 =?us-ascii?Q?+uHNRGVYiwIcYAuekwOlpXkMpBZSqVJZR55ZuheKAm+oKsEnbx0U5lZ0rjM/?=
 =?us-ascii?Q?KGPj0sAZIWMeZo5500Ix7xUjcyyt6src/Z2+hNrZSeojc60Dao1uDcQ2jr9b?=
 =?us-ascii?Q?aopX0yiQ2H4DF2dB5pm4zSrt/IGfRXpMfDxvWQl3eo/SSSjpuGXbS9nVRKSJ?=
 =?us-ascii?Q?+8hcKa9lsKTgqMR5/Xt4ukhNoA+TEU3Zr6PFvf6cjKS0VSQstQ0xWWeGYUJi?=
 =?us-ascii?Q?tcAqUCiA/RfUXZmiMts/sByqDOVFNyjhIMgXwfAclxdCAiXLqQ6vATYba6md?=
 =?us-ascii?Q?s9DEpoctv8FN7B1w99XjvF5JRGZxoCfM7Taq/eSGbENUH0+S+215oiRXFbie?=
 =?us-ascii?Q?7yfiBAfy27+sGj4O7QUKijWRsh1WcSrrkWZlP/8Pw/6jYFfqTct7HSQVclXI?=
 =?us-ascii?Q?Mn8xfGzgZjFBaXsyO0Bl5E7HiaYsKfkc+flZ35FhNtgPBT1hbudY5LRtiPGM?=
 =?us-ascii?Q?Zp8XHJaZyPL1nSA/V/Ap+uvSg+ACjyH3FVDclJplJpjtYu5qzqy+3XZiu5SY?=
 =?us-ascii?Q?gjc390jbS1kpjXMJ27JQntBaPJKEgwUu5jg8tZcN33ZEpY2wEdPTaBXBGHab?=
 =?us-ascii?Q?5alWQaTxuSjuifuTMGqepBuDKhMMaxBFXmwZdBdHf42CIRhnMurZ3NOnPW0T?=
 =?us-ascii?Q?StekA7pAkmROtOA13wzwGHmbq58n20ELDLbSfIpEkU7VgiWrbX+Yq2YvtpHV?=
 =?us-ascii?Q?0w+cGn98WoTjXZjQbdaPxAet78S0COoF2BNwxFdaoliLu1JgGl6v6LfZtcdX?=
 =?us-ascii?Q?2X8NqfFEfhFsCAYs4Y9R1vQJJCVIsFLitk5wgQIdufiEM1uxd/oMPIEv/B1L?=
 =?us-ascii?Q?rzVZ2hFi9D70MJKuU4U+si0fcCwxH0TqtJskDa+OYdX8R9VP3ZJEu/S/liOo?=
 =?us-ascii?Q?KkV7iccb5oycoxIhBmlNBwru1KEt0HXLw3GyeuKGYmCK2Lvk3K5PiQMlpexK?=
 =?us-ascii?Q?aFVDgLQ5OAfPFT4mBLYArIuPykp08nznQHzZEQjfoYQbG30qgb4rHcHPsgJv?=
 =?us-ascii?Q?ke57yZ5UH/x6xzlf44B2CXOwfN8TlKXBL0PlPF8GV8uiBHSekesMbZ30xw7O?=
 =?us-ascii?Q?IQG7k3+Z3BWNycuRo8pSk1quugaLB3Mjmzpj8KUTIBQosdE3C6u5wcSok/IM?=
 =?us-ascii?Q?TUCFrVTpi2NgmmahM7sGvnDK9DEmpyvX+QkeEBnlEr8FBzkfL2jYTRk7/s+g?=
 =?us-ascii?Q?yA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 90c030f7-5d09-4f77-62da-08dc0d7bcef5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2024 23:20:58.5248 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Pc00jRfPp1eC8uU+VOdqsOjd9HrGqFT6oApP/HDlkSh/yzdWDARSCmCc8t9rAtvQOBkFUwaTJsWC4OXHUaL7iguwu97wxAAtW0fj5jK7zdY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8546
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

On Thu, Jan 04, 2024 at 12:21:48AM -0300, Gustavo Sousa wrote:
> This makes the code better readable and will be used later in
> bxt_sanitize_cdclk().
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 57 +++++++++++++---------
>  1 file changed, 35 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0012e3171f3f..b9354ad46fee 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1900,15 +1900,47 @@ static bool pll_enable_wa_needed(struct drm_i915_private *dev_priv)
>  		dev_priv->display.cdclk.hw.vco > 0;
>  }
>  
> +static u32 bxt_cdclk_ctl(struct drm_i915_private *i915,
> +			 const struct intel_cdclk_config *cdclk_config,
> +			 enum pipe pipe)
> +{
> +	int cdclk = cdclk_config->cdclk;
> +	int vco = cdclk_config->vco;
> +	int unsquashed_cdclk;
> +	u16 waveform;
> +	u32 val;
> +
> +	waveform = cdclk_squash_waveform(i915, cdclk);
> +
> +	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
> +					     cdclk_squash_divider(waveform));
> +
> +	val = bxt_cdclk_cd2x_div_sel(i915, unsquashed_cdclk, vco) |
> +		bxt_cdclk_cd2x_pipe(i915, pipe);
> +
> +	/*
> +	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> +	 * enable otherwise.
> +	 */
> +	if ((IS_GEMINILAKE(i915) || IS_BROXTON(i915)) &&
> +	    cdclk >= 500000)
> +		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> +
> +	if (DISPLAY_VER(i915) >= 20)
> +		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
> +	else
> +		val |= skl_cdclk_decimal(cdclk);
> +
> +	return val;
> +}
> +
>  static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			   const struct intel_cdclk_config *cdclk_config,
>  			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
> -	int unsquashed_cdclk;
>  	u16 waveform;
> -	u32 val;
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> @@ -1925,29 +1957,10 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	waveform = cdclk_squash_waveform(dev_priv, cdclk);
>  
> -	unsquashed_cdclk = DIV_ROUND_CLOSEST(cdclk * cdclk_squash_len,
> -					     cdclk_squash_divider(waveform));
> -
>  	if (HAS_CDCLK_SQUASH(dev_priv))
>  		dg2_cdclk_squash_program(dev_priv, waveform);
>  
> -	val = bxt_cdclk_cd2x_div_sel(dev_priv, unsquashed_cdclk, vco) |
> -		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
> -
> -	/*
> -	 * Disable SSA Precharge when CD clock frequency < 500 MHz,
> -	 * enable otherwise.
> -	 */
> -	if ((IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) &&
> -	    cdclk >= 500000)
> -		val |= BXT_CDCLK_SSA_PRECHARGE_ENABLE;
> -
> -	if (DISPLAY_VER(dev_priv) >= 20)
> -		val |= MDCLK_SOURCE_SEL_CDCLK_PLL;
> -	else
> -		val |= skl_cdclk_decimal(cdclk);
> -
> -	intel_de_write(dev_priv, CDCLK_CTL, val);
> +	intel_de_write(dev_priv, CDCLK_CTL, bxt_cdclk_ctl(dev_priv, cdclk_config, pipe));
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
