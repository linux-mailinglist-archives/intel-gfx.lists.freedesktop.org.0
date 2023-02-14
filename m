Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF56696753
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 15:50:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9821610E8F8;
	Tue, 14 Feb 2023 14:50:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3B810E8F8
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 14:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676386252; x=1707922252;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DKTA6OatbRbYhwAd0VPmEGdT6kkrDvlH4fWiSdZ731A=;
 b=Akc6MI/Nt4dr27R2xwNeR6P9YM+S51lCa7X5KPu31l5ndJkWg5cIAIdW
 tYVdu4HX+IVn4xY6skHdDZbzg3V1o0p6+UzgiqJ5r4Aje06/qDa9AMcT3
 ac+B4hl0SaCmpUe5HUmWrTzb8vDoTYUKXASkvtK1hKaoaM6xRPkWW6tF5
 ZZcQYklkDWA8dxCaQaegNzlqESyeT16RyCzEI1WF0mQzH82VI8F/VKonU
 foDwce1GC4QtNqplwqJVuIMVd5Dy3GEGGGjglpiZXGw8bfkd+7Kbp1pj1
 tTDeZ9i74YFdXquNnfoGGFo4QknwQjDT7HWFjoBJihAhmN4N5zNaD2GXR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="393577281"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="393577281"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 06:50:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="699549059"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="699549059"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 14 Feb 2023 06:50:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 06:50:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 06:50:51 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 06:50:51 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 06:50:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnygPy28Z5kFvk2230oaYiUrOE2SM9gwJicYUJKp4atVn4nNkioVEcHRZaWlH8EwIyqJtzuGzTCJUAKknP/P+AFvb6+nKLxLpNfI1+ZSdjW6OXveQZl0qgL8Ft5Sk+HPUU31GDdJ6oWYcKt55tUGaTmUuDzGz6lECDcWx3n4JHFergfa33xpl2NQyIWVVSiNCKfxOxavICecBCbG7zSDBCLIXrMkv8Cc7+rjbsWWCjJI/LYUv/tv+8QsJ37OsOSyPxRZ9rmArzaIQVVpOHcOoFEX/Z2OeLT4jknMv7EESOYL8GXAR22oQvqdo22Bkf9tkzDXWGUjGGbgaeph9lM7Zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tLNPM2+KNODxM8NvcX9AmCeFFULUPSxysVIIeIuW5QI=;
 b=fUhYXTmHnSvwcXKlIU2Hd5JL9MTb8sOj2pphfhRl3wap89UQ1SUIKMQ2Od4utjLgZl6/nP3ANh6hk2UongtWlRlVIn9V36zil17yx8pdLHVVsv9RCAwqJ0d1yOK8nlql1X/jAM9LR+Y0MU6xRQNHNL/huLjQCIG0Cbj4j6KSCRfK4p1OJntRR5tPutC2E8aRgd+nxCw4HO9kqX7l9+0FO0BNv+qPi1oCVb/0eD49gGWfUW0c4CC5x+XkZV8gHCZG1soM7CEhpifV36uhzGSqNH6wHj7RijMAcvr27mHx7JEWP4HOX+1jZ6WflfP6YkXKEOc40wxjNrJkmAE7Ez7fTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6989.namprd11.prod.outlook.com (2603:10b6:806:2be::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.26; Tue, 14 Feb
 2023 14:50:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6086.024; Tue, 14 Feb 2023
 14:50:49 +0000
Date: Tue, 14 Feb 2023 09:50:44 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <Y+ufxAm2l8zaI/ks@intel.com>
References: <20230213210049.1900681-1-ashutosh.dixit@intel.com>
 <20230213210049.1900681-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230213210049.1900681-2-ashutosh.dixit@intel.com>
X-ClientProxiedBy: BY3PR04CA0017.namprd04.prod.outlook.com
 (2603:10b6:a03:217::22) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6989:EE_
X-MS-Office365-Filtering-Correlation-Id: 09d0ed93-65bd-4106-1ad9-08db0e9adc67
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gWO6bFmQ4yQGImHOQYKqqBNZJu+JLrFf5h3P5RNJukJXKHq755TGAsrrA3gCafrHemrS+o2tv5B0l23TQw9IFlcxkCXCXNn5Q5cQhq8xaKX96TUhKm3IEeEP/Yde2ctYPdAz7tpiGlmmH5m/ijfvdY7JTfaXZLgwg85mwMsw44BbGcUmaXUQdtN+n8Rtv84rFdCi+Q/CDZcIXvZ4y1Xd0rmGoC3VeiFMe3J4gB+j7DLXuxWm8YyCUcn8qiromfEm0tlBl1oAFC1cAwTKp+YtskM58k0PVnAkpsclsIKW3d83YkUgbNMZHs0ptxldao0+j9RkYk523hhdnFY31TLj88fv6oEPyUgby3BNyBV9kpJrdyQooYPl+W4tA0rwj4wuyeqpeIu2PAgZH180dgtQKLvfGh4PMXrY8FQT/wi2CPBllCql7dNXnujywO6Hjs1I99Uo97ai1l/5bfMfXksxKzo0Mc/WsJhfCZrjJwOnB5AuyqY8enfpKFmA7k2qt7xbcDPNyG1ijXFG/iVlmRtn8rC8mT5nwT7S2687GII1Oz1HGDa1jTVVguza02Kzw0XmBSjuxStkCqhIuiS5XR/T3gFjen9J4XMPjUDlA51F37tL44Y12FI2jE243YM4OkWMc/6Lm92LaP5F490IBEqCSQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199018)(6636002)(6862004)(37006003)(316002)(6486002)(478600001)(2906002)(82960400001)(86362001)(6666004)(38100700002)(2616005)(6506007)(186003)(6512007)(26005)(5660300002)(44832011)(83380400001)(36756003)(66946007)(4326008)(41300700001)(8676002)(66556008)(66476007)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OPaXBuFrXZQHmkbN1CH5rBl51jno08FS0W85JAOLeQzm0nvaHFJ8irjja4k3?=
 =?us-ascii?Q?eSd5VIiHOsHomTWJxL0HpchKiuEhVVJE21FgFTOFfQgbCiaZfAqUWjlXmVWV?=
 =?us-ascii?Q?zEMmenaZZwIiNHrjF2F9vfBDS0XMYjq6AKNbAkDNrsDZEYrb+K3JV8yCzFoO?=
 =?us-ascii?Q?YDLVhag97DOM/QkW4QPfKJM785L3FOTrbYZi3HbGMja/CqKlbcgyoE0ULbtK?=
 =?us-ascii?Q?Neirf5VhBQewLp7Nnt9HiclpVN39o/3RcaH55E4e817XxtKNTMhsc8VlNoBq?=
 =?us-ascii?Q?M0MkwPOmd+Xg3AueHNYqhabtOxPMEXI6KtWpgPQk48+SY8/q9/0bjOymf5K7?=
 =?us-ascii?Q?Ko/FSBCLMJYeoDDroOZD7CBPwphvxrRNdOXOXeYavmU08UG3eYfV8GdP9rW7?=
 =?us-ascii?Q?X98O+KQ6NVqtud26Smga3AHidlKRibfWS7ED/53DC801zfEbVZrbjvjXeyet?=
 =?us-ascii?Q?fHegpFnQmEA86P6u4vTdBWeZlIdB5sEHVxyJQIdblqMLHzh3t5dj5hcCTXUT?=
 =?us-ascii?Q?c2hZq3cXym6QmTHz1fW2LRk6MJfZc8vkT5h9U+dPpWrE9y4gz+ZtoSnRqp8D?=
 =?us-ascii?Q?QYgomovS1BjKZpJ6uqIbxYWd8EnxwnJ9FGrWwZ0o9eIwUl4hr5fxNqTp/uzQ?=
 =?us-ascii?Q?ZFy9IDEz2R8dX6uMrZ5vbqJlCsoBhDR0RdnV8wEPCkA5x9TU69oDvthSRIlR?=
 =?us-ascii?Q?1P9a3zy/+Eu+1NBJE7kqtZ3yJ3McZvQWDcJVyqI+b1N6rHO4bPestfzwhf0Z?=
 =?us-ascii?Q?gChnN6LkQYjiFnYzDGScjtWr8n4ZxUwTmXMeFxDgW3MrqS0qythOFm8iunWc?=
 =?us-ascii?Q?41gap36GKjdiX/sDNt321Bl/Rq77oOEq1QWPdcbnCF+7ZRFeOSUyqJHGrD7J?=
 =?us-ascii?Q?9xdVfr1cKrq5uENNH2vYHU5nSFeYgnmdMPqEm6hywECl4mKWIsznv5ONML8R?=
 =?us-ascii?Q?0tAehIUCDuPQBlU36YNNLa9k2591CBRkBrpMjy6iFW3FHA8904cFDfFpDh0v?=
 =?us-ascii?Q?CJz8H+XRLr4gV5hAWEnjTZcxWek8RVsJzyNiak1frRyKVSMQ9RworFnpfQxg?=
 =?us-ascii?Q?m50kpTg0F7S0eLm0C1Bmr/aXGgHpAcPAbXDb2NLA55G26s0LeF0bhlBKHpNM?=
 =?us-ascii?Q?pfP4SKthSi8R2gBnmO8X2s4opW/adM+y4Rf+jjXKtWFMfCHGmyXaAUMLfhpj?=
 =?us-ascii?Q?d8zLpiTuCdXgI+dJf4PM6DIjfOnSi2wBrht0iNwHjpR5O3xYDbb+/uf8Ppb6?=
 =?us-ascii?Q?MSmWYOvbIpTafLmHDUbMzPGDduekzOPhgd4EvLQEYlOWiD7CUYRAzgJ27nrg?=
 =?us-ascii?Q?jLz6fFt6vY4cv12OHEEvKd/Zvu+x6sBMsrxrg7LgYmFktbIsBtpvWJs8Hub9?=
 =?us-ascii?Q?KzGOZbNk56sVb+ldKZygbJ0yJs1NqiT0IP43aAxGTchn9lhZwhXJE8kvGCQQ?=
 =?us-ascii?Q?pUsf1HVdJwO7EqLf7Td7+mUCkxYjre304k+8aBBLReojXwhtSavYcFNPvtvu?=
 =?us-ascii?Q?O+2BrmzssykImuDQRcqzrPu6wZqXjFwtiR44lT30dD/C4KA8+5nm8vxxZ9EN?=
 =?us-ascii?Q?lDme6NddVHrtrwfP5lgguvXzWopv/ksJFAnMwlvLbc8vjta1e0vYSdtxUJsI?=
 =?us-ascii?Q?Dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09d0ed93-65bd-4106-1ad9-08db0e9adc67
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 14:50:49.3240 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: u6mK/BcC1mhCnooWWKDqUINhDkgyhFtx2pTNqMrMnkOhj64YKBqsVHNotQ5GOwmliEMlY/XEasfo7h4nq7nEUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6989
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/hwmon: Replace
 hwm_field_scale_and_write with hwm_power_max_write
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

On Mon, Feb 13, 2023 at 01:00:47PM -0800, Ashutosh Dixit wrote:
> hwm_field_scale_and_write has a single caller hwm_power_write and is
> specific to hwm_power_write but makes it appear that it is a general
> function which can have multiple callers. Replace the function with
> hwm_power_max_write which is specific to hwm_power_write and use that in
> future patches where the function needs to be extended.
> 
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_hwmon.c | 36 ++++++++++++++-----------------
>  1 file changed, 16 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 1225bc432f0d5..85195d61f89c7 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -99,20 +99,6 @@ hwm_field_read_and_scale(struct hwm_drvdata *ddat, i915_reg_t rgadr,
>  	return mul_u64_u32_shr(reg_value, scale_factor, nshift);
>  }
>  
> -static void
> -hwm_field_scale_and_write(struct hwm_drvdata *ddat, i915_reg_t rgadr,
> -			  int nshift, unsigned int scale_factor, long lval)
> -{
> -	u32 nval;
> -
> -	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> -	nval = DIV_ROUND_CLOSEST_ULL((u64)lval << nshift, scale_factor);
> -
> -	hwm_locked_with_pm_intel_uncore_rmw(ddat, rgadr,
> -					    PKG_PWR_LIM_1,
> -					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> -}
> -
>  /*
>   * hwm_energy - Obtain energy value
>   *
> @@ -391,6 +377,21 @@ hwm_power_max_read(struct hwm_drvdata *ddat, long *val)
>  	return 0;
>  }
>  
> +static int
> +hwm_power_max_write(struct hwm_drvdata *ddat, long val)
 +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	u32 nval;
> +
> +	/* Computation in 64-bits to avoid overflow. Round to nearest. */
> +	nval = DIV_ROUND_CLOSEST_ULL((u64)val << hwmon->scl_shift_power, SF_POWER);
> +
> +	hwm_locked_with_pm_intel_uncore_rmw(ddat, hwmon->rg.pkg_rapl_limit,
> +					    PKG_PWR_LIM_1,
> +					    REG_FIELD_PREP(PKG_PWR_LIM_1, nval));
> +	return 0;

Let's keep this function as void and the return 0 in the previous spot.
With that change:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +}
> +
>  static int
>  hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
>  {
> @@ -425,16 +426,11 @@ hwm_power_read(struct hwm_drvdata *ddat, u32 attr, int chan, long *val)
>  static int
>  hwm_power_write(struct hwm_drvdata *ddat, u32 attr, int chan, long val)
>  {
> -	struct i915_hwmon *hwmon = ddat->hwmon;
>  	u32 uval;
>  
>  	switch (attr) {
>  	case hwmon_power_max:
> -		hwm_field_scale_and_write(ddat,
> -					  hwmon->rg.pkg_rapl_limit,
> -					  hwmon->scl_shift_power,
> -					  SF_POWER, val);
> -		return 0;
> +		return hwm_power_max_write(ddat, val);
>  	case hwmon_power_crit:
>  		uval = DIV_ROUND_CLOSEST_ULL(val << POWER_SETUP_I1_SHIFT, SF_POWER);
>  		return hwm_pcode_write_i1(ddat->uncore->i915, uval);
> -- 
> 2.38.0
> 
